# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancing
  module Params

    module AccessLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessLog, context: context)
        type = Types::AccessLog.new
        type.enabled = params[:enabled]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.emit_interval = params[:emit_interval]
        type.s3_bucket_prefix = params[:s3_bucket_prefix]
        type
      end
    end

    module AccessPointNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPointNotFoundException, context: context)
        type = Types::AccessPointNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type
      end
    end

    module AdditionalAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalAttribute, context: context)
        type = Types::AdditionalAttribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AdditionalAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdditionalAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppCookieStickinessPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppCookieStickinessPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppCookieStickinessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppCookieStickinessPolicy, context: context)
        type = Types::AppCookieStickinessPolicy.new
        type.policy_name = params[:policy_name]
        type.cookie_name = params[:cookie_name]
        type
      end
    end

    module ApplySecurityGroupsToLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplySecurityGroupsToLoadBalancerInput, context: context)
        type = Types::ApplySecurityGroupsToLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module ApplySecurityGroupsToLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplySecurityGroupsToLoadBalancerOutput, context: context)
        type = Types::ApplySecurityGroupsToLoadBalancerOutput.new
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module AttachLoadBalancerToSubnetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancerToSubnetsInput, context: context)
        type = Types::AttachLoadBalancerToSubnetsInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module AttachLoadBalancerToSubnetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancerToSubnetsOutput, context: context)
        type = Types::AttachLoadBalancerToSubnetsOutput.new
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BackendServerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendServerDescription, context: context)
        type = Types::BackendServerDescription.new
        type.instance_port = params[:instance_port]
        type.policy_names = PolicyNames.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module BackendServerDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackendServerDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateNotFoundException, context: context)
        type = Types::CertificateNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ConfigureHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureHealthCheckInput, context: context)
        type = Types::ConfigureHealthCheckInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type
      end
    end

    module ConfigureHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureHealthCheckOutput, context: context)
        type = Types::ConfigureHealthCheckOutput.new
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type
      end
    end

    module ConnectionDraining
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionDraining, context: context)
        type = Types::ConnectionDraining.new
        type.enabled = params[:enabled]
        type.timeout = params[:timeout]
        type
      end
    end

    module ConnectionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionSettings, context: context)
        type = Types::ConnectionSettings.new
        type.idle_timeout = params[:idle_timeout]
        type
      end
    end

    module CreateAppCookieStickinessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppCookieStickinessPolicyInput, context: context)
        type = Types::CreateAppCookieStickinessPolicyInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.policy_name = params[:policy_name]
        type.cookie_name = params[:cookie_name]
        type
      end
    end

    module CreateAppCookieStickinessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppCookieStickinessPolicyOutput, context: context)
        type = Types::CreateAppCookieStickinessPolicyOutput.new
        type
      end
    end

    module CreateLBCookieStickinessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLBCookieStickinessPolicyInput, context: context)
        type = Types::CreateLBCookieStickinessPolicyInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.policy_name = params[:policy_name]
        type.cookie_expiration_period = params[:cookie_expiration_period]
        type
      end
    end

    module CreateLBCookieStickinessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLBCookieStickinessPolicyOutput, context: context)
        type = Types::CreateLBCookieStickinessPolicyOutput.new
        type
      end
    end

    module CreateLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerInput, context: context)
        type = Types::CreateLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.scheme = params[:scheme]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLoadBalancerListenersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerListenersInput, context: context)
        type = Types::CreateLoadBalancerListenersInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type
      end
    end

    module CreateLoadBalancerListenersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerListenersOutput, context: context)
        type = Types::CreateLoadBalancerListenersOutput.new
        type
      end
    end

    module CreateLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerOutput, context: context)
        type = Types::CreateLoadBalancerOutput.new
        type.dns_name = params[:dns_name]
        type
      end
    end

    module CreateLoadBalancerPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerPolicyInput, context: context)
        type = Types::CreateLoadBalancerPolicyInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.policy_name = params[:policy_name]
        type.policy_type_name = params[:policy_type_name]
        type.policy_attributes = PolicyAttributes.build(params[:policy_attributes], context: "#{context}[:policy_attributes]") unless params[:policy_attributes].nil?
        type
      end
    end

    module CreateLoadBalancerPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerPolicyOutput, context: context)
        type = Types::CreateLoadBalancerPolicyOutput.new
        type
      end
    end

    module CrossZoneLoadBalancing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrossZoneLoadBalancing, context: context)
        type = Types::CrossZoneLoadBalancing.new
        type.enabled = params[:enabled]
        type
      end
    end

    module DeleteLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerInput, context: context)
        type = Types::DeleteLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type
      end
    end

    module DeleteLoadBalancerListenersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerListenersInput, context: context)
        type = Types::DeleteLoadBalancerListenersInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.load_balancer_ports = Ports.build(params[:load_balancer_ports], context: "#{context}[:load_balancer_ports]") unless params[:load_balancer_ports].nil?
        type
      end
    end

    module DeleteLoadBalancerListenersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerListenersOutput, context: context)
        type = Types::DeleteLoadBalancerListenersOutput.new
        type
      end
    end

    module DeleteLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerOutput, context: context)
        type = Types::DeleteLoadBalancerOutput.new
        type
      end
    end

    module DeleteLoadBalancerPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerPolicyInput, context: context)
        type = Types::DeleteLoadBalancerPolicyInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteLoadBalancerPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerPolicyOutput, context: context)
        type = Types::DeleteLoadBalancerPolicyOutput.new
        type
      end
    end

    module DependencyThrottleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyThrottleException, context: context)
        type = Types::DependencyThrottleException.new
        type.message = params[:message]
        type
      end
    end

    module DeregisterInstancesFromLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstancesFromLoadBalancerInput, context: context)
        type = Types::DeregisterInstancesFromLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module DeregisterInstancesFromLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstancesFromLoadBalancerOutput, context: context)
        type = Types::DeregisterInstancesFromLoadBalancerOutput.new
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module DescribeAccountLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsInput, context: context)
        type = Types::DescribeAccountLimitsInput.new
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeAccountLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsOutput, context: context)
        type = Types::DescribeAccountLimitsOutput.new
        type.limits = Limits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeInstanceHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceHealthInput, context: context)
        type = Types::DescribeInstanceHealthInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module DescribeInstanceHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceHealthOutput, context: context)
        type = Types::DescribeInstanceHealthOutput.new
        type.instance_states = InstanceStates.build(params[:instance_states], context: "#{context}[:instance_states]") unless params[:instance_states].nil?
        type
      end
    end

    module DescribeLoadBalancerAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerAttributesInput, context: context)
        type = Types::DescribeLoadBalancerAttributesInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type
      end
    end

    module DescribeLoadBalancerAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerAttributesOutput, context: context)
        type = Types::DescribeLoadBalancerAttributesOutput.new
        type.load_balancer_attributes = LoadBalancerAttributes.build(params[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless params[:load_balancer_attributes].nil?
        type
      end
    end

    module DescribeLoadBalancerPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerPoliciesInput, context: context)
        type = Types::DescribeLoadBalancerPoliciesInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.policy_names = PolicyNames.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module DescribeLoadBalancerPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerPoliciesOutput, context: context)
        type = Types::DescribeLoadBalancerPoliciesOutput.new
        type.policy_descriptions = PolicyDescriptions.build(params[:policy_descriptions], context: "#{context}[:policy_descriptions]") unless params[:policy_descriptions].nil?
        type
      end
    end

    module DescribeLoadBalancerPolicyTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerPolicyTypesInput, context: context)
        type = Types::DescribeLoadBalancerPolicyTypesInput.new
        type.policy_type_names = PolicyTypeNames.build(params[:policy_type_names], context: "#{context}[:policy_type_names]") unless params[:policy_type_names].nil?
        type
      end
    end

    module DescribeLoadBalancerPolicyTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerPolicyTypesOutput, context: context)
        type = Types::DescribeLoadBalancerPolicyTypesOutput.new
        type.policy_type_descriptions = PolicyTypeDescriptions.build(params[:policy_type_descriptions], context: "#{context}[:policy_type_descriptions]") unless params[:policy_type_descriptions].nil?
        type
      end
    end

    module DescribeLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancersInput, context: context)
        type = Types::DescribeLoadBalancersInput.new
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancersOutput, context: context)
        type = Types::DescribeLoadBalancersOutput.new
        type.load_balancer_descriptions = LoadBalancerDescriptions.build(params[:load_balancer_descriptions], context: "#{context}[:load_balancer_descriptions]") unless params[:load_balancer_descriptions].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.load_balancer_names = LoadBalancerNamesMax20.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.tag_descriptions = TagDescriptions.build(params[:tag_descriptions], context: "#{context}[:tag_descriptions]") unless params[:tag_descriptions].nil?
        type
      end
    end

    module DetachLoadBalancerFromSubnetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachLoadBalancerFromSubnetsInput, context: context)
        type = Types::DetachLoadBalancerFromSubnetsInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module DetachLoadBalancerFromSubnetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachLoadBalancerFromSubnetsOutput, context: context)
        type = Types::DetachLoadBalancerFromSubnetsOutput.new
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module DisableAvailabilityZonesForLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAvailabilityZonesForLoadBalancerInput, context: context)
        type = Types::DisableAvailabilityZonesForLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module DisableAvailabilityZonesForLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAvailabilityZonesForLoadBalancerOutput, context: context)
        type = Types::DisableAvailabilityZonesForLoadBalancerOutput.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module DuplicateAccessPointNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateAccessPointNameException, context: context)
        type = Types::DuplicateAccessPointNameException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateListenerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateListenerException, context: context)
        type = Types::DuplicateListenerException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicatePolicyNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicatePolicyNameException, context: context)
        type = Types::DuplicatePolicyNameException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateTagKeysException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateTagKeysException, context: context)
        type = Types::DuplicateTagKeysException.new
        type.message = params[:message]
        type
      end
    end

    module EnableAvailabilityZonesForLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAvailabilityZonesForLoadBalancerInput, context: context)
        type = Types::EnableAvailabilityZonesForLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module EnableAvailabilityZonesForLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAvailabilityZonesForLoadBalancerOutput, context: context)
        type = Types::EnableAvailabilityZonesForLoadBalancerOutput.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module HealthCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheck, context: context)
        type = Types::HealthCheck.new
        type.target = params[:target]
        type.interval = params[:interval]
        type.timeout = params[:timeout]
        type.unhealthy_threshold = params[:unhealthy_threshold]
        type.healthy_threshold = params[:healthy_threshold]
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module InstanceState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceState, context: context)
        type = Types::InstanceState.new
        type.instance_id = params[:instance_id]
        type.state = params[:state]
        type.reason_code = params[:reason_code]
        type.description = params[:description]
        type
      end
    end

    module InstanceStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Instances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidConfigurationRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConfigurationRequestException, context: context)
        type = Types::InvalidConfigurationRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEndPointException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEndPointException, context: context)
        type = Types::InvalidEndPointException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSchemeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSchemeException, context: context)
        type = Types::InvalidSchemeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSecurityGroupException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSecurityGroupException, context: context)
        type = Types::InvalidSecurityGroupException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnetException, context: context)
        type = Types::InvalidSubnetException.new
        type.message = params[:message]
        type
      end
    end

    module LBCookieStickinessPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LBCookieStickinessPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LBCookieStickinessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LBCookieStickinessPolicy, context: context)
        type = Types::LBCookieStickinessPolicy.new
        type.policy_name = params[:policy_name]
        type.cookie_expiration_period = params[:cookie_expiration_period]
        type
      end
    end

    module Limit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Limit, context: context)
        type = Types::Limit.new
        type.name = params[:name]
        type.max = params[:max]
        type
      end
    end

    module Limits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Limit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Listener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Listener, context: context)
        type = Types::Listener.new
        type.protocol = params[:protocol]
        type.load_balancer_port = params[:load_balancer_port]
        type.instance_protocol = params[:instance_protocol]
        type.instance_port = params[:instance_port]
        type.ssl_certificate_id = params[:ssl_certificate_id]
        type
      end
    end

    module ListenerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerDescription, context: context)
        type = Types::ListenerDescription.new
        type.listener = Listener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type.policy_names = PolicyNames.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module ListenerDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListenerDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListenerNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerNotFoundException, context: context)
        type = Types::ListenerNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Listeners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Listener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerAttributeNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerAttributeNotFoundException, context: context)
        type = Types::LoadBalancerAttributeNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module LoadBalancerAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerAttributes, context: context)
        type = Types::LoadBalancerAttributes.new
        type.cross_zone_load_balancing = CrossZoneLoadBalancing.build(params[:cross_zone_load_balancing], context: "#{context}[:cross_zone_load_balancing]") unless params[:cross_zone_load_balancing].nil?
        type.access_log = AccessLog.build(params[:access_log], context: "#{context}[:access_log]") unless params[:access_log].nil?
        type.connection_draining = ConnectionDraining.build(params[:connection_draining], context: "#{context}[:connection_draining]") unless params[:connection_draining].nil?
        type.connection_settings = ConnectionSettings.build(params[:connection_settings], context: "#{context}[:connection_settings]") unless params[:connection_settings].nil?
        type.additional_attributes = AdditionalAttributes.build(params[:additional_attributes], context: "#{context}[:additional_attributes]") unless params[:additional_attributes].nil?
        type
      end
    end

    module LoadBalancerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerDescription, context: context)
        type = Types::LoadBalancerDescription.new
        type.load_balancer_name = params[:load_balancer_name]
        type.dns_name = params[:dns_name]
        type.canonical_hosted_zone_name = params[:canonical_hosted_zone_name]
        type.canonical_hosted_zone_name_id = params[:canonical_hosted_zone_name_id]
        type.listener_descriptions = ListenerDescriptions.build(params[:listener_descriptions], context: "#{context}[:listener_descriptions]") unless params[:listener_descriptions].nil?
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.backend_server_descriptions = BackendServerDescriptions.build(params[:backend_server_descriptions], context: "#{context}[:backend_server_descriptions]") unless params[:backend_server_descriptions].nil?
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.vpc_id = params[:vpc_id]
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.source_security_group = SourceSecurityGroup.build(params[:source_security_group], context: "#{context}[:source_security_group]") unless params[:source_security_group].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.created_time = params[:created_time]
        type.scheme = params[:scheme]
        type
      end
    end

    module LoadBalancerDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoadBalancerNamesMax20
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ModifyLoadBalancerAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLoadBalancerAttributesInput, context: context)
        type = Types::ModifyLoadBalancerAttributesInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.load_balancer_attributes = LoadBalancerAttributes.build(params[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless params[:load_balancer_attributes].nil?
        type
      end
    end

    module ModifyLoadBalancerAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLoadBalancerAttributesOutput, context: context)
        type = Types::ModifyLoadBalancerAttributesOutput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.load_balancer_attributes = LoadBalancerAttributes.build(params[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless params[:load_balancer_attributes].nil?
        type
      end
    end

    module OperationNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedException, context: context)
        type = Types::OperationNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module Policies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Policies, context: context)
        type = Types::Policies.new
        type.app_cookie_stickiness_policies = AppCookieStickinessPolicies.build(params[:app_cookie_stickiness_policies], context: "#{context}[:app_cookie_stickiness_policies]") unless params[:app_cookie_stickiness_policies].nil?
        type.lb_cookie_stickiness_policies = LBCookieStickinessPolicies.build(params[:lb_cookie_stickiness_policies], context: "#{context}[:lb_cookie_stickiness_policies]") unless params[:lb_cookie_stickiness_policies].nil?
        type.other_policies = PolicyNames.build(params[:other_policies], context: "#{context}[:other_policies]") unless params[:other_policies].nil?
        type
      end
    end

    module PolicyAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyAttribute, context: context)
        type = Types::PolicyAttribute.new
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module PolicyAttributeDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyAttributeDescription, context: context)
        type = Types::PolicyAttributeDescription.new
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module PolicyAttributeDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyAttributeDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyAttributeTypeDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyAttributeTypeDescription, context: context)
        type = Types::PolicyAttributeTypeDescription.new
        type.attribute_name = params[:attribute_name]
        type.attribute_type = params[:attribute_type]
        type.description = params[:description]
        type.default_value = params[:default_value]
        type.cardinality = params[:cardinality]
        type
      end
    end

    module PolicyAttributeTypeDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyAttributeTypeDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyDescription, context: context)
        type = Types::PolicyDescription.new
        type.policy_name = params[:policy_name]
        type.policy_type_name = params[:policy_type_name]
        type.policy_attribute_descriptions = PolicyAttributeDescriptions.build(params[:policy_attribute_descriptions], context: "#{context}[:policy_attribute_descriptions]") unless params[:policy_attribute_descriptions].nil?
        type
      end
    end

    module PolicyDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyNotFoundException, context: context)
        type = Types::PolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyTypeDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTypeDescription, context: context)
        type = Types::PolicyTypeDescription.new
        type.policy_type_name = params[:policy_type_name]
        type.description = params[:description]
        type.policy_attribute_type_descriptions = PolicyAttributeTypeDescriptions.build(params[:policy_attribute_type_descriptions], context: "#{context}[:policy_attribute_type_descriptions]") unless params[:policy_attribute_type_descriptions].nil?
        type
      end
    end

    module PolicyTypeDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyTypeDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyTypeNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyTypeNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTypeNotFoundException, context: context)
        type = Types::PolicyTypeNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Ports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterInstancesWithLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstancesWithLoadBalancerInput, context: context)
        type = Types::RegisterInstancesWithLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module RegisterInstancesWithLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstancesWithLoadBalancerOutput, context: context)
        type = Types::RegisterInstancesWithLoadBalancerOutput.new
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module RemoveTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsInput, context: context)
        type = Types::RemoveTagsInput.new
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type.tags = TagKeyList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RemoveTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsOutput, context: context)
        type = Types::RemoveTagsOutput.new
        type
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SetLoadBalancerListenerSSLCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBalancerListenerSSLCertificateInput, context: context)
        type = Types::SetLoadBalancerListenerSSLCertificateInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.load_balancer_port = params[:load_balancer_port]
        type.ssl_certificate_id = params[:ssl_certificate_id]
        type
      end
    end

    module SetLoadBalancerListenerSSLCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBalancerListenerSSLCertificateOutput, context: context)
        type = Types::SetLoadBalancerListenerSSLCertificateOutput.new
        type
      end
    end

    module SetLoadBalancerPoliciesForBackendServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBalancerPoliciesForBackendServerInput, context: context)
        type = Types::SetLoadBalancerPoliciesForBackendServerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instance_port = params[:instance_port]
        type.policy_names = PolicyNames.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module SetLoadBalancerPoliciesForBackendServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBalancerPoliciesForBackendServerOutput, context: context)
        type = Types::SetLoadBalancerPoliciesForBackendServerOutput.new
        type
      end
    end

    module SetLoadBalancerPoliciesOfListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBalancerPoliciesOfListenerInput, context: context)
        type = Types::SetLoadBalancerPoliciesOfListenerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.load_balancer_port = params[:load_balancer_port]
        type.policy_names = PolicyNames.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module SetLoadBalancerPoliciesOfListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBalancerPoliciesOfListenerOutput, context: context)
        type = Types::SetLoadBalancerPoliciesOfListenerOutput.new
        type
      end
    end

    module SourceSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceSecurityGroup, context: context)
        type = Types::SourceSecurityGroup.new
        type.owner_alias = params[:owner_alias]
        type.group_name = params[:group_name]
        type
      end
    end

    module SubnetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetNotFoundException, context: context)
        type = Types::SubnetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Subnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagDescription, context: context)
        type = Types::TagDescription.new
        type.load_balancer_name = params[:load_balancer_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagKeyOnly.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyOnly
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagKeyOnly, context: context)
        type = Types::TagKeyOnly.new
        type.key = params[:key]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyAccessPointsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyAccessPointsException, context: context)
        type = Types::TooManyAccessPointsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyPoliciesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyPoliciesException, context: context)
        type = Types::TooManyPoliciesException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedProtocolException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedProtocolException, context: context)
        type = Types::UnsupportedProtocolException.new
        type.message = params[:message]
        type
      end
    end

  end
end
