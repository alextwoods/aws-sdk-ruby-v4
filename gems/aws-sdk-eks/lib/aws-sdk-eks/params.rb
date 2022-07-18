# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EKS
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Addon
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Addon, context: context)
        type = Types::Addon.new
        type.addon_name = params[:addon_name]
        type.cluster_name = params[:cluster_name]
        type.status = params[:status]
        type.addon_version = params[:addon_version]
        type.health = AddonHealth.build(params[:health], context: "#{context}[:health]") unless params[:health].nil?
        type.addon_arn = params[:addon_arn]
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type.service_account_role_arn = params[:service_account_role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddonHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddonHealth, context: context)
        type = Types::AddonHealth.new
        type.issues = AddonIssueList.build(params[:issues], context: "#{context}[:issues]") unless params[:issues].nil?
        type
      end
    end

    module AddonInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddonInfo, context: context)
        type = Types::AddonInfo.new
        type.addon_name = params[:addon_name]
        type.type = params[:type]
        type.addon_versions = AddonVersionInfoList.build(params[:addon_versions], context: "#{context}[:addon_versions]") unless params[:addon_versions].nil?
        type
      end
    end

    module AddonIssue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddonIssue, context: context)
        type = Types::AddonIssue.new
        type.code = params[:code]
        type.message = params[:message]
        type.resource_ids = StringList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module AddonIssueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddonIssue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddonVersionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddonVersionInfo, context: context)
        type = Types::AddonVersionInfo.new
        type.addon_version = params[:addon_version]
        type.architecture = StringList.build(params[:architecture], context: "#{context}[:architecture]") unless params[:architecture].nil?
        type.compatibilities = Compatibilities.build(params[:compatibilities], context: "#{context}[:compatibilities]") unless params[:compatibilities].nil?
        type
      end
    end

    module AddonVersionInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddonVersionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Addons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddonInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateEncryptionConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEncryptionConfigInput, context: context)
        type = Types::AssociateEncryptionConfigInput.new
        type.cluster_name = params[:cluster_name]
        type.encryption_config = EncryptionConfigList.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module AssociateEncryptionConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEncryptionConfigOutput, context: context)
        type = Types::AssociateEncryptionConfigOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module AssociateIdentityProviderConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateIdentityProviderConfigInput, context: context)
        type = Types::AssociateIdentityProviderConfigInput.new
        type.cluster_name = params[:cluster_name]
        type.oidc = OidcIdentityProviderConfigRequest.build(params[:oidc], context: "#{context}[:oidc]") unless params[:oidc].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module AssociateIdentityProviderConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateIdentityProviderConfigOutput, context: context)
        type = Types::AssociateIdentityProviderConfigOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AutoScalingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroup, context: context)
        type = Types::AutoScalingGroup.new
        type.name = params[:name]
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

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.data = params[:data]
        type
      end
    end

    module ClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientException, context: context)
        type = Types::ClientException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.addon_name = params[:addon_name]
        type.message = params[:message]
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.version = params[:version]
        type.endpoint = params[:endpoint]
        type.role_arn = params[:role_arn]
        type.resources_vpc_config = VpcConfigResponse.build(params[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless params[:resources_vpc_config].nil?
        type.kubernetes_network_config = KubernetesNetworkConfigResponse.build(params[:kubernetes_network_config], context: "#{context}[:kubernetes_network_config]") unless params[:kubernetes_network_config].nil?
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.identity = Identity.build(params[:identity], context: "#{context}[:identity]") unless params[:identity].nil?
        type.status = params[:status]
        type.certificate_authority = Certificate.build(params[:certificate_authority], context: "#{context}[:certificate_authority]") unless params[:certificate_authority].nil?
        type.client_request_token = params[:client_request_token]
        type.platform_version = params[:platform_version]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.encryption_config = EncryptionConfigList.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.connector_config = ConnectorConfigResponse.build(params[:connector_config], context: "#{context}[:connector_config]") unless params[:connector_config].nil?
        type
      end
    end

    module Compatibilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Compatibility.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Compatibility
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Compatibility, context: context)
        type = Types::Compatibility.new
        type.cluster_version = params[:cluster_version]
        type.platform_versions = StringList.build(params[:platform_versions], context: "#{context}[:platform_versions]") unless params[:platform_versions].nil?
        type.default_version = params[:default_version]
        type
      end
    end

    module ConnectorConfigRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorConfigRequest, context: context)
        type = Types::ConnectorConfigRequest.new
        type.role_arn = params[:role_arn]
        type.provider = params[:provider]
        type
      end
    end

    module ConnectorConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorConfigResponse, context: context)
        type = Types::ConnectorConfigResponse.new
        type.activation_id = params[:activation_id]
        type.activation_code = params[:activation_code]
        type.activation_expiry = params[:activation_expiry]
        type.provider = params[:provider]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module CreateAddonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAddonInput, context: context)
        type = Types::CreateAddonInput.new
        type.cluster_name = params[:cluster_name]
        type.addon_name = params[:addon_name]
        type.addon_version = params[:addon_version]
        type.service_account_role_arn = params[:service_account_role_arn]
        type.resolve_conflicts = params[:resolve_conflicts]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAddonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAddonOutput, context: context)
        type = Types::CreateAddonOutput.new
        type.addon = Addon.build(params[:addon], context: "#{context}[:addon]") unless params[:addon].nil?
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.name = params[:name]
        type.version = params[:version]
        type.role_arn = params[:role_arn]
        type.resources_vpc_config = VpcConfigRequest.build(params[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless params[:resources_vpc_config].nil?
        type.kubernetes_network_config = KubernetesNetworkConfigRequest.build(params[:kubernetes_network_config], context: "#{context}[:kubernetes_network_config]") unless params[:kubernetes_network_config].nil?
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.encryption_config = EncryptionConfigList.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateFargateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFargateProfileInput, context: context)
        type = Types::CreateFargateProfileInput.new
        type.fargate_profile_name = params[:fargate_profile_name]
        type.cluster_name = params[:cluster_name]
        type.pod_execution_role_arn = params[:pod_execution_role_arn]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.selectors = FargateProfileSelectors.build(params[:selectors], context: "#{context}[:selectors]") unless params[:selectors].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFargateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFargateProfileOutput, context: context)
        type = Types::CreateFargateProfileOutput.new
        type.fargate_profile = FargateProfile.build(params[:fargate_profile], context: "#{context}[:fargate_profile]") unless params[:fargate_profile].nil?
        type
      end
    end

    module CreateNodegroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNodegroupInput, context: context)
        type = Types::CreateNodegroupInput.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.scaling_config = NodegroupScalingConfig.build(params[:scaling_config], context: "#{context}[:scaling_config]") unless params[:scaling_config].nil?
        type.disk_size = params[:disk_size]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.instance_types = StringList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.ami_type = params[:ami_type]
        type.remote_access = RemoteAccessConfig.build(params[:remote_access], context: "#{context}[:remote_access]") unless params[:remote_access].nil?
        type.node_role = params[:node_role]
        type.labels = LabelsMap.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.taints = TaintsList.build(params[:taints], context: "#{context}[:taints]") unless params[:taints].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.update_config = NodegroupUpdateConfig.build(params[:update_config], context: "#{context}[:update_config]") unless params[:update_config].nil?
        type.capacity_type = params[:capacity_type]
        type.version = params[:version]
        type.release_version = params[:release_version]
        type
      end
    end

    module CreateNodegroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNodegroupOutput, context: context)
        type = Types::CreateNodegroupOutput.new
        type.nodegroup = Nodegroup.build(params[:nodegroup], context: "#{context}[:nodegroup]") unless params[:nodegroup].nil?
        type
      end
    end

    module DeleteAddonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAddonInput, context: context)
        type = Types::DeleteAddonInput.new
        type.cluster_name = params[:cluster_name]
        type.addon_name = params[:addon_name]
        type.preserve = params[:preserve]
        type
      end
    end

    module DeleteAddonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAddonOutput, context: context)
        type = Types::DeleteAddonOutput.new
        type.addon = Addon.build(params[:addon], context: "#{context}[:addon]") unless params[:addon].nil?
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteFargateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFargateProfileInput, context: context)
        type = Types::DeleteFargateProfileInput.new
        type.cluster_name = params[:cluster_name]
        type.fargate_profile_name = params[:fargate_profile_name]
        type
      end
    end

    module DeleteFargateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFargateProfileOutput, context: context)
        type = Types::DeleteFargateProfileOutput.new
        type.fargate_profile = FargateProfile.build(params[:fargate_profile], context: "#{context}[:fargate_profile]") unless params[:fargate_profile].nil?
        type
      end
    end

    module DeleteNodegroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNodegroupInput, context: context)
        type = Types::DeleteNodegroupInput.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type
      end
    end

    module DeleteNodegroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNodegroupOutput, context: context)
        type = Types::DeleteNodegroupOutput.new
        type.nodegroup = Nodegroup.build(params[:nodegroup], context: "#{context}[:nodegroup]") unless params[:nodegroup].nil?
        type
      end
    end

    module DeregisterClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterClusterInput, context: context)
        type = Types::DeregisterClusterInput.new
        type.name = params[:name]
        type
      end
    end

    module DeregisterClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterClusterOutput, context: context)
        type = Types::DeregisterClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DescribeAddonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddonInput, context: context)
        type = Types::DescribeAddonInput.new
        type.cluster_name = params[:cluster_name]
        type.addon_name = params[:addon_name]
        type
      end
    end

    module DescribeAddonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddonOutput, context: context)
        type = Types::DescribeAddonOutput.new
        type.addon = Addon.build(params[:addon], context: "#{context}[:addon]") unless params[:addon].nil?
        type
      end
    end

    module DescribeAddonVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddonVersionsInput, context: context)
        type = Types::DescribeAddonVersionsInput.new
        type.kubernetes_version = params[:kubernetes_version]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.addon_name = params[:addon_name]
        type
      end
    end

    module DescribeAddonVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddonVersionsOutput, context: context)
        type = Types::DescribeAddonVersionsOutput.new
        type.addons = Addons.build(params[:addons], context: "#{context}[:addons]") unless params[:addons].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterInput, context: context)
        type = Types::DescribeClusterInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOutput, context: context)
        type = Types::DescribeClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DescribeFargateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFargateProfileInput, context: context)
        type = Types::DescribeFargateProfileInput.new
        type.cluster_name = params[:cluster_name]
        type.fargate_profile_name = params[:fargate_profile_name]
        type
      end
    end

    module DescribeFargateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFargateProfileOutput, context: context)
        type = Types::DescribeFargateProfileOutput.new
        type.fargate_profile = FargateProfile.build(params[:fargate_profile], context: "#{context}[:fargate_profile]") unless params[:fargate_profile].nil?
        type
      end
    end

    module DescribeIdentityProviderConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityProviderConfigInput, context: context)
        type = Types::DescribeIdentityProviderConfigInput.new
        type.cluster_name = params[:cluster_name]
        type.identity_provider_config = IdentityProviderConfig.build(params[:identity_provider_config], context: "#{context}[:identity_provider_config]") unless params[:identity_provider_config].nil?
        type
      end
    end

    module DescribeIdentityProviderConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityProviderConfigOutput, context: context)
        type = Types::DescribeIdentityProviderConfigOutput.new
        type.identity_provider_config = IdentityProviderConfigResponse.build(params[:identity_provider_config], context: "#{context}[:identity_provider_config]") unless params[:identity_provider_config].nil?
        type
      end
    end

    module DescribeNodegroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodegroupInput, context: context)
        type = Types::DescribeNodegroupInput.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type
      end
    end

    module DescribeNodegroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodegroupOutput, context: context)
        type = Types::DescribeNodegroupOutput.new
        type.nodegroup = Nodegroup.build(params[:nodegroup], context: "#{context}[:nodegroup]") unless params[:nodegroup].nil?
        type
      end
    end

    module DescribeUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUpdateInput, context: context)
        type = Types::DescribeUpdateInput.new
        type.name = params[:name]
        type.update_id = params[:update_id]
        type.nodegroup_name = params[:nodegroup_name]
        type.addon_name = params[:addon_name]
        type
      end
    end

    module DescribeUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUpdateOutput, context: context)
        type = Types::DescribeUpdateOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module DisassociateIdentityProviderConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateIdentityProviderConfigInput, context: context)
        type = Types::DisassociateIdentityProviderConfigInput.new
        type.cluster_name = params[:cluster_name]
        type.identity_provider_config = IdentityProviderConfig.build(params[:identity_provider_config], context: "#{context}[:identity_provider_config]") unless params[:identity_provider_config].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module DisassociateIdentityProviderConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateIdentityProviderConfigOutput, context: context)
        type = Types::DisassociateIdentityProviderConfigOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module EncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfig, context: context)
        type = Types::EncryptionConfig.new
        type.resources = StringList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.provider = Provider.build(params[:provider], context: "#{context}[:provider]") unless params[:provider].nil?
        type
      end
    end

    module EncryptionConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EncryptionConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetail, context: context)
        type = Types::ErrorDetail.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.resource_ids = StringList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FargateProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FargateProfile, context: context)
        type = Types::FargateProfile.new
        type.fargate_profile_name = params[:fargate_profile_name]
        type.fargate_profile_arn = params[:fargate_profile_arn]
        type.cluster_name = params[:cluster_name]
        type.created_at = params[:created_at]
        type.pod_execution_role_arn = params[:pod_execution_role_arn]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.selectors = FargateProfileSelectors.build(params[:selectors], context: "#{context}[:selectors]") unless params[:selectors].nil?
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FargateProfileLabel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FargateProfileSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FargateProfileSelector, context: context)
        type = Types::FargateProfileSelector.new
        type.namespace = params[:namespace]
        type.labels = FargateProfileLabel.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module FargateProfileSelectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FargateProfileSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.oidc = OIDC.build(params[:oidc], context: "#{context}[:oidc]") unless params[:oidc].nil?
        type
      end
    end

    module IdentityProviderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityProviderConfig, context: context)
        type = Types::IdentityProviderConfig.new
        type.type = params[:type]
        type.name = params[:name]
        type
      end
    end

    module IdentityProviderConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityProviderConfigResponse, context: context)
        type = Types::IdentityProviderConfigResponse.new
        type.oidc = OidcIdentityProviderConfig.build(params[:oidc], context: "#{context}[:oidc]") unless params[:oidc].nil?
        type
      end
    end

    module IdentityProviderConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityProviderConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IncludeClustersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.fargate_profile_name = params[:fargate_profile_name]
        type.addon_name = params[:addon_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.addon_name = params[:addon_name]
        type.message = params[:message]
        type
      end
    end

    module Issue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Issue, context: context)
        type = Types::Issue.new
        type.code = params[:code]
        type.message = params[:message]
        type.resource_ids = StringList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module IssueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Issue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KubernetesNetworkConfigRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesNetworkConfigRequest, context: context)
        type = Types::KubernetesNetworkConfigRequest.new
        type.service_ipv4_cidr = params[:service_ipv4_cidr]
        type.ip_family = params[:ip_family]
        type
      end
    end

    module KubernetesNetworkConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KubernetesNetworkConfigResponse, context: context)
        type = Types::KubernetesNetworkConfigResponse.new
        type.service_ipv4_cidr = params[:service_ipv4_cidr]
        type.service_ipv6_cidr = params[:service_ipv6_cidr]
        type.ip_family = params[:ip_family]
        type
      end
    end

    module LaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateSpecification, context: context)
        type = Types::LaunchTemplateSpecification.new
        type.name = params[:name]
        type.version = params[:version]
        type.id = params[:id]
        type
      end
    end

    module ListAddonsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAddonsInput, context: context)
        type = Types::ListAddonsInput.new
        type.cluster_name = params[:cluster_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAddonsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAddonsOutput, context: context)
        type = Types::ListAddonsOutput.new
        type.addons = StringList.build(params[:addons], context: "#{context}[:addons]") unless params[:addons].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersInput, context: context)
        type = Types::ListClustersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.include = IncludeClustersList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module ListClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersOutput, context: context)
        type = Types::ListClustersOutput.new
        type.clusters = StringList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFargateProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFargateProfilesInput, context: context)
        type = Types::ListFargateProfilesInput.new
        type.cluster_name = params[:cluster_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFargateProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFargateProfilesOutput, context: context)
        type = Types::ListFargateProfilesOutput.new
        type.fargate_profile_names = StringList.build(params[:fargate_profile_names], context: "#{context}[:fargate_profile_names]") unless params[:fargate_profile_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityProviderConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityProviderConfigsInput, context: context)
        type = Types::ListIdentityProviderConfigsInput.new
        type.cluster_name = params[:cluster_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityProviderConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityProviderConfigsOutput, context: context)
        type = Types::ListIdentityProviderConfigsOutput.new
        type.identity_provider_configs = IdentityProviderConfigs.build(params[:identity_provider_configs], context: "#{context}[:identity_provider_configs]") unless params[:identity_provider_configs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodegroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodegroupsInput, context: context)
        type = Types::ListNodegroupsInput.new
        type.cluster_name = params[:cluster_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodegroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodegroupsOutput, context: context)
        type = Types::ListNodegroupsOutput.new
        type.nodegroups = StringList.build(params[:nodegroups], context: "#{context}[:nodegroups]") unless params[:nodegroups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListUpdatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUpdatesInput, context: context)
        type = Types::ListUpdatesInput.new
        type.name = params[:name]
        type.nodegroup_name = params[:nodegroup_name]
        type.addon_name = params[:addon_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUpdatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUpdatesOutput, context: context)
        type = Types::ListUpdatesOutput.new
        type.update_ids = StringList.build(params[:update_ids], context: "#{context}[:update_ids]") unless params[:update_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LogSetup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogSetup, context: context)
        type = Types::LogSetup.new
        type.types = LogTypes.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module LogSetups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogSetup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Logging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Logging, context: context)
        type = Types::Logging.new
        type.cluster_logging = LogSetups.build(params[:cluster_logging], context: "#{context}[:cluster_logging]") unless params[:cluster_logging].nil?
        type
      end
    end

    module Nodegroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Nodegroup, context: context)
        type = Types::Nodegroup.new
        type.nodegroup_name = params[:nodegroup_name]
        type.nodegroup_arn = params[:nodegroup_arn]
        type.cluster_name = params[:cluster_name]
        type.version = params[:version]
        type.release_version = params[:release_version]
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type.status = params[:status]
        type.capacity_type = params[:capacity_type]
        type.scaling_config = NodegroupScalingConfig.build(params[:scaling_config], context: "#{context}[:scaling_config]") unless params[:scaling_config].nil?
        type.instance_types = StringList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.remote_access = RemoteAccessConfig.build(params[:remote_access], context: "#{context}[:remote_access]") unless params[:remote_access].nil?
        type.ami_type = params[:ami_type]
        type.node_role = params[:node_role]
        type.labels = LabelsMap.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.taints = TaintsList.build(params[:taints], context: "#{context}[:taints]") unless params[:taints].nil?
        type.resources = NodegroupResources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.disk_size = params[:disk_size]
        type.health = NodegroupHealth.build(params[:health], context: "#{context}[:health]") unless params[:health].nil?
        type.update_config = NodegroupUpdateConfig.build(params[:update_config], context: "#{context}[:update_config]") unless params[:update_config].nil?
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NodegroupHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodegroupHealth, context: context)
        type = Types::NodegroupHealth.new
        type.issues = IssueList.build(params[:issues], context: "#{context}[:issues]") unless params[:issues].nil?
        type
      end
    end

    module NodegroupResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodegroupResources, context: context)
        type = Types::NodegroupResources.new
        type.auto_scaling_groups = AutoScalingGroupList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.remote_access_security_group = params[:remote_access_security_group]
        type
      end
    end

    module NodegroupScalingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodegroupScalingConfig, context: context)
        type = Types::NodegroupScalingConfig.new
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_size = params[:desired_size]
        type
      end
    end

    module NodegroupUpdateConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodegroupUpdateConfig, context: context)
        type = Types::NodegroupUpdateConfig.new
        type.max_unavailable = params[:max_unavailable]
        type.max_unavailable_percentage = params[:max_unavailable_percentage]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OIDC
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OIDC, context: context)
        type = Types::OIDC.new
        type.issuer = params[:issuer]
        type
      end
    end

    module OidcIdentityProviderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OidcIdentityProviderConfig, context: context)
        type = Types::OidcIdentityProviderConfig.new
        type.identity_provider_config_name = params[:identity_provider_config_name]
        type.identity_provider_config_arn = params[:identity_provider_config_arn]
        type.cluster_name = params[:cluster_name]
        type.issuer_url = params[:issuer_url]
        type.client_id = params[:client_id]
        type.username_claim = params[:username_claim]
        type.username_prefix = params[:username_prefix]
        type.groups_claim = params[:groups_claim]
        type.groups_prefix = params[:groups_prefix]
        type.required_claims = RequiredClaimsMap.build(params[:required_claims], context: "#{context}[:required_claims]") unless params[:required_claims].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.status = params[:status]
        type
      end
    end

    module OidcIdentityProviderConfigRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OidcIdentityProviderConfigRequest, context: context)
        type = Types::OidcIdentityProviderConfigRequest.new
        type.identity_provider_config_name = params[:identity_provider_config_name]
        type.issuer_url = params[:issuer_url]
        type.client_id = params[:client_id]
        type.username_claim = params[:username_claim]
        type.username_prefix = params[:username_prefix]
        type.groups_claim = params[:groups_claim]
        type.groups_prefix = params[:groups_prefix]
        type.required_claims = RequiredClaimsMap.build(params[:required_claims], context: "#{context}[:required_claims]") unless params[:required_claims].nil?
        type
      end
    end

    module Provider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Provider, context: context)
        type = Types::Provider.new
        type.key_arn = params[:key_arn]
        type
      end
    end

    module RegisterClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterClusterInput, context: context)
        type = Types::RegisterClusterInput.new
        type.name = params[:name]
        type.connector_config = ConnectorConfigRequest.build(params[:connector_config], context: "#{context}[:connector_config]") unless params[:connector_config].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterClusterOutput, context: context)
        type = Types::RegisterClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module RemoteAccessConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoteAccessConfig, context: context)
        type = Types::RemoteAccessConfig.new
        type.ec2_ssh_key = params[:ec2_ssh_key]
        type.source_security_groups = StringList.build(params[:source_security_groups], context: "#{context}[:source_security_groups]") unless params[:source_security_groups].nil?
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.addon_name = params[:addon_name]
        type.message = params[:message]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.fargate_profile_name = params[:fargate_profile_name]
        type.addon_name = params[:addon_name]
        type.message = params[:message]
        type
      end
    end

    module ResourcePropagationDelayException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePropagationDelayException, context: context)
        type = Types::ResourcePropagationDelayException.new
        type.message = params[:message]
        type
      end
    end

    module ServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerException, context: context)
        type = Types::ServerException.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.addon_name = params[:addon_name]
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Taint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Taint, context: context)
        type = Types::Taint.new
        type.key = params[:key]
        type.value = params[:value]
        type.effect = params[:effect]
        type
      end
    end

    module UnsupportedAvailabilityZoneException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedAvailabilityZoneException, context: context)
        type = Types::UnsupportedAvailabilityZoneException.new
        type.message = params[:message]
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.valid_zones = StringList.build(params[:valid_zones], context: "#{context}[:valid_zones]") unless params[:valid_zones].nil?
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

    module Update
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Update, context: context)
        type = Types::Update.new
        type.id = params[:id]
        type.status = params[:status]
        type.type = params[:type]
        type.params = UpdateParams.build(params[:params], context: "#{context}[:params]") unless params[:params].nil?
        type.created_at = params[:created_at]
        type.errors = ErrorDetails.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module UpdateAddonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAddonInput, context: context)
        type = Types::UpdateAddonInput.new
        type.cluster_name = params[:cluster_name]
        type.addon_name = params[:addon_name]
        type.addon_version = params[:addon_version]
        type.service_account_role_arn = params[:service_account_role_arn]
        type.resolve_conflicts = params[:resolve_conflicts]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateAddonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAddonOutput, context: context)
        type = Types::UpdateAddonOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module UpdateClusterConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterConfigInput, context: context)
        type = Types::UpdateClusterConfigInput.new
        type.name = params[:name]
        type.resources_vpc_config = VpcConfigRequest.build(params[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless params[:resources_vpc_config].nil?
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateClusterConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterConfigOutput, context: context)
        type = Types::UpdateClusterConfigOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module UpdateClusterVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterVersionInput, context: context)
        type = Types::UpdateClusterVersionInput.new
        type.name = params[:name]
        type.version = params[:version]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateClusterVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterVersionOutput, context: context)
        type = Types::UpdateClusterVersionOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module UpdateLabelsPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLabelsPayload, context: context)
        type = Types::UpdateLabelsPayload.new
        type.add_or_update_labels = LabelsMap.build(params[:add_or_update_labels], context: "#{context}[:add_or_update_labels]") unless params[:add_or_update_labels].nil?
        type.remove_labels = LabelsKeyList.build(params[:remove_labels], context: "#{context}[:remove_labels]") unless params[:remove_labels].nil?
        type
      end
    end

    module UpdateNodegroupConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNodegroupConfigInput, context: context)
        type = Types::UpdateNodegroupConfigInput.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.labels = UpdateLabelsPayload.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.taints = UpdateTaintsPayload.build(params[:taints], context: "#{context}[:taints]") unless params[:taints].nil?
        type.scaling_config = NodegroupScalingConfig.build(params[:scaling_config], context: "#{context}[:scaling_config]") unless params[:scaling_config].nil?
        type.update_config = NodegroupUpdateConfig.build(params[:update_config], context: "#{context}[:update_config]") unless params[:update_config].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateNodegroupConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNodegroupConfigOutput, context: context)
        type = Types::UpdateNodegroupConfigOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module UpdateNodegroupVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNodegroupVersionInput, context: context)
        type = Types::UpdateNodegroupVersionInput.new
        type.cluster_name = params[:cluster_name]
        type.nodegroup_name = params[:nodegroup_name]
        type.version = params[:version]
        type.release_version = params[:release_version]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.force = params[:force]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateNodegroupVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNodegroupVersionOutput, context: context)
        type = Types::UpdateNodegroupVersionOutput.new
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module UpdateParam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParam, context: context)
        type = Types::UpdateParam.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module UpdateParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateParam.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateTaintsPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaintsPayload, context: context)
        type = Types::UpdateTaintsPayload.new
        type.add_or_update_taints = TaintsList.build(params[:add_or_update_taints], context: "#{context}[:add_or_update_taints]") unless params[:add_or_update_taints].nil?
        type.remove_taints = TaintsList.build(params[:remove_taints], context: "#{context}[:remove_taints]") unless params[:remove_taints].nil?
        type
      end
    end

    module VpcConfigRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigRequest, context: context)
        type = Types::VpcConfigRequest.new
        type.subnet_ids = StringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.endpoint_public_access = params[:endpoint_public_access]
        type.endpoint_private_access = params[:endpoint_private_access]
        type.public_access_cidrs = StringList.build(params[:public_access_cidrs], context: "#{context}[:public_access_cidrs]") unless params[:public_access_cidrs].nil?
        type
      end
    end

    module VpcConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigResponse, context: context)
        type = Types::VpcConfigResponse.new
        type.subnet_ids = StringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.cluster_security_group_id = params[:cluster_security_group_id]
        type.vpc_id = params[:vpc_id]
        type.endpoint_public_access = params[:endpoint_public_access]
        type.endpoint_private_access = params[:endpoint_private_access]
        type.public_access_cidrs = StringList.build(params[:public_access_cidrs], context: "#{context}[:public_access_cidrs]") unless params[:public_access_cidrs].nil?
        type
      end
    end

    module LabelsKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LabelsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RequiredClaimsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TaintsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Taint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
