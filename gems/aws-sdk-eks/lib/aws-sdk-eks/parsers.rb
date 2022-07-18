# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EKS
  module Parsers

    # Operation Parser for AssociateEncryptionConfig
    class AssociateEncryptionConfig
      def self.parse(http_resp)
        data = Types::AssociateEncryptionConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    class Update
      def self.parse(map)
        data = Types::Update.new
        data.id = map['id']
        data.status = map['status']
        data.type = map['type']
        data.params = (Parsers::UpdateParams.parse(map['params']) unless map['params'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.errors = (Parsers::ErrorDetails.parse(map['errors']) unless map['errors'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ErrorDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ErrorDetail
      def self.parse(map)
        data = Types::ErrorDetail.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.resource_ids = (Parsers::StringList.parse(map['resourceIds']) unless map['resourceIds'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class UpdateParams
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UpdateParam.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpdateParam
      def self.parse(map)
        data = Types::UpdateParam.new
        data.type = map['type']
        data.value = map['value']
        return data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.addon_name = map['addonName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.fargate_profile_name = map['fargateProfileName']
        data.addon_name = map['addonName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServerException
    class ServerException
      def self.parse(http_resp)
        data = Types::ServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.addon_name = map['addonName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.addon_name = map['addonName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.fargate_profile_name = map['fargateProfileName']
        data.addon_name = map['addonName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ClientException
    class ClientException
      def self.parse(http_resp)
        data = Types::ClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.addon_name = map['addonName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AssociateIdentityProviderConfig
    class AssociateIdentityProviderConfig
      def self.parse(http_resp)
        data = Types::AssociateIdentityProviderConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateAddon
    class CreateAddon
      def self.parse(http_resp)
        data = Types::CreateAddonOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.addon = (Parsers::Addon.parse(map['addon']) unless map['addon'].nil?)
        data
      end
    end

    class Addon
      def self.parse(map)
        data = Types::Addon.new
        data.addon_name = map['addonName']
        data.cluster_name = map['clusterName']
        data.status = map['status']
        data.addon_version = map['addonVersion']
        data.health = (Parsers::AddonHealth.parse(map['health']) unless map['health'].nil?)
        data.addon_arn = map['addonArn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.modified_at = Time.at(map['modifiedAt'].to_i) if map['modifiedAt']
        data.service_account_role_arn = map['serviceAccountRoleArn']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class AddonHealth
      def self.parse(map)
        data = Types::AddonHealth.new
        data.issues = (Parsers::AddonIssueList.parse(map['issues']) unless map['issues'].nil?)
        return data
      end
    end

    class AddonIssueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AddonIssue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AddonIssue
      def self.parse(map)
        data = Types::AddonIssue.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data.resource_ids = (Parsers::StringList.parse(map['resourceIds']) unless map['resourceIds'].nil?)
        return data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.version = map['version']
        data.endpoint = map['endpoint']
        data.role_arn = map['roleArn']
        data.resources_vpc_config = (Parsers::VpcConfigResponse.parse(map['resourcesVpcConfig']) unless map['resourcesVpcConfig'].nil?)
        data.kubernetes_network_config = (Parsers::KubernetesNetworkConfigResponse.parse(map['kubernetesNetworkConfig']) unless map['kubernetesNetworkConfig'].nil?)
        data.logging = (Parsers::Logging.parse(map['logging']) unless map['logging'].nil?)
        data.identity = (Parsers::Identity.parse(map['identity']) unless map['identity'].nil?)
        data.status = map['status']
        data.certificate_authority = (Parsers::Certificate.parse(map['certificateAuthority']) unless map['certificateAuthority'].nil?)
        data.client_request_token = map['clientRequestToken']
        data.platform_version = map['platformVersion']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.encryption_config = (Parsers::EncryptionConfigList.parse(map['encryptionConfig']) unless map['encryptionConfig'].nil?)
        data.connector_config = (Parsers::ConnectorConfigResponse.parse(map['connectorConfig']) unless map['connectorConfig'].nil?)
        return data
      end
    end

    class ConnectorConfigResponse
      def self.parse(map)
        data = Types::ConnectorConfigResponse.new
        data.activation_id = map['activationId']
        data.activation_code = map['activationCode']
        data.activation_expiry = Time.at(map['activationExpiry'].to_i) if map['activationExpiry']
        data.provider = map['provider']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class EncryptionConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EncryptionConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class EncryptionConfig
      def self.parse(map)
        data = Types::EncryptionConfig.new
        data.resources = (Parsers::StringList.parse(map['resources']) unless map['resources'].nil?)
        data.provider = (Parsers::Provider.parse(map['provider']) unless map['provider'].nil?)
        return data
      end
    end

    class Provider
      def self.parse(map)
        data = Types::Provider.new
        data.key_arn = map['keyArn']
        return data
      end
    end

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.data = map['data']
        return data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.oidc = (Parsers::OIDC.parse(map['oidc']) unless map['oidc'].nil?)
        return data
      end
    end

    class OIDC
      def self.parse(map)
        data = Types::OIDC.new
        data.issuer = map['issuer']
        return data
      end
    end

    class Logging
      def self.parse(map)
        data = Types::Logging.new
        data.cluster_logging = (Parsers::LogSetups.parse(map['clusterLogging']) unless map['clusterLogging'].nil?)
        return data
      end
    end

    class LogSetups
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LogSetup.parse(value) unless value.nil?
        end
        data
      end
    end

    class LogSetup
      def self.parse(map)
        data = Types::LogSetup.new
        data.types = (Parsers::LogTypes.parse(map['types']) unless map['types'].nil?)
        data.enabled = map['enabled']
        return data
      end
    end

    class LogTypes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class KubernetesNetworkConfigResponse
      def self.parse(map)
        data = Types::KubernetesNetworkConfigResponse.new
        data.service_ipv4_cidr = map['serviceIpv4Cidr']
        data.service_ipv6_cidr = map['serviceIpv6Cidr']
        data.ip_family = map['ipFamily']
        return data
      end
    end

    class VpcConfigResponse
      def self.parse(map)
        data = Types::VpcConfigResponse.new
        data.subnet_ids = (Parsers::StringList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_group_ids = (Parsers::StringList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.cluster_security_group_id = map['clusterSecurityGroupId']
        data.vpc_id = map['vpcId']
        data.endpoint_public_access = map['endpointPublicAccess']
        data.endpoint_private_access = map['endpointPrivateAccess']
        data.public_access_cidrs = (Parsers::StringList.parse(map['publicAccessCidrs']) unless map['publicAccessCidrs'].nil?)
        return data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnsupportedAvailabilityZoneException
    class UnsupportedAvailabilityZoneException
      def self.parse(http_resp)
        data = Types::UnsupportedAvailabilityZoneException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.cluster_name = map['clusterName']
        data.nodegroup_name = map['nodegroupName']
        data.valid_zones = (Parsers::StringList.parse(map['validZones']) unless map['validZones'].nil?)
        data
      end
    end

    # Operation Parser for CreateFargateProfile
    class CreateFargateProfile
      def self.parse(http_resp)
        data = Types::CreateFargateProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fargate_profile = (Parsers::FargateProfile.parse(map['fargateProfile']) unless map['fargateProfile'].nil?)
        data
      end
    end

    class FargateProfile
      def self.parse(map)
        data = Types::FargateProfile.new
        data.fargate_profile_name = map['fargateProfileName']
        data.fargate_profile_arn = map['fargateProfileArn']
        data.cluster_name = map['clusterName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.pod_execution_role_arn = map['podExecutionRoleArn']
        data.subnets = (Parsers::StringList.parse(map['subnets']) unless map['subnets'].nil?)
        data.selectors = (Parsers::FargateProfileSelectors.parse(map['selectors']) unless map['selectors'].nil?)
        data.status = map['status']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class FargateProfileSelectors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FargateProfileSelector.parse(value) unless value.nil?
        end
        data
      end
    end

    class FargateProfileSelector
      def self.parse(map)
        data = Types::FargateProfileSelector.new
        data.namespace = map['namespace']
        data.labels = (Parsers::FargateProfileLabel.parse(map['labels']) unless map['labels'].nil?)
        return data
      end
    end

    class FargateProfileLabel
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateNodegroup
    class CreateNodegroup
      def self.parse(http_resp)
        data = Types::CreateNodegroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.nodegroup = (Parsers::Nodegroup.parse(map['nodegroup']) unless map['nodegroup'].nil?)
        data
      end
    end

    class Nodegroup
      def self.parse(map)
        data = Types::Nodegroup.new
        data.nodegroup_name = map['nodegroupName']
        data.nodegroup_arn = map['nodegroupArn']
        data.cluster_name = map['clusterName']
        data.version = map['version']
        data.release_version = map['releaseVersion']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.modified_at = Time.at(map['modifiedAt'].to_i) if map['modifiedAt']
        data.status = map['status']
        data.capacity_type = map['capacityType']
        data.scaling_config = (Parsers::NodegroupScalingConfig.parse(map['scalingConfig']) unless map['scalingConfig'].nil?)
        data.instance_types = (Parsers::StringList.parse(map['instanceTypes']) unless map['instanceTypes'].nil?)
        data.subnets = (Parsers::StringList.parse(map['subnets']) unless map['subnets'].nil?)
        data.remote_access = (Parsers::RemoteAccessConfig.parse(map['remoteAccess']) unless map['remoteAccess'].nil?)
        data.ami_type = map['amiType']
        data.node_role = map['nodeRole']
        data.labels = (Parsers::LabelsMap.parse(map['labels']) unless map['labels'].nil?)
        data.taints = (Parsers::TaintsList.parse(map['taints']) unless map['taints'].nil?)
        data.resources = (Parsers::NodegroupResources.parse(map['resources']) unless map['resources'].nil?)
        data.disk_size = map['diskSize']
        data.health = (Parsers::NodegroupHealth.parse(map['health']) unless map['health'].nil?)
        data.update_config = (Parsers::NodegroupUpdateConfig.parse(map['updateConfig']) unless map['updateConfig'].nil?)
        data.launch_template = (Parsers::LaunchTemplateSpecification.parse(map['launchTemplate']) unless map['launchTemplate'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class LaunchTemplateSpecification
      def self.parse(map)
        data = Types::LaunchTemplateSpecification.new
        data.name = map['name']
        data.version = map['version']
        data.id = map['id']
        return data
      end
    end

    class NodegroupUpdateConfig
      def self.parse(map)
        data = Types::NodegroupUpdateConfig.new
        data.max_unavailable = map['maxUnavailable']
        data.max_unavailable_percentage = map['maxUnavailablePercentage']
        return data
      end
    end

    class NodegroupHealth
      def self.parse(map)
        data = Types::NodegroupHealth.new
        data.issues = (Parsers::IssueList.parse(map['issues']) unless map['issues'].nil?)
        return data
      end
    end

    class IssueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Issue.parse(value) unless value.nil?
        end
        data
      end
    end

    class Issue
      def self.parse(map)
        data = Types::Issue.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data.resource_ids = (Parsers::StringList.parse(map['resourceIds']) unless map['resourceIds'].nil?)
        return data
      end
    end

    class NodegroupResources
      def self.parse(map)
        data = Types::NodegroupResources.new
        data.auto_scaling_groups = (Parsers::AutoScalingGroupList.parse(map['autoScalingGroups']) unless map['autoScalingGroups'].nil?)
        data.remote_access_security_group = map['remoteAccessSecurityGroup']
        return data
      end
    end

    class AutoScalingGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AutoScalingGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutoScalingGroup
      def self.parse(map)
        data = Types::AutoScalingGroup.new
        data.name = map['name']
        return data
      end
    end

    class TaintsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Taint.parse(value) unless value.nil?
        end
        data
      end
    end

    class Taint
      def self.parse(map)
        data = Types::Taint.new
        data.key = map['key']
        data.value = map['value']
        data.effect = map['effect']
        return data
      end
    end

    class LabelsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class RemoteAccessConfig
      def self.parse(map)
        data = Types::RemoteAccessConfig.new
        data.ec2_ssh_key = map['ec2SshKey']
        data.source_security_groups = (Parsers::StringList.parse(map['sourceSecurityGroups']) unless map['sourceSecurityGroups'].nil?)
        return data
      end
    end

    class NodegroupScalingConfig
      def self.parse(map)
        data = Types::NodegroupScalingConfig.new
        data.min_size = map['minSize']
        data.max_size = map['maxSize']
        data.desired_size = map['desiredSize']
        return data
      end
    end

    # Operation Parser for DeleteAddon
    class DeleteAddon
      def self.parse(http_resp)
        data = Types::DeleteAddonOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.addon = (Parsers::Addon.parse(map['addon']) unless map['addon'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Operation Parser for DeleteFargateProfile
    class DeleteFargateProfile
      def self.parse(http_resp)
        data = Types::DeleteFargateProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fargate_profile = (Parsers::FargateProfile.parse(map['fargateProfile']) unless map['fargateProfile'].nil?)
        data
      end
    end

    # Operation Parser for DeleteNodegroup
    class DeleteNodegroup
      def self.parse(http_resp)
        data = Types::DeleteNodegroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.nodegroup = (Parsers::Nodegroup.parse(map['nodegroup']) unless map['nodegroup'].nil?)
        data
      end
    end

    # Operation Parser for DeregisterCluster
    class DeregisterCluster
      def self.parse(http_resp)
        data = Types::DeregisterClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeAddon
    class DescribeAddon
      def self.parse(http_resp)
        data = Types::DescribeAddonOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.addon = (Parsers::Addon.parse(map['addon']) unless map['addon'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAddonVersions
    class DescribeAddonVersions
      def self.parse(http_resp)
        data = Types::DescribeAddonVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.addons = (Parsers::Addons.parse(map['addons']) unless map['addons'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Addons
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AddonInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class AddonInfo
      def self.parse(map)
        data = Types::AddonInfo.new
        data.addon_name = map['addonName']
        data.type = map['type']
        data.addon_versions = (Parsers::AddonVersionInfoList.parse(map['addonVersions']) unless map['addonVersions'].nil?)
        return data
      end
    end

    class AddonVersionInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AddonVersionInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class AddonVersionInfo
      def self.parse(map)
        data = Types::AddonVersionInfo.new
        data.addon_version = map['addonVersion']
        data.architecture = (Parsers::StringList.parse(map['architecture']) unless map['architecture'].nil?)
        data.compatibilities = (Parsers::Compatibilities.parse(map['compatibilities']) unless map['compatibilities'].nil?)
        return data
      end
    end

    class Compatibilities
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Compatibility.parse(value) unless value.nil?
        end
        data
      end
    end

    class Compatibility
      def self.parse(map)
        data = Types::Compatibility.new
        data.cluster_version = map['clusterVersion']
        data.platform_versions = (Parsers::StringList.parse(map['platformVersions']) unless map['platformVersions'].nil?)
        data.default_version = map['defaultVersion']
        return data
      end
    end

    # Operation Parser for DescribeCluster
    class DescribeCluster
      def self.parse(http_resp)
        data = Types::DescribeClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Operation Parser for DescribeFargateProfile
    class DescribeFargateProfile
      def self.parse(http_resp)
        data = Types::DescribeFargateProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fargate_profile = (Parsers::FargateProfile.parse(map['fargateProfile']) unless map['fargateProfile'].nil?)
        data
      end
    end

    # Operation Parser for DescribeIdentityProviderConfig
    class DescribeIdentityProviderConfig
      def self.parse(http_resp)
        data = Types::DescribeIdentityProviderConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_provider_config = (Parsers::IdentityProviderConfigResponse.parse(map['identityProviderConfig']) unless map['identityProviderConfig'].nil?)
        data
      end
    end

    class IdentityProviderConfigResponse
      def self.parse(map)
        data = Types::IdentityProviderConfigResponse.new
        data.oidc = (Parsers::OidcIdentityProviderConfig.parse(map['oidc']) unless map['oidc'].nil?)
        return data
      end
    end

    class OidcIdentityProviderConfig
      def self.parse(map)
        data = Types::OidcIdentityProviderConfig.new
        data.identity_provider_config_name = map['identityProviderConfigName']
        data.identity_provider_config_arn = map['identityProviderConfigArn']
        data.cluster_name = map['clusterName']
        data.issuer_url = map['issuerUrl']
        data.client_id = map['clientId']
        data.username_claim = map['usernameClaim']
        data.username_prefix = map['usernamePrefix']
        data.groups_claim = map['groupsClaim']
        data.groups_prefix = map['groupsPrefix']
        data.required_claims = (Parsers::RequiredClaimsMap.parse(map['requiredClaims']) unless map['requiredClaims'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.status = map['status']
        return data
      end
    end

    class RequiredClaimsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeNodegroup
    class DescribeNodegroup
      def self.parse(http_resp)
        data = Types::DescribeNodegroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.nodegroup = (Parsers::Nodegroup.parse(map['nodegroup']) unless map['nodegroup'].nil?)
        data
      end
    end

    # Operation Parser for DescribeUpdate
    class DescribeUpdate
      def self.parse(http_resp)
        data = Types::DescribeUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateIdentityProviderConfig
    class DisassociateIdentityProviderConfig
      def self.parse(http_resp)
        data = Types::DisassociateIdentityProviderConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    # Operation Parser for ListAddons
    class ListAddons
      def self.parse(http_resp)
        data = Types::ListAddonsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.addons = (Parsers::StringList.parse(map['addons']) unless map['addons'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListClusters
    class ListClusters
      def self.parse(http_resp)
        data = Types::ListClustersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.clusters = (Parsers::StringList.parse(map['clusters']) unless map['clusters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListFargateProfiles
    class ListFargateProfiles
      def self.parse(http_resp)
        data = Types::ListFargateProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fargate_profile_names = (Parsers::StringList.parse(map['fargateProfileNames']) unless map['fargateProfileNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListIdentityProviderConfigs
    class ListIdentityProviderConfigs
      def self.parse(http_resp)
        data = Types::ListIdentityProviderConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_provider_configs = (Parsers::IdentityProviderConfigs.parse(map['identityProviderConfigs']) unless map['identityProviderConfigs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class IdentityProviderConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IdentityProviderConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class IdentityProviderConfig
      def self.parse(map)
        data = Types::IdentityProviderConfig.new
        data.type = map['type']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListNodegroups
    class ListNodegroups
      def self.parse(http_resp)
        data = Types::ListNodegroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.nodegroups = (Parsers::StringList.parse(map['nodegroups']) unless map['nodegroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListUpdates
    class ListUpdates
      def self.parse(http_resp)
        data = Types::ListUpdatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update_ids = (Parsers::StringList.parse(map['updateIds']) unless map['updateIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for RegisterCluster
    class RegisterCluster
      def self.parse(http_resp)
        data = Types::RegisterClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Error Parser for ResourcePropagationDelayException
    class ResourcePropagationDelayException
      def self.parse(http_resp)
        data = Types::ResourcePropagationDelayException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAddon
    class UpdateAddon
      def self.parse(http_resp)
        data = Types::UpdateAddonOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    # Operation Parser for UpdateClusterConfig
    class UpdateClusterConfig
      def self.parse(http_resp)
        data = Types::UpdateClusterConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    # Operation Parser for UpdateClusterVersion
    class UpdateClusterVersion
      def self.parse(http_resp)
        data = Types::UpdateClusterVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    # Operation Parser for UpdateNodegroupConfig
    class UpdateNodegroupConfig
      def self.parse(http_resp)
        data = Types::UpdateNodegroupConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end

    # Operation Parser for UpdateNodegroupVersion
    class UpdateNodegroupVersion
      def self.parse(http_resp)
        data = Types::UpdateNodegroupVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update = (Parsers::Update.parse(map['update']) unless map['update'].nil?)
        data
      end
    end
  end
end
