# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ElasticLoadBalancingV2
  module Builders

    # Operation Builder for AddListenerCertificates
    class AddListenerCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddListenerCertificates'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        CertificateList.build(input[:certificates], params, context: context + 'Certificates' + '.member') unless input[:certificates].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for CertificateList
    class CertificateList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Certificate.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Certificate
    class Certificate
      def self.build(input, params, context: nil)
        params[context + 'CertificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        params[context + 'IsDefault'] = input[:is_default].to_s unless input[:is_default].nil?
      end
    end

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddTags'
        params['Version'] = '2015-12-01'
        ResourceArns.build(input[:resource_arns], params, context: context + 'ResourceArns' + '.member') unless input[:resource_arns].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for ResourceArns
    class ResourceArns
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateListener
    class CreateListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateListener'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'SslPolicy'] = input[:ssl_policy].to_s unless input[:ssl_policy].nil?
        CertificateList.build(input[:certificates], params, context: context + 'Certificates' + '.member') unless input[:certificates].nil?
        Actions.build(input[:default_actions], params, context: context + 'DefaultActions' + '.member') unless input[:default_actions].nil?
        AlpnPolicyName.build(input[:alpn_policy], params, context: context + 'AlpnPolicy' + '.member') unless input[:alpn_policy].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for AlpnPolicyName
    class AlpnPolicyName
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for Actions
    class Actions
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Action.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        AuthenticateOidcActionConfig.build(input[:authenticate_oidc_config], params, context: context + 'AuthenticateOidcConfig' + '.') unless input[:authenticate_oidc_config].nil?
        AuthenticateCognitoActionConfig.build(input[:authenticate_cognito_config], params, context: context + 'AuthenticateCognitoConfig' + '.') unless input[:authenticate_cognito_config].nil?
        params[context + 'Order'] = input[:order].to_s unless input[:order].nil?
        RedirectActionConfig.build(input[:redirect_config], params, context: context + 'RedirectConfig' + '.') unless input[:redirect_config].nil?
        FixedResponseActionConfig.build(input[:fixed_response_config], params, context: context + 'FixedResponseConfig' + '.') unless input[:fixed_response_config].nil?
        ForwardActionConfig.build(input[:forward_config], params, context: context + 'ForwardConfig' + '.') unless input[:forward_config].nil?
      end
    end

    # Structure Builder for ForwardActionConfig
    class ForwardActionConfig
      def self.build(input, params, context: nil)
        TargetGroupList.build(input[:target_groups], params, context: context + 'TargetGroups' + '.member') unless input[:target_groups].nil?
        TargetGroupStickinessConfig.build(input[:target_group_stickiness_config], params, context: context + 'TargetGroupStickinessConfig' + '.') unless input[:target_group_stickiness_config].nil?
      end
    end

    # Structure Builder for TargetGroupStickinessConfig
    class TargetGroupStickinessConfig
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
      end
    end

    # List Builder for TargetGroupList
    class TargetGroupList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          TargetGroupTuple.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TargetGroupTuple
    class TargetGroupTuple
      def self.build(input, params, context: nil)
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        params[context + 'Weight'] = input[:weight].to_s unless input[:weight].nil?
      end
    end

    # Structure Builder for FixedResponseActionConfig
    class FixedResponseActionConfig
      def self.build(input, params, context: nil)
        params[context + 'MessageBody'] = input[:message_body].to_s unless input[:message_body].nil?
        params[context + 'StatusCode'] = input[:status_code].to_s unless input[:status_code].nil?
        params[context + 'ContentType'] = input[:content_type].to_s unless input[:content_type].nil?
      end
    end

    # Structure Builder for RedirectActionConfig
    class RedirectActionConfig
      def self.build(input, params, context: nil)
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'Host'] = input[:host].to_s unless input[:host].nil?
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'Query'] = input[:query].to_s unless input[:query].nil?
        params[context + 'StatusCode'] = input[:status_code].to_s unless input[:status_code].nil?
      end
    end

    # Structure Builder for AuthenticateCognitoActionConfig
    class AuthenticateCognitoActionConfig
      def self.build(input, params, context: nil)
        params[context + 'UserPoolArn'] = input[:user_pool_arn].to_s unless input[:user_pool_arn].nil?
        params[context + 'UserPoolClientId'] = input[:user_pool_client_id].to_s unless input[:user_pool_client_id].nil?
        params[context + 'UserPoolDomain'] = input[:user_pool_domain].to_s unless input[:user_pool_domain].nil?
        params[context + 'SessionCookieName'] = input[:session_cookie_name].to_s unless input[:session_cookie_name].nil?
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
        params[context + 'SessionTimeout'] = input[:session_timeout].to_s unless input[:session_timeout].nil?
        AuthenticateCognitoActionAuthenticationRequestExtraParams.build(input[:authentication_request_extra_params], params, context: context + 'AuthenticationRequestExtraParams' + '.entry') unless input[:authentication_request_extra_params].nil?
        params[context + 'OnUnauthenticatedRequest'] = input[:on_unauthenticated_request].to_s unless input[:on_unauthenticated_request].nil?
      end
    end

    # Map Builder for AuthenticateCognitoActionAuthenticationRequestExtraParams
    class AuthenticateCognitoActionAuthenticationRequestExtraParams
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.key"] = key
          params[context + ".#{index+1}.value"] = value.to_s unless value.nil?
        end
      end
    end

    # Structure Builder for AuthenticateOidcActionConfig
    class AuthenticateOidcActionConfig
      def self.build(input, params, context: nil)
        params[context + 'Issuer'] = input[:issuer].to_s unless input[:issuer].nil?
        params[context + 'AuthorizationEndpoint'] = input[:authorization_endpoint].to_s unless input[:authorization_endpoint].nil?
        params[context + 'TokenEndpoint'] = input[:token_endpoint].to_s unless input[:token_endpoint].nil?
        params[context + 'UserInfoEndpoint'] = input[:user_info_endpoint].to_s unless input[:user_info_endpoint].nil?
        params[context + 'ClientId'] = input[:client_id].to_s unless input[:client_id].nil?
        params[context + 'ClientSecret'] = input[:client_secret].to_s unless input[:client_secret].nil?
        params[context + 'SessionCookieName'] = input[:session_cookie_name].to_s unless input[:session_cookie_name].nil?
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
        params[context + 'SessionTimeout'] = input[:session_timeout].to_s unless input[:session_timeout].nil?
        AuthenticateOidcActionAuthenticationRequestExtraParams.build(input[:authentication_request_extra_params], params, context: context + 'AuthenticationRequestExtraParams' + '.entry') unless input[:authentication_request_extra_params].nil?
        params[context + 'OnUnauthenticatedRequest'] = input[:on_unauthenticated_request].to_s unless input[:on_unauthenticated_request].nil?
        params[context + 'UseExistingClientSecret'] = input[:use_existing_client_secret].to_s unless input[:use_existing_client_secret].nil?
      end
    end

    # Map Builder for AuthenticateOidcActionAuthenticationRequestExtraParams
    class AuthenticateOidcActionAuthenticationRequestExtraParams
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.key"] = key
          params[context + ".#{index+1}.value"] = value.to_s unless value.nil?
        end
      end
    end

    # Operation Builder for CreateLoadBalancer
    class CreateLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLoadBalancer'
        params['Version'] = '2015-12-01'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Subnets.build(input[:subnets], params, context: context + 'Subnets' + '.member') unless input[:subnets].nil?
        SubnetMappings.build(input[:subnet_mappings], params, context: context + 'SubnetMappings' + '.member') unless input[:subnet_mappings].nil?
        SecurityGroups.build(input[:security_groups], params, context: context + 'SecurityGroups' + '.member') unless input[:security_groups].nil?
        params[context + 'Scheme'] = input[:scheme].to_s unless input[:scheme].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        params[context + 'CustomerOwnedIpv4Pool'] = input[:customer_owned_ipv4_pool].to_s unless input[:customer_owned_ipv4_pool].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for SecurityGroups
    class SecurityGroups
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for SubnetMappings
    class SubnetMappings
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SubnetMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SubnetMapping
    class SubnetMapping
      def self.build(input, params, context: nil)
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'PrivateIPv4Address'] = input[:private_i_pv4_address].to_s unless input[:private_i_pv4_address].nil?
        params[context + 'IPv6Address'] = input[:i_pv6_address].to_s unless input[:i_pv6_address].nil?
      end
    end

    # List Builder for Subnets
    class Subnets
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateRule
    class CreateRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateRule'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        RuleConditionList.build(input[:conditions], params, context: context + 'Conditions' + '.member') unless input[:conditions].nil?
        params[context + 'Priority'] = input[:priority].to_s unless input[:priority].nil?
        Actions.build(input[:actions], params, context: context + 'Actions' + '.member') unless input[:actions].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for RuleConditionList
    class RuleConditionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          RuleCondition.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RuleCondition
    class RuleCondition
      def self.build(input, params, context: nil)
        params[context + 'Field'] = input[:field].to_s unless input[:field].nil?
        ListOfString.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
        HostHeaderConditionConfig.build(input[:host_header_config], params, context: context + 'HostHeaderConfig' + '.') unless input[:host_header_config].nil?
        PathPatternConditionConfig.build(input[:path_pattern_config], params, context: context + 'PathPatternConfig' + '.') unless input[:path_pattern_config].nil?
        HttpHeaderConditionConfig.build(input[:http_header_config], params, context: context + 'HttpHeaderConfig' + '.') unless input[:http_header_config].nil?
        QueryStringConditionConfig.build(input[:query_string_config], params, context: context + 'QueryStringConfig' + '.') unless input[:query_string_config].nil?
        HttpRequestMethodConditionConfig.build(input[:http_request_method_config], params, context: context + 'HttpRequestMethodConfig' + '.') unless input[:http_request_method_config].nil?
        SourceIpConditionConfig.build(input[:source_ip_config], params, context: context + 'SourceIpConfig' + '.') unless input[:source_ip_config].nil?
      end
    end

    # Structure Builder for SourceIpConditionConfig
    class SourceIpConditionConfig
      def self.build(input, params, context: nil)
        ListOfString.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # List Builder for ListOfString
    class ListOfString
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for HttpRequestMethodConditionConfig
    class HttpRequestMethodConditionConfig
      def self.build(input, params, context: nil)
        ListOfString.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # Structure Builder for QueryStringConditionConfig
    class QueryStringConditionConfig
      def self.build(input, params, context: nil)
        QueryStringKeyValuePairList.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # List Builder for QueryStringKeyValuePairList
    class QueryStringKeyValuePairList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          QueryStringKeyValuePair.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for QueryStringKeyValuePair
    class QueryStringKeyValuePair
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for HttpHeaderConditionConfig
    class HttpHeaderConditionConfig
      def self.build(input, params, context: nil)
        params[context + 'HttpHeaderName'] = input[:http_header_name].to_s unless input[:http_header_name].nil?
        ListOfString.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # Structure Builder for PathPatternConditionConfig
    class PathPatternConditionConfig
      def self.build(input, params, context: nil)
        ListOfString.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # Structure Builder for HostHeaderConditionConfig
    class HostHeaderConditionConfig
      def self.build(input, params, context: nil)
        ListOfString.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # Operation Builder for CreateTargetGroup
    class CreateTargetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTargetGroup'
        params['Version'] = '2015-12-01'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'ProtocolVersion'] = input[:protocol_version].to_s unless input[:protocol_version].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'HealthCheckProtocol'] = input[:health_check_protocol].to_s unless input[:health_check_protocol].nil?
        params[context + 'HealthCheckPort'] = input[:health_check_port].to_s unless input[:health_check_port].nil?
        params[context + 'HealthCheckEnabled'] = input[:health_check_enabled].to_s unless input[:health_check_enabled].nil?
        params[context + 'HealthCheckPath'] = input[:health_check_path].to_s unless input[:health_check_path].nil?
        params[context + 'HealthCheckIntervalSeconds'] = input[:health_check_interval_seconds].to_s unless input[:health_check_interval_seconds].nil?
        params[context + 'HealthCheckTimeoutSeconds'] = input[:health_check_timeout_seconds].to_s unless input[:health_check_timeout_seconds].nil?
        params[context + 'HealthyThresholdCount'] = input[:healthy_threshold_count].to_s unless input[:healthy_threshold_count].nil?
        params[context + 'UnhealthyThresholdCount'] = input[:unhealthy_threshold_count].to_s unless input[:unhealthy_threshold_count].nil?
        Matcher.build(input[:matcher], params, context: context + 'Matcher' + '.') unless input[:matcher].nil?
        params[context + 'TargetType'] = input[:target_type].to_s unless input[:target_type].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for Matcher
    class Matcher
      def self.build(input, params, context: nil)
        params[context + 'HttpCode'] = input[:http_code].to_s unless input[:http_code].nil?
        params[context + 'GrpcCode'] = input[:grpc_code].to_s unless input[:grpc_code].nil?
      end
    end

    # Operation Builder for DeleteListener
    class DeleteListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteListener'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLoadBalancer'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteRule
    class DeleteRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteRule'
        params['Version'] = '2015-12-01'
        params[context + 'RuleArn'] = input[:rule_arn].to_s unless input[:rule_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTargetGroup
    class DeleteTargetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTargetGroup'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeregisterTargets
    class DeregisterTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterTargets'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        TargetDescriptions.build(input[:targets], params, context: context + 'Targets' + '.member') unless input[:targets].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TargetDescriptions
    class TargetDescriptions
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          TargetDescription.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TargetDescription
    class TargetDescription
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
      end
    end

    # Operation Builder for DescribeAccountLimits
    class DescribeAccountLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountLimits'
        params['Version'] = '2015-12-01'
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeListenerCertificates
    class DescribeListenerCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeListenerCertificates'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeListeners
    class DescribeListeners
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeListeners'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        ListenerArns.build(input[:listener_arns], params, context: context + 'ListenerArns' + '.member') unless input[:listener_arns].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for ListenerArns
    class ListenerArns
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLoadBalancerAttributes
    class DescribeLoadBalancerAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancerAttributes'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancers'
        params['Version'] = '2015-12-01'
        LoadBalancerArns.build(input[:load_balancer_arns], params, context: context + 'LoadBalancerArns' + '.member') unless input[:load_balancer_arns].nil?
        LoadBalancerNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for LoadBalancerNames
    class LoadBalancerNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for LoadBalancerArns
    class LoadBalancerArns
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeRules
    class DescribeRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeRules'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        RuleArns.build(input[:rule_arns], params, context: context + 'RuleArns' + '.member') unless input[:rule_arns].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for RuleArns
    class RuleArns
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSSLPolicies
    class DescribeSSLPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSSLPolicies'
        params['Version'] = '2015-12-01'
        SslPolicyNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params[context + 'LoadBalancerType'] = input[:load_balancer_type].to_s unless input[:load_balancer_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for SslPolicyNames
    class SslPolicyNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTags'
        params['Version'] = '2015-12-01'
        ResourceArns.build(input[:resource_arns], params, context: context + 'ResourceArns' + '.member') unless input[:resource_arns].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTargetGroupAttributes
    class DescribeTargetGroupAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTargetGroupAttributes'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTargetGroups
    class DescribeTargetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTargetGroups'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        TargetGroupArns.build(input[:target_group_arns], params, context: context + 'TargetGroupArns' + '.member') unless input[:target_group_arns].nil?
        TargetGroupNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TargetGroupNames
    class TargetGroupNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for TargetGroupArns
    class TargetGroupArns
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTargetHealth
    class DescribeTargetHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTargetHealth'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        TargetDescriptions.build(input[:targets], params, context: context + 'Targets' + '.member') unless input[:targets].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyListener
    class ModifyListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyListener'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'SslPolicy'] = input[:ssl_policy].to_s unless input[:ssl_policy].nil?
        CertificateList.build(input[:certificates], params, context: context + 'Certificates' + '.member') unless input[:certificates].nil?
        Actions.build(input[:default_actions], params, context: context + 'DefaultActions' + '.member') unless input[:default_actions].nil?
        AlpnPolicyName.build(input[:alpn_policy], params, context: context + 'AlpnPolicy' + '.member') unless input[:alpn_policy].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyLoadBalancerAttributes
    class ModifyLoadBalancerAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyLoadBalancerAttributes'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        LoadBalancerAttributes.build(input[:attributes], params, context: context + 'Attributes' + '.member') unless input[:attributes].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for LoadBalancerAttributes
    class LoadBalancerAttributes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LoadBalancerAttribute.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LoadBalancerAttribute
    class LoadBalancerAttribute
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for ModifyRule
    class ModifyRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyRule'
        params['Version'] = '2015-12-01'
        params[context + 'RuleArn'] = input[:rule_arn].to_s unless input[:rule_arn].nil?
        RuleConditionList.build(input[:conditions], params, context: context + 'Conditions' + '.member') unless input[:conditions].nil?
        Actions.build(input[:actions], params, context: context + 'Actions' + '.member') unless input[:actions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyTargetGroup
    class ModifyTargetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTargetGroup'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        params[context + 'HealthCheckProtocol'] = input[:health_check_protocol].to_s unless input[:health_check_protocol].nil?
        params[context + 'HealthCheckPort'] = input[:health_check_port].to_s unless input[:health_check_port].nil?
        params[context + 'HealthCheckPath'] = input[:health_check_path].to_s unless input[:health_check_path].nil?
        params[context + 'HealthCheckEnabled'] = input[:health_check_enabled].to_s unless input[:health_check_enabled].nil?
        params[context + 'HealthCheckIntervalSeconds'] = input[:health_check_interval_seconds].to_s unless input[:health_check_interval_seconds].nil?
        params[context + 'HealthCheckTimeoutSeconds'] = input[:health_check_timeout_seconds].to_s unless input[:health_check_timeout_seconds].nil?
        params[context + 'HealthyThresholdCount'] = input[:healthy_threshold_count].to_s unless input[:healthy_threshold_count].nil?
        params[context + 'UnhealthyThresholdCount'] = input[:unhealthy_threshold_count].to_s unless input[:unhealthy_threshold_count].nil?
        Matcher.build(input[:matcher], params, context: context + 'Matcher' + '.') unless input[:matcher].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyTargetGroupAttributes
    class ModifyTargetGroupAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTargetGroupAttributes'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        TargetGroupAttributes.build(input[:attributes], params, context: context + 'Attributes' + '.member') unless input[:attributes].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TargetGroupAttributes
    class TargetGroupAttributes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          TargetGroupAttribute.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TargetGroupAttribute
    class TargetGroupAttribute
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for RegisterTargets
    class RegisterTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterTargets'
        params['Version'] = '2015-12-01'
        params[context + 'TargetGroupArn'] = input[:target_group_arn].to_s unless input[:target_group_arn].nil?
        TargetDescriptions.build(input[:targets], params, context: context + 'Targets' + '.member') unless input[:targets].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveListenerCertificates
    class RemoveListenerCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveListenerCertificates'
        params['Version'] = '2015-12-01'
        params[context + 'ListenerArn'] = input[:listener_arn].to_s unless input[:listener_arn].nil?
        CertificateList.build(input[:certificates], params, context: context + 'Certificates' + '.member') unless input[:certificates].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveTags
    class RemoveTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveTags'
        params['Version'] = '2015-12-01'
        ResourceArns.build(input[:resource_arns], params, context: context + 'ResourceArns' + '.member') unless input[:resource_arns].nil?
        TagKeys.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for SetIpAddressType
    class SetIpAddressType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetIpAddressType'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetRulePriorities
    class SetRulePriorities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetRulePriorities'
        params['Version'] = '2015-12-01'
        RulePriorityList.build(input[:rule_priorities], params, context: context + 'RulePriorities' + '.member') unless input[:rule_priorities].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for RulePriorityList
    class RulePriorityList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          RulePriorityPair.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RulePriorityPair
    class RulePriorityPair
      def self.build(input, params, context: nil)
        params[context + 'RuleArn'] = input[:rule_arn].to_s unless input[:rule_arn].nil?
        params[context + 'Priority'] = input[:priority].to_s unless input[:priority].nil?
      end
    end

    # Operation Builder for SetSecurityGroups
    class SetSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetSecurityGroups'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        SecurityGroups.build(input[:security_groups], params, context: context + 'SecurityGroups' + '.member') unless input[:security_groups].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetSubnets
    class SetSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetSubnets'
        params['Version'] = '2015-12-01'
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        Subnets.build(input[:subnets], params, context: context + 'Subnets' + '.member') unless input[:subnets].nil?
        SubnetMappings.build(input[:subnet_mappings], params, context: context + 'SubnetMappings' + '.member') unless input[:subnet_mappings].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end
  end
end
