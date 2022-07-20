# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ElasticLoadBalancingV2
  module Stubs

    # Operation Stubber for AddListenerCertificates
    class AddListenerCertificates
      def self.default(visited=[])
        {
          certificates: CertificateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddListenerCertificatesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('AddListenerCertificatesResult')
        xml << Hearth::XML::Node.new('Certificates', CertificateList.stub('member', stub[:certificates])) unless stub[:certificates].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CertificateList
    class CertificateList
      def self.default(visited=[])
        return nil if visited.include?('CertificateList')
        visited = visited + ['CertificateList']
        [
          Certificate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Certificate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          certificate_arn: 'certificate_arn',
          is_default: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Certificate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CertificateArn', stub[:certificate_arn].to_s) unless stub[:certificate_arn].nil?
        xml << Hearth::XML::Node.new('IsDefault', stub[:is_default].to_s) unless stub[:is_default].nil?
        xml
      end
    end

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddTagsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('AddTagsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateListener
    class CreateListener
      def self.default(visited=[])
        {
          listeners: Listeners.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateListenerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('CreateListenerResult')
        xml << Hearth::XML::Node.new('Listeners', Listeners.stub('member', stub[:listeners])) unless stub[:listeners].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Listeners
    class Listeners
      def self.default(visited=[])
        return nil if visited.include?('Listeners')
        visited = visited + ['Listeners']
        [
          Listener.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Listener.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Listener
    class Listener
      def self.default(visited=[])
        return nil if visited.include?('Listener')
        visited = visited + ['Listener']
        {
          listener_arn: 'listener_arn',
          load_balancer_arn: 'load_balancer_arn',
          port: 1,
          protocol: 'protocol',
          certificates: CertificateList.default(visited),
          ssl_policy: 'ssl_policy',
          default_actions: Actions.default(visited),
          alpn_policy: AlpnPolicyName.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Listener.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ListenerArn', stub[:listener_arn].to_s) unless stub[:listener_arn].nil?
        xml << Hearth::XML::Node.new('LoadBalancerArn', stub[:load_balancer_arn].to_s) unless stub[:load_balancer_arn].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('Certificates', CertificateList.stub('member', stub[:certificates])) unless stub[:certificates].nil?
        xml << Hearth::XML::Node.new('SslPolicy', stub[:ssl_policy].to_s) unless stub[:ssl_policy].nil?
        xml << Hearth::XML::Node.new('DefaultActions', Actions.stub('member', stub[:default_actions])) unless stub[:default_actions].nil?
        xml << Hearth::XML::Node.new('AlpnPolicy', AlpnPolicyName.stub('member', stub[:alpn_policy])) unless stub[:alpn_policy].nil?
        xml
      end
    end

    # List Stubber for AlpnPolicyName
    class AlpnPolicyName
      def self.default(visited=[])
        return nil if visited.include?('AlpnPolicyName')
        visited = visited + ['AlpnPolicyName']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for Actions
    class Actions
      def self.default(visited=[])
        return nil if visited.include?('Actions')
        visited = visited + ['Actions']
        [
          Action.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Action.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          type: 'type',
          target_group_arn: 'target_group_arn',
          authenticate_oidc_config: AuthenticateOidcActionConfig.default(visited),
          authenticate_cognito_config: AuthenticateCognitoActionConfig.default(visited),
          order: 1,
          redirect_config: RedirectActionConfig.default(visited),
          fixed_response_config: FixedResponseActionConfig.default(visited),
          forward_config: ForwardActionConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Action.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('TargetGroupArn', stub[:target_group_arn].to_s) unless stub[:target_group_arn].nil?
        xml << AuthenticateOidcActionConfig.stub('AuthenticateOidcConfig', stub[:authenticate_oidc_config]) unless stub[:authenticate_oidc_config].nil?
        xml << AuthenticateCognitoActionConfig.stub('AuthenticateCognitoConfig', stub[:authenticate_cognito_config]) unless stub[:authenticate_cognito_config].nil?
        xml << Hearth::XML::Node.new('Order', stub[:order].to_s) unless stub[:order].nil?
        xml << RedirectActionConfig.stub('RedirectConfig', stub[:redirect_config]) unless stub[:redirect_config].nil?
        xml << FixedResponseActionConfig.stub('FixedResponseConfig', stub[:fixed_response_config]) unless stub[:fixed_response_config].nil?
        xml << ForwardActionConfig.stub('ForwardConfig', stub[:forward_config]) unless stub[:forward_config].nil?
        xml
      end
    end

    # Structure Stubber for ForwardActionConfig
    class ForwardActionConfig
      def self.default(visited=[])
        return nil if visited.include?('ForwardActionConfig')
        visited = visited + ['ForwardActionConfig']
        {
          target_groups: TargetGroupList.default(visited),
          target_group_stickiness_config: TargetGroupStickinessConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ForwardActionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetGroups', TargetGroupList.stub('member', stub[:target_groups])) unless stub[:target_groups].nil?
        xml << TargetGroupStickinessConfig.stub('TargetGroupStickinessConfig', stub[:target_group_stickiness_config]) unless stub[:target_group_stickiness_config].nil?
        xml
      end
    end

    # Structure Stubber for TargetGroupStickinessConfig
    class TargetGroupStickinessConfig
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupStickinessConfig')
        visited = visited + ['TargetGroupStickinessConfig']
        {
          enabled: false,
          duration_seconds: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetGroupStickinessConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('DurationSeconds', stub[:duration_seconds].to_s) unless stub[:duration_seconds].nil?
        xml
      end
    end

    # List Stubber for TargetGroupList
    class TargetGroupList
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupList')
        visited = visited + ['TargetGroupList']
        [
          TargetGroupTuple.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TargetGroupTuple.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TargetGroupTuple
    class TargetGroupTuple
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupTuple')
        visited = visited + ['TargetGroupTuple']
        {
          target_group_arn: 'target_group_arn',
          weight: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetGroupTuple.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetGroupArn', stub[:target_group_arn].to_s) unless stub[:target_group_arn].nil?
        xml << Hearth::XML::Node.new('Weight', stub[:weight].to_s) unless stub[:weight].nil?
        xml
      end
    end

    # Structure Stubber for FixedResponseActionConfig
    class FixedResponseActionConfig
      def self.default(visited=[])
        return nil if visited.include?('FixedResponseActionConfig')
        visited = visited + ['FixedResponseActionConfig']
        {
          message_body: 'message_body',
          status_code: 'status_code',
          content_type: 'content_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FixedResponseActionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MessageBody', stub[:message_body].to_s) unless stub[:message_body].nil?
        xml << Hearth::XML::Node.new('StatusCode', stub[:status_code].to_s) unless stub[:status_code].nil?
        xml << Hearth::XML::Node.new('ContentType', stub[:content_type].to_s) unless stub[:content_type].nil?
        xml
      end
    end

    # Structure Stubber for RedirectActionConfig
    class RedirectActionConfig
      def self.default(visited=[])
        return nil if visited.include?('RedirectActionConfig')
        visited = visited + ['RedirectActionConfig']
        {
          protocol: 'protocol',
          port: 'port',
          host: 'host',
          path: 'path',
          query: 'query',
          status_code: 'status_code',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RedirectActionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Host', stub[:host].to_s) unless stub[:host].nil?
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('Query', stub[:query].to_s) unless stub[:query].nil?
        xml << Hearth::XML::Node.new('StatusCode', stub[:status_code].to_s) unless stub[:status_code].nil?
        xml
      end
    end

    # Structure Stubber for AuthenticateCognitoActionConfig
    class AuthenticateCognitoActionConfig
      def self.default(visited=[])
        return nil if visited.include?('AuthenticateCognitoActionConfig')
        visited = visited + ['AuthenticateCognitoActionConfig']
        {
          user_pool_arn: 'user_pool_arn',
          user_pool_client_id: 'user_pool_client_id',
          user_pool_domain: 'user_pool_domain',
          session_cookie_name: 'session_cookie_name',
          scope: 'scope',
          session_timeout: 1,
          authentication_request_extra_params: AuthenticateCognitoActionAuthenticationRequestExtraParams.default(visited),
          on_unauthenticated_request: 'on_unauthenticated_request',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AuthenticateCognitoActionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserPoolArn', stub[:user_pool_arn].to_s) unless stub[:user_pool_arn].nil?
        xml << Hearth::XML::Node.new('UserPoolClientId', stub[:user_pool_client_id].to_s) unless stub[:user_pool_client_id].nil?
        xml << Hearth::XML::Node.new('UserPoolDomain', stub[:user_pool_domain].to_s) unless stub[:user_pool_domain].nil?
        xml << Hearth::XML::Node.new('SessionCookieName', stub[:session_cookie_name].to_s) unless stub[:session_cookie_name].nil?
        xml << Hearth::XML::Node.new('Scope', stub[:scope].to_s) unless stub[:scope].nil?
        xml << Hearth::XML::Node.new('SessionTimeout', stub[:session_timeout].to_s) unless stub[:session_timeout].nil?
        xml << Hearth::XML::Node.new('AuthenticationRequestExtraParams', AuthenticateCognitoActionAuthenticationRequestExtraParams.stub('entry', stub[:authentication_request_extra_params])) unless stub[:authentication_request_extra_params].nil?
        xml << Hearth::XML::Node.new('OnUnauthenticatedRequest', stub[:on_unauthenticated_request].to_s) unless stub[:on_unauthenticated_request].nil?
        xml
      end
    end

    # Map Stubber for AuthenticateCognitoActionAuthenticationRequestExtraParams
    class AuthenticateCognitoActionAuthenticationRequestExtraParams
      def self.default(visited=[])
        return nil if visited.include?('AuthenticateCognitoActionAuthenticationRequestExtraParams')
        visited = visited + ['AuthenticateCognitoActionAuthenticationRequestExtraParams']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for AuthenticateOidcActionConfig
    class AuthenticateOidcActionConfig
      def self.default(visited=[])
        return nil if visited.include?('AuthenticateOidcActionConfig')
        visited = visited + ['AuthenticateOidcActionConfig']
        {
          issuer: 'issuer',
          authorization_endpoint: 'authorization_endpoint',
          token_endpoint: 'token_endpoint',
          user_info_endpoint: 'user_info_endpoint',
          client_id: 'client_id',
          client_secret: 'client_secret',
          session_cookie_name: 'session_cookie_name',
          scope: 'scope',
          session_timeout: 1,
          authentication_request_extra_params: AuthenticateOidcActionAuthenticationRequestExtraParams.default(visited),
          on_unauthenticated_request: 'on_unauthenticated_request',
          use_existing_client_secret: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AuthenticateOidcActionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Issuer', stub[:issuer].to_s) unless stub[:issuer].nil?
        xml << Hearth::XML::Node.new('AuthorizationEndpoint', stub[:authorization_endpoint].to_s) unless stub[:authorization_endpoint].nil?
        xml << Hearth::XML::Node.new('TokenEndpoint', stub[:token_endpoint].to_s) unless stub[:token_endpoint].nil?
        xml << Hearth::XML::Node.new('UserInfoEndpoint', stub[:user_info_endpoint].to_s) unless stub[:user_info_endpoint].nil?
        xml << Hearth::XML::Node.new('ClientId', stub[:client_id].to_s) unless stub[:client_id].nil?
        xml << Hearth::XML::Node.new('ClientSecret', stub[:client_secret].to_s) unless stub[:client_secret].nil?
        xml << Hearth::XML::Node.new('SessionCookieName', stub[:session_cookie_name].to_s) unless stub[:session_cookie_name].nil?
        xml << Hearth::XML::Node.new('Scope', stub[:scope].to_s) unless stub[:scope].nil?
        xml << Hearth::XML::Node.new('SessionTimeout', stub[:session_timeout].to_s) unless stub[:session_timeout].nil?
        xml << Hearth::XML::Node.new('AuthenticationRequestExtraParams', AuthenticateOidcActionAuthenticationRequestExtraParams.stub('entry', stub[:authentication_request_extra_params])) unless stub[:authentication_request_extra_params].nil?
        xml << Hearth::XML::Node.new('OnUnauthenticatedRequest', stub[:on_unauthenticated_request].to_s) unless stub[:on_unauthenticated_request].nil?
        xml << Hearth::XML::Node.new('UseExistingClientSecret', stub[:use_existing_client_secret].to_s) unless stub[:use_existing_client_secret].nil?
        xml
      end
    end

    # Map Stubber for AuthenticateOidcActionAuthenticationRequestExtraParams
    class AuthenticateOidcActionAuthenticationRequestExtraParams
      def self.default(visited=[])
        return nil if visited.include?('AuthenticateOidcActionAuthenticationRequestExtraParams')
        visited = visited + ['AuthenticateOidcActionAuthenticationRequestExtraParams']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for CreateLoadBalancer
    class CreateLoadBalancer
      def self.default(visited=[])
        {
          load_balancers: LoadBalancers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('CreateLoadBalancerResult')
        xml << Hearth::XML::Node.new('LoadBalancers', LoadBalancers.stub('member', stub[:load_balancers])) unless stub[:load_balancers].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancers
    class LoadBalancers
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancers')
        visited = visited + ['LoadBalancers']
        [
          LoadBalancer.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << LoadBalancer.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancer
    class LoadBalancer
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancer')
        visited = visited + ['LoadBalancer']
        {
          load_balancer_arn: 'load_balancer_arn',
          dns_name: 'dns_name',
          canonical_hosted_zone_id: 'canonical_hosted_zone_id',
          created_time: Time.now,
          load_balancer_name: 'load_balancer_name',
          scheme: 'scheme',
          vpc_id: 'vpc_id',
          state: LoadBalancerState.default(visited),
          type: 'type',
          availability_zones: AvailabilityZones.default(visited),
          security_groups: SecurityGroups.default(visited),
          ip_address_type: 'ip_address_type',
          customer_owned_ipv4_pool: 'customer_owned_ipv4_pool',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancer.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LoadBalancerArn', stub[:load_balancer_arn].to_s) unless stub[:load_balancer_arn].nil?
        xml << Hearth::XML::Node.new('DNSName', stub[:dns_name].to_s) unless stub[:dns_name].nil?
        xml << Hearth::XML::Node.new('CanonicalHostedZoneId', stub[:canonical_hosted_zone_id].to_s) unless stub[:canonical_hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Hearth::XML::Node.new('LoadBalancerName', stub[:load_balancer_name].to_s) unless stub[:load_balancer_name].nil?
        xml << Hearth::XML::Node.new('Scheme', stub[:scheme].to_s) unless stub[:scheme].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << LoadBalancerState.stub('State', stub[:state]) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', AvailabilityZones.stub('member', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('SecurityGroups', SecurityGroups.stub('member', stub[:security_groups])) unless stub[:security_groups].nil?
        xml << Hearth::XML::Node.new('IpAddressType', stub[:ip_address_type].to_s) unless stub[:ip_address_type].nil?
        xml << Hearth::XML::Node.new('CustomerOwnedIpv4Pool', stub[:customer_owned_ipv4_pool].to_s) unless stub[:customer_owned_ipv4_pool].nil?
        xml
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for AvailabilityZones
    class AvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZones')
        visited = visited + ['AvailabilityZones']
        [
          AvailabilityZone.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AvailabilityZone.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          zone_name: 'zone_name',
          subnet_id: 'subnet_id',
          outpost_id: 'outpost_id',
          load_balancer_addresses: LoadBalancerAddresses.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AvailabilityZone.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ZoneName', stub[:zone_name].to_s) unless stub[:zone_name].nil?
        xml << Hearth::XML::Node.new('SubnetId', stub[:subnet_id].to_s) unless stub[:subnet_id].nil?
        xml << Hearth::XML::Node.new('OutpostId', stub[:outpost_id].to_s) unless stub[:outpost_id].nil?
        xml << Hearth::XML::Node.new('LoadBalancerAddresses', LoadBalancerAddresses.stub('member', stub[:load_balancer_addresses])) unless stub[:load_balancer_addresses].nil?
        xml
      end
    end

    # List Stubber for LoadBalancerAddresses
    class LoadBalancerAddresses
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerAddresses')
        visited = visited + ['LoadBalancerAddresses']
        [
          LoadBalancerAddress.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << LoadBalancerAddress.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancerAddress
    class LoadBalancerAddress
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerAddress')
        visited = visited + ['LoadBalancerAddress']
        {
          ip_address: 'ip_address',
          allocation_id: 'allocation_id',
          private_i_pv4_address: 'private_i_pv4_address',
          i_pv6_address: 'i_pv6_address',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerAddress.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IpAddress', stub[:ip_address].to_s) unless stub[:ip_address].nil?
        xml << Hearth::XML::Node.new('AllocationId', stub[:allocation_id].to_s) unless stub[:allocation_id].nil?
        xml << Hearth::XML::Node.new('PrivateIPv4Address', stub[:private_i_pv4_address].to_s) unless stub[:private_i_pv4_address].nil?
        xml << Hearth::XML::Node.new('IPv6Address', stub[:i_pv6_address].to_s) unless stub[:i_pv6_address].nil?
        xml
      end
    end

    # Structure Stubber for LoadBalancerState
    class LoadBalancerState
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerState')
        visited = visited + ['LoadBalancerState']
        {
          code: 'code',
          reason: 'reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerState.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml << Hearth::XML::Node.new('Reason', stub[:reason].to_s) unless stub[:reason].nil?
        xml
      end
    end

    # Operation Stubber for CreateRule
    class CreateRule
      def self.default(visited=[])
        {
          rules: Rules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateRuleResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('CreateRuleResult')
        xml << Hearth::XML::Node.new('Rules', Rules.stub('member', stub[:rules])) unless stub[:rules].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Rules
    class Rules
      def self.default(visited=[])
        return nil if visited.include?('Rules')
        visited = visited + ['Rules']
        [
          Rule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Rule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          rule_arn: 'rule_arn',
          priority: 'priority',
          conditions: RuleConditionList.default(visited),
          actions: Actions.default(visited),
          is_default: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Rule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RuleArn', stub[:rule_arn].to_s) unless stub[:rule_arn].nil?
        xml << Hearth::XML::Node.new('Priority', stub[:priority].to_s) unless stub[:priority].nil?
        xml << Hearth::XML::Node.new('Conditions', RuleConditionList.stub('member', stub[:conditions])) unless stub[:conditions].nil?
        xml << Hearth::XML::Node.new('Actions', Actions.stub('member', stub[:actions])) unless stub[:actions].nil?
        xml << Hearth::XML::Node.new('IsDefault', stub[:is_default].to_s) unless stub[:is_default].nil?
        xml
      end
    end

    # List Stubber for RuleConditionList
    class RuleConditionList
      def self.default(visited=[])
        return nil if visited.include?('RuleConditionList')
        visited = visited + ['RuleConditionList']
        [
          RuleCondition.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << RuleCondition.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RuleCondition
    class RuleCondition
      def self.default(visited=[])
        return nil if visited.include?('RuleCondition')
        visited = visited + ['RuleCondition']
        {
          field: 'field',
          values: ListOfString.default(visited),
          host_header_config: HostHeaderConditionConfig.default(visited),
          path_pattern_config: PathPatternConditionConfig.default(visited),
          http_header_config: HttpHeaderConditionConfig.default(visited),
          query_string_config: QueryStringConditionConfig.default(visited),
          http_request_method_config: HttpRequestMethodConditionConfig.default(visited),
          source_ip_config: SourceIpConditionConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RuleCondition.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Field', stub[:field].to_s) unless stub[:field].nil?
        xml << Hearth::XML::Node.new('Values', ListOfString.stub('member', stub[:values])) unless stub[:values].nil?
        xml << HostHeaderConditionConfig.stub('HostHeaderConfig', stub[:host_header_config]) unless stub[:host_header_config].nil?
        xml << PathPatternConditionConfig.stub('PathPatternConfig', stub[:path_pattern_config]) unless stub[:path_pattern_config].nil?
        xml << HttpHeaderConditionConfig.stub('HttpHeaderConfig', stub[:http_header_config]) unless stub[:http_header_config].nil?
        xml << QueryStringConditionConfig.stub('QueryStringConfig', stub[:query_string_config]) unless stub[:query_string_config].nil?
        xml << HttpRequestMethodConditionConfig.stub('HttpRequestMethodConfig', stub[:http_request_method_config]) unless stub[:http_request_method_config].nil?
        xml << SourceIpConditionConfig.stub('SourceIpConfig', stub[:source_ip_config]) unless stub[:source_ip_config].nil?
        xml
      end
    end

    # Structure Stubber for SourceIpConditionConfig
    class SourceIpConditionConfig
      def self.default(visited=[])
        return nil if visited.include?('SourceIpConditionConfig')
        visited = visited + ['SourceIpConditionConfig']
        {
          values: ListOfString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SourceIpConditionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Values', ListOfString.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # List Stubber for ListOfString
    class ListOfString
      def self.default(visited=[])
        return nil if visited.include?('ListOfString')
        visited = visited + ['ListOfString']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for HttpRequestMethodConditionConfig
    class HttpRequestMethodConditionConfig
      def self.default(visited=[])
        return nil if visited.include?('HttpRequestMethodConditionConfig')
        visited = visited + ['HttpRequestMethodConditionConfig']
        {
          values: ListOfString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HttpRequestMethodConditionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Values', ListOfString.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # Structure Stubber for QueryStringConditionConfig
    class QueryStringConditionConfig
      def self.default(visited=[])
        return nil if visited.include?('QueryStringConditionConfig')
        visited = visited + ['QueryStringConditionConfig']
        {
          values: QueryStringKeyValuePairList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryStringConditionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Values', QueryStringKeyValuePairList.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # List Stubber for QueryStringKeyValuePairList
    class QueryStringKeyValuePairList
      def self.default(visited=[])
        return nil if visited.include?('QueryStringKeyValuePairList')
        visited = visited + ['QueryStringKeyValuePairList']
        [
          QueryStringKeyValuePair.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << QueryStringKeyValuePair.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for QueryStringKeyValuePair
    class QueryStringKeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('QueryStringKeyValuePair')
        visited = visited + ['QueryStringKeyValuePair']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryStringKeyValuePair.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Structure Stubber for HttpHeaderConditionConfig
    class HttpHeaderConditionConfig
      def self.default(visited=[])
        return nil if visited.include?('HttpHeaderConditionConfig')
        visited = visited + ['HttpHeaderConditionConfig']
        {
          http_header_name: 'http_header_name',
          values: ListOfString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HttpHeaderConditionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HttpHeaderName', stub[:http_header_name].to_s) unless stub[:http_header_name].nil?
        xml << Hearth::XML::Node.new('Values', ListOfString.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # Structure Stubber for PathPatternConditionConfig
    class PathPatternConditionConfig
      def self.default(visited=[])
        return nil if visited.include?('PathPatternConditionConfig')
        visited = visited + ['PathPatternConditionConfig']
        {
          values: ListOfString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PathPatternConditionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Values', ListOfString.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # Structure Stubber for HostHeaderConditionConfig
    class HostHeaderConditionConfig
      def self.default(visited=[])
        return nil if visited.include?('HostHeaderConditionConfig')
        visited = visited + ['HostHeaderConditionConfig']
        {
          values: ListOfString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HostHeaderConditionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Values', ListOfString.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # Operation Stubber for CreateTargetGroup
    class CreateTargetGroup
      def self.default(visited=[])
        {
          target_groups: TargetGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateTargetGroupResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('CreateTargetGroupResult')
        xml << Hearth::XML::Node.new('TargetGroups', TargetGroups.stub('member', stub[:target_groups])) unless stub[:target_groups].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TargetGroups
    class TargetGroups
      def self.default(visited=[])
        return nil if visited.include?('TargetGroups')
        visited = visited + ['TargetGroups']
        [
          TargetGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TargetGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TargetGroup
    class TargetGroup
      def self.default(visited=[])
        return nil if visited.include?('TargetGroup')
        visited = visited + ['TargetGroup']
        {
          target_group_arn: 'target_group_arn',
          target_group_name: 'target_group_name',
          protocol: 'protocol',
          port: 1,
          vpc_id: 'vpc_id',
          health_check_protocol: 'health_check_protocol',
          health_check_port: 'health_check_port',
          health_check_enabled: false,
          health_check_interval_seconds: 1,
          health_check_timeout_seconds: 1,
          healthy_threshold_count: 1,
          unhealthy_threshold_count: 1,
          health_check_path: 'health_check_path',
          matcher: Matcher.default(visited),
          load_balancer_arns: LoadBalancerArns.default(visited),
          target_type: 'target_type',
          protocol_version: 'protocol_version',
          ip_address_type: 'ip_address_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetGroupArn', stub[:target_group_arn].to_s) unless stub[:target_group_arn].nil?
        xml << Hearth::XML::Node.new('TargetGroupName', stub[:target_group_name].to_s) unless stub[:target_group_name].nil?
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('HealthCheckProtocol', stub[:health_check_protocol].to_s) unless stub[:health_check_protocol].nil?
        xml << Hearth::XML::Node.new('HealthCheckPort', stub[:health_check_port].to_s) unless stub[:health_check_port].nil?
        xml << Hearth::XML::Node.new('HealthCheckEnabled', stub[:health_check_enabled].to_s) unless stub[:health_check_enabled].nil?
        xml << Hearth::XML::Node.new('HealthCheckIntervalSeconds', stub[:health_check_interval_seconds].to_s) unless stub[:health_check_interval_seconds].nil?
        xml << Hearth::XML::Node.new('HealthCheckTimeoutSeconds', stub[:health_check_timeout_seconds].to_s) unless stub[:health_check_timeout_seconds].nil?
        xml << Hearth::XML::Node.new('HealthyThresholdCount', stub[:healthy_threshold_count].to_s) unless stub[:healthy_threshold_count].nil?
        xml << Hearth::XML::Node.new('UnhealthyThresholdCount', stub[:unhealthy_threshold_count].to_s) unless stub[:unhealthy_threshold_count].nil?
        xml << Hearth::XML::Node.new('HealthCheckPath', stub[:health_check_path].to_s) unless stub[:health_check_path].nil?
        xml << Matcher.stub('Matcher', stub[:matcher]) unless stub[:matcher].nil?
        xml << Hearth::XML::Node.new('LoadBalancerArns', LoadBalancerArns.stub('member', stub[:load_balancer_arns])) unless stub[:load_balancer_arns].nil?
        xml << Hearth::XML::Node.new('TargetType', stub[:target_type].to_s) unless stub[:target_type].nil?
        xml << Hearth::XML::Node.new('ProtocolVersion', stub[:protocol_version].to_s) unless stub[:protocol_version].nil?
        xml << Hearth::XML::Node.new('IpAddressType', stub[:ip_address_type].to_s) unless stub[:ip_address_type].nil?
        xml
      end
    end

    # List Stubber for LoadBalancerArns
    class LoadBalancerArns
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerArns')
        visited = visited + ['LoadBalancerArns']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Matcher
    class Matcher
      def self.default(visited=[])
        return nil if visited.include?('Matcher')
        visited = visited + ['Matcher']
        {
          http_code: 'http_code',
          grpc_code: 'grpc_code',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Matcher.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HttpCode', stub[:http_code].to_s) unless stub[:http_code].nil?
        xml << Hearth::XML::Node.new('GrpcCode', stub[:grpc_code].to_s) unless stub[:grpc_code].nil?
        xml
      end
    end

    # Operation Stubber for DeleteListener
    class DeleteListener
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteListenerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DeleteListenerResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DeleteLoadBalancerResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRule
    class DeleteRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteRuleResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DeleteRuleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTargetGroup
    class DeleteTargetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteTargetGroupResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DeleteTargetGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterTargets
    class DeregisterTargets
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeregisterTargetsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DeregisterTargetsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountLimits
    class DescribeAccountLimits
      def self.default(visited=[])
        {
          limits: Limits.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountLimitsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeAccountLimitsResult')
        xml << Hearth::XML::Node.new('Limits', Limits.stub('member', stub[:limits])) unless stub[:limits].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Limits
    class Limits
      def self.default(visited=[])
        return nil if visited.include?('Limits')
        visited = visited + ['Limits']
        [
          Limit.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Limit.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Limit
    class Limit
      def self.default(visited=[])
        return nil if visited.include?('Limit')
        visited = visited + ['Limit']
        {
          name: 'name',
          max: 'max',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Limit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # Operation Stubber for DescribeListenerCertificates
    class DescribeListenerCertificates
      def self.default(visited=[])
        {
          certificates: CertificateList.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeListenerCertificatesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeListenerCertificatesResult')
        xml << Hearth::XML::Node.new('Certificates', CertificateList.stub('member', stub[:certificates])) unless stub[:certificates].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeListeners
    class DescribeListeners
      def self.default(visited=[])
        {
          listeners: Listeners.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeListenersResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeListenersResult')
        xml << Hearth::XML::Node.new('Listeners', Listeners.stub('member', stub[:listeners])) unless stub[:listeners].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLoadBalancerAttributes
    class DescribeLoadBalancerAttributes
      def self.default(visited=[])
        {
          attributes: LoadBalancerAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancerAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancerAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', LoadBalancerAttributes.stub('member', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerAttributes
    class LoadBalancerAttributes
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerAttributes')
        visited = visited + ['LoadBalancerAttributes']
        [
          LoadBalancerAttribute.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << LoadBalancerAttribute.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancerAttribute
    class LoadBalancerAttribute
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerAttribute')
        visited = visited + ['LoadBalancerAttribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerAttribute.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.default(visited=[])
        {
          load_balancers: LoadBalancers.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancersResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancersResult')
        xml << Hearth::XML::Node.new('LoadBalancers', LoadBalancers.stub('member', stub[:load_balancers])) unless stub[:load_balancers].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeRules
    class DescribeRules
      def self.default(visited=[])
        {
          rules: Rules.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeRulesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeRulesResult')
        xml << Hearth::XML::Node.new('Rules', Rules.stub('member', stub[:rules])) unless stub[:rules].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSSLPolicies
    class DescribeSSLPolicies
      def self.default(visited=[])
        {
          ssl_policies: SslPolicies.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeSSLPoliciesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeSSLPoliciesResult')
        xml << Hearth::XML::Node.new('SslPolicies', SslPolicies.stub('member', stub[:ssl_policies])) unless stub[:ssl_policies].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SslPolicies
    class SslPolicies
      def self.default(visited=[])
        return nil if visited.include?('SslPolicies')
        visited = visited + ['SslPolicies']
        [
          SslPolicy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SslPolicy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SslPolicy
    class SslPolicy
      def self.default(visited=[])
        return nil if visited.include?('SslPolicy')
        visited = visited + ['SslPolicy']
        {
          ssl_protocols: SslProtocols.default(visited),
          ciphers: Ciphers.default(visited),
          name: 'name',
          supported_load_balancer_types: ListOfString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SslPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SslProtocols', SslProtocols.stub('member', stub[:ssl_protocols])) unless stub[:ssl_protocols].nil?
        xml << Hearth::XML::Node.new('Ciphers', Ciphers.stub('member', stub[:ciphers])) unless stub[:ciphers].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('SupportedLoadBalancerTypes', ListOfString.stub('member', stub[:supported_load_balancer_types])) unless stub[:supported_load_balancer_types].nil?
        xml
      end
    end

    # List Stubber for Ciphers
    class Ciphers
      def self.default(visited=[])
        return nil if visited.include?('Ciphers')
        visited = visited + ['Ciphers']
        [
          Cipher.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Cipher.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Cipher
    class Cipher
      def self.default(visited=[])
        return nil if visited.include?('Cipher')
        visited = visited + ['Cipher']
        {
          name: 'name',
          priority: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Cipher.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Priority', stub[:priority].to_s) unless stub[:priority].nil?
        xml
      end
    end

    # List Stubber for SslProtocols
    class SslProtocols
      def self.default(visited=[])
        return nil if visited.include?('SslProtocols')
        visited = visited + ['SslProtocols']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          tag_descriptions: TagDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTagsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeTagsResult')
        xml << Hearth::XML::Node.new('TagDescriptions', TagDescriptions.stub('member', stub[:tag_descriptions])) unless stub[:tag_descriptions].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TagDescriptions
    class TagDescriptions
      def self.default(visited=[])
        return nil if visited.include?('TagDescriptions')
        visited = visited + ['TagDescriptions']
        [
          TagDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TagDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TagDescription
    class TagDescription
      def self.default(visited=[])
        return nil if visited.include?('TagDescription')
        visited = visited + ['TagDescription']
        {
          resource_arn: 'resource_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TagDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResourceArn', stub[:resource_arn].to_s) unless stub[:resource_arn].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeTargetGroupAttributes
    class DescribeTargetGroupAttributes
      def self.default(visited=[])
        {
          attributes: TargetGroupAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTargetGroupAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeTargetGroupAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', TargetGroupAttributes.stub('member', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TargetGroupAttributes
    class TargetGroupAttributes
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupAttributes')
        visited = visited + ['TargetGroupAttributes']
        [
          TargetGroupAttribute.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TargetGroupAttribute.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TargetGroupAttribute
    class TargetGroupAttribute
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupAttribute')
        visited = visited + ['TargetGroupAttribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetGroupAttribute.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeTargetGroups
    class DescribeTargetGroups
      def self.default(visited=[])
        {
          target_groups: TargetGroups.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTargetGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeTargetGroupsResult')
        xml << Hearth::XML::Node.new('TargetGroups', TargetGroups.stub('member', stub[:target_groups])) unless stub[:target_groups].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTargetHealth
    class DescribeTargetHealth
      def self.default(visited=[])
        {
          target_health_descriptions: TargetHealthDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTargetHealthResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('DescribeTargetHealthResult')
        xml << Hearth::XML::Node.new('TargetHealthDescriptions', TargetHealthDescriptions.stub('member', stub[:target_health_descriptions])) unless stub[:target_health_descriptions].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TargetHealthDescriptions
    class TargetHealthDescriptions
      def self.default(visited=[])
        return nil if visited.include?('TargetHealthDescriptions')
        visited = visited + ['TargetHealthDescriptions']
        [
          TargetHealthDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TargetHealthDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TargetHealthDescription
    class TargetHealthDescription
      def self.default(visited=[])
        return nil if visited.include?('TargetHealthDescription')
        visited = visited + ['TargetHealthDescription']
        {
          target: TargetDescription.default(visited),
          health_check_port: 'health_check_port',
          target_health: TargetHealth.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetHealthDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << TargetDescription.stub('Target', stub[:target]) unless stub[:target].nil?
        xml << Hearth::XML::Node.new('HealthCheckPort', stub[:health_check_port].to_s) unless stub[:health_check_port].nil?
        xml << TargetHealth.stub('TargetHealth', stub[:target_health]) unless stub[:target_health].nil?
        xml
      end
    end

    # Structure Stubber for TargetHealth
    class TargetHealth
      def self.default(visited=[])
        return nil if visited.include?('TargetHealth')
        visited = visited + ['TargetHealth']
        {
          state: 'state',
          reason: 'reason',
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetHealth.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('Reason', stub[:reason].to_s) unless stub[:reason].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end

    # Structure Stubber for TargetDescription
    class TargetDescription
      def self.default(visited=[])
        return nil if visited.include?('TargetDescription')
        visited = visited + ['TargetDescription']
        {
          id: 'id',
          port: 1,
          availability_zone: 'availability_zone',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml
      end
    end

    # Operation Stubber for ModifyListener
    class ModifyListener
      def self.default(visited=[])
        {
          listeners: Listeners.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyListenerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('ModifyListenerResult')
        xml << Hearth::XML::Node.new('Listeners', Listeners.stub('member', stub[:listeners])) unless stub[:listeners].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyLoadBalancerAttributes
    class ModifyLoadBalancerAttributes
      def self.default(visited=[])
        {
          attributes: LoadBalancerAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyLoadBalancerAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('ModifyLoadBalancerAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', LoadBalancerAttributes.stub('member', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyRule
    class ModifyRule
      def self.default(visited=[])
        {
          rules: Rules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyRuleResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('ModifyRuleResult')
        xml << Hearth::XML::Node.new('Rules', Rules.stub('member', stub[:rules])) unless stub[:rules].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyTargetGroup
    class ModifyTargetGroup
      def self.default(visited=[])
        {
          target_groups: TargetGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyTargetGroupResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('ModifyTargetGroupResult')
        xml << Hearth::XML::Node.new('TargetGroups', TargetGroups.stub('member', stub[:target_groups])) unless stub[:target_groups].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyTargetGroupAttributes
    class ModifyTargetGroupAttributes
      def self.default(visited=[])
        {
          attributes: TargetGroupAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyTargetGroupAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('ModifyTargetGroupAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', TargetGroupAttributes.stub('member', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterTargets
    class RegisterTargets
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RegisterTargetsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('RegisterTargetsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveListenerCertificates
    class RemoveListenerCertificates
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveListenerCertificatesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('RemoveListenerCertificatesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTags
    class RemoveTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveTagsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('RemoveTagsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIpAddressType
    class SetIpAddressType
      def self.default(visited=[])
        {
          ip_address_type: 'ip_address_type',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetIpAddressTypeResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('SetIpAddressTypeResult')
        xml << Hearth::XML::Node.new('IpAddressType', stub[:ip_address_type].to_s) unless stub[:ip_address_type].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetRulePriorities
    class SetRulePriorities
      def self.default(visited=[])
        {
          rules: Rules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetRulePrioritiesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('SetRulePrioritiesResult')
        xml << Hearth::XML::Node.new('Rules', Rules.stub('member', stub[:rules])) unless stub[:rules].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetSecurityGroups
    class SetSecurityGroups
      def self.default(visited=[])
        {
          security_group_ids: SecurityGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetSecurityGroupsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('SetSecurityGroupsResult')
        xml << Hearth::XML::Node.new('SecurityGroupIds', SecurityGroups.stub('member', stub[:security_group_ids])) unless stub[:security_group_ids].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetSubnets
    class SetSubnets
      def self.default(visited=[])
        {
          availability_zones: AvailabilityZones.default(visited),
          ip_address_type: 'ip_address_type',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetSubnetsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/'
        xml = Hearth::XML::Node.new('SetSubnetsResult')
        xml << Hearth::XML::Node.new('AvailabilityZones', AvailabilityZones.stub('member', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('IpAddressType', stub[:ip_address_type].to_s) unless stub[:ip_address_type].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
