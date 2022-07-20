# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ElasticLoadBalancing
  module Validators

    class AccessLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessLog, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:emit_interval], ::Integer, context: "#{context}[:emit_interval]")
        Hearth::Validator.validate!(input[:s3_bucket_prefix], ::String, context: "#{context}[:s3_bucket_prefix]")
      end
    end

    class AccessPointNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPointNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
      end
    end

    class AdditionalAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AdditionalAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdditionalAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppCookieStickinessPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppCookieStickinessPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppCookieStickinessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppCookieStickinessPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:cookie_name], ::String, context: "#{context}[:cookie_name]")
      end
    end

    class ApplySecurityGroupsToLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplySecurityGroupsToLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class ApplySecurityGroupsToLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplySecurityGroupsToLoadBalancerOutput, context: context)
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class AttachLoadBalancerToSubnetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancerToSubnetsInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class AttachLoadBalancerToSubnetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancerToSubnetsOutput, context: context)
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BackendServerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendServerDescription, context: context)
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        PolicyNames.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class BackendServerDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackendServerDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigureHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
      end
    end

    class ConfigureHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureHealthCheckOutput, context: context)
        HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
      end
    end

    class ConnectionDraining
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionDraining, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class ConnectionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionSettings, context: context)
        Hearth::Validator.validate!(input[:idle_timeout], ::Integer, context: "#{context}[:idle_timeout]")
      end
    end

    class CreateAppCookieStickinessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppCookieStickinessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:cookie_name], ::String, context: "#{context}[:cookie_name]")
      end
    end

    class CreateAppCookieStickinessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppCookieStickinessPolicyOutput, context: context)
      end
    end

    class CreateLBCookieStickinessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLBCookieStickinessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:cookie_expiration_period], ::Integer, context: "#{context}[:cookie_expiration_period]")
      end
    end

    class CreateLBCookieStickinessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLBCookieStickinessPolicyOutput, context: context)
      end
    end

    class CreateLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLoadBalancerListenersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerListenersInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
      end
    end

    class CreateLoadBalancerListenersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerListenersOutput, context: context)
      end
    end

    class CreateLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerOutput, context: context)
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
      end
    end

    class CreateLoadBalancerPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerPolicyInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_type_name], ::String, context: "#{context}[:policy_type_name]")
        PolicyAttributes.validate!(input[:policy_attributes], context: "#{context}[:policy_attributes]") unless input[:policy_attributes].nil?
      end
    end

    class CreateLoadBalancerPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerPolicyOutput, context: context)
      end
    end

    class CrossZoneLoadBalancing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrossZoneLoadBalancing, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class DeleteLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
      end
    end

    class DeleteLoadBalancerListenersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerListenersInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Ports.validate!(input[:load_balancer_ports], context: "#{context}[:load_balancer_ports]") unless input[:load_balancer_ports].nil?
      end
    end

    class DeleteLoadBalancerListenersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerListenersOutput, context: context)
      end
    end

    class DeleteLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerOutput, context: context)
      end
    end

    class DeleteLoadBalancerPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerPolicyInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteLoadBalancerPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerPolicyOutput, context: context)
      end
    end

    class DependencyThrottleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyThrottleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeregisterInstancesFromLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstancesFromLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class DeregisterInstancesFromLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstancesFromLoadBalancerOutput, context: context)
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class DescribeAccountLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeAccountLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsOutput, context: context)
        Limits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeInstanceHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceHealthInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class DescribeInstanceHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceHealthOutput, context: context)
        InstanceStates.validate!(input[:instance_states], context: "#{context}[:instance_states]") unless input[:instance_states].nil?
      end
    end

    class DescribeLoadBalancerAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerAttributesInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
      end
    end

    class DescribeLoadBalancerAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerAttributesOutput, context: context)
        LoadBalancerAttributes.validate!(input[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless input[:load_balancer_attributes].nil?
      end
    end

    class DescribeLoadBalancerPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        PolicyNames.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class DescribeLoadBalancerPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerPoliciesOutput, context: context)
        PolicyDescriptions.validate!(input[:policy_descriptions], context: "#{context}[:policy_descriptions]") unless input[:policy_descriptions].nil?
      end
    end

    class DescribeLoadBalancerPolicyTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerPolicyTypesInput, context: context)
        PolicyTypeNames.validate!(input[:policy_type_names], context: "#{context}[:policy_type_names]") unless input[:policy_type_names].nil?
      end
    end

    class DescribeLoadBalancerPolicyTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerPolicyTypesOutput, context: context)
        PolicyTypeDescriptions.validate!(input[:policy_type_descriptions], context: "#{context}[:policy_type_descriptions]") unless input[:policy_type_descriptions].nil?
      end
    end

    class DescribeLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancersInput, context: context)
        LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancersOutput, context: context)
        LoadBalancerDescriptions.validate!(input[:load_balancer_descriptions], context: "#{context}[:load_balancer_descriptions]") unless input[:load_balancer_descriptions].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        LoadBalancerNamesMax20.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        TagDescriptions.validate!(input[:tag_descriptions], context: "#{context}[:tag_descriptions]") unless input[:tag_descriptions].nil?
      end
    end

    class DetachLoadBalancerFromSubnetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachLoadBalancerFromSubnetsInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class DetachLoadBalancerFromSubnetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachLoadBalancerFromSubnetsOutput, context: context)
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class DisableAvailabilityZonesForLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAvailabilityZonesForLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class DisableAvailabilityZonesForLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAvailabilityZonesForLoadBalancerOutput, context: context)
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class DuplicateAccessPointNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateAccessPointNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateListenerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateListenerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicatePolicyNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicatePolicyNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateTagKeysException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateTagKeysException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableAvailabilityZonesForLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAvailabilityZonesForLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class EnableAvailabilityZonesForLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAvailabilityZonesForLoadBalancerOutput, context: context)
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class HealthCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheck, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:unhealthy_threshold], ::Integer, context: "#{context}[:unhealthy_threshold]")
        Hearth::Validator.validate!(input[:healthy_threshold], ::Integer, context: "#{context}[:healthy_threshold]")
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class InstanceState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceState, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:reason_code], ::String, context: "#{context}[:reason_code]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class InstanceStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Instances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidConfigurationRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndPointException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndPointException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSchemeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSchemeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSecurityGroupException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSecurityGroupException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LBCookieStickinessPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LBCookieStickinessPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LBCookieStickinessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LBCookieStickinessPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:cookie_expiration_period], ::Integer, context: "#{context}[:cookie_expiration_period]")
      end
    end

    class Limit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Limit, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max], ::String, context: "#{context}[:max]")
      end
    end

    class Limits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Limit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Listener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Listener, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:load_balancer_port], ::Integer, context: "#{context}[:load_balancer_port]")
        Hearth::Validator.validate!(input[:instance_protocol], ::String, context: "#{context}[:instance_protocol]")
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        Hearth::Validator.validate!(input[:ssl_certificate_id], ::String, context: "#{context}[:ssl_certificate_id]")
      end
    end

    class ListenerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerDescription, context: context)
        Listener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
        PolicyNames.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class ListenerDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListenerDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListenerNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Listeners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Listener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerAttributeNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerAttributeNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LoadBalancerAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerAttributes, context: context)
        CrossZoneLoadBalancing.validate!(input[:cross_zone_load_balancing], context: "#{context}[:cross_zone_load_balancing]") unless input[:cross_zone_load_balancing].nil?
        AccessLog.validate!(input[:access_log], context: "#{context}[:access_log]") unless input[:access_log].nil?
        ConnectionDraining.validate!(input[:connection_draining], context: "#{context}[:connection_draining]") unless input[:connection_draining].nil?
        ConnectionSettings.validate!(input[:connection_settings], context: "#{context}[:connection_settings]") unless input[:connection_settings].nil?
        AdditionalAttributes.validate!(input[:additional_attributes], context: "#{context}[:additional_attributes]") unless input[:additional_attributes].nil?
      end
    end

    class LoadBalancerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerDescription, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:canonical_hosted_zone_name], ::String, context: "#{context}[:canonical_hosted_zone_name]")
        Hearth::Validator.validate!(input[:canonical_hosted_zone_name_id], ::String, context: "#{context}[:canonical_hosted_zone_name_id]")
        ListenerDescriptions.validate!(input[:listener_descriptions], context: "#{context}[:listener_descriptions]") unless input[:listener_descriptions].nil?
        Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        BackendServerDescriptions.validate!(input[:backend_server_descriptions], context: "#{context}[:backend_server_descriptions]") unless input[:backend_server_descriptions].nil?
        AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        SourceSecurityGroup.validate!(input[:source_security_group], context: "#{context}[:source_security_group]") unless input[:source_security_group].nil?
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
      end
    end

    class LoadBalancerDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancerDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoadBalancerNamesMax20
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ModifyLoadBalancerAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLoadBalancerAttributesInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        LoadBalancerAttributes.validate!(input[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless input[:load_balancer_attributes].nil?
      end
    end

    class ModifyLoadBalancerAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLoadBalancerAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        LoadBalancerAttributes.validate!(input[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless input[:load_balancer_attributes].nil?
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Policies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Policies, context: context)
        AppCookieStickinessPolicies.validate!(input[:app_cookie_stickiness_policies], context: "#{context}[:app_cookie_stickiness_policies]") unless input[:app_cookie_stickiness_policies].nil?
        LBCookieStickinessPolicies.validate!(input[:lb_cookie_stickiness_policies], context: "#{context}[:lb_cookie_stickiness_policies]") unless input[:lb_cookie_stickiness_policies].nil?
        PolicyNames.validate!(input[:other_policies], context: "#{context}[:other_policies]") unless input[:other_policies].nil?
      end
    end

    class PolicyAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class PolicyAttributeDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyAttributeDescription, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class PolicyAttributeDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyAttributeDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyAttributeTypeDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyAttributeTypeDescription, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:cardinality], ::String, context: "#{context}[:cardinality]")
      end
    end

    class PolicyAttributeTypeDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyAttributeTypeDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyDescription, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_type_name], ::String, context: "#{context}[:policy_type_name]")
        PolicyAttributeDescriptions.validate!(input[:policy_attribute_descriptions], context: "#{context}[:policy_attribute_descriptions]") unless input[:policy_attribute_descriptions].nil?
      end
    end

    class PolicyDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyTypeDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTypeDescription, context: context)
        Hearth::Validator.validate!(input[:policy_type_name], ::String, context: "#{context}[:policy_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PolicyAttributeTypeDescriptions.validate!(input[:policy_attribute_type_descriptions], context: "#{context}[:policy_attribute_type_descriptions]") unless input[:policy_attribute_type_descriptions].nil?
      end
    end

    class PolicyTypeDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyTypeDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyTypeNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyTypeNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTypeNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Ports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterInstancesWithLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstancesWithLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class RegisterInstancesWithLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstancesWithLoadBalancerOutput, context: context)
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class RemoveTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsInput, context: context)
        LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
        TagKeyList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RemoveTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsOutput, context: context)
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SetLoadBalancerListenerSSLCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBalancerListenerSSLCertificateInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:load_balancer_port], ::Integer, context: "#{context}[:load_balancer_port]")
        Hearth::Validator.validate!(input[:ssl_certificate_id], ::String, context: "#{context}[:ssl_certificate_id]")
      end
    end

    class SetLoadBalancerListenerSSLCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBalancerListenerSSLCertificateOutput, context: context)
      end
    end

    class SetLoadBalancerPoliciesForBackendServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBalancerPoliciesForBackendServerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        PolicyNames.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class SetLoadBalancerPoliciesForBackendServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBalancerPoliciesForBackendServerOutput, context: context)
      end
    end

    class SetLoadBalancerPoliciesOfListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBalancerPoliciesOfListenerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:load_balancer_port], ::Integer, context: "#{context}[:load_balancer_port]")
        PolicyNames.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class SetLoadBalancerPoliciesOfListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBalancerPoliciesOfListenerOutput, context: context)
      end
    end

    class SourceSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:owner_alias], ::String, context: "#{context}[:owner_alias]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class SubnetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Subnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagDescription, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagKeyOnly.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyOnly
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagKeyOnly, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyAccessPointsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyAccessPointsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyPoliciesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyPoliciesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedProtocolException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedProtocolException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
