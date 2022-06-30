# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancingV2
  module Validators

    class ALPNPolicyNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ALPNPolicyNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Validators::AuthenticateOidcActionConfig.validate!(input[:authenticate_oidc_config], context: "#{context}[:authenticate_oidc_config]") unless input[:authenticate_oidc_config].nil?
        Validators::AuthenticateCognitoActionConfig.validate!(input[:authenticate_cognito_config], context: "#{context}[:authenticate_cognito_config]") unless input[:authenticate_cognito_config].nil?
        Hearth::Validator.validate!(input[:order], ::Integer, context: "#{context}[:order]")
        Validators::RedirectActionConfig.validate!(input[:redirect_config], context: "#{context}[:redirect_config]") unless input[:redirect_config].nil?
        Validators::FixedResponseActionConfig.validate!(input[:fixed_response_config], context: "#{context}[:fixed_response_config]") unless input[:fixed_response_config].nil?
        Validators::ForwardActionConfig.validate!(input[:forward_config], context: "#{context}[:forward_config]") unless input[:forward_config].nil?
      end
    end

    class Actions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddListenerCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddListenerCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
      end
    end

    class AddListenerCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddListenerCertificatesOutput, context: context)
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
      end
    end

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Validators::ResourceArns.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
      end
    end

    class AllocationIdNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocationIdNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlpnPolicyName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthenticateCognitoActionAuthenticationRequestExtraParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AuthenticateCognitoActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticateCognitoActionConfig, context: context)
        Hearth::Validator.validate!(input[:user_pool_arn], ::String, context: "#{context}[:user_pool_arn]")
        Hearth::Validator.validate!(input[:user_pool_client_id], ::String, context: "#{context}[:user_pool_client_id]")
        Hearth::Validator.validate!(input[:user_pool_domain], ::String, context: "#{context}[:user_pool_domain]")
        Hearth::Validator.validate!(input[:session_cookie_name], ::String, context: "#{context}[:session_cookie_name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:session_timeout], ::Integer, context: "#{context}[:session_timeout]")
        Validators::AuthenticateCognitoActionAuthenticationRequestExtraParams.validate!(input[:authentication_request_extra_params], context: "#{context}[:authentication_request_extra_params]") unless input[:authentication_request_extra_params].nil?
        Hearth::Validator.validate!(input[:on_unauthenticated_request], ::String, context: "#{context}[:on_unauthenticated_request]")
      end
    end

    class AuthenticateOidcActionAuthenticationRequestExtraParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AuthenticateOidcActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticateOidcActionConfig, context: context)
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:token_endpoint], ::String, context: "#{context}[:token_endpoint]")
        Hearth::Validator.validate!(input[:user_info_endpoint], ::String, context: "#{context}[:user_info_endpoint]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:session_cookie_name], ::String, context: "#{context}[:session_cookie_name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:session_timeout], ::Integer, context: "#{context}[:session_timeout]")
        Validators::AuthenticateOidcActionAuthenticationRequestExtraParams.validate!(input[:authentication_request_extra_params], context: "#{context}[:authentication_request_extra_params]") unless input[:authentication_request_extra_params].nil?
        Hearth::Validator.validate!(input[:on_unauthenticated_request], ::String, context: "#{context}[:on_unauthenticated_request]")
        Hearth::Validator.validate!(input[:use_existing_client_secret], ::TrueClass, ::FalseClass, context: "#{context}[:use_existing_client_secret]")
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:zone_name], ::String, context: "#{context}[:zone_name]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Validators::LoadBalancerAddresses.validate!(input[:load_balancer_addresses], context: "#{context}[:load_balancer_addresses]") unless input[:load_balancer_addresses].nil?
      end
    end

    class AvailabilityZoneNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZoneNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
      end
    end

    class CertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Certificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Cipher
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cipher, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class Ciphers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Cipher.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateListenerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:ssl_policy], ::String, context: "#{context}[:ssl_policy]")
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Validators::Actions.validate!(input[:default_actions], context: "#{context}[:default_actions]") unless input[:default_actions].nil?
        Validators::AlpnPolicyName.validate!(input[:alpn_policy], context: "#{context}[:alpn_policy]") unless input[:alpn_policy].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateListenerOutput, context: context)
        Validators::Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
      end
    end

    class CreateLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:customer_owned_ipv4_pool], ::String, context: "#{context}[:customer_owned_ipv4_pool]")
      end
    end

    class CreateLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerOutput, context: context)
        Validators::LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
      end
    end

    class CreateRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Validators::RuleConditionList.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleOutput, context: context)
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class CreateTargetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTargetGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:protocol_version], ::String, context: "#{context}[:protocol_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:health_check_protocol], ::String, context: "#{context}[:health_check_protocol]")
        Hearth::Validator.validate!(input[:health_check_port], ::String, context: "#{context}[:health_check_port]")
        Hearth::Validator.validate!(input[:health_check_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:health_check_enabled]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:health_check_interval_seconds], ::Integer, context: "#{context}[:health_check_interval_seconds]")
        Hearth::Validator.validate!(input[:health_check_timeout_seconds], ::Integer, context: "#{context}[:health_check_timeout_seconds]")
        Hearth::Validator.validate!(input[:healthy_threshold_count], ::Integer, context: "#{context}[:healthy_threshold_count]")
        Hearth::Validator.validate!(input[:unhealthy_threshold_count], ::Integer, context: "#{context}[:unhealthy_threshold_count]")
        Validators::Matcher.validate!(input[:matcher], context: "#{context}[:matcher]") unless input[:matcher].nil?
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class CreateTargetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTargetGroupOutput, context: context)
        Validators::TargetGroups.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
      end
    end

    class DeleteListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
      end
    end

    class DeleteListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteListenerOutput, context: context)
      end
    end

    class DeleteLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
      end
    end

    class DeleteLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerOutput, context: context)
      end
    end

    class DeleteRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
      end
    end

    class DeleteRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleOutput, context: context)
      end
    end

    class DeleteTargetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTargetGroupInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
      end
    end

    class DeleteTargetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTargetGroupOutput, context: context)
      end
    end

    class DeregisterTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTargetsInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Validators::TargetDescriptions.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class DeregisterTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTargetsOutput, context: context)
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
        Validators::Limits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeListenerCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeListenerCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeListenerCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeListenerCertificatesOutput, context: context)
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeListenersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeListenersInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Validators::ListenerArns.validate!(input[:listener_arns], context: "#{context}[:listener_arns]") unless input[:listener_arns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeListenersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeListenersOutput, context: context)
        Validators::Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeLoadBalancerAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerAttributesInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
      end
    end

    class DescribeLoadBalancerAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerAttributesOutput, context: context)
        Validators::LoadBalancerAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DescribeLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancersInput, context: context)
        Validators::LoadBalancerArns.validate!(input[:load_balancer_arns], context: "#{context}[:load_balancer_arns]") unless input[:load_balancer_arns].nil?
        Validators::LoadBalancerNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancersOutput, context: context)
        Validators::LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRulesInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Validators::RuleArns.validate!(input[:rule_arns], context: "#{context}[:rule_arns]") unless input[:rule_arns].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRulesOutput, context: context)
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeSSLPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSSLPoliciesInput, context: context)
        Validators::SslPolicyNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:load_balancer_type], ::String, context: "#{context}[:load_balancer_type]")
      end
    end

    class DescribeSSLPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSSLPoliciesOutput, context: context)
        Validators::SslPolicies.validate!(input[:ssl_policies], context: "#{context}[:ssl_policies]") unless input[:ssl_policies].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Validators::ResourceArns.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Validators::TagDescriptions.validate!(input[:tag_descriptions], context: "#{context}[:tag_descriptions]") unless input[:tag_descriptions].nil?
      end
    end

    class DescribeTargetGroupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetGroupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
      end
    end

    class DescribeTargetGroupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetGroupAttributesOutput, context: context)
        Validators::TargetGroupAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DescribeTargetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Validators::TargetGroupArns.validate!(input[:target_group_arns], context: "#{context}[:target_group_arns]") unless input[:target_group_arns].nil?
        Validators::TargetGroupNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class DescribeTargetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetGroupsOutput, context: context)
        Validators::TargetGroups.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeTargetHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetHealthInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Validators::TargetDescriptions.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class DescribeTargetHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetHealthOutput, context: context)
        Validators::TargetHealthDescriptions.validate!(input[:target_health_descriptions], context: "#{context}[:target_health_descriptions]") unless input[:target_health_descriptions].nil?
      end
    end

    class DuplicateListenerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateListenerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateLoadBalancerNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateLoadBalancerNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateTagKeysException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateTagKeysException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateTargetGroupNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateTargetGroupNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FixedResponseActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FixedResponseActionConfig, context: context)
        Hearth::Validator.validate!(input[:message_body], ::String, context: "#{context}[:message_body]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class ForwardActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForwardActionConfig, context: context)
        Validators::TargetGroupList.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
        Validators::TargetGroupStickinessConfig.validate!(input[:target_group_stickiness_config], context: "#{context}[:target_group_stickiness_config]") unless input[:target_group_stickiness_config].nil?
      end
    end

    class HealthUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HostHeaderConditionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostHeaderConditionConfig, context: context)
        Validators::ListOfString.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class HttpHeaderConditionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpHeaderConditionConfig, context: context)
        Hearth::Validator.validate!(input[:http_header_name], ::String, context: "#{context}[:http_header_name]")
        Validators::ListOfString.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class HttpRequestMethodConditionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpRequestMethodConditionConfig, context: context)
        Validators::ListOfString.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class IncompatibleProtocolsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleProtocolsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConfigurationRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLoadBalancerActionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLoadBalancerActionException, context: context)
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

    class InvalidTargetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
          Validators::Limit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Listener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Listener, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Hearth::Validator.validate!(input[:ssl_policy], ::String, context: "#{context}[:ssl_policy]")
        Validators::Actions.validate!(input[:default_actions], context: "#{context}[:default_actions]") unless input[:default_actions].nil?
        Validators::AlpnPolicyName.validate!(input[:alpn_policy], context: "#{context}[:alpn_policy]") unless input[:alpn_policy].nil?
      end
    end

    class ListenerArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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
          Validators::Listener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancer, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:canonical_hosted_zone_id], ::String, context: "#{context}[:canonical_hosted_zone_id]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::LoadBalancerState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:customer_owned_ipv4_pool], ::String, context: "#{context}[:customer_owned_ipv4_pool]")
      end
    end

    class LoadBalancerAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerAddress, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:private_i_pv4_address], ::String, context: "#{context}[:private_i_pv4_address]")
        Hearth::Validator.validate!(input[:i_pv6_address], ::String, context: "#{context}[:i_pv6_address]")
      end
    end

    class LoadBalancerAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadBalancerAddress.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoadBalancerAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class LoadBalancerAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadBalancerAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class LoadBalancerNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LoadBalancerState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerState, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class LoadBalancers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadBalancer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Matcher
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Matcher, context: context)
        Hearth::Validator.validate!(input[:http_code], ::String, context: "#{context}[:http_code]")
        Hearth::Validator.validate!(input[:grpc_code], ::String, context: "#{context}[:grpc_code]")
      end
    end

    class ModifyListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:ssl_policy], ::String, context: "#{context}[:ssl_policy]")
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        Validators::Actions.validate!(input[:default_actions], context: "#{context}[:default_actions]") unless input[:default_actions].nil?
        Validators::AlpnPolicyName.validate!(input[:alpn_policy], context: "#{context}[:alpn_policy]") unless input[:alpn_policy].nil?
      end
    end

    class ModifyListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyListenerOutput, context: context)
        Validators::Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
      end
    end

    class ModifyLoadBalancerAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLoadBalancerAttributesInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Validators::LoadBalancerAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ModifyLoadBalancerAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLoadBalancerAttributesOutput, context: context)
        Validators::LoadBalancerAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ModifyRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Validators::RuleConditionList.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
        Validators::Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class ModifyRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyRuleOutput, context: context)
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ModifyTargetGroupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTargetGroupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Validators::TargetGroupAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ModifyTargetGroupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTargetGroupAttributesOutput, context: context)
        Validators::TargetGroupAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ModifyTargetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTargetGroupInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Hearth::Validator.validate!(input[:health_check_protocol], ::String, context: "#{context}[:health_check_protocol]")
        Hearth::Validator.validate!(input[:health_check_port], ::String, context: "#{context}[:health_check_port]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:health_check_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:health_check_enabled]")
        Hearth::Validator.validate!(input[:health_check_interval_seconds], ::Integer, context: "#{context}[:health_check_interval_seconds]")
        Hearth::Validator.validate!(input[:health_check_timeout_seconds], ::Integer, context: "#{context}[:health_check_timeout_seconds]")
        Hearth::Validator.validate!(input[:healthy_threshold_count], ::Integer, context: "#{context}[:healthy_threshold_count]")
        Hearth::Validator.validate!(input[:unhealthy_threshold_count], ::Integer, context: "#{context}[:unhealthy_threshold_count]")
        Validators::Matcher.validate!(input[:matcher], context: "#{context}[:matcher]") unless input[:matcher].nil?
      end
    end

    class ModifyTargetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTargetGroupOutput, context: context)
        Validators::TargetGroups.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PathPatternConditionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathPatternConditionConfig, context: context)
        Validators::ListOfString.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PriorityInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PriorityInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryStringConditionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStringConditionConfig, context: context)
        Validators::QueryStringKeyValuePairList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class QueryStringKeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStringKeyValuePair, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class QueryStringKeyValuePairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryStringKeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RedirectActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedirectActionConfig, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::String, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class RegisterTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTargetsInput, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Validators::TargetDescriptions.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class RegisterTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTargetsOutput, context: context)
      end
    end

    class RemoveListenerCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveListenerCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Validators::CertificateList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
      end
    end

    class RemoveListenerCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveListenerCertificatesOutput, context: context)
      end
    end

    class RemoveTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsInput, context: context)
        Validators::ResourceArns.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsOutput, context: context)
      end
    end

    class ResourceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Hearth::Validator.validate!(input[:priority], ::String, context: "#{context}[:priority]")
        Validators::RuleConditionList.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
        Validators::Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
      end
    end

    class RuleArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RuleCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleCondition, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Validators::ListOfString.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Validators::HostHeaderConditionConfig.validate!(input[:host_header_config], context: "#{context}[:host_header_config]") unless input[:host_header_config].nil?
        Validators::PathPatternConditionConfig.validate!(input[:path_pattern_config], context: "#{context}[:path_pattern_config]") unless input[:path_pattern_config].nil?
        Validators::HttpHeaderConditionConfig.validate!(input[:http_header_config], context: "#{context}[:http_header_config]") unless input[:http_header_config].nil?
        Validators::QueryStringConditionConfig.validate!(input[:query_string_config], context: "#{context}[:query_string_config]") unless input[:query_string_config].nil?
        Validators::HttpRequestMethodConditionConfig.validate!(input[:http_request_method_config], context: "#{context}[:http_request_method_config]") unless input[:http_request_method_config].nil?
        Validators::SourceIpConditionConfig.validate!(input[:source_ip_config], context: "#{context}[:source_ip_config]") unless input[:source_ip_config].nil?
      end
    end

    class RuleConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RulePriorityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RulePriorityPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RulePriorityPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RulePriorityPair, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class Rules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SSLPolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSLPolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class SetIpAddressTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIpAddressTypeInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class SetIpAddressTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIpAddressTypeOutput, context: context)
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class SetRulePrioritiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetRulePrioritiesInput, context: context)
        Validators::RulePriorityList.validate!(input[:rule_priorities], context: "#{context}[:rule_priorities]") unless input[:rule_priorities].nil?
      end
    end

    class SetRulePrioritiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetRulePrioritiesOutput, context: context)
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class SetSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class SetSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSecurityGroupsOutput, context: context)
        Validators::SecurityGroups.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class SetSubnetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSubnetsInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Validators::Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::SubnetMappings.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class SetSubnetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSubnetsOutput, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class SourceIpConditionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceIpConditionConfig, context: context)
        Validators::ListOfString.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SslPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SslPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SslPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SslPolicy, context: context)
        Validators::SslProtocols.validate!(input[:ssl_protocols], context: "#{context}[:ssl_protocols]") unless input[:ssl_protocols].nil?
        Validators::Ciphers.validate!(input[:ciphers], context: "#{context}[:ciphers]") unless input[:ciphers].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ListOfString.validate!(input[:supported_load_balancer_types], context: "#{context}[:supported_load_balancer_types]") unless input[:supported_load_balancer_types].nil?
      end
    end

    class SslPolicyNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SslProtocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetMapping, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:private_i_pv4_address], ::String, context: "#{context}[:private_i_pv4_address]")
        Hearth::Validator.validate!(input[:i_pv6_address], ::String, context: "#{context}[:i_pv6_address]")
      end
    end

    class SubnetMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SubnetMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetDescription, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
      end
    end

    class TargetDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroup, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Hearth::Validator.validate!(input[:target_group_name], ::String, context: "#{context}[:target_group_name]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:health_check_protocol], ::String, context: "#{context}[:health_check_protocol]")
        Hearth::Validator.validate!(input[:health_check_port], ::String, context: "#{context}[:health_check_port]")
        Hearth::Validator.validate!(input[:health_check_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:health_check_enabled]")
        Hearth::Validator.validate!(input[:health_check_interval_seconds], ::Integer, context: "#{context}[:health_check_interval_seconds]")
        Hearth::Validator.validate!(input[:health_check_timeout_seconds], ::Integer, context: "#{context}[:health_check_timeout_seconds]")
        Hearth::Validator.validate!(input[:healthy_threshold_count], ::Integer, context: "#{context}[:healthy_threshold_count]")
        Hearth::Validator.validate!(input[:unhealthy_threshold_count], ::Integer, context: "#{context}[:unhealthy_threshold_count]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Validators::Matcher.validate!(input[:matcher], context: "#{context}[:matcher]") unless input[:matcher].nil?
        Validators::LoadBalancerArns.validate!(input[:load_balancer_arns], context: "#{context}[:load_balancer_arns]") unless input[:load_balancer_arns].nil?
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:protocol_version], ::String, context: "#{context}[:protocol_version]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class TargetGroupArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetGroupAssociationLimitException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupAssociationLimitException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetGroupAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TargetGroupAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetGroupAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetGroupTuple.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroupNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetGroupNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetGroupStickinessConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupStickinessConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class TargetGroupTuple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupTuple, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
      end
    end

    class TargetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetHealth, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class TargetHealthDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetHealthDescription, context: context)
        Validators::TargetDescription.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:health_check_port], ::String, context: "#{context}[:health_check_port]")
        Validators::TargetHealth.validate!(input[:target_health], context: "#{context}[:target_health]") unless input[:target_health].nil?
      end
    end

    class TargetHealthDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetHealthDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyActionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyActionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCertificatesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCertificatesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyListenersException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyListenersException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyLoadBalancersException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyLoadBalancersException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRegistrationsForTargetIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRegistrationsForTargetIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRulesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRulesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTargetGroupsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTargetGroupsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTargetsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTargetsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyUniqueTargetGroupsPerLoadBalancerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyUniqueTargetGroupsPerLoadBalancerException, context: context)
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
