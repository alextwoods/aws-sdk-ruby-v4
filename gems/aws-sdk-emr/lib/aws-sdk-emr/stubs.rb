# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMR
  module Stubs

    # Operation Stubber for AddInstanceFleet
    class AddInstanceFleet
      def self.default(visited=[])
        {
          cluster_id: 'cluster_id',
          instance_fleet_id: 'instance_fleet_id',
          cluster_arn: 'cluster_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['InstanceFleetId'] = stub[:instance_fleet_id] unless stub[:instance_fleet_id].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddInstanceGroups
    class AddInstanceGroups
      def self.default(visited=[])
        {
          job_flow_id: 'job_flow_id',
          instance_group_ids: InstanceGroupIdsList.default(visited),
          cluster_arn: 'cluster_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobFlowId'] = stub[:job_flow_id] unless stub[:job_flow_id].nil?
        data['InstanceGroupIds'] = Stubs::InstanceGroupIdsList.stub(stub[:instance_group_ids]) unless stub[:instance_group_ids].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceGroupIdsList
    class InstanceGroupIdsList
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupIdsList')
        visited = visited + ['InstanceGroupIdsList']
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

    # Operation Stubber for AddJobFlowSteps
    class AddJobFlowSteps
      def self.default(visited=[])
        {
          step_ids: StepIdsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StepIds'] = Stubs::StepIdsList.stub(stub[:step_ids]) unless stub[:step_ids].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StepIdsList
    class StepIdsList
      def self.default(visited=[])
        return nil if visited.include?('StepIdsList')
        visited = visited + ['StepIdsList']
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

    # Operation Stubber for AddTags
    class AddTags
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

    # Operation Stubber for CancelSteps
    class CancelSteps
      def self.default(visited=[])
        {
          cancel_steps_info_list: CancelStepsInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CancelStepsInfoList'] = Stubs::CancelStepsInfoList.stub(stub[:cancel_steps_info_list]) unless stub[:cancel_steps_info_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CancelStepsInfoList
    class CancelStepsInfoList
      def self.default(visited=[])
        return nil if visited.include?('CancelStepsInfoList')
        visited = visited + ['CancelStepsInfoList']
        [
          CancelStepsInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CancelStepsInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CancelStepsInfo
    class CancelStepsInfo
      def self.default(visited=[])
        return nil if visited.include?('CancelStepsInfo')
        visited = visited + ['CancelStepsInfo']
        {
          step_id: 'step_id',
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CancelStepsInfo.new
        data = {}
        data['StepId'] = stub[:step_id] unless stub[:step_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for CreateSecurityConfiguration
    class CreateSecurityConfiguration
      def self.default(visited=[])
        {
          name: 'name',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStudio
    class CreateStudio
      def self.default(visited=[])
        {
          studio_id: 'studio_id',
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StudioId'] = stub[:studio_id] unless stub[:studio_id].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStudioSessionMapping
    class CreateStudioSessionMapping
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

    # Operation Stubber for DeleteSecurityConfiguration
    class DeleteSecurityConfiguration
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

    # Operation Stubber for DeleteStudio
    class DeleteStudio
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

    # Operation Stubber for DeleteStudioSessionMapping
    class DeleteStudioSessionMapping
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

    # Operation Stubber for DescribeCluster
    class DescribeCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          id: 'id',
          name: 'name',
          status: ClusterStatus.default(visited),
          ec2_instance_attributes: Ec2InstanceAttributes.default(visited),
          instance_collection_type: 'instance_collection_type',
          log_uri: 'log_uri',
          log_encryption_kms_key_id: 'log_encryption_kms_key_id',
          requested_ami_version: 'requested_ami_version',
          running_ami_version: 'running_ami_version',
          release_label: 'release_label',
          auto_terminate: false,
          termination_protected: false,
          visible_to_all_users: false,
          applications: ApplicationList.default(visited),
          tags: TagList.default(visited),
          service_role: 'service_role',
          normalized_instance_hours: 1,
          master_public_dns_name: 'master_public_dns_name',
          configurations: ConfigurationList.default(visited),
          security_configuration: 'security_configuration',
          auto_scaling_role: 'auto_scaling_role',
          scale_down_behavior: 'scale_down_behavior',
          custom_ami_id: 'custom_ami_id',
          ebs_root_volume_size: 1,
          repo_upgrade_on_boot: 'repo_upgrade_on_boot',
          kerberos_attributes: KerberosAttributes.default(visited),
          cluster_arn: 'cluster_arn',
          outpost_arn: 'outpost_arn',
          step_concurrency_level: 1,
          placement_groups: PlacementGroupConfigList.default(visited),
          os_release_label: 'os_release_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = Stubs::ClusterStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Ec2InstanceAttributes'] = Stubs::Ec2InstanceAttributes.stub(stub[:ec2_instance_attributes]) unless stub[:ec2_instance_attributes].nil?
        data['InstanceCollectionType'] = stub[:instance_collection_type] unless stub[:instance_collection_type].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['LogEncryptionKmsKeyId'] = stub[:log_encryption_kms_key_id] unless stub[:log_encryption_kms_key_id].nil?
        data['RequestedAmiVersion'] = stub[:requested_ami_version] unless stub[:requested_ami_version].nil?
        data['RunningAmiVersion'] = stub[:running_ami_version] unless stub[:running_ami_version].nil?
        data['ReleaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['AutoTerminate'] = stub[:auto_terminate] unless stub[:auto_terminate].nil?
        data['TerminationProtected'] = stub[:termination_protected] unless stub[:termination_protected].nil?
        data['VisibleToAllUsers'] = stub[:visible_to_all_users] unless stub[:visible_to_all_users].nil?
        data['Applications'] = Stubs::ApplicationList.stub(stub[:applications]) unless stub[:applications].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['NormalizedInstanceHours'] = stub[:normalized_instance_hours] unless stub[:normalized_instance_hours].nil?
        data['MasterPublicDnsName'] = stub[:master_public_dns_name] unless stub[:master_public_dns_name].nil?
        data['Configurations'] = Stubs::ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['AutoScalingRole'] = stub[:auto_scaling_role] unless stub[:auto_scaling_role].nil?
        data['ScaleDownBehavior'] = stub[:scale_down_behavior] unless stub[:scale_down_behavior].nil?
        data['CustomAmiId'] = stub[:custom_ami_id] unless stub[:custom_ami_id].nil?
        data['EbsRootVolumeSize'] = stub[:ebs_root_volume_size] unless stub[:ebs_root_volume_size].nil?
        data['RepoUpgradeOnBoot'] = stub[:repo_upgrade_on_boot] unless stub[:repo_upgrade_on_boot].nil?
        data['KerberosAttributes'] = Stubs::KerberosAttributes.stub(stub[:kerberos_attributes]) unless stub[:kerberos_attributes].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['OutpostArn'] = stub[:outpost_arn] unless stub[:outpost_arn].nil?
        data['StepConcurrencyLevel'] = stub[:step_concurrency_level] unless stub[:step_concurrency_level].nil?
        data['PlacementGroups'] = Stubs::PlacementGroupConfigList.stub(stub[:placement_groups]) unless stub[:placement_groups].nil?
        data['OSReleaseLabel'] = stub[:os_release_label] unless stub[:os_release_label].nil?
        data
      end
    end

    # List Stubber for PlacementGroupConfigList
    class PlacementGroupConfigList
      def self.default(visited=[])
        return nil if visited.include?('PlacementGroupConfigList')
        visited = visited + ['PlacementGroupConfigList']
        [
          PlacementGroupConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlacementGroupConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacementGroupConfig
    class PlacementGroupConfig
      def self.default(visited=[])
        return nil if visited.include?('PlacementGroupConfig')
        visited = visited + ['PlacementGroupConfig']
        {
          instance_role: 'instance_role',
          placement_strategy: 'placement_strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementGroupConfig.new
        data = {}
        data['InstanceRole'] = stub[:instance_role] unless stub[:instance_role].nil?
        data['PlacementStrategy'] = stub[:placement_strategy] unless stub[:placement_strategy].nil?
        data
      end
    end

    # Structure Stubber for KerberosAttributes
    class KerberosAttributes
      def self.default(visited=[])
        return nil if visited.include?('KerberosAttributes')
        visited = visited + ['KerberosAttributes']
        {
          realm: 'realm',
          kdc_admin_password: 'kdc_admin_password',
          cross_realm_trust_principal_password: 'cross_realm_trust_principal_password',
          ad_domain_join_user: 'ad_domain_join_user',
          ad_domain_join_password: 'ad_domain_join_password',
        }
      end

      def self.stub(stub)
        stub ||= Types::KerberosAttributes.new
        data = {}
        data['Realm'] = stub[:realm] unless stub[:realm].nil?
        data['KdcAdminPassword'] = stub[:kdc_admin_password] unless stub[:kdc_admin_password].nil?
        data['CrossRealmTrustPrincipalPassword'] = stub[:cross_realm_trust_principal_password] unless stub[:cross_realm_trust_principal_password].nil?
        data['ADDomainJoinUser'] = stub[:ad_domain_join_user] unless stub[:ad_domain_join_user].nil?
        data['ADDomainJoinPassword'] = stub[:ad_domain_join_password] unless stub[:ad_domain_join_password].nil?
        data
      end
    end

    # List Stubber for ConfigurationList
    class ConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationList')
        visited = visited + ['ConfigurationList']
        [
          Configuration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Configuration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          classification: 'classification',
          configurations: ConfigurationList.default(visited),
          properties: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Configuration.new
        data = {}
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['Configurations'] = Stubs::ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['Properties'] = Stubs::StringMap.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # Map Stubber for StringMap
    class StringMap
      def self.default(visited=[])
        return nil if visited.include?('StringMap')
        visited = visited + ['StringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
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

    # List Stubber for ApplicationList
    class ApplicationList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationList')
        visited = visited + ['ApplicationList']
        [
          Application.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Application.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Application
    class Application
      def self.default(visited=[])
        return nil if visited.include?('Application')
        visited = visited + ['Application']
        {
          name: 'name',
          version: 'version',
          args: StringList.default(visited),
          additional_info: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Application.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Args'] = Stubs::StringList.stub(stub[:args]) unless stub[:args].nil?
        data['AdditionalInfo'] = Stubs::StringMap.stub(stub[:additional_info]) unless stub[:additional_info].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Structure Stubber for Ec2InstanceAttributes
    class Ec2InstanceAttributes
      def self.default(visited=[])
        return nil if visited.include?('Ec2InstanceAttributes')
        visited = visited + ['Ec2InstanceAttributes']
        {
          ec2_key_name: 'ec2_key_name',
          ec2_subnet_id: 'ec2_subnet_id',
          requested_ec2_subnet_ids: XmlStringMaxLen256List.default(visited),
          ec2_availability_zone: 'ec2_availability_zone',
          requested_ec2_availability_zones: XmlStringMaxLen256List.default(visited),
          iam_instance_profile: 'iam_instance_profile',
          emr_managed_master_security_group: 'emr_managed_master_security_group',
          emr_managed_slave_security_group: 'emr_managed_slave_security_group',
          service_access_security_group: 'service_access_security_group',
          additional_master_security_groups: StringList.default(visited),
          additional_slave_security_groups: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Ec2InstanceAttributes.new
        data = {}
        data['Ec2KeyName'] = stub[:ec2_key_name] unless stub[:ec2_key_name].nil?
        data['Ec2SubnetId'] = stub[:ec2_subnet_id] unless stub[:ec2_subnet_id].nil?
        data['RequestedEc2SubnetIds'] = Stubs::XmlStringMaxLen256List.stub(stub[:requested_ec2_subnet_ids]) unless stub[:requested_ec2_subnet_ids].nil?
        data['Ec2AvailabilityZone'] = stub[:ec2_availability_zone] unless stub[:ec2_availability_zone].nil?
        data['RequestedEc2AvailabilityZones'] = Stubs::XmlStringMaxLen256List.stub(stub[:requested_ec2_availability_zones]) unless stub[:requested_ec2_availability_zones].nil?
        data['IamInstanceProfile'] = stub[:iam_instance_profile] unless stub[:iam_instance_profile].nil?
        data['EmrManagedMasterSecurityGroup'] = stub[:emr_managed_master_security_group] unless stub[:emr_managed_master_security_group].nil?
        data['EmrManagedSlaveSecurityGroup'] = stub[:emr_managed_slave_security_group] unless stub[:emr_managed_slave_security_group].nil?
        data['ServiceAccessSecurityGroup'] = stub[:service_access_security_group] unless stub[:service_access_security_group].nil?
        data['AdditionalMasterSecurityGroups'] = Stubs::StringList.stub(stub[:additional_master_security_groups]) unless stub[:additional_master_security_groups].nil?
        data['AdditionalSlaveSecurityGroups'] = Stubs::StringList.stub(stub[:additional_slave_security_groups]) unless stub[:additional_slave_security_groups].nil?
        data
      end
    end

    # List Stubber for XmlStringMaxLen256List
    class XmlStringMaxLen256List
      def self.default(visited=[])
        return nil if visited.include?('XmlStringMaxLen256List')
        visited = visited + ['XmlStringMaxLen256List']
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

    # Structure Stubber for ClusterStatus
    class ClusterStatus
      def self.default(visited=[])
        return nil if visited.include?('ClusterStatus')
        visited = visited + ['ClusterStatus']
        {
          state: 'state',
          state_change_reason: ClusterStateChangeReason.default(visited),
          timeline: ClusterTimeline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::ClusterStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['Timeline'] = Stubs::ClusterTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data
      end
    end

    # Structure Stubber for ClusterTimeline
    class ClusterTimeline
      def self.default(visited=[])
        return nil if visited.include?('ClusterTimeline')
        visited = visited + ['ClusterTimeline']
        {
          creation_date_time: Time.now,
          ready_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterTimeline.new
        data = {}
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['ReadyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ready_date_time]).to_i unless stub[:ready_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Structure Stubber for ClusterStateChangeReason
    class ClusterStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('ClusterStateChangeReason')
        visited = visited + ['ClusterStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeJobFlows
    class DescribeJobFlows
      def self.default(visited=[])
        {
          job_flows: JobFlowDetailList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobFlows'] = Stubs::JobFlowDetailList.stub(stub[:job_flows]) unless stub[:job_flows].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for JobFlowDetailList
    class JobFlowDetailList
      def self.default(visited=[])
        return nil if visited.include?('JobFlowDetailList')
        visited = visited + ['JobFlowDetailList']
        [
          JobFlowDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobFlowDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobFlowDetail
    class JobFlowDetail
      def self.default(visited=[])
        return nil if visited.include?('JobFlowDetail')
        visited = visited + ['JobFlowDetail']
        {
          job_flow_id: 'job_flow_id',
          name: 'name',
          log_uri: 'log_uri',
          log_encryption_kms_key_id: 'log_encryption_kms_key_id',
          ami_version: 'ami_version',
          execution_status_detail: JobFlowExecutionStatusDetail.default(visited),
          instances: JobFlowInstancesDetail.default(visited),
          steps: StepDetailList.default(visited),
          bootstrap_actions: BootstrapActionDetailList.default(visited),
          supported_products: SupportedProductsList.default(visited),
          visible_to_all_users: false,
          job_flow_role: 'job_flow_role',
          service_role: 'service_role',
          auto_scaling_role: 'auto_scaling_role',
          scale_down_behavior: 'scale_down_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobFlowDetail.new
        data = {}
        data['JobFlowId'] = stub[:job_flow_id] unless stub[:job_flow_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['LogEncryptionKmsKeyId'] = stub[:log_encryption_kms_key_id] unless stub[:log_encryption_kms_key_id].nil?
        data['AmiVersion'] = stub[:ami_version] unless stub[:ami_version].nil?
        data['ExecutionStatusDetail'] = Stubs::JobFlowExecutionStatusDetail.stub(stub[:execution_status_detail]) unless stub[:execution_status_detail].nil?
        data['Instances'] = Stubs::JobFlowInstancesDetail.stub(stub[:instances]) unless stub[:instances].nil?
        data['Steps'] = Stubs::StepDetailList.stub(stub[:steps]) unless stub[:steps].nil?
        data['BootstrapActions'] = Stubs::BootstrapActionDetailList.stub(stub[:bootstrap_actions]) unless stub[:bootstrap_actions].nil?
        data['SupportedProducts'] = Stubs::SupportedProductsList.stub(stub[:supported_products]) unless stub[:supported_products].nil?
        data['VisibleToAllUsers'] = stub[:visible_to_all_users] unless stub[:visible_to_all_users].nil?
        data['JobFlowRole'] = stub[:job_flow_role] unless stub[:job_flow_role].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['AutoScalingRole'] = stub[:auto_scaling_role] unless stub[:auto_scaling_role].nil?
        data['ScaleDownBehavior'] = stub[:scale_down_behavior] unless stub[:scale_down_behavior].nil?
        data
      end
    end

    # List Stubber for SupportedProductsList
    class SupportedProductsList
      def self.default(visited=[])
        return nil if visited.include?('SupportedProductsList')
        visited = visited + ['SupportedProductsList']
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

    # List Stubber for BootstrapActionDetailList
    class BootstrapActionDetailList
      def self.default(visited=[])
        return nil if visited.include?('BootstrapActionDetailList')
        visited = visited + ['BootstrapActionDetailList']
        [
          BootstrapActionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BootstrapActionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BootstrapActionDetail
    class BootstrapActionDetail
      def self.default(visited=[])
        return nil if visited.include?('BootstrapActionDetail')
        visited = visited + ['BootstrapActionDetail']
        {
          bootstrap_action_config: BootstrapActionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BootstrapActionDetail.new
        data = {}
        data['BootstrapActionConfig'] = Stubs::BootstrapActionConfig.stub(stub[:bootstrap_action_config]) unless stub[:bootstrap_action_config].nil?
        data
      end
    end

    # Structure Stubber for BootstrapActionConfig
    class BootstrapActionConfig
      def self.default(visited=[])
        return nil if visited.include?('BootstrapActionConfig')
        visited = visited + ['BootstrapActionConfig']
        {
          name: 'name',
          script_bootstrap_action: ScriptBootstrapActionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BootstrapActionConfig.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ScriptBootstrapAction'] = Stubs::ScriptBootstrapActionConfig.stub(stub[:script_bootstrap_action]) unless stub[:script_bootstrap_action].nil?
        data
      end
    end

    # Structure Stubber for ScriptBootstrapActionConfig
    class ScriptBootstrapActionConfig
      def self.default(visited=[])
        return nil if visited.include?('ScriptBootstrapActionConfig')
        visited = visited + ['ScriptBootstrapActionConfig']
        {
          path: 'path',
          args: XmlStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScriptBootstrapActionConfig.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Args'] = Stubs::XmlStringList.stub(stub[:args]) unless stub[:args].nil?
        data
      end
    end

    # List Stubber for XmlStringList
    class XmlStringList
      def self.default(visited=[])
        return nil if visited.include?('XmlStringList')
        visited = visited + ['XmlStringList']
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

    # List Stubber for StepDetailList
    class StepDetailList
      def self.default(visited=[])
        return nil if visited.include?('StepDetailList')
        visited = visited + ['StepDetailList']
        [
          StepDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StepDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StepDetail
    class StepDetail
      def self.default(visited=[])
        return nil if visited.include?('StepDetail')
        visited = visited + ['StepDetail']
        {
          step_config: StepConfig.default(visited),
          execution_status_detail: StepExecutionStatusDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StepDetail.new
        data = {}
        data['StepConfig'] = Stubs::StepConfig.stub(stub[:step_config]) unless stub[:step_config].nil?
        data['ExecutionStatusDetail'] = Stubs::StepExecutionStatusDetail.stub(stub[:execution_status_detail]) unless stub[:execution_status_detail].nil?
        data
      end
    end

    # Structure Stubber for StepExecutionStatusDetail
    class StepExecutionStatusDetail
      def self.default(visited=[])
        return nil if visited.include?('StepExecutionStatusDetail')
        visited = visited + ['StepExecutionStatusDetail']
        {
          state: 'state',
          creation_date_time: Time.now,
          start_date_time: Time.now,
          end_date_time: Time.now,
          last_state_change_reason: 'last_state_change_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::StepExecutionStatusDetail.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['StartDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date_time]).to_i unless stub[:start_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data['LastStateChangeReason'] = stub[:last_state_change_reason] unless stub[:last_state_change_reason].nil?
        data
      end
    end

    # Structure Stubber for StepConfig
    class StepConfig
      def self.default(visited=[])
        return nil if visited.include?('StepConfig')
        visited = visited + ['StepConfig']
        {
          name: 'name',
          action_on_failure: 'action_on_failure',
          hadoop_jar_step: HadoopJarStepConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StepConfig.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ActionOnFailure'] = stub[:action_on_failure] unless stub[:action_on_failure].nil?
        data['HadoopJarStep'] = Stubs::HadoopJarStepConfig.stub(stub[:hadoop_jar_step]) unless stub[:hadoop_jar_step].nil?
        data
      end
    end

    # Structure Stubber for HadoopJarStepConfig
    class HadoopJarStepConfig
      def self.default(visited=[])
        return nil if visited.include?('HadoopJarStepConfig')
        visited = visited + ['HadoopJarStepConfig']
        {
          properties: KeyValueList.default(visited),
          jar: 'jar',
          main_class: 'main_class',
          args: XmlStringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HadoopJarStepConfig.new
        data = {}
        data['Properties'] = Stubs::KeyValueList.stub(stub[:properties]) unless stub[:properties].nil?
        data['Jar'] = stub[:jar] unless stub[:jar].nil?
        data['MainClass'] = stub[:main_class] unless stub[:main_class].nil?
        data['Args'] = Stubs::XmlStringList.stub(stub[:args]) unless stub[:args].nil?
        data
      end
    end

    # List Stubber for KeyValueList
    class KeyValueList
      def self.default(visited=[])
        return nil if visited.include?('KeyValueList')
        visited = visited + ['KeyValueList']
        [
          KeyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyValue
    class KeyValue
      def self.default(visited=[])
        return nil if visited.include?('KeyValue')
        visited = visited + ['KeyValue']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyValue.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for JobFlowInstancesDetail
    class JobFlowInstancesDetail
      def self.default(visited=[])
        return nil if visited.include?('JobFlowInstancesDetail')
        visited = visited + ['JobFlowInstancesDetail']
        {
          master_instance_type: 'master_instance_type',
          master_public_dns_name: 'master_public_dns_name',
          master_instance_id: 'master_instance_id',
          slave_instance_type: 'slave_instance_type',
          instance_count: 1,
          instance_groups: InstanceGroupDetailList.default(visited),
          normalized_instance_hours: 1,
          ec2_key_name: 'ec2_key_name',
          ec2_subnet_id: 'ec2_subnet_id',
          placement: PlacementType.default(visited),
          keep_job_flow_alive_when_no_steps: false,
          termination_protected: false,
          hadoop_version: 'hadoop_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobFlowInstancesDetail.new
        data = {}
        data['MasterInstanceType'] = stub[:master_instance_type] unless stub[:master_instance_type].nil?
        data['MasterPublicDnsName'] = stub[:master_public_dns_name] unless stub[:master_public_dns_name].nil?
        data['MasterInstanceId'] = stub[:master_instance_id] unless stub[:master_instance_id].nil?
        data['SlaveInstanceType'] = stub[:slave_instance_type] unless stub[:slave_instance_type].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['InstanceGroups'] = Stubs::InstanceGroupDetailList.stub(stub[:instance_groups]) unless stub[:instance_groups].nil?
        data['NormalizedInstanceHours'] = stub[:normalized_instance_hours] unless stub[:normalized_instance_hours].nil?
        data['Ec2KeyName'] = stub[:ec2_key_name] unless stub[:ec2_key_name].nil?
        data['Ec2SubnetId'] = stub[:ec2_subnet_id] unless stub[:ec2_subnet_id].nil?
        data['Placement'] = Stubs::PlacementType.stub(stub[:placement]) unless stub[:placement].nil?
        data['KeepJobFlowAliveWhenNoSteps'] = stub[:keep_job_flow_alive_when_no_steps] unless stub[:keep_job_flow_alive_when_no_steps].nil?
        data['TerminationProtected'] = stub[:termination_protected] unless stub[:termination_protected].nil?
        data['HadoopVersion'] = stub[:hadoop_version] unless stub[:hadoop_version].nil?
        data
      end
    end

    # Structure Stubber for PlacementType
    class PlacementType
      def self.default(visited=[])
        return nil if visited.include?('PlacementType')
        visited = visited + ['PlacementType']
        {
          availability_zone: 'availability_zone',
          availability_zones: XmlStringMaxLen256List.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementType.new
        data = {}
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['AvailabilityZones'] = Stubs::XmlStringMaxLen256List.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data
      end
    end

    # List Stubber for InstanceGroupDetailList
    class InstanceGroupDetailList
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupDetailList')
        visited = visited + ['InstanceGroupDetailList']
        [
          InstanceGroupDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceGroupDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceGroupDetail
    class InstanceGroupDetail
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupDetail')
        visited = visited + ['InstanceGroupDetail']
        {
          instance_group_id: 'instance_group_id',
          name: 'name',
          market: 'market',
          instance_role: 'instance_role',
          bid_price: 'bid_price',
          instance_type: 'instance_type',
          instance_request_count: 1,
          instance_running_count: 1,
          state: 'state',
          last_state_change_reason: 'last_state_change_reason',
          creation_date_time: Time.now,
          start_date_time: Time.now,
          ready_date_time: Time.now,
          end_date_time: Time.now,
          custom_ami_id: 'custom_ami_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceGroupDetail.new
        data = {}
        data['InstanceGroupId'] = stub[:instance_group_id] unless stub[:instance_group_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Market'] = stub[:market] unless stub[:market].nil?
        data['InstanceRole'] = stub[:instance_role] unless stub[:instance_role].nil?
        data['BidPrice'] = stub[:bid_price] unless stub[:bid_price].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InstanceRequestCount'] = stub[:instance_request_count] unless stub[:instance_request_count].nil?
        data['InstanceRunningCount'] = stub[:instance_running_count] unless stub[:instance_running_count].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastStateChangeReason'] = stub[:last_state_change_reason] unless stub[:last_state_change_reason].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['StartDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date_time]).to_i unless stub[:start_date_time].nil?
        data['ReadyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ready_date_time]).to_i unless stub[:ready_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data['CustomAmiId'] = stub[:custom_ami_id] unless stub[:custom_ami_id].nil?
        data
      end
    end

    # Structure Stubber for JobFlowExecutionStatusDetail
    class JobFlowExecutionStatusDetail
      def self.default(visited=[])
        return nil if visited.include?('JobFlowExecutionStatusDetail')
        visited = visited + ['JobFlowExecutionStatusDetail']
        {
          state: 'state',
          creation_date_time: Time.now,
          start_date_time: Time.now,
          ready_date_time: Time.now,
          end_date_time: Time.now,
          last_state_change_reason: 'last_state_change_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobFlowExecutionStatusDetail.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['StartDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date_time]).to_i unless stub[:start_date_time].nil?
        data['ReadyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ready_date_time]).to_i unless stub[:ready_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data['LastStateChangeReason'] = stub[:last_state_change_reason] unless stub[:last_state_change_reason].nil?
        data
      end
    end

    # Operation Stubber for DescribeNotebookExecution
    class DescribeNotebookExecution
      def self.default(visited=[])
        {
          notebook_execution: NotebookExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookExecution'] = Stubs::NotebookExecution.stub(stub[:notebook_execution]) unless stub[:notebook_execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for NotebookExecution
    class NotebookExecution
      def self.default(visited=[])
        return nil if visited.include?('NotebookExecution')
        visited = visited + ['NotebookExecution']
        {
          notebook_execution_id: 'notebook_execution_id',
          editor_id: 'editor_id',
          execution_engine: ExecutionEngineConfig.default(visited),
          notebook_execution_name: 'notebook_execution_name',
          notebook_params: 'notebook_params',
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
          arn: 'arn',
          output_notebook_uri: 'output_notebook_uri',
          last_state_change_reason: 'last_state_change_reason',
          notebook_instance_security_group_id: 'notebook_instance_security_group_id',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotebookExecution.new
        data = {}
        data['NotebookExecutionId'] = stub[:notebook_execution_id] unless stub[:notebook_execution_id].nil?
        data['EditorId'] = stub[:editor_id] unless stub[:editor_id].nil?
        data['ExecutionEngine'] = Stubs::ExecutionEngineConfig.stub(stub[:execution_engine]) unless stub[:execution_engine].nil?
        data['NotebookExecutionName'] = stub[:notebook_execution_name] unless stub[:notebook_execution_name].nil?
        data['NotebookParams'] = stub[:notebook_params] unless stub[:notebook_params].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OutputNotebookURI'] = stub[:output_notebook_uri] unless stub[:output_notebook_uri].nil?
        data['LastStateChangeReason'] = stub[:last_state_change_reason] unless stub[:last_state_change_reason].nil?
        data['NotebookInstanceSecurityGroupId'] = stub[:notebook_instance_security_group_id] unless stub[:notebook_instance_security_group_id].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ExecutionEngineConfig
    class ExecutionEngineConfig
      def self.default(visited=[])
        return nil if visited.include?('ExecutionEngineConfig')
        visited = visited + ['ExecutionEngineConfig']
        {
          id: 'id',
          type: 'type',
          master_instance_security_group_id: 'master_instance_security_group_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionEngineConfig.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['MasterInstanceSecurityGroupId'] = stub[:master_instance_security_group_id] unless stub[:master_instance_security_group_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeReleaseLabel
    class DescribeReleaseLabel
      def self.default(visited=[])
        {
          release_label: 'release_label',
          applications: SimplifiedApplicationList.default(visited),
          next_token: 'next_token',
          available_os_releases: OSReleaseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReleaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['Applications'] = Stubs::SimplifiedApplicationList.stub(stub[:applications]) unless stub[:applications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['AvailableOSReleases'] = Stubs::OSReleaseList.stub(stub[:available_os_releases]) unless stub[:available_os_releases].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OSReleaseList
    class OSReleaseList
      def self.default(visited=[])
        return nil if visited.include?('OSReleaseList')
        visited = visited + ['OSReleaseList']
        [
          OSRelease.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OSRelease.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OSRelease
    class OSRelease
      def self.default(visited=[])
        return nil if visited.include?('OSRelease')
        visited = visited + ['OSRelease']
        {
          label: 'label',
        }
      end

      def self.stub(stub)
        stub ||= Types::OSRelease.new
        data = {}
        data['Label'] = stub[:label] unless stub[:label].nil?
        data
      end
    end

    # List Stubber for SimplifiedApplicationList
    class SimplifiedApplicationList
      def self.default(visited=[])
        return nil if visited.include?('SimplifiedApplicationList')
        visited = visited + ['SimplifiedApplicationList']
        [
          SimplifiedApplication.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimplifiedApplication.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimplifiedApplication
    class SimplifiedApplication
      def self.default(visited=[])
        return nil if visited.include?('SimplifiedApplication')
        visited = visited + ['SimplifiedApplication']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SimplifiedApplication.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeSecurityConfiguration
    class DescribeSecurityConfiguration
      def self.default(visited=[])
        {
          name: 'name',
          security_configuration: 'security_configuration',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SecurityConfiguration'] = stub[:security_configuration] unless stub[:security_configuration].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeStep
    class DescribeStep
      def self.default(visited=[])
        {
          step: Step.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Step'] = Stubs::Step.stub(stub[:step]) unless stub[:step].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Step
    class Step
      def self.default(visited=[])
        return nil if visited.include?('Step')
        visited = visited + ['Step']
        {
          id: 'id',
          name: 'name',
          config: HadoopStepConfig.default(visited),
          action_on_failure: 'action_on_failure',
          status: StepStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Step.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Config'] = Stubs::HadoopStepConfig.stub(stub[:config]) unless stub[:config].nil?
        data['ActionOnFailure'] = stub[:action_on_failure] unless stub[:action_on_failure].nil?
        data['Status'] = Stubs::StepStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for StepStatus
    class StepStatus
      def self.default(visited=[])
        return nil if visited.include?('StepStatus')
        visited = visited + ['StepStatus']
        {
          state: 'state',
          state_change_reason: StepStateChangeReason.default(visited),
          failure_details: FailureDetails.default(visited),
          timeline: StepTimeline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StepStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::StepStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['FailureDetails'] = Stubs::FailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['Timeline'] = Stubs::StepTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data
      end
    end

    # Structure Stubber for StepTimeline
    class StepTimeline
      def self.default(visited=[])
        return nil if visited.include?('StepTimeline')
        visited = visited + ['StepTimeline']
        {
          creation_date_time: Time.now,
          start_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StepTimeline.new
        data = {}
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['StartDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date_time]).to_i unless stub[:start_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Structure Stubber for FailureDetails
    class FailureDetails
      def self.default(visited=[])
        return nil if visited.include?('FailureDetails')
        visited = visited + ['FailureDetails']
        {
          reason: 'reason',
          message: 'message',
          log_file: 'log_file',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureDetails.new
        data = {}
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['LogFile'] = stub[:log_file] unless stub[:log_file].nil?
        data
      end
    end

    # Structure Stubber for StepStateChangeReason
    class StepStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('StepStateChangeReason')
        visited = visited + ['StepStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::StepStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for HadoopStepConfig
    class HadoopStepConfig
      def self.default(visited=[])
        return nil if visited.include?('HadoopStepConfig')
        visited = visited + ['HadoopStepConfig']
        {
          jar: 'jar',
          properties: StringMap.default(visited),
          main_class: 'main_class',
          args: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HadoopStepConfig.new
        data = {}
        data['Jar'] = stub[:jar] unless stub[:jar].nil?
        data['Properties'] = Stubs::StringMap.stub(stub[:properties]) unless stub[:properties].nil?
        data['MainClass'] = stub[:main_class] unless stub[:main_class].nil?
        data['Args'] = Stubs::StringList.stub(stub[:args]) unless stub[:args].nil?
        data
      end
    end

    # Operation Stubber for DescribeStudio
    class DescribeStudio
      def self.default(visited=[])
        {
          studio: Studio.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Studio'] = Stubs::Studio.stub(stub[:studio]) unless stub[:studio].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Studio
    class Studio
      def self.default(visited=[])
        return nil if visited.include?('Studio')
        visited = visited + ['Studio']
        {
          studio_id: 'studio_id',
          studio_arn: 'studio_arn',
          name: 'name',
          description: 'description',
          auth_mode: 'auth_mode',
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIdList.default(visited),
          service_role: 'service_role',
          user_role: 'user_role',
          workspace_security_group_id: 'workspace_security_group_id',
          engine_security_group_id: 'engine_security_group_id',
          url: 'url',
          creation_time: Time.now,
          default_s3_location: 'default_s3_location',
          idp_auth_url: 'idp_auth_url',
          idp_relay_state_parameter_name: 'idp_relay_state_parameter_name',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Studio.new
        data = {}
        data['StudioId'] = stub[:studio_id] unless stub[:studio_id].nil?
        data['StudioArn'] = stub[:studio_arn] unless stub[:studio_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['AuthMode'] = stub[:auth_mode] unless stub[:auth_mode].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = Stubs::SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['UserRole'] = stub[:user_role] unless stub[:user_role].nil?
        data['WorkspaceSecurityGroupId'] = stub[:workspace_security_group_id] unless stub[:workspace_security_group_id].nil?
        data['EngineSecurityGroupId'] = stub[:engine_security_group_id] unless stub[:engine_security_group_id].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DefaultS3Location'] = stub[:default_s3_location] unless stub[:default_s3_location].nil?
        data['IdpAuthUrl'] = stub[:idp_auth_url] unless stub[:idp_auth_url].nil?
        data['IdpRelayStateParameterName'] = stub[:idp_relay_state_parameter_name] unless stub[:idp_relay_state_parameter_name].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
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

    # Operation Stubber for GetAutoTerminationPolicy
    class GetAutoTerminationPolicy
      def self.default(visited=[])
        {
          auto_termination_policy: AutoTerminationPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoTerminationPolicy'] = Stubs::AutoTerminationPolicy.stub(stub[:auto_termination_policy]) unless stub[:auto_termination_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AutoTerminationPolicy
    class AutoTerminationPolicy
      def self.default(visited=[])
        return nil if visited.include?('AutoTerminationPolicy')
        visited = visited + ['AutoTerminationPolicy']
        {
          idle_timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTerminationPolicy.new
        data = {}
        data['IdleTimeout'] = stub[:idle_timeout] unless stub[:idle_timeout].nil?
        data
      end
    end

    # Operation Stubber for GetBlockPublicAccessConfiguration
    class GetBlockPublicAccessConfiguration
      def self.default(visited=[])
        {
          block_public_access_configuration: BlockPublicAccessConfiguration.default(visited),
          block_public_access_configuration_metadata: BlockPublicAccessConfigurationMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BlockPublicAccessConfiguration'] = Stubs::BlockPublicAccessConfiguration.stub(stub[:block_public_access_configuration]) unless stub[:block_public_access_configuration].nil?
        data['BlockPublicAccessConfigurationMetadata'] = Stubs::BlockPublicAccessConfigurationMetadata.stub(stub[:block_public_access_configuration_metadata]) unless stub[:block_public_access_configuration_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BlockPublicAccessConfigurationMetadata
    class BlockPublicAccessConfigurationMetadata
      def self.default(visited=[])
        return nil if visited.include?('BlockPublicAccessConfigurationMetadata')
        visited = visited + ['BlockPublicAccessConfigurationMetadata']
        {
          creation_date_time: Time.now,
          created_by_arn: 'created_by_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockPublicAccessConfigurationMetadata.new
        data = {}
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['CreatedByArn'] = stub[:created_by_arn] unless stub[:created_by_arn].nil?
        data
      end
    end

    # Structure Stubber for BlockPublicAccessConfiguration
    class BlockPublicAccessConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BlockPublicAccessConfiguration')
        visited = visited + ['BlockPublicAccessConfiguration']
        {
          block_public_security_group_rules: false,
          permitted_public_security_group_rule_ranges: PortRanges.default(visited),
          classification: 'classification',
          configurations: ConfigurationList.default(visited),
          properties: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockPublicAccessConfiguration.new
        data = {}
        data['BlockPublicSecurityGroupRules'] = stub[:block_public_security_group_rules] unless stub[:block_public_security_group_rules].nil?
        data['PermittedPublicSecurityGroupRuleRanges'] = Stubs::PortRanges.stub(stub[:permitted_public_security_group_rule_ranges]) unless stub[:permitted_public_security_group_rule_ranges].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['Configurations'] = Stubs::ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['Properties'] = Stubs::StringMap.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for PortRanges
    class PortRanges
      def self.default(visited=[])
        return nil if visited.include?('PortRanges')
        visited = visited + ['PortRanges']
        [
          PortRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortRange
    class PortRange
      def self.default(visited=[])
        return nil if visited.include?('PortRange')
        visited = visited + ['PortRange']
        {
          min_range: 1,
          max_range: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRange.new
        data = {}
        data['MinRange'] = stub[:min_range] unless stub[:min_range].nil?
        data['MaxRange'] = stub[:max_range] unless stub[:max_range].nil?
        data
      end
    end

    # Operation Stubber for GetManagedScalingPolicy
    class GetManagedScalingPolicy
      def self.default(visited=[])
        {
          managed_scaling_policy: ManagedScalingPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManagedScalingPolicy'] = Stubs::ManagedScalingPolicy.stub(stub[:managed_scaling_policy]) unless stub[:managed_scaling_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ManagedScalingPolicy
    class ManagedScalingPolicy
      def self.default(visited=[])
        return nil if visited.include?('ManagedScalingPolicy')
        visited = visited + ['ManagedScalingPolicy']
        {
          compute_limits: ComputeLimits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedScalingPolicy.new
        data = {}
        data['ComputeLimits'] = Stubs::ComputeLimits.stub(stub[:compute_limits]) unless stub[:compute_limits].nil?
        data
      end
    end

    # Structure Stubber for ComputeLimits
    class ComputeLimits
      def self.default(visited=[])
        return nil if visited.include?('ComputeLimits')
        visited = visited + ['ComputeLimits']
        {
          unit_type: 'unit_type',
          minimum_capacity_units: 1,
          maximum_capacity_units: 1,
          maximum_on_demand_capacity_units: 1,
          maximum_core_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeLimits.new
        data = {}
        data['UnitType'] = stub[:unit_type] unless stub[:unit_type].nil?
        data['MinimumCapacityUnits'] = stub[:minimum_capacity_units] unless stub[:minimum_capacity_units].nil?
        data['MaximumCapacityUnits'] = stub[:maximum_capacity_units] unless stub[:maximum_capacity_units].nil?
        data['MaximumOnDemandCapacityUnits'] = stub[:maximum_on_demand_capacity_units] unless stub[:maximum_on_demand_capacity_units].nil?
        data['MaximumCoreCapacityUnits'] = stub[:maximum_core_capacity_units] unless stub[:maximum_core_capacity_units].nil?
        data
      end
    end

    # Operation Stubber for GetStudioSessionMapping
    class GetStudioSessionMapping
      def self.default(visited=[])
        {
          session_mapping: SessionMappingDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SessionMapping'] = Stubs::SessionMappingDetail.stub(stub[:session_mapping]) unless stub[:session_mapping].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SessionMappingDetail
    class SessionMappingDetail
      def self.default(visited=[])
        return nil if visited.include?('SessionMappingDetail')
        visited = visited + ['SessionMappingDetail']
        {
          studio_id: 'studio_id',
          identity_id: 'identity_id',
          identity_name: 'identity_name',
          identity_type: 'identity_type',
          session_policy_arn: 'session_policy_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionMappingDetail.new
        data = {}
        data['StudioId'] = stub[:studio_id] unless stub[:studio_id].nil?
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['IdentityName'] = stub[:identity_name] unless stub[:identity_name].nil?
        data['IdentityType'] = stub[:identity_type] unless stub[:identity_type].nil?
        data['SessionPolicyArn'] = stub[:session_policy_arn] unless stub[:session_policy_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListBootstrapActions
    class ListBootstrapActions
      def self.default(visited=[])
        {
          bootstrap_actions: CommandList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BootstrapActions'] = Stubs::CommandList.stub(stub[:bootstrap_actions]) unless stub[:bootstrap_actions].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CommandList
    class CommandList
      def self.default(visited=[])
        return nil if visited.include?('CommandList')
        visited = visited + ['CommandList']
        [
          Command.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Command.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Command
    class Command
      def self.default(visited=[])
        return nil if visited.include?('Command')
        visited = visited + ['Command']
        {
          name: 'name',
          script_path: 'script_path',
          args: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Command.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ScriptPath'] = stub[:script_path] unless stub[:script_path].nil?
        data['Args'] = Stubs::StringList.stub(stub[:args]) unless stub[:args].nil?
        data
      end
    end

    # Operation Stubber for ListClusters
    class ListClusters
      def self.default(visited=[])
        {
          clusters: ClusterSummaryList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Clusters'] = Stubs::ClusterSummaryList.stub(stub[:clusters]) unless stub[:clusters].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterSummaryList
    class ClusterSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ClusterSummaryList')
        visited = visited + ['ClusterSummaryList']
        [
          ClusterSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusterSummary
    class ClusterSummary
      def self.default(visited=[])
        return nil if visited.include?('ClusterSummary')
        visited = visited + ['ClusterSummary']
        {
          id: 'id',
          name: 'name',
          status: ClusterStatus.default(visited),
          normalized_instance_hours: 1,
          cluster_arn: 'cluster_arn',
          outpost_arn: 'outpost_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = Stubs::ClusterStatus.stub(stub[:status]) unless stub[:status].nil?
        data['NormalizedInstanceHours'] = stub[:normalized_instance_hours] unless stub[:normalized_instance_hours].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['OutpostArn'] = stub[:outpost_arn] unless stub[:outpost_arn].nil?
        data
      end
    end

    # Operation Stubber for ListInstanceFleets
    class ListInstanceFleets
      def self.default(visited=[])
        {
          instance_fleets: InstanceFleetList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceFleets'] = Stubs::InstanceFleetList.stub(stub[:instance_fleets]) unless stub[:instance_fleets].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceFleetList
    class InstanceFleetList
      def self.default(visited=[])
        return nil if visited.include?('InstanceFleetList')
        visited = visited + ['InstanceFleetList']
        [
          InstanceFleet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceFleet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceFleet
    class InstanceFleet
      def self.default(visited=[])
        return nil if visited.include?('InstanceFleet')
        visited = visited + ['InstanceFleet']
        {
          id: 'id',
          name: 'name',
          status: InstanceFleetStatus.default(visited),
          instance_fleet_type: 'instance_fleet_type',
          target_on_demand_capacity: 1,
          target_spot_capacity: 1,
          provisioned_on_demand_capacity: 1,
          provisioned_spot_capacity: 1,
          instance_type_specifications: InstanceTypeSpecificationList.default(visited),
          launch_specifications: InstanceFleetProvisioningSpecifications.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceFleet.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = Stubs::InstanceFleetStatus.stub(stub[:status]) unless stub[:status].nil?
        data['InstanceFleetType'] = stub[:instance_fleet_type] unless stub[:instance_fleet_type].nil?
        data['TargetOnDemandCapacity'] = stub[:target_on_demand_capacity] unless stub[:target_on_demand_capacity].nil?
        data['TargetSpotCapacity'] = stub[:target_spot_capacity] unless stub[:target_spot_capacity].nil?
        data['ProvisionedOnDemandCapacity'] = stub[:provisioned_on_demand_capacity] unless stub[:provisioned_on_demand_capacity].nil?
        data['ProvisionedSpotCapacity'] = stub[:provisioned_spot_capacity] unless stub[:provisioned_spot_capacity].nil?
        data['InstanceTypeSpecifications'] = Stubs::InstanceTypeSpecificationList.stub(stub[:instance_type_specifications]) unless stub[:instance_type_specifications].nil?
        data['LaunchSpecifications'] = Stubs::InstanceFleetProvisioningSpecifications.stub(stub[:launch_specifications]) unless stub[:launch_specifications].nil?
        data
      end
    end

    # Structure Stubber for InstanceFleetProvisioningSpecifications
    class InstanceFleetProvisioningSpecifications
      def self.default(visited=[])
        return nil if visited.include?('InstanceFleetProvisioningSpecifications')
        visited = visited + ['InstanceFleetProvisioningSpecifications']
        {
          spot_specification: SpotProvisioningSpecification.default(visited),
          on_demand_specification: OnDemandProvisioningSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceFleetProvisioningSpecifications.new
        data = {}
        data['SpotSpecification'] = Stubs::SpotProvisioningSpecification.stub(stub[:spot_specification]) unless stub[:spot_specification].nil?
        data['OnDemandSpecification'] = Stubs::OnDemandProvisioningSpecification.stub(stub[:on_demand_specification]) unless stub[:on_demand_specification].nil?
        data
      end
    end

    # Structure Stubber for OnDemandProvisioningSpecification
    class OnDemandProvisioningSpecification
      def self.default(visited=[])
        return nil if visited.include?('OnDemandProvisioningSpecification')
        visited = visited + ['OnDemandProvisioningSpecification']
        {
          allocation_strategy: 'allocation_strategy',
          capacity_reservation_options: OnDemandCapacityReservationOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnDemandProvisioningSpecification.new
        data = {}
        data['AllocationStrategy'] = stub[:allocation_strategy] unless stub[:allocation_strategy].nil?
        data['CapacityReservationOptions'] = Stubs::OnDemandCapacityReservationOptions.stub(stub[:capacity_reservation_options]) unless stub[:capacity_reservation_options].nil?
        data
      end
    end

    # Structure Stubber for OnDemandCapacityReservationOptions
    class OnDemandCapacityReservationOptions
      def self.default(visited=[])
        return nil if visited.include?('OnDemandCapacityReservationOptions')
        visited = visited + ['OnDemandCapacityReservationOptions']
        {
          usage_strategy: 'usage_strategy',
          capacity_reservation_preference: 'capacity_reservation_preference',
          capacity_reservation_resource_group_arn: 'capacity_reservation_resource_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::OnDemandCapacityReservationOptions.new
        data = {}
        data['UsageStrategy'] = stub[:usage_strategy] unless stub[:usage_strategy].nil?
        data['CapacityReservationPreference'] = stub[:capacity_reservation_preference] unless stub[:capacity_reservation_preference].nil?
        data['CapacityReservationResourceGroupArn'] = stub[:capacity_reservation_resource_group_arn] unless stub[:capacity_reservation_resource_group_arn].nil?
        data
      end
    end

    # Structure Stubber for SpotProvisioningSpecification
    class SpotProvisioningSpecification
      def self.default(visited=[])
        return nil if visited.include?('SpotProvisioningSpecification')
        visited = visited + ['SpotProvisioningSpecification']
        {
          timeout_duration_minutes: 1,
          timeout_action: 'timeout_action',
          block_duration_minutes: 1,
          allocation_strategy: 'allocation_strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::SpotProvisioningSpecification.new
        data = {}
        data['TimeoutDurationMinutes'] = stub[:timeout_duration_minutes] unless stub[:timeout_duration_minutes].nil?
        data['TimeoutAction'] = stub[:timeout_action] unless stub[:timeout_action].nil?
        data['BlockDurationMinutes'] = stub[:block_duration_minutes] unless stub[:block_duration_minutes].nil?
        data['AllocationStrategy'] = stub[:allocation_strategy] unless stub[:allocation_strategy].nil?
        data
      end
    end

    # List Stubber for InstanceTypeSpecificationList
    class InstanceTypeSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeSpecificationList')
        visited = visited + ['InstanceTypeSpecificationList']
        [
          InstanceTypeSpecification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceTypeSpecification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceTypeSpecification
    class InstanceTypeSpecification
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeSpecification')
        visited = visited + ['InstanceTypeSpecification']
        {
          instance_type: 'instance_type',
          weighted_capacity: 1,
          bid_price: 'bid_price',
          bid_price_as_percentage_of_on_demand_price: 1.0,
          configurations: ConfigurationList.default(visited),
          ebs_block_devices: EbsBlockDeviceList.default(visited),
          ebs_optimized: false,
          custom_ami_id: 'custom_ami_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceTypeSpecification.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['WeightedCapacity'] = stub[:weighted_capacity] unless stub[:weighted_capacity].nil?
        data['BidPrice'] = stub[:bid_price] unless stub[:bid_price].nil?
        data['BidPriceAsPercentageOfOnDemandPrice'] = Hearth::NumberHelper.serialize(stub[:bid_price_as_percentage_of_on_demand_price])
        data['Configurations'] = Stubs::ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['EbsBlockDevices'] = Stubs::EbsBlockDeviceList.stub(stub[:ebs_block_devices]) unless stub[:ebs_block_devices].nil?
        data['EbsOptimized'] = stub[:ebs_optimized] unless stub[:ebs_optimized].nil?
        data['CustomAmiId'] = stub[:custom_ami_id] unless stub[:custom_ami_id].nil?
        data
      end
    end

    # List Stubber for EbsBlockDeviceList
    class EbsBlockDeviceList
      def self.default(visited=[])
        return nil if visited.include?('EbsBlockDeviceList')
        visited = visited + ['EbsBlockDeviceList']
        [
          EbsBlockDevice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EbsBlockDevice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EbsBlockDevice
    class EbsBlockDevice
      def self.default(visited=[])
        return nil if visited.include?('EbsBlockDevice')
        visited = visited + ['EbsBlockDevice']
        {
          volume_specification: VolumeSpecification.default(visited),
          device: 'device',
        }
      end

      def self.stub(stub)
        stub ||= Types::EbsBlockDevice.new
        data = {}
        data['VolumeSpecification'] = Stubs::VolumeSpecification.stub(stub[:volume_specification]) unless stub[:volume_specification].nil?
        data['Device'] = stub[:device] unless stub[:device].nil?
        data
      end
    end

    # Structure Stubber for VolumeSpecification
    class VolumeSpecification
      def self.default(visited=[])
        return nil if visited.include?('VolumeSpecification')
        visited = visited + ['VolumeSpecification']
        {
          volume_type: 'volume_type',
          iops: 1,
          size_in_gb: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeSpecification.new
        data = {}
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['SizeInGB'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data
      end
    end

    # Structure Stubber for InstanceFleetStatus
    class InstanceFleetStatus
      def self.default(visited=[])
        return nil if visited.include?('InstanceFleetStatus')
        visited = visited + ['InstanceFleetStatus']
        {
          state: 'state',
          state_change_reason: InstanceFleetStateChangeReason.default(visited),
          timeline: InstanceFleetTimeline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceFleetStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::InstanceFleetStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['Timeline'] = Stubs::InstanceFleetTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data
      end
    end

    # Structure Stubber for InstanceFleetTimeline
    class InstanceFleetTimeline
      def self.default(visited=[])
        return nil if visited.include?('InstanceFleetTimeline')
        visited = visited + ['InstanceFleetTimeline']
        {
          creation_date_time: Time.now,
          ready_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceFleetTimeline.new
        data = {}
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['ReadyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ready_date_time]).to_i unless stub[:ready_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Structure Stubber for InstanceFleetStateChangeReason
    class InstanceFleetStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('InstanceFleetStateChangeReason')
        visited = visited + ['InstanceFleetStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceFleetStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListInstanceGroups
    class ListInstanceGroups
      def self.default(visited=[])
        {
          instance_groups: InstanceGroupList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceGroups'] = Stubs::InstanceGroupList.stub(stub[:instance_groups]) unless stub[:instance_groups].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceGroupList
    class InstanceGroupList
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupList')
        visited = visited + ['InstanceGroupList']
        [
          InstanceGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceGroup
    class InstanceGroup
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroup')
        visited = visited + ['InstanceGroup']
        {
          id: 'id',
          name: 'name',
          market: 'market',
          instance_group_type: 'instance_group_type',
          bid_price: 'bid_price',
          instance_type: 'instance_type',
          requested_instance_count: 1,
          running_instance_count: 1,
          status: InstanceGroupStatus.default(visited),
          configurations: ConfigurationList.default(visited),
          configurations_version: 1,
          last_successfully_applied_configurations: ConfigurationList.default(visited),
          last_successfully_applied_configurations_version: 1,
          ebs_block_devices: EbsBlockDeviceList.default(visited),
          ebs_optimized: false,
          shrink_policy: ShrinkPolicy.default(visited),
          auto_scaling_policy: AutoScalingPolicyDescription.default(visited),
          custom_ami_id: 'custom_ami_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceGroup.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Market'] = stub[:market] unless stub[:market].nil?
        data['InstanceGroupType'] = stub[:instance_group_type] unless stub[:instance_group_type].nil?
        data['BidPrice'] = stub[:bid_price] unless stub[:bid_price].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['RequestedInstanceCount'] = stub[:requested_instance_count] unless stub[:requested_instance_count].nil?
        data['RunningInstanceCount'] = stub[:running_instance_count] unless stub[:running_instance_count].nil?
        data['Status'] = Stubs::InstanceGroupStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Configurations'] = Stubs::ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['ConfigurationsVersion'] = stub[:configurations_version] unless stub[:configurations_version].nil?
        data['LastSuccessfullyAppliedConfigurations'] = Stubs::ConfigurationList.stub(stub[:last_successfully_applied_configurations]) unless stub[:last_successfully_applied_configurations].nil?
        data['LastSuccessfullyAppliedConfigurationsVersion'] = stub[:last_successfully_applied_configurations_version] unless stub[:last_successfully_applied_configurations_version].nil?
        data['EbsBlockDevices'] = Stubs::EbsBlockDeviceList.stub(stub[:ebs_block_devices]) unless stub[:ebs_block_devices].nil?
        data['EbsOptimized'] = stub[:ebs_optimized] unless stub[:ebs_optimized].nil?
        data['ShrinkPolicy'] = Stubs::ShrinkPolicy.stub(stub[:shrink_policy]) unless stub[:shrink_policy].nil?
        data['AutoScalingPolicy'] = Stubs::AutoScalingPolicyDescription.stub(stub[:auto_scaling_policy]) unless stub[:auto_scaling_policy].nil?
        data['CustomAmiId'] = stub[:custom_ami_id] unless stub[:custom_ami_id].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingPolicyDescription
    class AutoScalingPolicyDescription
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingPolicyDescription')
        visited = visited + ['AutoScalingPolicyDescription']
        {
          status: AutoScalingPolicyStatus.default(visited),
          constraints: ScalingConstraints.default(visited),
          rules: ScalingRuleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingPolicyDescription.new
        data = {}
        data['Status'] = Stubs::AutoScalingPolicyStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Constraints'] = Stubs::ScalingConstraints.stub(stub[:constraints]) unless stub[:constraints].nil?
        data['Rules'] = Stubs::ScalingRuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for ScalingRuleList
    class ScalingRuleList
      def self.default(visited=[])
        return nil if visited.include?('ScalingRuleList')
        visited = visited + ['ScalingRuleList']
        [
          ScalingRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScalingRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingRule
    class ScalingRule
      def self.default(visited=[])
        return nil if visited.include?('ScalingRule')
        visited = visited + ['ScalingRule']
        {
          name: 'name',
          description: 'description',
          action: ScalingAction.default(visited),
          trigger: ScalingTrigger.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingRule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Action'] = Stubs::ScalingAction.stub(stub[:action]) unless stub[:action].nil?
        data['Trigger'] = Stubs::ScalingTrigger.stub(stub[:trigger]) unless stub[:trigger].nil?
        data
      end
    end

    # Structure Stubber for ScalingTrigger
    class ScalingTrigger
      def self.default(visited=[])
        return nil if visited.include?('ScalingTrigger')
        visited = visited + ['ScalingTrigger']
        {
          cloud_watch_alarm_definition: CloudWatchAlarmDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingTrigger.new
        data = {}
        data['CloudWatchAlarmDefinition'] = Stubs::CloudWatchAlarmDefinition.stub(stub[:cloud_watch_alarm_definition]) unless stub[:cloud_watch_alarm_definition].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchAlarmDefinition
    class CloudWatchAlarmDefinition
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchAlarmDefinition')
        visited = visited + ['CloudWatchAlarmDefinition']
        {
          comparison_operator: 'comparison_operator',
          evaluation_periods: 1,
          metric_name: 'metric_name',
          namespace: 'namespace',
          period: 1,
          statistic: 'statistic',
          threshold: 1.0,
          unit: 'unit',
          dimensions: MetricDimensionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchAlarmDefinition.new
        data = {}
        data['ComparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['EvaluationPeriods'] = stub[:evaluation_periods] unless stub[:evaluation_periods].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Period'] = stub[:period] unless stub[:period].nil?
        data['Statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(stub[:threshold])
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['Dimensions'] = Stubs::MetricDimensionList.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data
      end
    end

    # List Stubber for MetricDimensionList
    class MetricDimensionList
      def self.default(visited=[])
        return nil if visited.include?('MetricDimensionList')
        visited = visited + ['MetricDimensionList']
        [
          MetricDimension.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricDimension.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDimension
    class MetricDimension
      def self.default(visited=[])
        return nil if visited.include?('MetricDimension')
        visited = visited + ['MetricDimension']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDimension.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for ScalingAction
    class ScalingAction
      def self.default(visited=[])
        return nil if visited.include?('ScalingAction')
        visited = visited + ['ScalingAction']
        {
          market: 'market',
          simple_scaling_policy_configuration: SimpleScalingPolicyConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingAction.new
        data = {}
        data['Market'] = stub[:market] unless stub[:market].nil?
        data['SimpleScalingPolicyConfiguration'] = Stubs::SimpleScalingPolicyConfiguration.stub(stub[:simple_scaling_policy_configuration]) unless stub[:simple_scaling_policy_configuration].nil?
        data
      end
    end

    # Structure Stubber for SimpleScalingPolicyConfiguration
    class SimpleScalingPolicyConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SimpleScalingPolicyConfiguration')
        visited = visited + ['SimpleScalingPolicyConfiguration']
        {
          adjustment_type: 'adjustment_type',
          scaling_adjustment: 1,
          cool_down: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SimpleScalingPolicyConfiguration.new
        data = {}
        data['AdjustmentType'] = stub[:adjustment_type] unless stub[:adjustment_type].nil?
        data['ScalingAdjustment'] = stub[:scaling_adjustment] unless stub[:scaling_adjustment].nil?
        data['CoolDown'] = stub[:cool_down] unless stub[:cool_down].nil?
        data
      end
    end

    # Structure Stubber for ScalingConstraints
    class ScalingConstraints
      def self.default(visited=[])
        return nil if visited.include?('ScalingConstraints')
        visited = visited + ['ScalingConstraints']
        {
          min_capacity: 1,
          max_capacity: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingConstraints.new
        data = {}
        data['MinCapacity'] = stub[:min_capacity] unless stub[:min_capacity].nil?
        data['MaxCapacity'] = stub[:max_capacity] unless stub[:max_capacity].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingPolicyStatus
    class AutoScalingPolicyStatus
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingPolicyStatus')
        visited = visited + ['AutoScalingPolicyStatus']
        {
          state: 'state',
          state_change_reason: AutoScalingPolicyStateChangeReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingPolicyStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::AutoScalingPolicyStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingPolicyStateChangeReason
    class AutoScalingPolicyStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingPolicyStateChangeReason')
        visited = visited + ['AutoScalingPolicyStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingPolicyStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ShrinkPolicy
    class ShrinkPolicy
      def self.default(visited=[])
        return nil if visited.include?('ShrinkPolicy')
        visited = visited + ['ShrinkPolicy']
        {
          decommission_timeout: 1,
          instance_resize_policy: InstanceResizePolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ShrinkPolicy.new
        data = {}
        data['DecommissionTimeout'] = stub[:decommission_timeout] unless stub[:decommission_timeout].nil?
        data['InstanceResizePolicy'] = Stubs::InstanceResizePolicy.stub(stub[:instance_resize_policy]) unless stub[:instance_resize_policy].nil?
        data
      end
    end

    # Structure Stubber for InstanceResizePolicy
    class InstanceResizePolicy
      def self.default(visited=[])
        return nil if visited.include?('InstanceResizePolicy')
        visited = visited + ['InstanceResizePolicy']
        {
          instances_to_terminate: EC2InstanceIdsList.default(visited),
          instances_to_protect: EC2InstanceIdsList.default(visited),
          instance_termination_timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceResizePolicy.new
        data = {}
        data['InstancesToTerminate'] = Stubs::EC2InstanceIdsList.stub(stub[:instances_to_terminate]) unless stub[:instances_to_terminate].nil?
        data['InstancesToProtect'] = Stubs::EC2InstanceIdsList.stub(stub[:instances_to_protect]) unless stub[:instances_to_protect].nil?
        data['InstanceTerminationTimeout'] = stub[:instance_termination_timeout] unless stub[:instance_termination_timeout].nil?
        data
      end
    end

    # List Stubber for EC2InstanceIdsList
    class EC2InstanceIdsList
      def self.default(visited=[])
        return nil if visited.include?('EC2InstanceIdsList')
        visited = visited + ['EC2InstanceIdsList']
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

    # Structure Stubber for InstanceGroupStatus
    class InstanceGroupStatus
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupStatus')
        visited = visited + ['InstanceGroupStatus']
        {
          state: 'state',
          state_change_reason: InstanceGroupStateChangeReason.default(visited),
          timeline: InstanceGroupTimeline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceGroupStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::InstanceGroupStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['Timeline'] = Stubs::InstanceGroupTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data
      end
    end

    # Structure Stubber for InstanceGroupTimeline
    class InstanceGroupTimeline
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupTimeline')
        visited = visited + ['InstanceGroupTimeline']
        {
          creation_date_time: Time.now,
          ready_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceGroupTimeline.new
        data = {}
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['ReadyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ready_date_time]).to_i unless stub[:ready_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Structure Stubber for InstanceGroupStateChangeReason
    class InstanceGroupStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('InstanceGroupStateChangeReason')
        visited = visited + ['InstanceGroupStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceGroupStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListInstances
    class ListInstances
      def self.default(visited=[])
        {
          instances: InstanceList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = Stubs::InstanceList.stub(stub[:instances]) unless stub[:instances].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceList
    class InstanceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceList')
        visited = visited + ['InstanceList']
        [
          Instance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Instance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          id: 'id',
          ec2_instance_id: 'ec2_instance_id',
          public_dns_name: 'public_dns_name',
          public_ip_address: 'public_ip_address',
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
          status: InstanceStatus.default(visited),
          instance_group_id: 'instance_group_id',
          instance_fleet_id: 'instance_fleet_id',
          market: 'market',
          instance_type: 'instance_type',
          ebs_volumes: EbsVolumeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Ec2InstanceId'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['PublicDnsName'] = stub[:public_dns_name] unless stub[:public_dns_name].nil?
        data['PublicIpAddress'] = stub[:public_ip_address] unless stub[:public_ip_address].nil?
        data['PrivateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data['PrivateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['Status'] = Stubs::InstanceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['InstanceGroupId'] = stub[:instance_group_id] unless stub[:instance_group_id].nil?
        data['InstanceFleetId'] = stub[:instance_fleet_id] unless stub[:instance_fleet_id].nil?
        data['Market'] = stub[:market] unless stub[:market].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['EbsVolumes'] = Stubs::EbsVolumeList.stub(stub[:ebs_volumes]) unless stub[:ebs_volumes].nil?
        data
      end
    end

    # List Stubber for EbsVolumeList
    class EbsVolumeList
      def self.default(visited=[])
        return nil if visited.include?('EbsVolumeList')
        visited = visited + ['EbsVolumeList']
        [
          EbsVolume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EbsVolume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EbsVolume
    class EbsVolume
      def self.default(visited=[])
        return nil if visited.include?('EbsVolume')
        visited = visited + ['EbsVolume']
        {
          device: 'device',
          volume_id: 'volume_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EbsVolume.new
        data = {}
        data['Device'] = stub[:device] unless stub[:device].nil?
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data
      end
    end

    # Structure Stubber for InstanceStatus
    class InstanceStatus
      def self.default(visited=[])
        return nil if visited.include?('InstanceStatus')
        visited = visited + ['InstanceStatus']
        {
          state: 'state',
          state_change_reason: InstanceStateChangeReason.default(visited),
          timeline: InstanceTimeline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::InstanceStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['Timeline'] = Stubs::InstanceTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data
      end
    end

    # Structure Stubber for InstanceTimeline
    class InstanceTimeline
      def self.default(visited=[])
        return nil if visited.include?('InstanceTimeline')
        visited = visited + ['InstanceTimeline']
        {
          creation_date_time: Time.now,
          ready_date_time: Time.now,
          end_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceTimeline.new
        data = {}
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['ReadyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ready_date_time]).to_i unless stub[:ready_date_time].nil?
        data['EndDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date_time]).to_i unless stub[:end_date_time].nil?
        data
      end
    end

    # Structure Stubber for InstanceStateChangeReason
    class InstanceStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('InstanceStateChangeReason')
        visited = visited + ['InstanceStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListNotebookExecutions
    class ListNotebookExecutions
      def self.default(visited=[])
        {
          notebook_executions: NotebookExecutionSummaryList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookExecutions'] = Stubs::NotebookExecutionSummaryList.stub(stub[:notebook_executions]) unless stub[:notebook_executions].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NotebookExecutionSummaryList
    class NotebookExecutionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('NotebookExecutionSummaryList')
        visited = visited + ['NotebookExecutionSummaryList']
        [
          NotebookExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotebookExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotebookExecutionSummary
    class NotebookExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('NotebookExecutionSummary')
        visited = visited + ['NotebookExecutionSummary']
        {
          notebook_execution_id: 'notebook_execution_id',
          editor_id: 'editor_id',
          notebook_execution_name: 'notebook_execution_name',
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::NotebookExecutionSummary.new
        data = {}
        data['NotebookExecutionId'] = stub[:notebook_execution_id] unless stub[:notebook_execution_id].nil?
        data['EditorId'] = stub[:editor_id] unless stub[:editor_id].nil?
        data['NotebookExecutionName'] = stub[:notebook_execution_name] unless stub[:notebook_execution_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for ListReleaseLabels
    class ListReleaseLabels
      def self.default(visited=[])
        {
          release_labels: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReleaseLabels'] = Stubs::StringList.stub(stub[:release_labels]) unless stub[:release_labels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSecurityConfigurations
    class ListSecurityConfigurations
      def self.default(visited=[])
        {
          security_configurations: SecurityConfigurationList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SecurityConfigurations'] = Stubs::SecurityConfigurationList.stub(stub[:security_configurations]) unless stub[:security_configurations].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SecurityConfigurationList
    class SecurityConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('SecurityConfigurationList')
        visited = visited + ['SecurityConfigurationList']
        [
          SecurityConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SecurityConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityConfigurationSummary
    class SecurityConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('SecurityConfigurationSummary')
        visited = visited + ['SecurityConfigurationSummary']
        {
          name: 'name',
          creation_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityConfigurationSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListSteps
    class ListSteps
      def self.default(visited=[])
        {
          steps: StepSummaryList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Steps'] = Stubs::StepSummaryList.stub(stub[:steps]) unless stub[:steps].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StepSummaryList
    class StepSummaryList
      def self.default(visited=[])
        return nil if visited.include?('StepSummaryList')
        visited = visited + ['StepSummaryList']
        [
          StepSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StepSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StepSummary
    class StepSummary
      def self.default(visited=[])
        return nil if visited.include?('StepSummary')
        visited = visited + ['StepSummary']
        {
          id: 'id',
          name: 'name',
          config: HadoopStepConfig.default(visited),
          action_on_failure: 'action_on_failure',
          status: StepStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StepSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Config'] = Stubs::HadoopStepConfig.stub(stub[:config]) unless stub[:config].nil?
        data['ActionOnFailure'] = stub[:action_on_failure] unless stub[:action_on_failure].nil?
        data['Status'] = Stubs::StepStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListStudioSessionMappings
    class ListStudioSessionMappings
      def self.default(visited=[])
        {
          session_mappings: SessionMappingSummaryList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SessionMappings'] = Stubs::SessionMappingSummaryList.stub(stub[:session_mappings]) unless stub[:session_mappings].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SessionMappingSummaryList
    class SessionMappingSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SessionMappingSummaryList')
        visited = visited + ['SessionMappingSummaryList']
        [
          SessionMappingSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SessionMappingSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SessionMappingSummary
    class SessionMappingSummary
      def self.default(visited=[])
        return nil if visited.include?('SessionMappingSummary')
        visited = visited + ['SessionMappingSummary']
        {
          studio_id: 'studio_id',
          identity_id: 'identity_id',
          identity_name: 'identity_name',
          identity_type: 'identity_type',
          session_policy_arn: 'session_policy_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionMappingSummary.new
        data = {}
        data['StudioId'] = stub[:studio_id] unless stub[:studio_id].nil?
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['IdentityName'] = stub[:identity_name] unless stub[:identity_name].nil?
        data['IdentityType'] = stub[:identity_type] unless stub[:identity_type].nil?
        data['SessionPolicyArn'] = stub[:session_policy_arn] unless stub[:session_policy_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListStudios
    class ListStudios
      def self.default(visited=[])
        {
          studios: StudioSummaryList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Studios'] = Stubs::StudioSummaryList.stub(stub[:studios]) unless stub[:studios].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StudioSummaryList
    class StudioSummaryList
      def self.default(visited=[])
        return nil if visited.include?('StudioSummaryList')
        visited = visited + ['StudioSummaryList']
        [
          StudioSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StudioSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StudioSummary
    class StudioSummary
      def self.default(visited=[])
        return nil if visited.include?('StudioSummary')
        visited = visited + ['StudioSummary']
        {
          studio_id: 'studio_id',
          name: 'name',
          vpc_id: 'vpc_id',
          description: 'description',
          url: 'url',
          auth_mode: 'auth_mode',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioSummary.new
        data = {}
        data['StudioId'] = stub[:studio_id] unless stub[:studio_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['AuthMode'] = stub[:auth_mode] unless stub[:auth_mode].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ModifyCluster
    class ModifyCluster
      def self.default(visited=[])
        {
          step_concurrency_level: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StepConcurrencyLevel'] = stub[:step_concurrency_level] unless stub[:step_concurrency_level].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyInstanceFleet
    class ModifyInstanceFleet
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

    # Operation Stubber for ModifyInstanceGroups
    class ModifyInstanceGroups
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

    # Operation Stubber for PutAutoScalingPolicy
    class PutAutoScalingPolicy
      def self.default(visited=[])
        {
          cluster_id: 'cluster_id',
          instance_group_id: 'instance_group_id',
          auto_scaling_policy: AutoScalingPolicyDescription.default(visited),
          cluster_arn: 'cluster_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['InstanceGroupId'] = stub[:instance_group_id] unless stub[:instance_group_id].nil?
        data['AutoScalingPolicy'] = Stubs::AutoScalingPolicyDescription.stub(stub[:auto_scaling_policy]) unless stub[:auto_scaling_policy].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAutoTerminationPolicy
    class PutAutoTerminationPolicy
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

    # Operation Stubber for PutBlockPublicAccessConfiguration
    class PutBlockPublicAccessConfiguration
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

    # Operation Stubber for PutManagedScalingPolicy
    class PutManagedScalingPolicy
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

    # Operation Stubber for RemoveAutoScalingPolicy
    class RemoveAutoScalingPolicy
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

    # Operation Stubber for RemoveAutoTerminationPolicy
    class RemoveAutoTerminationPolicy
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

    # Operation Stubber for RemoveManagedScalingPolicy
    class RemoveManagedScalingPolicy
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

    # Operation Stubber for RemoveTags
    class RemoveTags
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

    # Operation Stubber for RunJobFlow
    class RunJobFlow
      def self.default(visited=[])
        {
          job_flow_id: 'job_flow_id',
          cluster_arn: 'cluster_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobFlowId'] = stub[:job_flow_id] unless stub[:job_flow_id].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTerminationProtection
    class SetTerminationProtection
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

    # Operation Stubber for SetVisibleToAllUsers
    class SetVisibleToAllUsers
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

    # Operation Stubber for StartNotebookExecution
    class StartNotebookExecution
      def self.default(visited=[])
        {
          notebook_execution_id: 'notebook_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookExecutionId'] = stub[:notebook_execution_id] unless stub[:notebook_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopNotebookExecution
    class StopNotebookExecution
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

    # Operation Stubber for TerminateJobFlows
    class TerminateJobFlows
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

    # Operation Stubber for UpdateStudio
    class UpdateStudio
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

    # Operation Stubber for UpdateStudioSessionMapping
    class UpdateStudioSessionMapping
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
  end
end
