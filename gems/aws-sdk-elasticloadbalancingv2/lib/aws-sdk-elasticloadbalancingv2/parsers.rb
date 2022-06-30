# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ElasticLoadBalancingV2
  module Parsers

    # Operation Parser for AddListenerCertificates
    class AddListenerCertificates
      def self.parse(http_resp)
        data = Types::AddListenerCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddListenerCertificatesResult')
        xml.at('Certificates') do |node|
          children = node.children('member')
          data.certificates = Parsers::CertificateList.parse(children)
        end
        data
      end
    end

    class CertificateList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Certificate.parse(node)
        end
        data
      end
    end

    class Certificate
      def self.parse(xml)
        data = Types::Certificate.new
        xml.at('CertificateArn') do |node|
          data.certificate_arn = (node.text || '')
        end
        xml.at('IsDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        return data
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

    # Error Parser for TooManyCertificatesException
    class TooManyCertificatesException
      def self.parse(http_resp)
        data = Types::TooManyCertificatesException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

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

    # Error Parser for LoadBalancerNotFoundException
    class LoadBalancerNotFoundException
      def self.parse(http_resp)
        data = Types::LoadBalancerNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for RuleNotFoundException
    class RuleNotFoundException
      def self.parse(http_resp)
        data = Types::RuleNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TargetGroupNotFoundException
    class TargetGroupNotFoundException
      def self.parse(http_resp)
        data = Types::TargetGroupNotFoundException.new
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

    # Operation Parser for CreateListener
    class CreateListener
      def self.parse(http_resp)
        data = Types::CreateListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateListenerResult')
        xml.at('Listeners') do |node|
          children = node.children('member')
          data.listeners = Parsers::Listeners.parse(children)
        end
        data
      end
    end

    class Listeners
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Listener.parse(node)
        end
        data
      end
    end

    class Listener
      def self.parse(xml)
        data = Types::Listener.new
        xml.at('ListenerArn') do |node|
          data.listener_arn = (node.text || '')
        end
        xml.at('LoadBalancerArn') do |node|
          data.load_balancer_arn = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('Certificates') do |node|
          children = node.children('member')
          data.certificates = Parsers::CertificateList.parse(children)
        end
        xml.at('SslPolicy') do |node|
          data.ssl_policy = (node.text || '')
        end
        xml.at('DefaultActions') do |node|
          children = node.children('member')
          data.default_actions = Parsers::Actions.parse(children)
        end
        xml.at('AlpnPolicy') do |node|
          children = node.children('member')
          data.alpn_policy = Parsers::AlpnPolicyName.parse(children)
        end
        return data
      end
    end

    class AlpnPolicyName
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Actions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Action.parse(node)
        end
        data
      end
    end

    class Action
      def self.parse(xml)
        data = Types::Action.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('TargetGroupArn') do |node|
          data.target_group_arn = (node.text || '')
        end
        xml.at('AuthenticateOidcConfig') do |node|
          data.authenticate_oidc_config = Parsers::AuthenticateOidcActionConfig.parse(node)
        end
        xml.at('AuthenticateCognitoConfig') do |node|
          data.authenticate_cognito_config = Parsers::AuthenticateCognitoActionConfig.parse(node)
        end
        xml.at('Order') do |node|
          data.order = node.text&.to_i
        end
        xml.at('RedirectConfig') do |node|
          data.redirect_config = Parsers::RedirectActionConfig.parse(node)
        end
        xml.at('FixedResponseConfig') do |node|
          data.fixed_response_config = Parsers::FixedResponseActionConfig.parse(node)
        end
        xml.at('ForwardConfig') do |node|
          data.forward_config = Parsers::ForwardActionConfig.parse(node)
        end
        return data
      end
    end

    class ForwardActionConfig
      def self.parse(xml)
        data = Types::ForwardActionConfig.new
        xml.at('TargetGroups') do |node|
          children = node.children('member')
          data.target_groups = Parsers::TargetGroupList.parse(children)
        end
        xml.at('TargetGroupStickinessConfig') do |node|
          data.target_group_stickiness_config = Parsers::TargetGroupStickinessConfig.parse(node)
        end
        return data
      end
    end

    class TargetGroupStickinessConfig
      def self.parse(xml)
        data = Types::TargetGroupStickinessConfig.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('DurationSeconds') do |node|
          data.duration_seconds = node.text&.to_i
        end
        return data
      end
    end

    class TargetGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetGroupTuple.parse(node)
        end
        data
      end
    end

    class TargetGroupTuple
      def self.parse(xml)
        data = Types::TargetGroupTuple.new
        xml.at('TargetGroupArn') do |node|
          data.target_group_arn = (node.text || '')
        end
        xml.at('Weight') do |node|
          data.weight = node.text&.to_i
        end
        return data
      end
    end

    class FixedResponseActionConfig
      def self.parse(xml)
        data = Types::FixedResponseActionConfig.new
        xml.at('MessageBody') do |node|
          data.message_body = (node.text || '')
        end
        xml.at('StatusCode') do |node|
          data.status_code = (node.text || '')
        end
        xml.at('ContentType') do |node|
          data.content_type = (node.text || '')
        end
        return data
      end
    end

    class RedirectActionConfig
      def self.parse(xml)
        data = Types::RedirectActionConfig.new
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = (node.text || '')
        end
        xml.at('Host') do |node|
          data.host = (node.text || '')
        end
        xml.at('Path') do |node|
          data.path = (node.text || '')
        end
        xml.at('Query') do |node|
          data.query = (node.text || '')
        end
        xml.at('StatusCode') do |node|
          data.status_code = (node.text || '')
        end
        return data
      end
    end

    class AuthenticateCognitoActionConfig
      def self.parse(xml)
        data = Types::AuthenticateCognitoActionConfig.new
        xml.at('UserPoolArn') do |node|
          data.user_pool_arn = (node.text || '')
        end
        xml.at('UserPoolClientId') do |node|
          data.user_pool_client_id = (node.text || '')
        end
        xml.at('UserPoolDomain') do |node|
          data.user_pool_domain = (node.text || '')
        end
        xml.at('SessionCookieName') do |node|
          data.session_cookie_name = (node.text || '')
        end
        xml.at('Scope') do |node|
          data.scope = (node.text || '')
        end
        xml.at('SessionTimeout') do |node|
          data.session_timeout = node.text&.to_i
        end
        xml.at('AuthenticationRequestExtraParams') do |node|
          children = node.children('entry')
          data.authentication_request_extra_params = Parsers::AuthenticateCognitoActionAuthenticationRequestExtraParams.parse(children)
        end
        xml.at('OnUnauthenticatedRequest') do |node|
          data.on_unauthenticated_request = (node.text || '')
        end
        return data
      end
    end

    class AuthenticateCognitoActionAuthenticationRequestExtraParams
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    class AuthenticateOidcActionConfig
      def self.parse(xml)
        data = Types::AuthenticateOidcActionConfig.new
        xml.at('Issuer') do |node|
          data.issuer = (node.text || '')
        end
        xml.at('AuthorizationEndpoint') do |node|
          data.authorization_endpoint = (node.text || '')
        end
        xml.at('TokenEndpoint') do |node|
          data.token_endpoint = (node.text || '')
        end
        xml.at('UserInfoEndpoint') do |node|
          data.user_info_endpoint = (node.text || '')
        end
        xml.at('ClientId') do |node|
          data.client_id = (node.text || '')
        end
        xml.at('ClientSecret') do |node|
          data.client_secret = (node.text || '')
        end
        xml.at('SessionCookieName') do |node|
          data.session_cookie_name = (node.text || '')
        end
        xml.at('Scope') do |node|
          data.scope = (node.text || '')
        end
        xml.at('SessionTimeout') do |node|
          data.session_timeout = node.text&.to_i
        end
        xml.at('AuthenticationRequestExtraParams') do |node|
          children = node.children('entry')
          data.authentication_request_extra_params = Parsers::AuthenticateOidcActionAuthenticationRequestExtraParams.parse(children)
        end
        xml.at('OnUnauthenticatedRequest') do |node|
          data.on_unauthenticated_request = (node.text || '')
        end
        xml.at('UseExistingClientSecret') do |node|
          data.use_existing_client_secret = (node.text == 'true')
        end
        return data
      end
    end

    class AuthenticateOidcActionAuthenticationRequestExtraParams
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ALPNPolicyNotSupportedException
    class ALPNPolicyNotSupportedException
      def self.parse(http_resp)
        data = Types::ALPNPolicyNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
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

    # Error Parser for IncompatibleProtocolsException
    class IncompatibleProtocolsException
      def self.parse(http_resp)
        data = Types::IncompatibleProtocolsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
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

    # Error Parser for InvalidLoadBalancerActionException
    class InvalidLoadBalancerActionException
      def self.parse(http_resp)
        data = Types::InvalidLoadBalancerActionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SSLPolicyNotFoundException
    class SSLPolicyNotFoundException
      def self.parse(http_resp)
        data = Types::SSLPolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TargetGroupAssociationLimitException
    class TargetGroupAssociationLimitException
      def self.parse(http_resp)
        data = Types::TargetGroupAssociationLimitException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyActionsException
    class TooManyActionsException
      def self.parse(http_resp)
        data = Types::TooManyActionsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyListenersException
    class TooManyListenersException
      def self.parse(http_resp)
        data = Types::TooManyListenersException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyRegistrationsForTargetIdException
    class TooManyRegistrationsForTargetIdException
      def self.parse(http_resp)
        data = Types::TooManyRegistrationsForTargetIdException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyTargetsException
    class TooManyTargetsException
      def self.parse(http_resp)
        data = Types::TooManyTargetsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyUniqueTargetGroupsPerLoadBalancerException
    class TooManyUniqueTargetGroupsPerLoadBalancerException
      def self.parse(http_resp)
        data = Types::TooManyUniqueTargetGroupsPerLoadBalancerException.new
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

    # Operation Parser for CreateLoadBalancer
    class CreateLoadBalancer
      def self.parse(http_resp)
        data = Types::CreateLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLoadBalancerResult')
        xml.at('LoadBalancers') do |node|
          children = node.children('member')
          data.load_balancers = Parsers::LoadBalancers.parse(children)
        end
        data
      end
    end

    class LoadBalancers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadBalancer.parse(node)
        end
        data
      end
    end

    class LoadBalancer
      def self.parse(xml)
        data = Types::LoadBalancer.new
        xml.at('LoadBalancerArn') do |node|
          data.load_balancer_arn = (node.text || '')
        end
        xml.at('DNSName') do |node|
          data.dns_name = (node.text || '')
        end
        xml.at('CanonicalHostedZoneId') do |node|
          data.canonical_hosted_zone_id = (node.text || '')
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('LoadBalancerName') do |node|
          data.load_balancer_name = (node.text || '')
        end
        xml.at('Scheme') do |node|
          data.scheme = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = Parsers::LoadBalancerState.parse(node)
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('member')
          data.availability_zones = Parsers::AvailabilityZones.parse(children)
        end
        xml.at('SecurityGroups') do |node|
          children = node.children('member')
          data.security_groups = Parsers::SecurityGroups.parse(children)
        end
        xml.at('IpAddressType') do |node|
          data.ip_address_type = (node.text || '')
        end
        xml.at('CustomerOwnedIpv4Pool') do |node|
          data.customer_owned_ipv4_pool = (node.text || '')
        end
        return data
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

    class AvailabilityZones
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AvailabilityZone.parse(node)
        end
        data
      end
    end

    class AvailabilityZone
      def self.parse(xml)
        data = Types::AvailabilityZone.new
        xml.at('ZoneName') do |node|
          data.zone_name = (node.text || '')
        end
        xml.at('SubnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('OutpostId') do |node|
          data.outpost_id = (node.text || '')
        end
        xml.at('LoadBalancerAddresses') do |node|
          children = node.children('member')
          data.load_balancer_addresses = Parsers::LoadBalancerAddresses.parse(children)
        end
        return data
      end
    end

    class LoadBalancerAddresses
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadBalancerAddress.parse(node)
        end
        data
      end
    end

    class LoadBalancerAddress
      def self.parse(xml)
        data = Types::LoadBalancerAddress.new
        xml.at('IpAddress') do |node|
          data.ip_address = (node.text || '')
        end
        xml.at('AllocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('PrivateIPv4Address') do |node|
          data.private_i_pv4_address = (node.text || '')
        end
        xml.at('IPv6Address') do |node|
          data.i_pv6_address = (node.text || '')
        end
        return data
      end
    end

    class LoadBalancerState
      def self.parse(xml)
        data = Types::LoadBalancerState.new
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Reason') do |node|
          data.reason = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for AllocationIdNotFoundException
    class AllocationIdNotFoundException
      def self.parse(http_resp)
        data = Types::AllocationIdNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AvailabilityZoneNotSupportedException
    class AvailabilityZoneNotSupportedException
      def self.parse(http_resp)
        data = Types::AvailabilityZoneNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DuplicateLoadBalancerNameException
    class DuplicateLoadBalancerNameException
      def self.parse(http_resp)
        data = Types::DuplicateLoadBalancerNameException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
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

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
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

    # Error Parser for TooManyLoadBalancersException
    class TooManyLoadBalancersException
      def self.parse(http_resp)
        data = Types::TooManyLoadBalancersException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateRule
    class CreateRule
      def self.parse(http_resp)
        data = Types::CreateRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateRuleResult')
        xml.at('Rules') do |node|
          children = node.children('member')
          data.rules = Parsers::Rules.parse(children)
        end
        data
      end
    end

    class Rules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Rule.parse(node)
        end
        data
      end
    end

    class Rule
      def self.parse(xml)
        data = Types::Rule.new
        xml.at('RuleArn') do |node|
          data.rule_arn = (node.text || '')
        end
        xml.at('Priority') do |node|
          data.priority = (node.text || '')
        end
        xml.at('Conditions') do |node|
          children = node.children('member')
          data.conditions = Parsers::RuleConditionList.parse(children)
        end
        xml.at('Actions') do |node|
          children = node.children('member')
          data.actions = Parsers::Actions.parse(children)
        end
        xml.at('IsDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        return data
      end
    end

    class RuleConditionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RuleCondition.parse(node)
        end
        data
      end
    end

    class RuleCondition
      def self.parse(xml)
        data = Types::RuleCondition.new
        xml.at('Field') do |node|
          data.field = (node.text || '')
        end
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::ListOfString.parse(children)
        end
        xml.at('HostHeaderConfig') do |node|
          data.host_header_config = Parsers::HostHeaderConditionConfig.parse(node)
        end
        xml.at('PathPatternConfig') do |node|
          data.path_pattern_config = Parsers::PathPatternConditionConfig.parse(node)
        end
        xml.at('HttpHeaderConfig') do |node|
          data.http_header_config = Parsers::HttpHeaderConditionConfig.parse(node)
        end
        xml.at('QueryStringConfig') do |node|
          data.query_string_config = Parsers::QueryStringConditionConfig.parse(node)
        end
        xml.at('HttpRequestMethodConfig') do |node|
          data.http_request_method_config = Parsers::HttpRequestMethodConditionConfig.parse(node)
        end
        xml.at('SourceIpConfig') do |node|
          data.source_ip_config = Parsers::SourceIpConditionConfig.parse(node)
        end
        return data
      end
    end

    class SourceIpConditionConfig
      def self.parse(xml)
        data = Types::SourceIpConditionConfig.new
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::ListOfString.parse(children)
        end
        return data
      end
    end

    class ListOfString
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class HttpRequestMethodConditionConfig
      def self.parse(xml)
        data = Types::HttpRequestMethodConditionConfig.new
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::ListOfString.parse(children)
        end
        return data
      end
    end

    class QueryStringConditionConfig
      def self.parse(xml)
        data = Types::QueryStringConditionConfig.new
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::QueryStringKeyValuePairList.parse(children)
        end
        return data
      end
    end

    class QueryStringKeyValuePairList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::QueryStringKeyValuePair.parse(node)
        end
        data
      end
    end

    class QueryStringKeyValuePair
      def self.parse(xml)
        data = Types::QueryStringKeyValuePair.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class HttpHeaderConditionConfig
      def self.parse(xml)
        data = Types::HttpHeaderConditionConfig.new
        xml.at('HttpHeaderName') do |node|
          data.http_header_name = (node.text || '')
        end
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::ListOfString.parse(children)
        end
        return data
      end
    end

    class PathPatternConditionConfig
      def self.parse(xml)
        data = Types::PathPatternConditionConfig.new
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::ListOfString.parse(children)
        end
        return data
      end
    end

    class HostHeaderConditionConfig
      def self.parse(xml)
        data = Types::HostHeaderConditionConfig.new
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::ListOfString.parse(children)
        end
        return data
      end
    end

    # Error Parser for PriorityInUseException
    class PriorityInUseException
      def self.parse(http_resp)
        data = Types::PriorityInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyRulesException
    class TooManyRulesException
      def self.parse(http_resp)
        data = Types::TooManyRulesException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyTargetGroupsException
    class TooManyTargetGroupsException
      def self.parse(http_resp)
        data = Types::TooManyTargetGroupsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTargetGroup
    class CreateTargetGroup
      def self.parse(http_resp)
        data = Types::CreateTargetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateTargetGroupResult')
        xml.at('TargetGroups') do |node|
          children = node.children('member')
          data.target_groups = Parsers::TargetGroups.parse(children)
        end
        data
      end
    end

    class TargetGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetGroup.parse(node)
        end
        data
      end
    end

    class TargetGroup
      def self.parse(xml)
        data = Types::TargetGroup.new
        xml.at('TargetGroupArn') do |node|
          data.target_group_arn = (node.text || '')
        end
        xml.at('TargetGroupName') do |node|
          data.target_group_name = (node.text || '')
        end
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('HealthCheckProtocol') do |node|
          data.health_check_protocol = (node.text || '')
        end
        xml.at('HealthCheckPort') do |node|
          data.health_check_port = (node.text || '')
        end
        xml.at('HealthCheckEnabled') do |node|
          data.health_check_enabled = (node.text == 'true')
        end
        xml.at('HealthCheckIntervalSeconds') do |node|
          data.health_check_interval_seconds = node.text&.to_i
        end
        xml.at('HealthCheckTimeoutSeconds') do |node|
          data.health_check_timeout_seconds = node.text&.to_i
        end
        xml.at('HealthyThresholdCount') do |node|
          data.healthy_threshold_count = node.text&.to_i
        end
        xml.at('UnhealthyThresholdCount') do |node|
          data.unhealthy_threshold_count = node.text&.to_i
        end
        xml.at('HealthCheckPath') do |node|
          data.health_check_path = (node.text || '')
        end
        xml.at('Matcher') do |node|
          data.matcher = Parsers::Matcher.parse(node)
        end
        xml.at('LoadBalancerArns') do |node|
          children = node.children('member')
          data.load_balancer_arns = Parsers::LoadBalancerArns.parse(children)
        end
        xml.at('TargetType') do |node|
          data.target_type = (node.text || '')
        end
        xml.at('ProtocolVersion') do |node|
          data.protocol_version = (node.text || '')
        end
        xml.at('IpAddressType') do |node|
          data.ip_address_type = (node.text || '')
        end
        return data
      end
    end

    class LoadBalancerArns
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Matcher
      def self.parse(xml)
        data = Types::Matcher.new
        xml.at('HttpCode') do |node|
          data.http_code = (node.text || '')
        end
        xml.at('GrpcCode') do |node|
          data.grpc_code = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DuplicateTargetGroupNameException
    class DuplicateTargetGroupNameException
      def self.parse(http_resp)
        data = Types::DuplicateTargetGroupNameException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteListener
    class DeleteListener
      def self.parse(http_resp)
        data = Types::DeleteListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteListenerResult')
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

    # Operation Parser for DeleteRule
    class DeleteRule
      def self.parse(http_resp)
        data = Types::DeleteRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteRuleResult')
        data
      end
    end

    # Operation Parser for DeleteTargetGroup
    class DeleteTargetGroup
      def self.parse(http_resp)
        data = Types::DeleteTargetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteTargetGroupResult')
        data
      end
    end

    # Operation Parser for DeregisterTargets
    class DeregisterTargets
      def self.parse(http_resp)
        data = Types::DeregisterTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeregisterTargetsResult')
        data
      end
    end

    # Error Parser for InvalidTargetException
    class InvalidTargetException
      def self.parse(http_resp)
        data = Types::InvalidTargetException.new
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
          data.limits = Parsers::Limits.parse(children)
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
          data << Parsers::Limit.parse(node)
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

    # Operation Parser for DescribeListenerCertificates
    class DescribeListenerCertificates
      def self.parse(http_resp)
        data = Types::DescribeListenerCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeListenerCertificatesResult')
        xml.at('Certificates') do |node|
          children = node.children('member')
          data.certificates = Parsers::CertificateList.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeListeners
    class DescribeListeners
      def self.parse(http_resp)
        data = Types::DescribeListenersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeListenersResult')
        xml.at('Listeners') do |node|
          children = node.children('member')
          data.listeners = Parsers::Listeners.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeLoadBalancerAttributes
    class DescribeLoadBalancerAttributes
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancerAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancerAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('member')
          data.attributes = Parsers::LoadBalancerAttributes.parse(children)
        end
        data
      end
    end

    class LoadBalancerAttributes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadBalancerAttribute.parse(node)
        end
        data
      end
    end

    class LoadBalancerAttribute
      def self.parse(xml)
        data = Types::LoadBalancerAttribute.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
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
        xml.at('LoadBalancers') do |node|
          children = node.children('member')
          data.load_balancers = Parsers::LoadBalancers.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeRules
    class DescribeRules
      def self.parse(http_resp)
        data = Types::DescribeRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeRulesResult')
        xml.at('Rules') do |node|
          children = node.children('member')
          data.rules = Parsers::Rules.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeSSLPolicies
    class DescribeSSLPolicies
      def self.parse(http_resp)
        data = Types::DescribeSSLPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeSSLPoliciesResult')
        xml.at('SslPolicies') do |node|
          children = node.children('member')
          data.ssl_policies = Parsers::SslPolicies.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    class SslPolicies
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SslPolicy.parse(node)
        end
        data
      end
    end

    class SslPolicy
      def self.parse(xml)
        data = Types::SslPolicy.new
        xml.at('SslProtocols') do |node|
          children = node.children('member')
          data.ssl_protocols = Parsers::SslProtocols.parse(children)
        end
        xml.at('Ciphers') do |node|
          children = node.children('member')
          data.ciphers = Parsers::Ciphers.parse(children)
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('SupportedLoadBalancerTypes') do |node|
          children = node.children('member')
          data.supported_load_balancer_types = Parsers::ListOfString.parse(children)
        end
        return data
      end
    end

    class Ciphers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Cipher.parse(node)
        end
        data
      end
    end

    class Cipher
      def self.parse(xml)
        data = Types::Cipher.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Priority') do |node|
          data.priority = node.text&.to_i
        end
        return data
      end
    end

    class SslProtocols
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
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
          data.tag_descriptions = Parsers::TagDescriptions.parse(children)
        end
        data
      end
    end

    class TagDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TagDescription.parse(node)
        end
        data
      end
    end

    class TagDescription
      def self.parse(xml)
        data = Types::TagDescription.new
        xml.at('ResourceArn') do |node|
          data.resource_arn = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
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

    # Operation Parser for DescribeTargetGroupAttributes
    class DescribeTargetGroupAttributes
      def self.parse(http_resp)
        data = Types::DescribeTargetGroupAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTargetGroupAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('member')
          data.attributes = Parsers::TargetGroupAttributes.parse(children)
        end
        data
      end
    end

    class TargetGroupAttributes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetGroupAttribute.parse(node)
        end
        data
      end
    end

    class TargetGroupAttribute
      def self.parse(xml)
        data = Types::TargetGroupAttribute.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeTargetGroups
    class DescribeTargetGroups
      def self.parse(http_resp)
        data = Types::DescribeTargetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTargetGroupsResult')
        xml.at('TargetGroups') do |node|
          children = node.children('member')
          data.target_groups = Parsers::TargetGroups.parse(children)
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeTargetHealth
    class DescribeTargetHealth
      def self.parse(http_resp)
        data = Types::DescribeTargetHealthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTargetHealthResult')
        xml.at('TargetHealthDescriptions') do |node|
          children = node.children('member')
          data.target_health_descriptions = Parsers::TargetHealthDescriptions.parse(children)
        end
        data
      end
    end

    class TargetHealthDescriptions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetHealthDescription.parse(node)
        end
        data
      end
    end

    class TargetHealthDescription
      def self.parse(xml)
        data = Types::TargetHealthDescription.new
        xml.at('Target') do |node|
          data.target = Parsers::TargetDescription.parse(node)
        end
        xml.at('HealthCheckPort') do |node|
          data.health_check_port = (node.text || '')
        end
        xml.at('TargetHealth') do |node|
          data.target_health = Parsers::TargetHealth.parse(node)
        end
        return data
      end
    end

    class TargetHealth
      def self.parse(xml)
        data = Types::TargetHealth.new
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('Reason') do |node|
          data.reason = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    class TargetDescription
      def self.parse(xml)
        data = Types::TargetDescription.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for HealthUnavailableException
    class HealthUnavailableException
      def self.parse(http_resp)
        data = Types::HealthUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyListener
    class ModifyListener
      def self.parse(http_resp)
        data = Types::ModifyListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyListenerResult')
        xml.at('Listeners') do |node|
          children = node.children('member')
          data.listeners = Parsers::Listeners.parse(children)
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
        xml.at('Attributes') do |node|
          children = node.children('member')
          data.attributes = Parsers::LoadBalancerAttributes.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyRule
    class ModifyRule
      def self.parse(http_resp)
        data = Types::ModifyRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyRuleResult')
        xml.at('Rules') do |node|
          children = node.children('member')
          data.rules = Parsers::Rules.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyTargetGroup
    class ModifyTargetGroup
      def self.parse(http_resp)
        data = Types::ModifyTargetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyTargetGroupResult')
        xml.at('TargetGroups') do |node|
          children = node.children('member')
          data.target_groups = Parsers::TargetGroups.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyTargetGroupAttributes
    class ModifyTargetGroupAttributes
      def self.parse(http_resp)
        data = Types::ModifyTargetGroupAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyTargetGroupAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('member')
          data.attributes = Parsers::TargetGroupAttributes.parse(children)
        end
        data
      end
    end

    # Operation Parser for RegisterTargets
    class RegisterTargets
      def self.parse(http_resp)
        data = Types::RegisterTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RegisterTargetsResult')
        data
      end
    end

    # Operation Parser for RemoveListenerCertificates
    class RemoveListenerCertificates
      def self.parse(http_resp)
        data = Types::RemoveListenerCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemoveListenerCertificatesResult')
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

    # Operation Parser for SetIpAddressType
    class SetIpAddressType
      def self.parse(http_resp)
        data = Types::SetIpAddressTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetIpAddressTypeResult')
        xml.at('IpAddressType') do |node|
          data.ip_address_type = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SetRulePriorities
    class SetRulePriorities
      def self.parse(http_resp)
        data = Types::SetRulePrioritiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetRulePrioritiesResult')
        xml.at('Rules') do |node|
          children = node.children('member')
          data.rules = Parsers::Rules.parse(children)
        end
        data
      end
    end

    # Operation Parser for SetSecurityGroups
    class SetSecurityGroups
      def self.parse(http_resp)
        data = Types::SetSecurityGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetSecurityGroupsResult')
        xml.at('SecurityGroupIds') do |node|
          children = node.children('member')
          data.security_group_ids = Parsers::SecurityGroups.parse(children)
        end
        data
      end
    end

    # Operation Parser for SetSubnets
    class SetSubnets
      def self.parse(http_resp)
        data = Types::SetSubnetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetSubnetsResult')
        xml.at('AvailabilityZones') do |node|
          children = node.children('member')
          data.availability_zones = Parsers::AvailabilityZones.parse(children)
        end
        xml.at('IpAddressType') do |node|
          data.ip_address_type = (node.text || '')
        end
        data
      end
    end
  end
end
