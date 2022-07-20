# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::EKS
  module Stubs

    # Operation Stubber for AssociateEncryptionConfig
    class AssociateEncryptionConfig
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Update
    class Update
      def self.default(visited=[])
        return nil if visited.include?('Update')
        visited = visited + ['Update']
        {
          id: 'id',
          status: 'status',
          type: 'type',
          params: UpdateParams.default(visited),
          created_at: Time.now,
          errors: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Update.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['params'] = UpdateParams.stub(stub[:params]) unless stub[:params].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['errors'] = ErrorDetails.stub(stub[:errors]) unless stub[:errors].nil?
        data
      end
    end

    # List Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        [
          ErrorDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ErrorDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorDetail
    class ErrorDetail
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetail')
        visited = visited + ['ErrorDetail']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          resource_ids: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetail.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['resourceIds'] = StringList.stub(stub[:resource_ids]) unless stub[:resource_ids].nil?
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

    # List Stubber for UpdateParams
    class UpdateParams
      def self.default(visited=[])
        return nil if visited.include?('UpdateParams')
        visited = visited + ['UpdateParams']
        [
          UpdateParam.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UpdateParam.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateParam
    class UpdateParam
      def self.default(visited=[])
        return nil if visited.include?('UpdateParam')
        visited = visited + ['UpdateParam']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateParam.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for AssociateIdentityProviderConfig
    class AssociateIdentityProviderConfig
      def self.default(visited=[])
        {
          update: Update.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Operation Stubber for CreateAddon
    class CreateAddon
      def self.default(visited=[])
        {
          addon: Addon.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['addon'] = Addon.stub(stub[:addon]) unless stub[:addon].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Addon
    class Addon
      def self.default(visited=[])
        return nil if visited.include?('Addon')
        visited = visited + ['Addon']
        {
          addon_name: 'addon_name',
          cluster_name: 'cluster_name',
          status: 'status',
          addon_version: 'addon_version',
          health: AddonHealth.default(visited),
          addon_arn: 'addon_arn',
          created_at: Time.now,
          modified_at: Time.now,
          service_account_role_arn: 'service_account_role_arn',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Addon.new
        data = {}
        data['addonName'] = stub[:addon_name] unless stub[:addon_name].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['addonVersion'] = stub[:addon_version] unless stub[:addon_version].nil?
        data['health'] = AddonHealth.stub(stub[:health]) unless stub[:health].nil?
        data['addonArn'] = stub[:addon_arn] unless stub[:addon_arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_at]).to_i unless stub[:modified_at].nil?
        data['serviceAccountRoleArn'] = stub[:service_account_role_arn] unless stub[:service_account_role_arn].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for AddonHealth
    class AddonHealth
      def self.default(visited=[])
        return nil if visited.include?('AddonHealth')
        visited = visited + ['AddonHealth']
        {
          issues: AddonIssueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AddonHealth.new
        data = {}
        data['issues'] = AddonIssueList.stub(stub[:issues]) unless stub[:issues].nil?
        data
      end
    end

    # List Stubber for AddonIssueList
    class AddonIssueList
      def self.default(visited=[])
        return nil if visited.include?('AddonIssueList')
        visited = visited + ['AddonIssueList']
        [
          AddonIssue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AddonIssue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AddonIssue
    class AddonIssue
      def self.default(visited=[])
        return nil if visited.include?('AddonIssue')
        visited = visited + ['AddonIssue']
        {
          code: 'code',
          message: 'message',
          resource_ids: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AddonIssue.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['resourceIds'] = StringList.stub(stub[:resource_ids]) unless stub[:resource_ids].nil?
        data
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          version: 'version',
          endpoint: 'endpoint',
          role_arn: 'role_arn',
          resources_vpc_config: VpcConfigResponse.default(visited),
          kubernetes_network_config: KubernetesNetworkConfigResponse.default(visited),
          logging: Logging.default(visited),
          identity: Identity.default(visited),
          status: 'status',
          certificate_authority: Certificate.default(visited),
          client_request_token: 'client_request_token',
          platform_version: 'platform_version',
          tags: TagMap.default(visited),
          encryption_config: EncryptionConfigList.default(visited),
          connector_config: ConnectorConfigResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['resourcesVpcConfig'] = VpcConfigResponse.stub(stub[:resources_vpc_config]) unless stub[:resources_vpc_config].nil?
        data['kubernetesNetworkConfig'] = KubernetesNetworkConfigResponse.stub(stub[:kubernetes_network_config]) unless stub[:kubernetes_network_config].nil?
        data['logging'] = Logging.stub(stub[:logging]) unless stub[:logging].nil?
        data['identity'] = Identity.stub(stub[:identity]) unless stub[:identity].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['certificateAuthority'] = Certificate.stub(stub[:certificate_authority]) unless stub[:certificate_authority].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['platformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['encryptionConfig'] = EncryptionConfigList.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        data['connectorConfig'] = ConnectorConfigResponse.stub(stub[:connector_config]) unless stub[:connector_config].nil?
        data
      end
    end

    # Structure Stubber for ConnectorConfigResponse
    class ConnectorConfigResponse
      def self.default(visited=[])
        return nil if visited.include?('ConnectorConfigResponse')
        visited = visited + ['ConnectorConfigResponse']
        {
          activation_id: 'activation_id',
          activation_code: 'activation_code',
          activation_expiry: Time.now,
          provider: 'provider',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorConfigResponse.new
        data = {}
        data['activationId'] = stub[:activation_id] unless stub[:activation_id].nil?
        data['activationCode'] = stub[:activation_code] unless stub[:activation_code].nil?
        data['activationExpiry'] = Hearth::TimeHelper.to_epoch_seconds(stub[:activation_expiry]).to_i unless stub[:activation_expiry].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for EncryptionConfigList
    class EncryptionConfigList
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfigList')
        visited = visited + ['EncryptionConfigList']
        [
          EncryptionConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EncryptionConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EncryptionConfig
    class EncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfig')
        visited = visited + ['EncryptionConfig']
        {
          resources: StringList.default(visited),
          provider: Provider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfig.new
        data = {}
        data['resources'] = StringList.stub(stub[:resources]) unless stub[:resources].nil?
        data['provider'] = Provider.stub(stub[:provider]) unless stub[:provider].nil?
        data
      end
    end

    # Structure Stubber for Provider
    class Provider
      def self.default(visited=[])
        return nil if visited.include?('Provider')
        visited = visited + ['Provider']
        {
          key_arn: 'key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Provider.new
        data = {}
        data['keyArn'] = stub[:key_arn] unless stub[:key_arn].nil?
        data
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['data'] = stub[:data] unless stub[:data].nil?
        data
      end
    end

    # Structure Stubber for Identity
    class Identity
      def self.default(visited=[])
        return nil if visited.include?('Identity')
        visited = visited + ['Identity']
        {
          oidc: OIDC.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Identity.new
        data = {}
        data['oidc'] = OIDC.stub(stub[:oidc]) unless stub[:oidc].nil?
        data
      end
    end

    # Structure Stubber for OIDC
    class OIDC
      def self.default(visited=[])
        return nil if visited.include?('OIDC')
        visited = visited + ['OIDC']
        {
          issuer: 'issuer',
        }
      end

      def self.stub(stub)
        stub ||= Types::OIDC.new
        data = {}
        data['issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data
      end
    end

    # Structure Stubber for Logging
    class Logging
      def self.default(visited=[])
        return nil if visited.include?('Logging')
        visited = visited + ['Logging']
        {
          cluster_logging: LogSetups.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Logging.new
        data = {}
        data['clusterLogging'] = LogSetups.stub(stub[:cluster_logging]) unless stub[:cluster_logging].nil?
        data
      end
    end

    # List Stubber for LogSetups
    class LogSetups
      def self.default(visited=[])
        return nil if visited.include?('LogSetups')
        visited = visited + ['LogSetups']
        [
          LogSetup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LogSetup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogSetup
    class LogSetup
      def self.default(visited=[])
        return nil if visited.include?('LogSetup')
        visited = visited + ['LogSetup']
        {
          types: LogTypes.default(visited),
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogSetup.new
        data = {}
        data['types'] = LogTypes.stub(stub[:types]) unless stub[:types].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # List Stubber for LogTypes
    class LogTypes
      def self.default(visited=[])
        return nil if visited.include?('LogTypes')
        visited = visited + ['LogTypes']
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

    # Structure Stubber for KubernetesNetworkConfigResponse
    class KubernetesNetworkConfigResponse
      def self.default(visited=[])
        return nil if visited.include?('KubernetesNetworkConfigResponse')
        visited = visited + ['KubernetesNetworkConfigResponse']
        {
          service_ipv4_cidr: 'service_ipv4_cidr',
          service_ipv6_cidr: 'service_ipv6_cidr',
          ip_family: 'ip_family',
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesNetworkConfigResponse.new
        data = {}
        data['serviceIpv4Cidr'] = stub[:service_ipv4_cidr] unless stub[:service_ipv4_cidr].nil?
        data['serviceIpv6Cidr'] = stub[:service_ipv6_cidr] unless stub[:service_ipv6_cidr].nil?
        data['ipFamily'] = stub[:ip_family] unless stub[:ip_family].nil?
        data
      end
    end

    # Structure Stubber for VpcConfigResponse
    class VpcConfigResponse
      def self.default(visited=[])
        return nil if visited.include?('VpcConfigResponse')
        visited = visited + ['VpcConfigResponse']
        {
          subnet_ids: StringList.default(visited),
          security_group_ids: StringList.default(visited),
          cluster_security_group_id: 'cluster_security_group_id',
          vpc_id: 'vpc_id',
          endpoint_public_access: false,
          endpoint_private_access: false,
          public_access_cidrs: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfigResponse.new
        data = {}
        data['subnetIds'] = StringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroupIds'] = StringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['clusterSecurityGroupId'] = stub[:cluster_security_group_id] unless stub[:cluster_security_group_id].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['endpointPublicAccess'] = stub[:endpoint_public_access] unless stub[:endpoint_public_access].nil?
        data['endpointPrivateAccess'] = stub[:endpoint_private_access] unless stub[:endpoint_private_access].nil?
        data['publicAccessCidrs'] = StringList.stub(stub[:public_access_cidrs]) unless stub[:public_access_cidrs].nil?
        data
      end
    end

    # Operation Stubber for CreateFargateProfile
    class CreateFargateProfile
      def self.default(visited=[])
        {
          fargate_profile: FargateProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fargateProfile'] = FargateProfile.stub(stub[:fargate_profile]) unless stub[:fargate_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FargateProfile
    class FargateProfile
      def self.default(visited=[])
        return nil if visited.include?('FargateProfile')
        visited = visited + ['FargateProfile']
        {
          fargate_profile_name: 'fargate_profile_name',
          fargate_profile_arn: 'fargate_profile_arn',
          cluster_name: 'cluster_name',
          created_at: Time.now,
          pod_execution_role_arn: 'pod_execution_role_arn',
          subnets: StringList.default(visited),
          selectors: FargateProfileSelectors.default(visited),
          status: 'status',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FargateProfile.new
        data = {}
        data['fargateProfileName'] = stub[:fargate_profile_name] unless stub[:fargate_profile_name].nil?
        data['fargateProfileArn'] = stub[:fargate_profile_arn] unless stub[:fargate_profile_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['podExecutionRoleArn'] = stub[:pod_execution_role_arn] unless stub[:pod_execution_role_arn].nil?
        data['subnets'] = StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['selectors'] = FargateProfileSelectors.stub(stub[:selectors]) unless stub[:selectors].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for FargateProfileSelectors
    class FargateProfileSelectors
      def self.default(visited=[])
        return nil if visited.include?('FargateProfileSelectors')
        visited = visited + ['FargateProfileSelectors']
        [
          FargateProfileSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FargateProfileSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FargateProfileSelector
    class FargateProfileSelector
      def self.default(visited=[])
        return nil if visited.include?('FargateProfileSelector')
        visited = visited + ['FargateProfileSelector']
        {
          namespace: 'namespace',
          labels: FargateProfileLabel.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FargateProfileSelector.new
        data = {}
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['labels'] = FargateProfileLabel.stub(stub[:labels]) unless stub[:labels].nil?
        data
      end
    end

    # Map Stubber for FargateProfileLabel
    class FargateProfileLabel
      def self.default(visited=[])
        return nil if visited.include?('FargateProfileLabel')
        visited = visited + ['FargateProfileLabel']
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

    # Operation Stubber for CreateNodegroup
    class CreateNodegroup
      def self.default(visited=[])
        {
          nodegroup: Nodegroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nodegroup'] = Nodegroup.stub(stub[:nodegroup]) unless stub[:nodegroup].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Nodegroup
    class Nodegroup
      def self.default(visited=[])
        return nil if visited.include?('Nodegroup')
        visited = visited + ['Nodegroup']
        {
          nodegroup_name: 'nodegroup_name',
          nodegroup_arn: 'nodegroup_arn',
          cluster_name: 'cluster_name',
          version: 'version',
          release_version: 'release_version',
          created_at: Time.now,
          modified_at: Time.now,
          status: 'status',
          capacity_type: 'capacity_type',
          scaling_config: NodegroupScalingConfig.default(visited),
          instance_types: StringList.default(visited),
          subnets: StringList.default(visited),
          remote_access: RemoteAccessConfig.default(visited),
          ami_type: 'ami_type',
          node_role: 'node_role',
          labels: LabelsMap.default(visited),
          taints: TaintsList.default(visited),
          resources: NodegroupResources.default(visited),
          disk_size: 1,
          health: NodegroupHealth.default(visited),
          update_config: NodegroupUpdateConfig.default(visited),
          launch_template: LaunchTemplateSpecification.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Nodegroup.new
        data = {}
        data['nodegroupName'] = stub[:nodegroup_name] unless stub[:nodegroup_name].nil?
        data['nodegroupArn'] = stub[:nodegroup_arn] unless stub[:nodegroup_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['releaseVersion'] = stub[:release_version] unless stub[:release_version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_at]).to_i unless stub[:modified_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['capacityType'] = stub[:capacity_type] unless stub[:capacity_type].nil?
        data['scalingConfig'] = NodegroupScalingConfig.stub(stub[:scaling_config]) unless stub[:scaling_config].nil?
        data['instanceTypes'] = StringList.stub(stub[:instance_types]) unless stub[:instance_types].nil?
        data['subnets'] = StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['remoteAccess'] = RemoteAccessConfig.stub(stub[:remote_access]) unless stub[:remote_access].nil?
        data['amiType'] = stub[:ami_type] unless stub[:ami_type].nil?
        data['nodeRole'] = stub[:node_role] unless stub[:node_role].nil?
        data['labels'] = LabelsMap.stub(stub[:labels]) unless stub[:labels].nil?
        data['taints'] = TaintsList.stub(stub[:taints]) unless stub[:taints].nil?
        data['resources'] = NodegroupResources.stub(stub[:resources]) unless stub[:resources].nil?
        data['diskSize'] = stub[:disk_size] unless stub[:disk_size].nil?
        data['health'] = NodegroupHealth.stub(stub[:health]) unless stub[:health].nil?
        data['updateConfig'] = NodegroupUpdateConfig.stub(stub[:update_config]) unless stub[:update_config].nil?
        data['launchTemplate'] = LaunchTemplateSpecification.stub(stub[:launch_template]) unless stub[:launch_template].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateSpecification')
        visited = visited + ['LaunchTemplateSpecification']
        {
          name: 'name',
          version: 'version',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchTemplateSpecification.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for NodegroupUpdateConfig
    class NodegroupUpdateConfig
      def self.default(visited=[])
        return nil if visited.include?('NodegroupUpdateConfig')
        visited = visited + ['NodegroupUpdateConfig']
        {
          max_unavailable: 1,
          max_unavailable_percentage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodegroupUpdateConfig.new
        data = {}
        data['maxUnavailable'] = stub[:max_unavailable] unless stub[:max_unavailable].nil?
        data['maxUnavailablePercentage'] = stub[:max_unavailable_percentage] unless stub[:max_unavailable_percentage].nil?
        data
      end
    end

    # Structure Stubber for NodegroupHealth
    class NodegroupHealth
      def self.default(visited=[])
        return nil if visited.include?('NodegroupHealth')
        visited = visited + ['NodegroupHealth']
        {
          issues: IssueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodegroupHealth.new
        data = {}
        data['issues'] = IssueList.stub(stub[:issues]) unless stub[:issues].nil?
        data
      end
    end

    # List Stubber for IssueList
    class IssueList
      def self.default(visited=[])
        return nil if visited.include?('IssueList')
        visited = visited + ['IssueList']
        [
          Issue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Issue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Issue
    class Issue
      def self.default(visited=[])
        return nil if visited.include?('Issue')
        visited = visited + ['Issue']
        {
          code: 'code',
          message: 'message',
          resource_ids: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Issue.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['resourceIds'] = StringList.stub(stub[:resource_ids]) unless stub[:resource_ids].nil?
        data
      end
    end

    # Structure Stubber for NodegroupResources
    class NodegroupResources
      def self.default(visited=[])
        return nil if visited.include?('NodegroupResources')
        visited = visited + ['NodegroupResources']
        {
          auto_scaling_groups: AutoScalingGroupList.default(visited),
          remote_access_security_group: 'remote_access_security_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodegroupResources.new
        data = {}
        data['autoScalingGroups'] = AutoScalingGroupList.stub(stub[:auto_scaling_groups]) unless stub[:auto_scaling_groups].nil?
        data['remoteAccessSecurityGroup'] = stub[:remote_access_security_group] unless stub[:remote_access_security_group].nil?
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
          data << AutoScalingGroup.stub(element) unless element.nil?
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
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingGroup.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for taintsList
    class TaintsList
      def self.default(visited=[])
        return nil if visited.include?('TaintsList')
        visited = visited + ['TaintsList']
        [
          Taint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Taint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Taint
    class Taint
      def self.default(visited=[])
        return nil if visited.include?('Taint')
        visited = visited + ['Taint']
        {
          key: 'key',
          value: 'value',
          effect: 'effect',
        }
      end

      def self.stub(stub)
        stub ||= Types::Taint.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['effect'] = stub[:effect] unless stub[:effect].nil?
        data
      end
    end

    # Map Stubber for labelsMap
    class LabelsMap
      def self.default(visited=[])
        return nil if visited.include?('LabelsMap')
        visited = visited + ['LabelsMap']
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

    # Structure Stubber for RemoteAccessConfig
    class RemoteAccessConfig
      def self.default(visited=[])
        return nil if visited.include?('RemoteAccessConfig')
        visited = visited + ['RemoteAccessConfig']
        {
          ec2_ssh_key: 'ec2_ssh_key',
          source_security_groups: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoteAccessConfig.new
        data = {}
        data['ec2SshKey'] = stub[:ec2_ssh_key] unless stub[:ec2_ssh_key].nil?
        data['sourceSecurityGroups'] = StringList.stub(stub[:source_security_groups]) unless stub[:source_security_groups].nil?
        data
      end
    end

    # Structure Stubber for NodegroupScalingConfig
    class NodegroupScalingConfig
      def self.default(visited=[])
        return nil if visited.include?('NodegroupScalingConfig')
        visited = visited + ['NodegroupScalingConfig']
        {
          min_size: 1,
          max_size: 1,
          desired_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodegroupScalingConfig.new
        data = {}
        data['minSize'] = stub[:min_size] unless stub[:min_size].nil?
        data['maxSize'] = stub[:max_size] unless stub[:max_size].nil?
        data['desiredSize'] = stub[:desired_size] unless stub[:desired_size].nil?
        data
      end
    end

    # Operation Stubber for DeleteAddon
    class DeleteAddon
      def self.default(visited=[])
        {
          addon: Addon.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['addon'] = Addon.stub(stub[:addon]) unless stub[:addon].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFargateProfile
    class DeleteFargateProfile
      def self.default(visited=[])
        {
          fargate_profile: FargateProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fargateProfile'] = FargateProfile.stub(stub[:fargate_profile]) unless stub[:fargate_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteNodegroup
    class DeleteNodegroup
      def self.default(visited=[])
        {
          nodegroup: Nodegroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nodegroup'] = Nodegroup.stub(stub[:nodegroup]) unless stub[:nodegroup].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeregisterCluster
    class DeregisterCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAddon
    class DescribeAddon
      def self.default(visited=[])
        {
          addon: Addon.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['addon'] = Addon.stub(stub[:addon]) unless stub[:addon].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAddonVersions
    class DescribeAddonVersions
      def self.default(visited=[])
        {
          addons: Addons.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['addons'] = Addons.stub(stub[:addons]) unless stub[:addons].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Addons
    class Addons
      def self.default(visited=[])
        return nil if visited.include?('Addons')
        visited = visited + ['Addons']
        [
          AddonInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AddonInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AddonInfo
    class AddonInfo
      def self.default(visited=[])
        return nil if visited.include?('AddonInfo')
        visited = visited + ['AddonInfo']
        {
          addon_name: 'addon_name',
          type: 'type',
          addon_versions: AddonVersionInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AddonInfo.new
        data = {}
        data['addonName'] = stub[:addon_name] unless stub[:addon_name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['addonVersions'] = AddonVersionInfoList.stub(stub[:addon_versions]) unless stub[:addon_versions].nil?
        data
      end
    end

    # List Stubber for AddonVersionInfoList
    class AddonVersionInfoList
      def self.default(visited=[])
        return nil if visited.include?('AddonVersionInfoList')
        visited = visited + ['AddonVersionInfoList']
        [
          AddonVersionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AddonVersionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AddonVersionInfo
    class AddonVersionInfo
      def self.default(visited=[])
        return nil if visited.include?('AddonVersionInfo')
        visited = visited + ['AddonVersionInfo']
        {
          addon_version: 'addon_version',
          architecture: StringList.default(visited),
          compatibilities: Compatibilities.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AddonVersionInfo.new
        data = {}
        data['addonVersion'] = stub[:addon_version] unless stub[:addon_version].nil?
        data['architecture'] = StringList.stub(stub[:architecture]) unless stub[:architecture].nil?
        data['compatibilities'] = Compatibilities.stub(stub[:compatibilities]) unless stub[:compatibilities].nil?
        data
      end
    end

    # List Stubber for Compatibilities
    class Compatibilities
      def self.default(visited=[])
        return nil if visited.include?('Compatibilities')
        visited = visited + ['Compatibilities']
        [
          Compatibility.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Compatibility.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Compatibility
    class Compatibility
      def self.default(visited=[])
        return nil if visited.include?('Compatibility')
        visited = visited + ['Compatibility']
        {
          cluster_version: 'cluster_version',
          platform_versions: StringList.default(visited),
          default_version: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Compatibility.new
        data = {}
        data['clusterVersion'] = stub[:cluster_version] unless stub[:cluster_version].nil?
        data['platformVersions'] = StringList.stub(stub[:platform_versions]) unless stub[:platform_versions].nil?
        data['defaultVersion'] = stub[:default_version] unless stub[:default_version].nil?
        data
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
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeFargateProfile
    class DescribeFargateProfile
      def self.default(visited=[])
        {
          fargate_profile: FargateProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fargateProfile'] = FargateProfile.stub(stub[:fargate_profile]) unless stub[:fargate_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeIdentityProviderConfig
    class DescribeIdentityProviderConfig
      def self.default(visited=[])
        {
          identity_provider_config: IdentityProviderConfigResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['identityProviderConfig'] = IdentityProviderConfigResponse.stub(stub[:identity_provider_config]) unless stub[:identity_provider_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for IdentityProviderConfigResponse
    class IdentityProviderConfigResponse
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderConfigResponse')
        visited = visited + ['IdentityProviderConfigResponse']
        {
          oidc: OidcIdentityProviderConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityProviderConfigResponse.new
        data = {}
        data['oidc'] = OidcIdentityProviderConfig.stub(stub[:oidc]) unless stub[:oidc].nil?
        data
      end
    end

    # Structure Stubber for OidcIdentityProviderConfig
    class OidcIdentityProviderConfig
      def self.default(visited=[])
        return nil if visited.include?('OidcIdentityProviderConfig')
        visited = visited + ['OidcIdentityProviderConfig']
        {
          identity_provider_config_name: 'identity_provider_config_name',
          identity_provider_config_arn: 'identity_provider_config_arn',
          cluster_name: 'cluster_name',
          issuer_url: 'issuer_url',
          client_id: 'client_id',
          username_claim: 'username_claim',
          username_prefix: 'username_prefix',
          groups_claim: 'groups_claim',
          groups_prefix: 'groups_prefix',
          required_claims: RequiredClaimsMap.default(visited),
          tags: TagMap.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::OidcIdentityProviderConfig.new
        data = {}
        data['identityProviderConfigName'] = stub[:identity_provider_config_name] unless stub[:identity_provider_config_name].nil?
        data['identityProviderConfigArn'] = stub[:identity_provider_config_arn] unless stub[:identity_provider_config_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['issuerUrl'] = stub[:issuer_url] unless stub[:issuer_url].nil?
        data['clientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['usernameClaim'] = stub[:username_claim] unless stub[:username_claim].nil?
        data['usernamePrefix'] = stub[:username_prefix] unless stub[:username_prefix].nil?
        data['groupsClaim'] = stub[:groups_claim] unless stub[:groups_claim].nil?
        data['groupsPrefix'] = stub[:groups_prefix] unless stub[:groups_prefix].nil?
        data['requiredClaims'] = RequiredClaimsMap.stub(stub[:required_claims]) unless stub[:required_claims].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Map Stubber for requiredClaimsMap
    class RequiredClaimsMap
      def self.default(visited=[])
        return nil if visited.include?('RequiredClaimsMap')
        visited = visited + ['RequiredClaimsMap']
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

    # Operation Stubber for DescribeNodegroup
    class DescribeNodegroup
      def self.default(visited=[])
        {
          nodegroup: Nodegroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nodegroup'] = Nodegroup.stub(stub[:nodegroup]) unless stub[:nodegroup].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeUpdate
    class DescribeUpdate
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateIdentityProviderConfig
    class DisassociateIdentityProviderConfig
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAddons
    class ListAddons
      def self.default(visited=[])
        {
          addons: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['addons'] = StringList.stub(stub[:addons]) unless stub[:addons].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListClusters
    class ListClusters
      def self.default(visited=[])
        {
          clusters: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clusters'] = StringList.stub(stub[:clusters]) unless stub[:clusters].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListFargateProfiles
    class ListFargateProfiles
      def self.default(visited=[])
        {
          fargate_profile_names: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fargateProfileNames'] = StringList.stub(stub[:fargate_profile_names]) unless stub[:fargate_profile_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListIdentityProviderConfigs
    class ListIdentityProviderConfigs
      def self.default(visited=[])
        {
          identity_provider_configs: IdentityProviderConfigs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['identityProviderConfigs'] = IdentityProviderConfigs.stub(stub[:identity_provider_configs]) unless stub[:identity_provider_configs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IdentityProviderConfigs
    class IdentityProviderConfigs
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderConfigs')
        visited = visited + ['IdentityProviderConfigs']
        [
          IdentityProviderConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IdentityProviderConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityProviderConfig
    class IdentityProviderConfig
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderConfig')
        visited = visited + ['IdentityProviderConfig']
        {
          type: 'type',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityProviderConfig.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListNodegroups
    class ListNodegroups
      def self.default(visited=[])
        {
          nodegroups: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nodegroups'] = StringList.stub(stub[:nodegroups]) unless stub[:nodegroups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListUpdates
    class ListUpdates
      def self.default(visited=[])
        {
          update_ids: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['updateIds'] = StringList.stub(stub[:update_ids]) unless stub[:update_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterCluster
    class RegisterCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAddon
    class UpdateAddon
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateClusterConfig
    class UpdateClusterConfig
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateClusterVersion
    class UpdateClusterVersion
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateNodegroupConfig
    class UpdateNodegroupConfig
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateNodegroupVersion
    class UpdateNodegroupVersion
      def self.default(visited=[])
        {
          update: Update.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['update'] = Update.stub(stub[:update]) unless stub[:update].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
