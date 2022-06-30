# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::EKS
  module Builders

    # Operation Builder for AssociateEncryptionConfig
    class AssociateEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/encryption-config/associate',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['encryptionConfig'] = Builders::EncryptionConfigList.build(input[:encryption_config]) unless input[:encryption_config].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EncryptionConfigList
    class EncryptionConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EncryptionConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EncryptionConfig
    class EncryptionConfig
      def self.build(input)
        data = {}
        data['resources'] = Builders::StringList.build(input[:resources]) unless input[:resources].nil?
        data['provider'] = Builders::Provider.build(input[:provider]) unless input[:provider].nil?
        data
      end
    end

    # Structure Builder for Provider
    class Provider
      def self.build(input)
        data = {}
        data['keyArn'] = input[:key_arn] unless input[:key_arn].nil?
        data
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

    # Operation Builder for AssociateIdentityProviderConfig
    class AssociateIdentityProviderConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/identity-provider-configs/associate',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['oidc'] = Builders::OidcIdentityProviderConfigRequest.build(input[:oidc]) unless input[:oidc].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for OidcIdentityProviderConfigRequest
    class OidcIdentityProviderConfigRequest
      def self.build(input)
        data = {}
        data['identityProviderConfigName'] = input[:identity_provider_config_name] unless input[:identity_provider_config_name].nil?
        data['issuerUrl'] = input[:issuer_url] unless input[:issuer_url].nil?
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['usernameClaim'] = input[:username_claim] unless input[:username_claim].nil?
        data['usernamePrefix'] = input[:username_prefix] unless input[:username_prefix].nil?
        data['groupsClaim'] = input[:groups_claim] unless input[:groups_claim].nil?
        data['groupsPrefix'] = input[:groups_prefix] unless input[:groups_prefix].nil?
        data['requiredClaims'] = Builders::RequiredClaimsMap.build(input[:required_claims]) unless input[:required_claims].nil?
        data
      end
    end

    # Map Builder for requiredClaimsMap
    class RequiredClaimsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAddon
    class CreateAddon
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/addons',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['addonName'] = input[:addon_name] unless input[:addon_name].nil?
        data['addonVersion'] = input[:addon_version] unless input[:addon_version].nil?
        data['serviceAccountRoleArn'] = input[:service_account_role_arn] unless input[:service_account_role_arn].nil?
        data['resolveConflicts'] = input[:resolve_conflicts] unless input[:resolve_conflicts].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/clusters')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['resourcesVpcConfig'] = Builders::VpcConfigRequest.build(input[:resources_vpc_config]) unless input[:resources_vpc_config].nil?
        data['kubernetesNetworkConfig'] = Builders::KubernetesNetworkConfigRequest.build(input[:kubernetes_network_config]) unless input[:kubernetes_network_config].nil?
        data['logging'] = Builders::Logging.build(input[:logging]) unless input[:logging].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['encryptionConfig'] = Builders::EncryptionConfigList.build(input[:encryption_config]) unless input[:encryption_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Logging
    class Logging
      def self.build(input)
        data = {}
        data['clusterLogging'] = Builders::LogSetups.build(input[:cluster_logging]) unless input[:cluster_logging].nil?
        data
      end
    end

    # List Builder for LogSetups
    class LogSetups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LogSetup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LogSetup
    class LogSetup
      def self.build(input)
        data = {}
        data['types'] = Builders::LogTypes.build(input[:types]) unless input[:types].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # List Builder for LogTypes
    class LogTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KubernetesNetworkConfigRequest
    class KubernetesNetworkConfigRequest
      def self.build(input)
        data = {}
        data['serviceIpv4Cidr'] = input[:service_ipv4_cidr] unless input[:service_ipv4_cidr].nil?
        data['ipFamily'] = input[:ip_family] unless input[:ip_family].nil?
        data
      end
    end

    # Structure Builder for VpcConfigRequest
    class VpcConfigRequest
      def self.build(input)
        data = {}
        data['subnetIds'] = Builders::StringList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = Builders::StringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['endpointPublicAccess'] = input[:endpoint_public_access] unless input[:endpoint_public_access].nil?
        data['endpointPrivateAccess'] = input[:endpoint_private_access] unless input[:endpoint_private_access].nil?
        data['publicAccessCidrs'] = Builders::StringList.build(input[:public_access_cidrs]) unless input[:public_access_cidrs].nil?
        data
      end
    end

    # Operation Builder for CreateFargateProfile
    class CreateFargateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/fargate-profiles',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fargateProfileName'] = input[:fargate_profile_name] unless input[:fargate_profile_name].nil?
        data['podExecutionRoleArn'] = input[:pod_execution_role_arn] unless input[:pod_execution_role_arn].nil?
        data['subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['selectors'] = Builders::FargateProfileSelectors.build(input[:selectors]) unless input[:selectors].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FargateProfileSelectors
    class FargateProfileSelectors
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FargateProfileSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FargateProfileSelector
    class FargateProfileSelector
      def self.build(input)
        data = {}
        data['namespace'] = input[:namespace] unless input[:namespace].nil?
        data['labels'] = Builders::FargateProfileLabel.build(input[:labels]) unless input[:labels].nil?
        data
      end
    end

    # Map Builder for FargateProfileLabel
    class FargateProfileLabel
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNodegroup
    class CreateNodegroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/node-groups',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nodegroupName'] = input[:nodegroup_name] unless input[:nodegroup_name].nil?
        data['scalingConfig'] = Builders::NodegroupScalingConfig.build(input[:scaling_config]) unless input[:scaling_config].nil?
        data['diskSize'] = input[:disk_size] unless input[:disk_size].nil?
        data['subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['instanceTypes'] = Builders::StringList.build(input[:instance_types]) unless input[:instance_types].nil?
        data['amiType'] = input[:ami_type] unless input[:ami_type].nil?
        data['remoteAccess'] = Builders::RemoteAccessConfig.build(input[:remote_access]) unless input[:remote_access].nil?
        data['nodeRole'] = input[:node_role] unless input[:node_role].nil?
        data['labels'] = Builders::LabelsMap.build(input[:labels]) unless input[:labels].nil?
        data['taints'] = Builders::TaintsList.build(input[:taints]) unless input[:taints].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['launchTemplate'] = Builders::LaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['updateConfig'] = Builders::NodegroupUpdateConfig.build(input[:update_config]) unless input[:update_config].nil?
        data['capacityType'] = input[:capacity_type] unless input[:capacity_type].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['releaseVersion'] = input[:release_version] unless input[:release_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NodegroupUpdateConfig
    class NodegroupUpdateConfig
      def self.build(input)
        data = {}
        data['maxUnavailable'] = input[:max_unavailable] unless input[:max_unavailable].nil?
        data['maxUnavailablePercentage'] = input[:max_unavailable_percentage] unless input[:max_unavailable_percentage].nil?
        data
      end
    end

    # Structure Builder for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # List Builder for taintsList
    class TaintsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Taint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Taint
    class Taint
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['effect'] = input[:effect] unless input[:effect].nil?
        data
      end
    end

    # Map Builder for labelsMap
    class LabelsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for RemoteAccessConfig
    class RemoteAccessConfig
      def self.build(input)
        data = {}
        data['ec2SshKey'] = input[:ec2_ssh_key] unless input[:ec2_ssh_key].nil?
        data['sourceSecurityGroups'] = Builders::StringList.build(input[:source_security_groups]) unless input[:source_security_groups].nil?
        data
      end
    end

    # Structure Builder for NodegroupScalingConfig
    class NodegroupScalingConfig
      def self.build(input)
        data = {}
        data['minSize'] = input[:min_size] unless input[:min_size].nil?
        data['maxSize'] = input[:max_size] unless input[:max_size].nil?
        data['desiredSize'] = input[:desired_size] unless input[:desired_size].nil?
        data
      end
    end

    # Operation Builder for DeleteAddon
    class DeleteAddon
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:addon_name].to_s.empty?
          raise ArgumentError, "HTTP label :addon_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/addons/%<addonName>s',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            addonName: Hearth::HTTP.uri_escape(input[:addon_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['preserve'] = input[:preserve].to_s unless input[:preserve].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFargateProfile
    class DeleteFargateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:fargate_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :fargate_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/fargate-profiles/%<fargateProfileName>s',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            fargateProfileName: Hearth::HTTP.uri_escape(input[:fargate_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteNodegroup
    class DeleteNodegroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:nodegroup_name].to_s.empty?
          raise ArgumentError, "HTTP label :nodegroup_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/node-groups/%<nodegroupName>s',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            nodegroupName: Hearth::HTTP.uri_escape(input[:nodegroup_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeregisterCluster
    class DeregisterCluster
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cluster-registrations/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAddon
    class DescribeAddon
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:addon_name].to_s.empty?
          raise ArgumentError, "HTTP label :addon_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/addons/%<addonName>s',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            addonName: Hearth::HTTP.uri_escape(input[:addon_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAddonVersions
    class DescribeAddonVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/addons/supported-versions')
        params = Hearth::Query::ParamList.new
        params['kubernetesVersion'] = input[:kubernetes_version].to_s unless input[:kubernetes_version].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['addonName'] = input[:addon_name].to_s unless input[:addon_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCluster
    class DescribeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFargateProfile
    class DescribeFargateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:fargate_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :fargate_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/fargate-profiles/%<fargateProfileName>s',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            fargateProfileName: Hearth::HTTP.uri_escape(input[:fargate_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIdentityProviderConfig
    class DescribeIdentityProviderConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/identity-provider-configs/describe',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identityProviderConfig'] = Builders::IdentityProviderConfig.build(input[:identity_provider_config]) unless input[:identity_provider_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for IdentityProviderConfig
    class IdentityProviderConfig
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for DescribeNodegroup
    class DescribeNodegroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:nodegroup_name].to_s.empty?
          raise ArgumentError, "HTTP label :nodegroup_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/node-groups/%<nodegroupName>s',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            nodegroupName: Hearth::HTTP.uri_escape(input[:nodegroup_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeUpdate
    class DescribeUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:update_id].to_s.empty?
          raise ArgumentError, "HTTP label :update_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<name>s/updates/%<updateId>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            updateId: Hearth::HTTP.uri_escape(input[:update_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nodegroupName'] = input[:nodegroup_name].to_s unless input[:nodegroup_name].nil?
        params['addonName'] = input[:addon_name].to_s unless input[:addon_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateIdentityProviderConfig
    class DisassociateIdentityProviderConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/identity-provider-configs/disassociate',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identityProviderConfig'] = Builders::IdentityProviderConfig.build(input[:identity_provider_config]) unless input[:identity_provider_config].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAddons
    class ListAddons
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/addons',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClusters
    class ListClusters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/clusters')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        unless input[:include].nil? || input[:include].empty?
          params['include'] = input[:include].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for IncludeClustersList
    class IncludeClustersList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListFargateProfiles
    class ListFargateProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/fargate-profiles',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIdentityProviderConfigs
    class ListIdentityProviderConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/identity-provider-configs',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNodegroups
    class ListNodegroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/node-groups',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUpdates
    class ListUpdates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<name>s/updates',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nodegroupName'] = input[:nodegroup_name].to_s unless input[:nodegroup_name].nil?
        params['addonName'] = input[:addon_name].to_s unless input[:addon_name].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegisterCluster
    class RegisterCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cluster-registrations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['connectorConfig'] = Builders::ConnectorConfigRequest.build(input[:connector_config]) unless input[:connector_config].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectorConfigRequest
    class ConnectorConfigRequest
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['provider'] = input[:provider] unless input[:provider].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
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

    # Operation Builder for UpdateAddon
    class UpdateAddon
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:addon_name].to_s.empty?
          raise ArgumentError, "HTTP label :addon_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/addons/%<addonName>s/update',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            addonName: Hearth::HTTP.uri_escape(input[:addon_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['addonVersion'] = input[:addon_version] unless input[:addon_version].nil?
        data['serviceAccountRoleArn'] = input[:service_account_role_arn] unless input[:service_account_role_arn].nil?
        data['resolveConflicts'] = input[:resolve_conflicts] unless input[:resolve_conflicts].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClusterConfig
    class UpdateClusterConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<name>s/update-config',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourcesVpcConfig'] = Builders::VpcConfigRequest.build(input[:resources_vpc_config]) unless input[:resources_vpc_config].nil?
        data['logging'] = Builders::Logging.build(input[:logging]) unless input[:logging].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClusterVersion
    class UpdateClusterVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<name>s/updates',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['version'] = input[:version] unless input[:version].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNodegroupConfig
    class UpdateNodegroupConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:nodegroup_name].to_s.empty?
          raise ArgumentError, "HTTP label :nodegroup_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/node-groups/%<nodegroupName>s/update-config',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            nodegroupName: Hearth::HTTP.uri_escape(input[:nodegroup_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['labels'] = Builders::UpdateLabelsPayload.build(input[:labels]) unless input[:labels].nil?
        data['taints'] = Builders::UpdateTaintsPayload.build(input[:taints]) unless input[:taints].nil?
        data['scalingConfig'] = Builders::NodegroupScalingConfig.build(input[:scaling_config]) unless input[:scaling_config].nil?
        data['updateConfig'] = Builders::NodegroupUpdateConfig.build(input[:update_config]) unless input[:update_config].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateTaintsPayload
    class UpdateTaintsPayload
      def self.build(input)
        data = {}
        data['addOrUpdateTaints'] = Builders::TaintsList.build(input[:add_or_update_taints]) unless input[:add_or_update_taints].nil?
        data['removeTaints'] = Builders::TaintsList.build(input[:remove_taints]) unless input[:remove_taints].nil?
        data
      end
    end

    # Structure Builder for UpdateLabelsPayload
    class UpdateLabelsPayload
      def self.build(input)
        data = {}
        data['addOrUpdateLabels'] = Builders::LabelsMap.build(input[:add_or_update_labels]) unless input[:add_or_update_labels].nil?
        data['removeLabels'] = Builders::LabelsKeyList.build(input[:remove_labels]) unless input[:remove_labels].nil?
        data
      end
    end

    # List Builder for labelsKeyList
    class LabelsKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateNodegroupVersion
    class UpdateNodegroupVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:cluster_name].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_name cannot be nil or empty."
        end
        if input[:nodegroup_name].to_s.empty?
          raise ArgumentError, "HTTP label :nodegroup_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clusters/%<clusterName>s/node-groups/%<nodegroupName>s/update-version',
            clusterName: Hearth::HTTP.uri_escape(input[:cluster_name].to_s),
            nodegroupName: Hearth::HTTP.uri_escape(input[:nodegroup_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['version'] = input[:version] unless input[:version].nil?
        data['releaseVersion'] = input[:release_version] unless input[:release_version].nil?
        data['launchTemplate'] = Builders::LaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['force'] = input[:force] unless input[:force].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
