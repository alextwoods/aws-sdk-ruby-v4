# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancing
  module Parsers

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddTagsResult')
        data
      end
    end

    # Error Parser for AccessPointNotFoundException
    class AccessPointNotFoundException
      def self.parse(http_resp)
        data = Types::AccessPointNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicateTagKeysException
    class DuplicateTagKeysException
      def self.parse(http_resp)
        data = Types::DuplicateTagKeysException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ApplySecurityGroupsToLoadBalancer
    class ApplySecurityGroupsToLoadBalancer
      def self.parse(http_resp)
        data = Types::ApplySecurityGroupsToLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ApplySecurityGroupsToLoadBalancerResult')
        xml.at('SecurityGroups') do |node|
          children = node.children('member')
          data.security_groups = SecurityGroups.parse(children)
        end
        data
      end
    end

    class SecurityGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidConfigurationRequestException
    class InvalidConfigurationRequestException
      def self.parse(http_resp)
        data = Types::InvalidConfigurationRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSecurityGroupException
    class InvalidSecurityGroupException
      def self.parse(http_resp)
        data = Types::InvalidSecurityGroupException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AttachLoadBalancerToSubnets
    class AttachLoadBalancerToSubnets
      def self.parse(http_resp)
        data = Types::AttachLoadBalancerToSubnetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachLoadBalancerToSubnetsResult')
        xml.at('Subnets') do |node|
          children = node.children('member')
          data.subnets = Subnets.parse(children)
        end
        data
      end
    end

    class Subnets
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubnetNotFoundException
    class SubnetNotFoundException
      def self.parse(http_resp)
        data = Types::SubnetNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSubnetException
    class InvalidSubnetException
      def self.parse(http_resp)
        data = Types::InvalidSubnetException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ConfigureHealthCheck
    class ConfigureHealthCheck
      def self.parse(http_resp)
        data = Types::ConfigureHealthCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ConfigureHealthCheckResult')
        xml.at('HealthCheck') do |node|
          data.health_check = HealthCheck.parse(node)
        end
        data
      end
    end

    class HealthCheck
      def self.parse(xml)
        data = Types::HealthCheck.new
        xml.at('Target') do |node|
          data.target = (node.text || '')
        end
        xml.at('Interval') do |node|
          data.interval = node.text&.to_i
        end
        xml.at('Timeout') do |node|
          data.timeout = node.text&.to_i
        end
        xml.at('UnhealthyThreshold') do |node|
          data.unhealthy_threshold = node.text&.to_i
        end
        xml.at('HealthyThreshold') do |node|
          data.healthy_threshold = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for CreateAppCookieStickinessPolicy
    class CreateAppCookieStickinessPolicy
      def self.parse(http_resp)
        data = Types::CreateAppCookieStickinessPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateAppCookieStickinessPolicyResult')
        data
      end
    end

    # Error Parser for TooManyPoliciesException
    class TooManyPoliciesException
      def self.parse(http_resp)
        data = Types::TooManyPoliciesException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicatePolicyNameException
    class DuplicatePolicyNameException
      def self.parse(http_resp)
        data = Types::DuplicatePolicyNameException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateLBCookieStickinessPolicy
    class CreateLBCookieStickinessPolicy
      def self.parse(http_resp)
        data = Types::CreateLBCookieStickinessPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLBCookieStickinessPolicyResult')
        data
      end
    end

    # Operation Parser for CreateLoadBalancer
    class CreateLoadBalancer
      def self.parse(http_resp)
        data = Types::CreateLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLoadBalancerResult')
        xml.at('DNSName') do |node|
          data.dns_name = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSchemeException
    class InvalidSchemeException
      def self.parse(http_resp)
        data = Types::InvalidSchemeException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyAccessPointsException
    class TooManyAccessPointsException
      def self.parse(http_resp)
        data = Types::TooManyAccessPointsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OperationNotPermittedException
    class OperationNotPermittedException
      def self.parse(http_resp)
        data = Types::OperationNotPermittedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CertificateNotFoundException
    class CertificateNotFoundException
      def self.parse(http_resp)
        data = Types::CertificateNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnsupportedProtocolException
    class UnsupportedProtocolException
      def self.parse(http_resp)
        data = Types::UnsupportedProtocolException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicateAccessPointNameException
    class DuplicateAccessPointNameException
      def self.parse(http_resp)
        data = Types::DuplicateAccessPointNameException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateLoadBalancerListeners
    class CreateLoadBalancerListeners
      def self.parse(http_resp)
        data = Types::CreateLoadBalancerListenersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLoadBalancerListenersResult')
        data
      end
    end

    # Error Parser for DuplicateListenerException
    class DuplicateListenerException
      def self.parse(http_resp)
        data = Types::DuplicateListenerException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateLoadBalancerPolicy
    class CreateLoadBalancerPolicy
      def self.parse(http_resp)
        data = Types::CreateLoadBalancerPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLoadBalancerPolicyResult')
        data
      end
    end

    # Error Parser for PolicyTypeNotFoundException
    class PolicyTypeNotFoundException
      def self.parse(http_resp)
        data = Types::PolicyTypeNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.parse(http_resp)
        data = Types::DeleteLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteLoadBalancerResult')
        data
      end
    end

    # Operation Parser for DeleteLoadBalancerListeners
    class DeleteLoadBalancerListeners
      def self.parse(http_resp)
        data = Types::DeleteLoadBalancerListenersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteLoadBalancerListenersResult')
        data
      end
    end

    # Operation Parser for DeleteLoadBalancerPolicy
    class DeleteLoadBalancerPolicy
      def self.parse(http_resp)
        data = Types::DeleteLoadBalancerPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteLoadBalancerPolicyResult')
        data
      end
    end

    # Operation Parser for DeregisterInstancesFromLoadBalancer
    class DeregisterInstancesFromLoadBalancer
      def self.parse(http_resp)
        data = Types::DeregisterInstancesFromLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeregisterInstancesFromLoadBalancerResult')
        xml.at('Instances') do |node|
          children = node.children('member')
          data.instances = Instances.parse(children)
        end
        data
      end
    end

    class Instances
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Instance.parse(node)
        end
        data
      end
    end

    class Instance
      def self.parse(xml)
        data = Types::Instance.new
        xml.at('InstanceId') do |node|
          data.instance_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidEndPointException
    class InvalidEndPointException
      def self.parse(http_resp)
        data = Types::InvalidEndPointException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeAccountLimits
    class DescribeAccountLimits
      def self.parse(http_resp)
        data = Types::DescribeAccountLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAccountLimitsResult')
        xml.at('Limits') do |node|
          children = node.children('member')
          data.limits = Limits.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    class Limits
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Limit.parse(node)
        end
        data
      end
    end

    class Limit
      def self.parse(xml)
        data = Types::Limit.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Max') do |node|
          data.max = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeInstanceHealth
    class DescribeInstanceHealth
      def self.parse(http_resp)
        data = Types::DescribeInstanceHealthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeInstanceHealthResult')
        xml.at('InstanceStates') do |node|
          children = node.children('member')
          data.instance_states = InstanceStates.parse(children)
        end
        data
      end
    end

    class InstanceStates
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << InstanceState.parse(node)
        end
        data
      end
    end

    class InstanceState
      def self.parse(xml)
        data = Types::InstanceState.new
        xml.at('InstanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('ReasonCode') do |node|
          data.reason_code = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeLoadBalancerAttributes
    class DescribeLoadBalancerAttributes
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancerAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancerAttributesResult')
        xml.at('LoadBalancerAttributes') do |node|
          data.load_balancer_attributes = LoadBalancerAttributes.parse(node)
        end
        data
      end
    end

    class LoadBalancerAttributes
      def self.parse(xml)
        data = Types::LoadBalancerAttributes.new
        xml.at('CrossZoneLoadBalancing') do |node|
          data.cross_zone_load_balancing = CrossZoneLoadBalancing.parse(node)
        end
        xml.at('AccessLog') do |node|
          data.access_log = AccessLog.parse(node)
        end
        xml.at('ConnectionDraining') do |node|
          data.connection_draining = ConnectionDraining.parse(node)
        end
        xml.at('ConnectionSettings') do |node|
          data.connection_settings = ConnectionSettings.parse(node)
        end
        xml.at('AdditionalAttributes') do |node|
          children = node.children('member')
          data.additional_attributes = AdditionalAttributes.parse(children)
        end
        return data
      end
    end

    class AdditionalAttributes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AdditionalAttribute.parse(node)
        end
        data
      end
    end

    class AdditionalAttribute
      def self.parse(xml)
        data = Types::AdditionalAttribute.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class ConnectionSettings
      def self.parse(xml)
        data = Types::ConnectionSettings.new
        xml.at('IdleTimeout') do |node|
          data.idle_timeout = node.text&.to_i
        end
        return data
      end
    end

    class ConnectionDraining
      def self.parse(xml)
        data = Types::ConnectionDraining.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Timeout') do |node|
          data.timeout = node.text&.to_i
        end
        return data
      end
    end

    class AccessLog
      def self.parse(xml)
        data = Types::AccessLog.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('S3BucketName') do |node|
          data.s3_bucket_name = (node.text || '')
        end
        xml.at('EmitInterval') do |node|
          data.emit_interval = node.text&.to_i
        end
        xml.at('S3BucketPrefix') do |node|
          data.s3_bucket_prefix = (node.text || '')
        end
        return data
      end
    end

    class CrossZoneLoadBalancing
      def self.parse(xml)
        data = Types::CrossZoneLoadBalancing.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Error Parser for LoadBalancerAttributeNotFoundException
    class LoadBalancerAttributeNotFoundException
      def self.parse(http_resp)
        data = Types::LoadBalancerAttributeNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeLoadBalancerPolicies
    class DescribeLoadBalancerPolicies
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancerPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancerPoliciesResult')
        xml.at('PolicyDescriptions') do |node|
          children = node.children('member')
          data.policy_descriptions = PolicyDescriptions.parse(children)
        end
        data
      end
    end

    class PolicyDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PolicyDescription.parse(node)
        end
        data
      end
    end

    class PolicyDescription
      def self.parse(xml)
        data = Types::PolicyDescription.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyTypeName') do |node|
          data.policy_type_name = (node.text || '')
        end
        xml.at('PolicyAttributeDescriptions') do |node|
          children = node.children('member')
          data.policy_attribute_descriptions = PolicyAttributeDescriptions.parse(children)
        end
        return data
      end
    end

    class PolicyAttributeDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PolicyAttributeDescription.parse(node)
        end
        data
      end
    end

    class PolicyAttributeDescription
      def self.parse(xml)
        data = Types::PolicyAttributeDescription.new
        xml.at('AttributeName') do |node|
          data.attribute_name = (node.text || '')
        end
        xml.at('AttributeValue') do |node|
          data.attribute_value = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for PolicyNotFoundException
    class PolicyNotFoundException
      def self.parse(http_resp)
        data = Types::PolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeLoadBalancerPolicyTypes
    class DescribeLoadBalancerPolicyTypes
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancerPolicyTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancerPolicyTypesResult')
        xml.at('PolicyTypeDescriptions') do |node|
          children = node.children('member')
          data.policy_type_descriptions = PolicyTypeDescriptions.parse(children)
        end
        data
      end
    end

    class PolicyTypeDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PolicyTypeDescription.parse(node)
        end
        data
      end
    end

    class PolicyTypeDescription
      def self.parse(xml)
        data = Types::PolicyTypeDescription.new
        xml.at('PolicyTypeName') do |node|
          data.policy_type_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('PolicyAttributeTypeDescriptions') do |node|
          children = node.children('member')
          data.policy_attribute_type_descriptions = PolicyAttributeTypeDescriptions.parse(children)
        end
        return data
      end
    end

    class PolicyAttributeTypeDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PolicyAttributeTypeDescription.parse(node)
        end
        data
      end
    end

    class PolicyAttributeTypeDescription
      def self.parse(xml)
        data = Types::PolicyAttributeTypeDescription.new
        xml.at('AttributeName') do |node|
          data.attribute_name = (node.text || '')
        end
        xml.at('AttributeType') do |node|
          data.attribute_type = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('Cardinality') do |node|
          data.cardinality = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancersResult')
        xml.at('LoadBalancerDescriptions') do |node|
          children = node.children('member')
          data.load_balancer_descriptions = LoadBalancerDescriptions.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    class LoadBalancerDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << LoadBalancerDescription.parse(node)
        end
        data
      end
    end

    class LoadBalancerDescription
      def self.parse(xml)
        data = Types::LoadBalancerDescription.new
        xml.at('LoadBalancerName') do |node|
          data.load_balancer_name = (node.text || '')
        end
        xml.at('DNSName') do |node|
          data.dns_name = (node.text || '')
        end
        xml.at('CanonicalHostedZoneName') do |node|
          data.canonical_hosted_zone_name = (node.text || '')
        end
        xml.at('CanonicalHostedZoneNameID') do |node|
          data.canonical_hosted_zone_name_id = (node.text || '')
        end
        xml.at('ListenerDescriptions') do |node|
          children = node.children('member')
          data.listener_descriptions = ListenerDescriptions.parse(children)
        end
        xml.at('Policies') do |node|
          data.policies = Policies.parse(node)
        end
        xml.at('BackendServerDescriptions') do |node|
          children = node.children('member')
          data.backend_server_descriptions = BackendServerDescriptions.parse(children)
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('member')
          data.availability_zones = AvailabilityZones.parse(children)
        end
        xml.at('Subnets') do |node|
          children = node.children('member')
          data.subnets = Subnets.parse(children)
        end
        xml.at('VPCId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('Instances') do |node|
          children = node.children('member')
          data.instances = Instances.parse(children)
        end
        xml.at('HealthCheck') do |node|
          data.health_check = HealthCheck.parse(node)
        end
        xml.at('SourceSecurityGroup') do |node|
          data.source_security_group = SourceSecurityGroup.parse(node)
        end
        xml.at('SecurityGroups') do |node|
          children = node.children('member')
          data.security_groups = SecurityGroups.parse(children)
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('Scheme') do |node|
          data.scheme = (node.text || '')
        end
        return data
      end
    end

    class SourceSecurityGroup
      def self.parse(xml)
        data = Types::SourceSecurityGroup.new
        xml.at('OwnerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('GroupName') do |node|
          data.group_name = (node.text || '')
        end
        return data
      end
    end

    class AvailabilityZones
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class BackendServerDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << BackendServerDescription.parse(node)
        end
        data
      end
    end

    class BackendServerDescription
      def self.parse(xml)
        data = Types::BackendServerDescription.new
        xml.at('InstancePort') do |node|
          data.instance_port = node.text&.to_i
        end
        xml.at('PolicyNames') do |node|
          children = node.children('member')
          data.policy_names = PolicyNames.parse(children)
        end
        return data
      end
    end

    class PolicyNames
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Policies
      def self.parse(xml)
        data = Types::Policies.new
        xml.at('AppCookieStickinessPolicies') do |node|
          children = node.children('member')
          data.app_cookie_stickiness_policies = AppCookieStickinessPolicies.parse(children)
        end
        xml.at('LBCookieStickinessPolicies') do |node|
          children = node.children('member')
          data.lb_cookie_stickiness_policies = LBCookieStickinessPolicies.parse(children)
        end
        xml.at('OtherPolicies') do |node|
          children = node.children('member')
          data.other_policies = PolicyNames.parse(children)
        end
        return data
      end
    end

    class LBCookieStickinessPolicies
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << LBCookieStickinessPolicy.parse(node)
        end
        data
      end
    end

    class LBCookieStickinessPolicy
      def self.parse(xml)
        data = Types::LBCookieStickinessPolicy.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('CookieExpirationPeriod') do |node|
          data.cookie_expiration_period = node.text&.to_i
        end
        return data
      end
    end

    class AppCookieStickinessPolicies
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AppCookieStickinessPolicy.parse(node)
        end
        data
      end
    end

    class AppCookieStickinessPolicy
      def self.parse(xml)
        data = Types::AppCookieStickinessPolicy.new
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('CookieName') do |node|
          data.cookie_name = (node.text || '')
        end
        return data
      end
    end

    class ListenerDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ListenerDescription.parse(node)
        end
        data
      end
    end

    class ListenerDescription
      def self.parse(xml)
        data = Types::ListenerDescription.new
        xml.at('Listener') do |node|
          data.listener = Listener.parse(node)
        end
        xml.at('PolicyNames') do |node|
          children = node.children('member')
          data.policy_names = PolicyNames.parse(children)
        end
        return data
      end
    end

    class Listener
      def self.parse(xml)
        data = Types::Listener.new
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('LoadBalancerPort') do |node|
          data.load_balancer_port = node.text&.to_i
        end
        xml.at('InstanceProtocol') do |node|
          data.instance_protocol = (node.text || '')
        end
        xml.at('InstancePort') do |node|
          data.instance_port = node.text&.to_i
        end
        xml.at('SSLCertificateId') do |node|
          data.ssl_certificate_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DependencyThrottleException
    class DependencyThrottleException
      def self.parse(http_resp)
        data = Types::DependencyThrottleException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTagsResult')
        xml.at('TagDescriptions') do |node|
          children = node.children('member')
          data.tag_descriptions = TagDescriptions.parse(children)
        end
        data
      end
    end

    class TagDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << TagDescription.parse(node)
        end
        data
      end
    end

    class TagDescription
      def self.parse(xml)
        data = Types::TagDescription.new
        xml.at('LoadBalancerName') do |node|
          data.load_balancer_name = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = TagList.parse(children)
        end
        return data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DetachLoadBalancerFromSubnets
    class DetachLoadBalancerFromSubnets
      def self.parse(http_resp)
        data = Types::DetachLoadBalancerFromSubnetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachLoadBalancerFromSubnetsResult')
        xml.at('Subnets') do |node|
          children = node.children('member')
          data.subnets = Subnets.parse(children)
        end
        data
      end
    end

    # Operation Parser for DisableAvailabilityZonesForLoadBalancer
    class DisableAvailabilityZonesForLoadBalancer
      def self.parse(http_resp)
        data = Types::DisableAvailabilityZonesForLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisableAvailabilityZonesForLoadBalancerResult')
        xml.at('AvailabilityZones') do |node|
          children = node.children('member')
          data.availability_zones = AvailabilityZones.parse(children)
        end
        data
      end
    end

    # Operation Parser for EnableAvailabilityZonesForLoadBalancer
    class EnableAvailabilityZonesForLoadBalancer
      def self.parse(http_resp)
        data = Types::EnableAvailabilityZonesForLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableAvailabilityZonesForLoadBalancerResult')
        xml.at('AvailabilityZones') do |node|
          children = node.children('member')
          data.availability_zones = AvailabilityZones.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyLoadBalancerAttributes
    class ModifyLoadBalancerAttributes
      def self.parse(http_resp)
        data = Types::ModifyLoadBalancerAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyLoadBalancerAttributesResult')
        xml.at('LoadBalancerName') do |node|
          data.load_balancer_name = (node.text || '')
        end
        xml.at('LoadBalancerAttributes') do |node|
          data.load_balancer_attributes = LoadBalancerAttributes.parse(node)
        end
        data
      end
    end

    # Operation Parser for RegisterInstancesWithLoadBalancer
    class RegisterInstancesWithLoadBalancer
      def self.parse(http_resp)
        data = Types::RegisterInstancesWithLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RegisterInstancesWithLoadBalancerResult')
        xml.at('Instances') do |node|
          children = node.children('member')
          data.instances = Instances.parse(children)
        end
        data
      end
    end

    # Operation Parser for RemoveTags
    class RemoveTags
      def self.parse(http_resp)
        data = Types::RemoveTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveTagsResult')
        data
      end
    end

    # Operation Parser for SetLoadBalancerListenerSSLCertificate
    class SetLoadBalancerListenerSSLCertificate
      def self.parse(http_resp)
        data = Types::SetLoadBalancerListenerSSLCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetLoadBalancerListenerSSLCertificateResult')
        data
      end
    end

    # Error Parser for ListenerNotFoundException
    class ListenerNotFoundException
      def self.parse(http_resp)
        data = Types::ListenerNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SetLoadBalancerPoliciesForBackendServer
    class SetLoadBalancerPoliciesForBackendServer
      def self.parse(http_resp)
        data = Types::SetLoadBalancerPoliciesForBackendServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetLoadBalancerPoliciesForBackendServerResult')
        data
      end
    end

    # Operation Parser for SetLoadBalancerPoliciesOfListener
    class SetLoadBalancerPoliciesOfListener
      def self.parse(http_resp)
        data = Types::SetLoadBalancerPoliciesOfListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetLoadBalancerPoliciesOfListenerResult')
        data
      end
    end
  end
end
