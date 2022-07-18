# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancingV2
  module Params

    module ALPNPolicyNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ALPNPolicyNotSupportedException, context: context)
        type = Types::ALPNPolicyNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.type = params[:type]
        type.target_group_arn = params[:target_group_arn]
        type.authenticate_oidc_config = AuthenticateOidcActionConfig.build(params[:authenticate_oidc_config], context: "#{context}[:authenticate_oidc_config]") unless params[:authenticate_oidc_config].nil?
        type.authenticate_cognito_config = AuthenticateCognitoActionConfig.build(params[:authenticate_cognito_config], context: "#{context}[:authenticate_cognito_config]") unless params[:authenticate_cognito_config].nil?
        type.order = params[:order]
        type.redirect_config = RedirectActionConfig.build(params[:redirect_config], context: "#{context}[:redirect_config]") unless params[:redirect_config].nil?
        type.fixed_response_config = FixedResponseActionConfig.build(params[:fixed_response_config], context: "#{context}[:fixed_response_config]") unless params[:fixed_response_config].nil?
        type.forward_config = ForwardActionConfig.build(params[:forward_config], context: "#{context}[:forward_config]") unless params[:forward_config].nil?
        type
      end
    end

    module Actions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddListenerCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddListenerCertificatesInput, context: context)
        type = Types::AddListenerCertificatesInput.new
        type.listener_arn = params[:listener_arn]
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type
      end
    end

    module AddListenerCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddListenerCertificatesOutput, context: context)
        type = Types::AddListenerCertificatesOutput.new
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type
      end
    end

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.resource_arns = ResourceArns.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
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

    module AllocationIdNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocationIdNotFoundException, context: context)
        type = Types::AllocationIdNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AlpnPolicyName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuthenticateCognitoActionAuthenticationRequestExtraParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AuthenticateCognitoActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticateCognitoActionConfig, context: context)
        type = Types::AuthenticateCognitoActionConfig.new
        type.user_pool_arn = params[:user_pool_arn]
        type.user_pool_client_id = params[:user_pool_client_id]
        type.user_pool_domain = params[:user_pool_domain]
        type.session_cookie_name = params[:session_cookie_name]
        type.scope = params[:scope]
        type.session_timeout = params[:session_timeout]
        type.authentication_request_extra_params = AuthenticateCognitoActionAuthenticationRequestExtraParams.build(params[:authentication_request_extra_params], context: "#{context}[:authentication_request_extra_params]") unless params[:authentication_request_extra_params].nil?
        type.on_unauthenticated_request = params[:on_unauthenticated_request]
        type
      end
    end

    module AuthenticateOidcActionAuthenticationRequestExtraParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AuthenticateOidcActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticateOidcActionConfig, context: context)
        type = Types::AuthenticateOidcActionConfig.new
        type.issuer = params[:issuer]
        type.authorization_endpoint = params[:authorization_endpoint]
        type.token_endpoint = params[:token_endpoint]
        type.user_info_endpoint = params[:user_info_endpoint]
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.session_cookie_name = params[:session_cookie_name]
        type.scope = params[:scope]
        type.session_timeout = params[:session_timeout]
        type.authentication_request_extra_params = AuthenticateOidcActionAuthenticationRequestExtraParams.build(params[:authentication_request_extra_params], context: "#{context}[:authentication_request_extra_params]") unless params[:authentication_request_extra_params].nil?
        type.on_unauthenticated_request = params[:on_unauthenticated_request]
        type.use_existing_client_secret = params[:use_existing_client_secret]
        type
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.zone_name = params[:zone_name]
        type.subnet_id = params[:subnet_id]
        type.outpost_id = params[:outpost_id]
        type.load_balancer_addresses = LoadBalancerAddresses.build(params[:load_balancer_addresses], context: "#{context}[:load_balancer_addresses]") unless params[:load_balancer_addresses].nil?
        type
      end
    end

    module AvailabilityZoneNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZoneNotSupportedException, context: context)
        type = Types::AvailabilityZoneNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.certificate_arn = params[:certificate_arn]
        type.is_default = params[:is_default]
        type
      end
    end

    module CertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Certificate.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module Cipher
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cipher, context: context)
        type = Types::Cipher.new
        type.name = params[:name]
        type.priority = params[:priority]
        type
      end
    end

    module Ciphers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cipher.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateListenerInput, context: context)
        type = Types::CreateListenerInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.protocol = params[:protocol]
        type.port = params[:port]
        type.ssl_policy = params[:ssl_policy]
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.default_actions = Actions.build(params[:default_actions], context: "#{context}[:default_actions]") unless params[:default_actions].nil?
        type.alpn_policy = AlpnPolicyName.build(params[:alpn_policy], context: "#{context}[:alpn_policy]") unless params[:alpn_policy].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateListenerOutput, context: context)
        type = Types::CreateListenerOutput.new
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type
      end
    end

    module CreateLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerInput, context: context)
        type = Types::CreateLoadBalancerInput.new
        type.name = params[:name]
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.scheme = params[:scheme]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.ip_address_type = params[:ip_address_type]
        type.customer_owned_ipv4_pool = params[:customer_owned_ipv4_pool]
        type
      end
    end

    module CreateLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerOutput, context: context)
        type = Types::CreateLoadBalancerOutput.new
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type
      end
    end

    module CreateRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleInput, context: context)
        type = Types::CreateRuleInput.new
        type.listener_arn = params[:listener_arn]
        type.conditions = RuleConditionList.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type.priority = params[:priority]
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleOutput, context: context)
        type = Types::CreateRuleOutput.new
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module CreateTargetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTargetGroupInput, context: context)
        type = Types::CreateTargetGroupInput.new
        type.name = params[:name]
        type.protocol = params[:protocol]
        type.protocol_version = params[:protocol_version]
        type.port = params[:port]
        type.vpc_id = params[:vpc_id]
        type.health_check_protocol = params[:health_check_protocol]
        type.health_check_port = params[:health_check_port]
        type.health_check_enabled = params[:health_check_enabled]
        type.health_check_path = params[:health_check_path]
        type.health_check_interval_seconds = params[:health_check_interval_seconds]
        type.health_check_timeout_seconds = params[:health_check_timeout_seconds]
        type.healthy_threshold_count = params[:healthy_threshold_count]
        type.unhealthy_threshold_count = params[:unhealthy_threshold_count]
        type.matcher = Matcher.build(params[:matcher], context: "#{context}[:matcher]") unless params[:matcher].nil?
        type.target_type = params[:target_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module CreateTargetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTargetGroupOutput, context: context)
        type = Types::CreateTargetGroupOutput.new
        type.target_groups = TargetGroups.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
        type
      end
    end

    module DeleteListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteListenerInput, context: context)
        type = Types::DeleteListenerInput.new
        type.listener_arn = params[:listener_arn]
        type
      end
    end

    module DeleteListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteListenerOutput, context: context)
        type = Types::DeleteListenerOutput.new
        type
      end
    end

    module DeleteLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerInput, context: context)
        type = Types::DeleteLoadBalancerInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
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

    module DeleteRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleInput, context: context)
        type = Types::DeleteRuleInput.new
        type.rule_arn = params[:rule_arn]
        type
      end
    end

    module DeleteRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleOutput, context: context)
        type = Types::DeleteRuleOutput.new
        type
      end
    end

    module DeleteTargetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTargetGroupInput, context: context)
        type = Types::DeleteTargetGroupInput.new
        type.target_group_arn = params[:target_group_arn]
        type
      end
    end

    module DeleteTargetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTargetGroupOutput, context: context)
        type = Types::DeleteTargetGroupOutput.new
        type
      end
    end

    module DeregisterTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTargetsInput, context: context)
        type = Types::DeregisterTargetsInput.new
        type.target_group_arn = params[:target_group_arn]
        type.targets = TargetDescriptions.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module DeregisterTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTargetsOutput, context: context)
        type = Types::DeregisterTargetsOutput.new
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

    module DescribeListenerCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeListenerCertificatesInput, context: context)
        type = Types::DescribeListenerCertificatesInput.new
        type.listener_arn = params[:listener_arn]
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeListenerCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeListenerCertificatesOutput, context: context)
        type = Types::DescribeListenerCertificatesOutput.new
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeListenersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeListenersInput, context: context)
        type = Types::DescribeListenersInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.listener_arns = ListenerArns.build(params[:listener_arns], context: "#{context}[:listener_arns]") unless params[:listener_arns].nil?
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeListenersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeListenersOutput, context: context)
        type = Types::DescribeListenersOutput.new
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeLoadBalancerAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerAttributesInput, context: context)
        type = Types::DescribeLoadBalancerAttributesInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type
      end
    end

    module DescribeLoadBalancerAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerAttributesOutput, context: context)
        type = Types::DescribeLoadBalancerAttributesOutput.new
        type.attributes = LoadBalancerAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DescribeLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancersInput, context: context)
        type = Types::DescribeLoadBalancersInput.new
        type.load_balancer_arns = LoadBalancerArns.build(params[:load_balancer_arns], context: "#{context}[:load_balancer_arns]") unless params[:load_balancer_arns].nil?
        type.names = LoadBalancerNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancersOutput, context: context)
        type = Types::DescribeLoadBalancersOutput.new
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRulesInput, context: context)
        type = Types::DescribeRulesInput.new
        type.listener_arn = params[:listener_arn]
        type.rule_arns = RuleArns.build(params[:rule_arns], context: "#{context}[:rule_arns]") unless params[:rule_arns].nil?
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRulesOutput, context: context)
        type = Types::DescribeRulesOutput.new
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeSSLPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSSLPoliciesInput, context: context)
        type = Types::DescribeSSLPoliciesInput.new
        type.names = SslPolicyNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type.load_balancer_type = params[:load_balancer_type]
        type
      end
    end

    module DescribeSSLPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSSLPoliciesOutput, context: context)
        type = Types::DescribeSSLPoliciesOutput.new
        type.ssl_policies = SslPolicies.build(params[:ssl_policies], context: "#{context}[:ssl_policies]") unless params[:ssl_policies].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.resource_arns = ResourceArns.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
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

    module DescribeTargetGroupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetGroupAttributesInput, context: context)
        type = Types::DescribeTargetGroupAttributesInput.new
        type.target_group_arn = params[:target_group_arn]
        type
      end
    end

    module DescribeTargetGroupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetGroupAttributesOutput, context: context)
        type = Types::DescribeTargetGroupAttributesOutput.new
        type.attributes = TargetGroupAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DescribeTargetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetGroupsInput, context: context)
        type = Types::DescribeTargetGroupsInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.target_group_arns = TargetGroupArns.build(params[:target_group_arns], context: "#{context}[:target_group_arns]") unless params[:target_group_arns].nil?
        type.names = TargetGroupNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.marker = params[:marker]
        type.page_size = params[:page_size]
        type
      end
    end

    module DescribeTargetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetGroupsOutput, context: context)
        type = Types::DescribeTargetGroupsOutput.new
        type.target_groups = TargetGroups.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeTargetHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetHealthInput, context: context)
        type = Types::DescribeTargetHealthInput.new
        type.target_group_arn = params[:target_group_arn]
        type.targets = TargetDescriptions.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module DescribeTargetHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetHealthOutput, context: context)
        type = Types::DescribeTargetHealthOutput.new
        type.target_health_descriptions = TargetHealthDescriptions.build(params[:target_health_descriptions], context: "#{context}[:target_health_descriptions]") unless params[:target_health_descriptions].nil?
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

    module DuplicateLoadBalancerNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateLoadBalancerNameException, context: context)
        type = Types::DuplicateLoadBalancerNameException.new
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

    module DuplicateTargetGroupNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateTargetGroupNameException, context: context)
        type = Types::DuplicateTargetGroupNameException.new
        type.message = params[:message]
        type
      end
    end

    module FixedResponseActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FixedResponseActionConfig, context: context)
        type = Types::FixedResponseActionConfig.new
        type.message_body = params[:message_body]
        type.status_code = params[:status_code]
        type.content_type = params[:content_type]
        type
      end
    end

    module ForwardActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForwardActionConfig, context: context)
        type = Types::ForwardActionConfig.new
        type.target_groups = TargetGroupList.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
        type.target_group_stickiness_config = TargetGroupStickinessConfig.build(params[:target_group_stickiness_config], context: "#{context}[:target_group_stickiness_config]") unless params[:target_group_stickiness_config].nil?
        type
      end
    end

    module HealthUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthUnavailableException, context: context)
        type = Types::HealthUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module HostHeaderConditionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostHeaderConditionConfig, context: context)
        type = Types::HostHeaderConditionConfig.new
        type.values = ListOfString.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module HttpHeaderConditionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpHeaderConditionConfig, context: context)
        type = Types::HttpHeaderConditionConfig.new
        type.http_header_name = params[:http_header_name]
        type.values = ListOfString.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module HttpRequestMethodConditionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpRequestMethodConditionConfig, context: context)
        type = Types::HttpRequestMethodConditionConfig.new
        type.values = ListOfString.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module IncompatibleProtocolsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleProtocolsException, context: context)
        type = Types::IncompatibleProtocolsException.new
        type.message = params[:message]
        type
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

    module InvalidLoadBalancerActionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLoadBalancerActionException, context: context)
        type = Types::InvalidLoadBalancerActionException.new
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

    module InvalidTargetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetException, context: context)
        type = Types::InvalidTargetException.new
        type.message = params[:message]
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

    module ListOfString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Listener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Listener, context: context)
        type = Types::Listener.new
        type.listener_arn = params[:listener_arn]
        type.load_balancer_arn = params[:load_balancer_arn]
        type.port = params[:port]
        type.protocol = params[:protocol]
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.ssl_policy = params[:ssl_policy]
        type.default_actions = Actions.build(params[:default_actions], context: "#{context}[:default_actions]") unless params[:default_actions].nil?
        type.alpn_policy = AlpnPolicyName.build(params[:alpn_policy], context: "#{context}[:alpn_policy]") unless params[:alpn_policy].nil?
        type
      end
    end

    module ListenerArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module LoadBalancer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancer, context: context)
        type = Types::LoadBalancer.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.dns_name = params[:dns_name]
        type.canonical_hosted_zone_id = params[:canonical_hosted_zone_id]
        type.created_time = params[:created_time]
        type.load_balancer_name = params[:load_balancer_name]
        type.scheme = params[:scheme]
        type.vpc_id = params[:vpc_id]
        type.state = LoadBalancerState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.type = params[:type]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.ip_address_type = params[:ip_address_type]
        type.customer_owned_ipv4_pool = params[:customer_owned_ipv4_pool]
        type
      end
    end

    module LoadBalancerAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerAddress, context: context)
        type = Types::LoadBalancerAddress.new
        type.ip_address = params[:ip_address]
        type.allocation_id = params[:allocation_id]
        type.private_i_pv4_address = params[:private_i_pv4_address]
        type.i_pv6_address = params[:i_pv6_address]
        type
      end
    end

    module LoadBalancerAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerAddress.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoadBalancerAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerAttribute, context: context)
        type = Types::LoadBalancerAttribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module LoadBalancerAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module LoadBalancerNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerNotFoundException, context: context)
        type = Types::LoadBalancerNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module LoadBalancerState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerState, context: context)
        type = Types::LoadBalancerState.new
        type.code = params[:code]
        type.reason = params[:reason]
        type
      end
    end

    module LoadBalancers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Matcher
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Matcher, context: context)
        type = Types::Matcher.new
        type.http_code = params[:http_code]
        type.grpc_code = params[:grpc_code]
        type
      end
    end

    module ModifyListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyListenerInput, context: context)
        type = Types::ModifyListenerInput.new
        type.listener_arn = params[:listener_arn]
        type.port = params[:port]
        type.protocol = params[:protocol]
        type.ssl_policy = params[:ssl_policy]
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.default_actions = Actions.build(params[:default_actions], context: "#{context}[:default_actions]") unless params[:default_actions].nil?
        type.alpn_policy = AlpnPolicyName.build(params[:alpn_policy], context: "#{context}[:alpn_policy]") unless params[:alpn_policy].nil?
        type
      end
    end

    module ModifyListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyListenerOutput, context: context)
        type = Types::ModifyListenerOutput.new
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type
      end
    end

    module ModifyLoadBalancerAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLoadBalancerAttributesInput, context: context)
        type = Types::ModifyLoadBalancerAttributesInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.attributes = LoadBalancerAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ModifyLoadBalancerAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLoadBalancerAttributesOutput, context: context)
        type = Types::ModifyLoadBalancerAttributesOutput.new
        type.attributes = LoadBalancerAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ModifyRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyRuleInput, context: context)
        type = Types::ModifyRuleInput.new
        type.rule_arn = params[:rule_arn]
        type.conditions = RuleConditionList.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module ModifyRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyRuleOutput, context: context)
        type = Types::ModifyRuleOutput.new
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ModifyTargetGroupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTargetGroupAttributesInput, context: context)
        type = Types::ModifyTargetGroupAttributesInput.new
        type.target_group_arn = params[:target_group_arn]
        type.attributes = TargetGroupAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ModifyTargetGroupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTargetGroupAttributesOutput, context: context)
        type = Types::ModifyTargetGroupAttributesOutput.new
        type.attributes = TargetGroupAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ModifyTargetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTargetGroupInput, context: context)
        type = Types::ModifyTargetGroupInput.new
        type.target_group_arn = params[:target_group_arn]
        type.health_check_protocol = params[:health_check_protocol]
        type.health_check_port = params[:health_check_port]
        type.health_check_path = params[:health_check_path]
        type.health_check_enabled = params[:health_check_enabled]
        type.health_check_interval_seconds = params[:health_check_interval_seconds]
        type.health_check_timeout_seconds = params[:health_check_timeout_seconds]
        type.healthy_threshold_count = params[:healthy_threshold_count]
        type.unhealthy_threshold_count = params[:unhealthy_threshold_count]
        type.matcher = Matcher.build(params[:matcher], context: "#{context}[:matcher]") unless params[:matcher].nil?
        type
      end
    end

    module ModifyTargetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTargetGroupOutput, context: context)
        type = Types::ModifyTargetGroupOutput.new
        type.target_groups = TargetGroups.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
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

    module PathPatternConditionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathPatternConditionConfig, context: context)
        type = Types::PathPatternConditionConfig.new
        type.values = ListOfString.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PriorityInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PriorityInUseException, context: context)
        type = Types::PriorityInUseException.new
        type.message = params[:message]
        type
      end
    end

    module QueryStringConditionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStringConditionConfig, context: context)
        type = Types::QueryStringConditionConfig.new
        type.values = QueryStringKeyValuePairList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module QueryStringKeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStringKeyValuePair, context: context)
        type = Types::QueryStringKeyValuePair.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module QueryStringKeyValuePairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryStringKeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RedirectActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedirectActionConfig, context: context)
        type = Types::RedirectActionConfig.new
        type.protocol = params[:protocol]
        type.port = params[:port]
        type.host = params[:host]
        type.path = params[:path]
        type.query = params[:query]
        type.status_code = params[:status_code]
        type
      end
    end

    module RegisterTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTargetsInput, context: context)
        type = Types::RegisterTargetsInput.new
        type.target_group_arn = params[:target_group_arn]
        type.targets = TargetDescriptions.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module RegisterTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTargetsOutput, context: context)
        type = Types::RegisterTargetsOutput.new
        type
      end
    end

    module RemoveListenerCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveListenerCertificatesInput, context: context)
        type = Types::RemoveListenerCertificatesInput.new
        type.listener_arn = params[:listener_arn]
        type.certificates = CertificateList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type
      end
    end

    module RemoveListenerCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveListenerCertificatesOutput, context: context)
        type = Types::RemoveListenerCertificatesOutput.new
        type
      end
    end

    module RemoveTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsInput, context: context)
        type = Types::RemoveTagsInput.new
        type.resource_arns = ResourceArns.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module ResourceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.rule_arn = params[:rule_arn]
        type.priority = params[:priority]
        type.conditions = RuleConditionList.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.is_default = params[:is_default]
        type
      end
    end

    module RuleArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RuleCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleCondition, context: context)
        type = Types::RuleCondition.new
        type.field = params[:field]
        type.values = ListOfString.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.host_header_config = HostHeaderConditionConfig.build(params[:host_header_config], context: "#{context}[:host_header_config]") unless params[:host_header_config].nil?
        type.path_pattern_config = PathPatternConditionConfig.build(params[:path_pattern_config], context: "#{context}[:path_pattern_config]") unless params[:path_pattern_config].nil?
        type.http_header_config = HttpHeaderConditionConfig.build(params[:http_header_config], context: "#{context}[:http_header_config]") unless params[:http_header_config].nil?
        type.query_string_config = QueryStringConditionConfig.build(params[:query_string_config], context: "#{context}[:query_string_config]") unless params[:query_string_config].nil?
        type.http_request_method_config = HttpRequestMethodConditionConfig.build(params[:http_request_method_config], context: "#{context}[:http_request_method_config]") unless params[:http_request_method_config].nil?
        type.source_ip_config = SourceIpConditionConfig.build(params[:source_ip_config], context: "#{context}[:source_ip_config]") unless params[:source_ip_config].nil?
        type
      end
    end

    module RuleConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleNotFoundException, context: context)
        type = Types::RuleNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RulePriorityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RulePriorityPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RulePriorityPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RulePriorityPair, context: context)
        type = Types::RulePriorityPair.new
        type.rule_arn = params[:rule_arn]
        type.priority = params[:priority]
        type
      end
    end

    module Rules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SSLPolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSLPolicyNotFoundException, context: context)
        type = Types::SSLPolicyNotFoundException.new
        type.message = params[:message]
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

    module SetIpAddressTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIpAddressTypeInput, context: context)
        type = Types::SetIpAddressTypeInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module SetIpAddressTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIpAddressTypeOutput, context: context)
        type = Types::SetIpAddressTypeOutput.new
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module SetRulePrioritiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetRulePrioritiesInput, context: context)
        type = Types::SetRulePrioritiesInput.new
        type.rule_priorities = RulePriorityList.build(params[:rule_priorities], context: "#{context}[:rule_priorities]") unless params[:rule_priorities].nil?
        type
      end
    end

    module SetRulePrioritiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetRulePrioritiesOutput, context: context)
        type = Types::SetRulePrioritiesOutput.new
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module SetSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSecurityGroupsInput, context: context)
        type = Types::SetSecurityGroupsInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module SetSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSecurityGroupsOutput, context: context)
        type = Types::SetSecurityGroupsOutput.new
        type.security_group_ids = SecurityGroups.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module SetSubnetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSubnetsInput, context: context)
        type = Types::SetSubnetsInput.new
        type.load_balancer_arn = params[:load_balancer_arn]
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.subnet_mappings = SubnetMappings.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module SetSubnetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSubnetsOutput, context: context)
        type = Types::SetSubnetsOutput.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module SourceIpConditionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceIpConditionConfig, context: context)
        type = Types::SourceIpConditionConfig.new
        type.values = ListOfString.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SslPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SslPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SslPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SslPolicy, context: context)
        type = Types::SslPolicy.new
        type.ssl_protocols = SslProtocols.build(params[:ssl_protocols], context: "#{context}[:ssl_protocols]") unless params[:ssl_protocols].nil?
        type.ciphers = Ciphers.build(params[:ciphers], context: "#{context}[:ciphers]") unless params[:ciphers].nil?
        type.name = params[:name]
        type.supported_load_balancer_types = ListOfString.build(params[:supported_load_balancer_types], context: "#{context}[:supported_load_balancer_types]") unless params[:supported_load_balancer_types].nil?
        type
      end
    end

    module SslPolicyNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SslProtocols
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetMapping, context: context)
        type = Types::SubnetMapping.new
        type.subnet_id = params[:subnet_id]
        type.allocation_id = params[:allocation_id]
        type.private_i_pv4_address = params[:private_i_pv4_address]
        type.i_pv6_address = params[:i_pv6_address]
        type
      end
    end

    module SubnetMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubnetMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.resource_arn = params[:resource_arn]
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

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TargetDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetDescription, context: context)
        type = Types::TargetDescription.new
        type.id = params[:id]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type
      end
    end

    module TargetDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroup, context: context)
        type = Types::TargetGroup.new
        type.target_group_arn = params[:target_group_arn]
        type.target_group_name = params[:target_group_name]
        type.protocol = params[:protocol]
        type.port = params[:port]
        type.vpc_id = params[:vpc_id]
        type.health_check_protocol = params[:health_check_protocol]
        type.health_check_port = params[:health_check_port]
        type.health_check_enabled = params[:health_check_enabled]
        type.health_check_interval_seconds = params[:health_check_interval_seconds]
        type.health_check_timeout_seconds = params[:health_check_timeout_seconds]
        type.healthy_threshold_count = params[:healthy_threshold_count]
        type.unhealthy_threshold_count = params[:unhealthy_threshold_count]
        type.health_check_path = params[:health_check_path]
        type.matcher = Matcher.build(params[:matcher], context: "#{context}[:matcher]") unless params[:matcher].nil?
        type.load_balancer_arns = LoadBalancerArns.build(params[:load_balancer_arns], context: "#{context}[:load_balancer_arns]") unless params[:load_balancer_arns].nil?
        type.target_type = params[:target_type]
        type.protocol_version = params[:protocol_version]
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module TargetGroupArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetGroupAssociationLimitException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupAssociationLimitException, context: context)
        type = Types::TargetGroupAssociationLimitException.new
        type.message = params[:message]
        type
      end
    end

    module TargetGroupAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupAttribute, context: context)
        type = Types::TargetGroupAttribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TargetGroupAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGroupAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGroupTuple.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroupNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetGroupNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupNotFoundException, context: context)
        type = Types::TargetGroupNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TargetGroupStickinessConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupStickinessConfig, context: context)
        type = Types::TargetGroupStickinessConfig.new
        type.enabled = params[:enabled]
        type.duration_seconds = params[:duration_seconds]
        type
      end
    end

    module TargetGroupTuple
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupTuple, context: context)
        type = Types::TargetGroupTuple.new
        type.target_group_arn = params[:target_group_arn]
        type.weight = params[:weight]
        type
      end
    end

    module TargetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetHealth, context: context)
        type = Types::TargetHealth.new
        type.state = params[:state]
        type.reason = params[:reason]
        type.description = params[:description]
        type
      end
    end

    module TargetHealthDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetHealthDescription, context: context)
        type = Types::TargetHealthDescription.new
        type.target = TargetDescription.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.health_check_port = params[:health_check_port]
        type.target_health = TargetHealth.build(params[:target_health], context: "#{context}[:target_health]") unless params[:target_health].nil?
        type
      end
    end

    module TargetHealthDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetHealthDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyActionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyActionsException, context: context)
        type = Types::TooManyActionsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyCertificatesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyCertificatesException, context: context)
        type = Types::TooManyCertificatesException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyListenersException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyListenersException, context: context)
        type = Types::TooManyListenersException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyLoadBalancersException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyLoadBalancersException, context: context)
        type = Types::TooManyLoadBalancersException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRegistrationsForTargetIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRegistrationsForTargetIdException, context: context)
        type = Types::TooManyRegistrationsForTargetIdException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRulesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRulesException, context: context)
        type = Types::TooManyRulesException.new
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

    module TooManyTargetGroupsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTargetGroupsException, context: context)
        type = Types::TooManyTargetGroupsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTargetsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTargetsException, context: context)
        type = Types::TooManyTargetsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyUniqueTargetGroupsPerLoadBalancerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyUniqueTargetGroupsPerLoadBalancerException, context: context)
        type = Types::TooManyUniqueTargetGroupsPerLoadBalancerException.new
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
