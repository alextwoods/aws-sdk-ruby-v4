# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EKS
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Addon
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Addon, context: context)
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:addon_version], ::String, context: "#{context}[:addon_version]")
        Validators::AddonHealth.validate!(input[:health], context: "#{context}[:health]") unless input[:health].nil?
        Hearth::Validator.validate!(input[:addon_arn], ::String, context: "#{context}[:addon_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
        Hearth::Validator.validate!(input[:service_account_role_arn], ::String, context: "#{context}[:service_account_role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddonHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddonHealth, context: context)
        Validators::AddonIssueList.validate!(input[:issues], context: "#{context}[:issues]") unless input[:issues].nil?
      end
    end

    class AddonInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddonInfo, context: context)
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::AddonVersionInfoList.validate!(input[:addon_versions], context: "#{context}[:addon_versions]") unless input[:addon_versions].nil?
      end
    end

    class AddonIssue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddonIssue, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::StringList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class AddonIssueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AddonIssue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddonVersionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddonVersionInfo, context: context)
        Hearth::Validator.validate!(input[:addon_version], ::String, context: "#{context}[:addon_version]")
        Validators::StringList.validate!(input[:architecture], context: "#{context}[:architecture]") unless input[:architecture].nil?
        Validators::Compatibilities.validate!(input[:compatibilities], context: "#{context}[:compatibilities]") unless input[:compatibilities].nil?
      end
    end

    class AddonVersionInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AddonVersionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Addons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AddonInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEncryptionConfigInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Validators::EncryptionConfigList.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class AssociateEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEncryptionConfigOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class AssociateIdentityProviderConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateIdentityProviderConfigInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Validators::OidcIdentityProviderConfigRequest.validate!(input[:oidc], context: "#{context}[:oidc]") unless input[:oidc].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class AssociateIdentityProviderConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateIdentityProviderConfigOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AutoScalingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AutoScalingGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AutoScalingGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class ClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::VpcConfigResponse.validate!(input[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless input[:resources_vpc_config].nil?
        Validators::KubernetesNetworkConfigResponse.validate!(input[:kubernetes_network_config], context: "#{context}[:kubernetes_network_config]") unless input[:kubernetes_network_config].nil?
        Validators::Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Validators::Identity.validate!(input[:identity], context: "#{context}[:identity]") unless input[:identity].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::Certificate.validate!(input[:certificate_authority], context: "#{context}[:certificate_authority]") unless input[:certificate_authority].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EncryptionConfigList.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        Validators::ConnectorConfigResponse.validate!(input[:connector_config], context: "#{context}[:connector_config]") unless input[:connector_config].nil?
      end
    end

    class Compatibilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Compatibility.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Compatibility
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Compatibility, context: context)
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Validators::StringList.validate!(input[:platform_versions], context: "#{context}[:platform_versions]") unless input[:platform_versions].nil?
        Hearth::Validator.validate!(input[:default_version], ::TrueClass, ::FalseClass, context: "#{context}[:default_version]")
      end
    end

    class ConnectorConfigRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorConfigRequest, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
      end
    end

    class ConnectorConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorConfigResponse, context: context)
        Hearth::Validator.validate!(input[:activation_id], ::String, context: "#{context}[:activation_id]")
        Hearth::Validator.validate!(input[:activation_code], ::String, context: "#{context}[:activation_code]")
        Hearth::Validator.validate!(input[:activation_expiry], ::Time, context: "#{context}[:activation_expiry]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class CreateAddonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAddonInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:addon_version], ::String, context: "#{context}[:addon_version]")
        Hearth::Validator.validate!(input[:service_account_role_arn], ::String, context: "#{context}[:service_account_role_arn]")
        Hearth::Validator.validate!(input[:resolve_conflicts], ::String, context: "#{context}[:resolve_conflicts]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAddonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAddonOutput, context: context)
        Validators::Addon.validate!(input[:addon], context: "#{context}[:addon]") unless input[:addon].nil?
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::VpcConfigRequest.validate!(input[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless input[:resources_vpc_config].nil?
        Validators::KubernetesNetworkConfigRequest.validate!(input[:kubernetes_network_config], context: "#{context}[:kubernetes_network_config]") unless input[:kubernetes_network_config].nil?
        Validators::Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EncryptionConfigList.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateFargateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFargateProfileInput, context: context)
        Hearth::Validator.validate!(input[:fargate_profile_name], ::String, context: "#{context}[:fargate_profile_name]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:pod_execution_role_arn], ::String, context: "#{context}[:pod_execution_role_arn]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::FargateProfileSelectors.validate!(input[:selectors], context: "#{context}[:selectors]") unless input[:selectors].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFargateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFargateProfileOutput, context: context)
        Validators::FargateProfile.validate!(input[:fargate_profile], context: "#{context}[:fargate_profile]") unless input[:fargate_profile].nil?
      end
    end

    class CreateNodegroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNodegroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Validators::NodegroupScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        Hearth::Validator.validate!(input[:disk_size], ::Integer, context: "#{context}[:disk_size]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::StringList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:ami_type], ::String, context: "#{context}[:ami_type]")
        Validators::RemoteAccessConfig.validate!(input[:remote_access], context: "#{context}[:remote_access]") unless input[:remote_access].nil?
        Hearth::Validator.validate!(input[:node_role], ::String, context: "#{context}[:node_role]")
        Validators::LabelsMap.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Validators::TaintsList.validate!(input[:taints], context: "#{context}[:taints]") unless input[:taints].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::NodegroupUpdateConfig.validate!(input[:update_config], context: "#{context}[:update_config]") unless input[:update_config].nil?
        Hearth::Validator.validate!(input[:capacity_type], ::String, context: "#{context}[:capacity_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
      end
    end

    class CreateNodegroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNodegroupOutput, context: context)
        Validators::Nodegroup.validate!(input[:nodegroup], context: "#{context}[:nodegroup]") unless input[:nodegroup].nil?
      end
    end

    class DeleteAddonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAddonInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:preserve], ::TrueClass, ::FalseClass, context: "#{context}[:preserve]")
      end
    end

    class DeleteAddonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAddonOutput, context: context)
        Validators::Addon.validate!(input[:addon], context: "#{context}[:addon]") unless input[:addon].nil?
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteFargateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFargateProfileInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:fargate_profile_name], ::String, context: "#{context}[:fargate_profile_name]")
      end
    end

    class DeleteFargateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFargateProfileOutput, context: context)
        Validators::FargateProfile.validate!(input[:fargate_profile], context: "#{context}[:fargate_profile]") unless input[:fargate_profile].nil?
      end
    end

    class DeleteNodegroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNodegroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
      end
    end

    class DeleteNodegroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNodegroupOutput, context: context)
        Validators::Nodegroup.validate!(input[:nodegroup], context: "#{context}[:nodegroup]") unless input[:nodegroup].nil?
      end
    end

    class DeregisterClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterClusterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeregisterClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DescribeAddonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddonInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
      end
    end

    class DescribeAddonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddonOutput, context: context)
        Validators::Addon.validate!(input[:addon], context: "#{context}[:addon]") unless input[:addon].nil?
      end
    end

    class DescribeAddonVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddonVersionsInput, context: context)
        Hearth::Validator.validate!(input[:kubernetes_version], ::String, context: "#{context}[:kubernetes_version]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
      end
    end

    class DescribeAddonVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddonVersionsOutput, context: context)
        Validators::Addons.validate!(input[:addons], context: "#{context}[:addons]") unless input[:addons].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DescribeFargateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFargateProfileInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:fargate_profile_name], ::String, context: "#{context}[:fargate_profile_name]")
      end
    end

    class DescribeFargateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFargateProfileOutput, context: context)
        Validators::FargateProfile.validate!(input[:fargate_profile], context: "#{context}[:fargate_profile]") unless input[:fargate_profile].nil?
      end
    end

    class DescribeIdentityProviderConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityProviderConfigInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Validators::IdentityProviderConfig.validate!(input[:identity_provider_config], context: "#{context}[:identity_provider_config]") unless input[:identity_provider_config].nil?
      end
    end

    class DescribeIdentityProviderConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityProviderConfigOutput, context: context)
        Validators::IdentityProviderConfigResponse.validate!(input[:identity_provider_config], context: "#{context}[:identity_provider_config]") unless input[:identity_provider_config].nil?
      end
    end

    class DescribeNodegroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodegroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
      end
    end

    class DescribeNodegroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodegroupOutput, context: context)
        Validators::Nodegroup.validate!(input[:nodegroup], context: "#{context}[:nodegroup]") unless input[:nodegroup].nil?
      end
    end

    class DescribeUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUpdateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:update_id], ::String, context: "#{context}[:update_id]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
      end
    end

    class DescribeUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUpdateOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class DisassociateIdentityProviderConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateIdentityProviderConfigInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Validators::IdentityProviderConfig.validate!(input[:identity_provider_config], context: "#{context}[:identity_provider_config]") unless input[:identity_provider_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DisassociateIdentityProviderConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateIdentityProviderConfigOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class EncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfig, context: context)
        Validators::StringList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::Provider.validate!(input[:provider], context: "#{context}[:provider]") unless input[:provider].nil?
      end
    end

    class EncryptionConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EncryptionConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetail, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::StringList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ErrorDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FargateProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FargateProfile, context: context)
        Hearth::Validator.validate!(input[:fargate_profile_name], ::String, context: "#{context}[:fargate_profile_name]")
        Hearth::Validator.validate!(input[:fargate_profile_arn], ::String, context: "#{context}[:fargate_profile_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:pod_execution_role_arn], ::String, context: "#{context}[:pod_execution_role_arn]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::FargateProfileSelectors.validate!(input[:selectors], context: "#{context}[:selectors]") unless input[:selectors].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FargateProfileLabel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FargateProfileSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FargateProfileSelector, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::FargateProfileLabel.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class FargateProfileSelectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FargateProfileSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        Validators::OIDC.validate!(input[:oidc], context: "#{context}[:oidc]") unless input[:oidc].nil?
      end
    end

    class IdentityProviderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityProviderConfig, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class IdentityProviderConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityProviderConfigResponse, context: context)
        Validators::OidcIdentityProviderConfig.validate!(input[:oidc], context: "#{context}[:oidc]") unless input[:oidc].nil?
      end
    end

    class IdentityProviderConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IdentityProviderConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IncludeClustersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:fargate_profile_name], ::String, context: "#{context}[:fargate_profile_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Issue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Issue, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::StringList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class IssueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Issue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KubernetesNetworkConfigRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesNetworkConfigRequest, context: context)
        Hearth::Validator.validate!(input[:service_ipv4_cidr], ::String, context: "#{context}[:service_ipv4_cidr]")
        Hearth::Validator.validate!(input[:ip_family], ::String, context: "#{context}[:ip_family]")
      end
    end

    class KubernetesNetworkConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KubernetesNetworkConfigResponse, context: context)
        Hearth::Validator.validate!(input[:service_ipv4_cidr], ::String, context: "#{context}[:service_ipv4_cidr]")
        Hearth::Validator.validate!(input[:service_ipv6_cidr], ::String, context: "#{context}[:service_ipv6_cidr]")
        Hearth::Validator.validate!(input[:ip_family], ::String, context: "#{context}[:ip_family]")
      end
    end

    class LaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ListAddonsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAddonsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAddonsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAddonsOutput, context: context)
        Validators::StringList.validate!(input[:addons], context: "#{context}[:addons]") unless input[:addons].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::IncludeClustersList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class ListClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersOutput, context: context)
        Validators::StringList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFargateProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFargateProfilesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFargateProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFargateProfilesOutput, context: context)
        Validators::StringList.validate!(input[:fargate_profile_names], context: "#{context}[:fargate_profile_names]") unless input[:fargate_profile_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityProviderConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityProviderConfigsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityProviderConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityProviderConfigsOutput, context: context)
        Validators::IdentityProviderConfigs.validate!(input[:identity_provider_configs], context: "#{context}[:identity_provider_configs]") unless input[:identity_provider_configs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodegroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodegroupsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodegroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodegroupsOutput, context: context)
        Validators::StringList.validate!(input[:nodegroups], context: "#{context}[:nodegroups]") unless input[:nodegroups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUpdatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUpdatesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUpdatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUpdatesOutput, context: context)
        Validators::StringList.validate!(input[:update_ids], context: "#{context}[:update_ids]") unless input[:update_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LogSetup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogSetup, context: context)
        Validators::LogTypes.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class LogSetups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogSetup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Logging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Logging, context: context)
        Validators::LogSetups.validate!(input[:cluster_logging], context: "#{context}[:cluster_logging]") unless input[:cluster_logging].nil?
      end
    end

    class Nodegroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Nodegroup, context: context)
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:nodegroup_arn], ::String, context: "#{context}[:nodegroup_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:capacity_type], ::String, context: "#{context}[:capacity_type]")
        Validators::NodegroupScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        Validators::StringList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::RemoteAccessConfig.validate!(input[:remote_access], context: "#{context}[:remote_access]") unless input[:remote_access].nil?
        Hearth::Validator.validate!(input[:ami_type], ::String, context: "#{context}[:ami_type]")
        Hearth::Validator.validate!(input[:node_role], ::String, context: "#{context}[:node_role]")
        Validators::LabelsMap.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Validators::TaintsList.validate!(input[:taints], context: "#{context}[:taints]") unless input[:taints].nil?
        Validators::NodegroupResources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:disk_size], ::Integer, context: "#{context}[:disk_size]")
        Validators::NodegroupHealth.validate!(input[:health], context: "#{context}[:health]") unless input[:health].nil?
        Validators::NodegroupUpdateConfig.validate!(input[:update_config], context: "#{context}[:update_config]") unless input[:update_config].nil?
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NodegroupHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodegroupHealth, context: context)
        Validators::IssueList.validate!(input[:issues], context: "#{context}[:issues]") unless input[:issues].nil?
      end
    end

    class NodegroupResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodegroupResources, context: context)
        Validators::AutoScalingGroupList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        Hearth::Validator.validate!(input[:remote_access_security_group], ::String, context: "#{context}[:remote_access_security_group]")
      end
    end

    class NodegroupScalingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodegroupScalingConfig, context: context)
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_size], ::Integer, context: "#{context}[:desired_size]")
      end
    end

    class NodegroupUpdateConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodegroupUpdateConfig, context: context)
        Hearth::Validator.validate!(input[:max_unavailable], ::Integer, context: "#{context}[:max_unavailable]")
        Hearth::Validator.validate!(input[:max_unavailable_percentage], ::Integer, context: "#{context}[:max_unavailable_percentage]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OIDC
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OIDC, context: context)
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
      end
    end

    class OidcIdentityProviderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OidcIdentityProviderConfig, context: context)
        Hearth::Validator.validate!(input[:identity_provider_config_name], ::String, context: "#{context}[:identity_provider_config_name]")
        Hearth::Validator.validate!(input[:identity_provider_config_arn], ::String, context: "#{context}[:identity_provider_config_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:issuer_url], ::String, context: "#{context}[:issuer_url]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:username_claim], ::String, context: "#{context}[:username_claim]")
        Hearth::Validator.validate!(input[:username_prefix], ::String, context: "#{context}[:username_prefix]")
        Hearth::Validator.validate!(input[:groups_claim], ::String, context: "#{context}[:groups_claim]")
        Hearth::Validator.validate!(input[:groups_prefix], ::String, context: "#{context}[:groups_prefix]")
        Validators::RequiredClaimsMap.validate!(input[:required_claims], context: "#{context}[:required_claims]") unless input[:required_claims].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class OidcIdentityProviderConfigRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OidcIdentityProviderConfigRequest, context: context)
        Hearth::Validator.validate!(input[:identity_provider_config_name], ::String, context: "#{context}[:identity_provider_config_name]")
        Hearth::Validator.validate!(input[:issuer_url], ::String, context: "#{context}[:issuer_url]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:username_claim], ::String, context: "#{context}[:username_claim]")
        Hearth::Validator.validate!(input[:username_prefix], ::String, context: "#{context}[:username_prefix]")
        Hearth::Validator.validate!(input[:groups_claim], ::String, context: "#{context}[:groups_claim]")
        Hearth::Validator.validate!(input[:groups_prefix], ::String, context: "#{context}[:groups_prefix]")
        Validators::RequiredClaimsMap.validate!(input[:required_claims], context: "#{context}[:required_claims]") unless input[:required_claims].nil?
      end
    end

    class Provider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Provider, context: context)
        Hearth::Validator.validate!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
      end
    end

    class RegisterClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterClusterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ConnectorConfigRequest.validate!(input[:connector_config], context: "#{context}[:connector_config]") unless input[:connector_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class RemoteAccessConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoteAccessConfig, context: context)
        Hearth::Validator.validate!(input[:ec2_ssh_key], ::String, context: "#{context}[:ec2_ssh_key]")
        Validators::StringList.validate!(input[:source_security_groups], context: "#{context}[:source_security_groups]") unless input[:source_security_groups].nil?
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:fargate_profile_name], ::String, context: "#{context}[:fargate_profile_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourcePropagationDelayException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePropagationDelayException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerException, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Taint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Taint, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:effect], ::String, context: "#{context}[:effect]")
      end
    end

    class UnsupportedAvailabilityZoneException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedAvailabilityZoneException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Validators::StringList.validate!(input[:valid_zones], context: "#{context}[:valid_zones]") unless input[:valid_zones].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class Update
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Update, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::UpdateParams.validate!(input[:params], context: "#{context}[:params]") unless input[:params].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::ErrorDetails.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class UpdateAddonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAddonInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:addon_name], ::String, context: "#{context}[:addon_name]")
        Hearth::Validator.validate!(input[:addon_version], ::String, context: "#{context}[:addon_version]")
        Hearth::Validator.validate!(input[:service_account_role_arn], ::String, context: "#{context}[:service_account_role_arn]")
        Hearth::Validator.validate!(input[:resolve_conflicts], ::String, context: "#{context}[:resolve_conflicts]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpdateAddonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAddonOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class UpdateClusterConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterConfigInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::VpcConfigRequest.validate!(input[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless input[:resources_vpc_config].nil?
        Validators::Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpdateClusterConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterConfigOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class UpdateClusterVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpdateClusterVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterVersionOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class UpdateLabelsPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLabelsPayload, context: context)
        Validators::LabelsMap.validate!(input[:add_or_update_labels], context: "#{context}[:add_or_update_labels]") unless input[:add_or_update_labels].nil?
        Validators::LabelsKeyList.validate!(input[:remove_labels], context: "#{context}[:remove_labels]") unless input[:remove_labels].nil?
      end
    end

    class UpdateNodegroupConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNodegroupConfigInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Validators::UpdateLabelsPayload.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Validators::UpdateTaintsPayload.validate!(input[:taints], context: "#{context}[:taints]") unless input[:taints].nil?
        Validators::NodegroupScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        Validators::NodegroupUpdateConfig.validate!(input[:update_config], context: "#{context}[:update_config]") unless input[:update_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpdateNodegroupConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNodegroupConfigOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class UpdateNodegroupVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNodegroupVersionInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:nodegroup_name], ::String, context: "#{context}[:nodegroup_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpdateNodegroupVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNodegroupVersionOutput, context: context)
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class UpdateParam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParam, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class UpdateParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateParam.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateTaintsPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaintsPayload, context: context)
        Validators::TaintsList.validate!(input[:add_or_update_taints], context: "#{context}[:add_or_update_taints]") unless input[:add_or_update_taints].nil?
        Validators::TaintsList.validate!(input[:remove_taints], context: "#{context}[:remove_taints]") unless input[:remove_taints].nil?
      end
    end

    class VpcConfigRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigRequest, context: context)
        Validators::StringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:endpoint_public_access], ::TrueClass, ::FalseClass, context: "#{context}[:endpoint_public_access]")
        Hearth::Validator.validate!(input[:endpoint_private_access], ::TrueClass, ::FalseClass, context: "#{context}[:endpoint_private_access]")
        Validators::StringList.validate!(input[:public_access_cidrs], context: "#{context}[:public_access_cidrs]") unless input[:public_access_cidrs].nil?
      end
    end

    class VpcConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigResponse, context: context)
        Validators::StringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:cluster_security_group_id], ::String, context: "#{context}[:cluster_security_group_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:endpoint_public_access], ::TrueClass, ::FalseClass, context: "#{context}[:endpoint_public_access]")
        Hearth::Validator.validate!(input[:endpoint_private_access], ::TrueClass, ::FalseClass, context: "#{context}[:endpoint_private_access]")
        Validators::StringList.validate!(input[:public_access_cidrs], context: "#{context}[:public_access_cidrs]") unless input[:public_access_cidrs].nil?
      end
    end

    class LabelsKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LabelsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RequiredClaimsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TaintsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Taint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
