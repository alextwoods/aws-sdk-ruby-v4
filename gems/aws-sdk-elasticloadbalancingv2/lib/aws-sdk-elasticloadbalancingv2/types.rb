# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancingV2
  module Types

    # <p>The specified ALPN policy is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ALPNPolicyNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an action.</p>
    #          <p>Each rule must include exactly one of the following types of actions:
    #       <code>forward</code>, <code>fixed-response</code>, or <code>redirect</code>, and it must be
    #       the last action to be performed.</p>
    #
    # @!attribute type
    #   <p>The type of action.</p>
    #
    #   Enum, one of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #
    #   @return [String]
    #
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group. Specify only when <code>Type</code> is
    #           <code>forward</code> and you want to route to a single target group. To route to one or more
    #         target groups, use <code>ForwardConfig</code> instead.</p>
    #
    #   @return [String]
    #
    # @!attribute authenticate_oidc_config
    #   <p>[HTTPS listeners] Information about an identity provider that is compliant with OpenID
    #         Connect (OIDC). Specify only when <code>Type</code> is <code>authenticate-oidc</code>.</p>
    #
    #   @return [AuthenticateOidcActionConfig]
    #
    # @!attribute authenticate_cognito_config
    #   <p>[HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only
    #         when <code>Type</code> is <code>authenticate-cognito</code>.</p>
    #
    #   @return [AuthenticateCognitoActionConfig]
    #
    # @!attribute order
    #   <p>The order for the action. This value is required for rules with multiple actions. The
    #         action with the lowest value for order is performed first.</p>
    #
    #   @return [Integer]
    #
    # @!attribute redirect_config
    #   <p>[Application Load Balancer] Information for creating a redirect action. Specify only when
    #           <code>Type</code> is <code>redirect</code>.</p>
    #
    #   @return [RedirectActionConfig]
    #
    # @!attribute fixed_response_config
    #   <p>[Application Load Balancer] Information for creating an action that returns a custom HTTP
    #         response. Specify only when <code>Type</code> is <code>fixed-response</code>.</p>
    #
    #   @return [FixedResponseActionConfig]
    #
    # @!attribute forward_config
    #   <p>Information for creating an action that distributes requests among one or more target
    #         groups. For Network Load Balancers, you can specify a single target group. Specify only when
    #           <code>Type</code> is <code>forward</code>. If you specify both <code>ForwardConfig</code>
    #         and <code>TargetGroupArn</code>, you can specify only one target group using
    #           <code>ForwardConfig</code> and it must be the same target group specified in
    #           <code>TargetGroupArn</code>.</p>
    #
    #   @return [ForwardActionConfig]
    #
    Action = ::Struct.new(
      :type,
      :target_group_arn,
      :authenticate_oidc_config,
      :authenticate_cognito_config,
      :order,
      :redirect_config,
      :fixed_response_config,
      :forward_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActionTypeEnum
    #
    module ActionTypeEnum
      # No documentation available.
      #
      FORWARD = "forward"

      # No documentation available.
      #
      AUTHENTICATE_OIDC = "authenticate-oidc"

      # No documentation available.
      #
      AUTHENTICATE_COGNITO = "authenticate-cognito"

      # No documentation available.
      #
      REDIRECT = "redirect"

      # No documentation available.
      #
      FIXED_RESPONSE = "fixed-response"
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>The certificate to add. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    #
    #   @return [Array<Certificate>]
    #
    AddListenerCertificatesInput = ::Struct.new(
      :listener_arn,
      :certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificates
    #   <p>Information about the certificates in the certificate list.</p>
    #
    #   @return [Array<Certificate>]
    #
    AddListenerCertificatesOutput = ::Struct.new(
      :certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsInput = ::Struct.new(
      :resource_arns,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified allocation ID does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AllocationIdNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticateCognitoActionConditionalBehaviorEnum
    #
    module AuthenticateCognitoActionConditionalBehaviorEnum
      # No documentation available.
      #
      DENY = "deny"

      # No documentation available.
      #
      ALLOW = "allow"

      # No documentation available.
      #
      AUTHENTICATE = "authenticate"
    end

    # <p>Request parameters to use when integrating with Amazon Cognito to authenticate
    #       users.</p>
    #
    # @!attribute user_pool_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Cognito user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_client_id
    #   <p>The ID of the Amazon Cognito user pool client.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_domain
    #   <p>The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute session_cookie_name
    #   <p>The name of the cookie used to maintain session information. The default is
    #         AWSELBAuthSessionCookie.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>The set of user claims to be requested from the IdP. The default is
    #         <code>openid</code>.</p>
    #            <p>To verify which scope values your IdP supports and how to separate multiple values, see
    #         the documentation for your IdP.</p>
    #
    #   @return [String]
    #
    # @!attribute session_timeout
    #   <p>The maximum duration of the authentication session, in seconds. The default is 604800
    #         seconds (7 days).</p>
    #
    #   @return [Integer]
    #
    # @!attribute authentication_request_extra_params
    #   <p>The query parameters (up to 10) to include in the redirect request to the authorization
    #         endpoint.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute on_unauthenticated_request
    #   <p>The behavior if the user is not authenticated. The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>
    #               </li>
    #               <li>
    #                  <p>allow<code></code> - Allow the request to be forwarded to the target.</p>
    #               </li>
    #               <li>
    #                  <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is
    #             the default value.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["deny", "allow", "authenticate"]
    #
    #   @return [String]
    #
    AuthenticateCognitoActionConfig = ::Struct.new(
      :user_pool_arn,
      :user_pool_client_id,
      :user_pool_domain,
      :session_cookie_name,
      :scope,
      :session_timeout,
      :authentication_request_extra_params,
      :on_unauthenticated_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticateOidcActionConditionalBehaviorEnum
    #
    module AuthenticateOidcActionConditionalBehaviorEnum
      # No documentation available.
      #
      DENY = "deny"

      # No documentation available.
      #
      ALLOW = "allow"

      # No documentation available.
      #
      AUTHENTICATE = "authenticate"
    end

    # <p>Request parameters when using an identity provider (IdP) that is compliant with OpenID
    #       Connect (OIDC) to authenticate users.</p>
    #
    # @!attribute issuer
    #   <p>The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS
    #         protocol, the domain, and the path.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_endpoint
    #   <p>The authorization endpoint of the IdP. This must be a full URL, including the HTTPS
    #         protocol, the domain, and the path.</p>
    #
    #   @return [String]
    #
    # @!attribute token_endpoint
    #   <p>The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the
    #         domain, and the path.</p>
    #
    #   @return [String]
    #
    # @!attribute user_info_endpoint
    #   <p>The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol,
    #         the domain, and the path.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The OAuth 2.0 client identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you
    #         are modifying a rule, you can omit this parameter if you set
    #           <code>UseExistingClientSecret</code> to true.</p>
    #
    #   @return [String]
    #
    # @!attribute session_cookie_name
    #   <p>The name of the cookie used to maintain session information. The default is
    #         AWSELBAuthSessionCookie.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>The set of user claims to be requested from the IdP. The default is
    #         <code>openid</code>.</p>
    #            <p>To verify which scope values your IdP supports and how to separate multiple values, see
    #         the documentation for your IdP.</p>
    #
    #   @return [String]
    #
    # @!attribute session_timeout
    #   <p>The maximum duration of the authentication session, in seconds. The default is 604800
    #         seconds (7 days).</p>
    #
    #   @return [Integer]
    #
    # @!attribute authentication_request_extra_params
    #   <p>The query parameters (up to 10) to include in the redirect request to the authorization
    #         endpoint.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute on_unauthenticated_request
    #   <p>The behavior if the user is not authenticated. The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>
    #               </li>
    #               <li>
    #                  <p>allow<code></code> - Allow the request to be forwarded to the target.</p>
    #               </li>
    #               <li>
    #                  <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is
    #             the default value.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["deny", "allow", "authenticate"]
    #
    #   @return [String]
    #
    # @!attribute use_existing_client_secret
    #   <p>Indicates whether to use the existing client secret when modifying a rule. If you are
    #         creating a rule, you can omit this parameter or set it to false.</p>
    #
    #   @return [Boolean]
    #
    AuthenticateOidcActionConfig = ::Struct.new(
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :user_info_endpoint,
      :client_id,
      :client_secret,
      :session_cookie_name,
      :scope,
      :session_timeout,
      :authentication_request_extra_params,
      :on_unauthenticated_request,
      :use_existing_client_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Availability Zone.</p>
    #
    # @!attribute zone_name
    #   <p>The name of the Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet. You can specify one subnet per Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_id
    #   <p>[Application Load Balancers on Outposts] The ID of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_addresses
    #   <p>[Network Load Balancers] If you need static IP addresses for your load balancer, you can
    #         specify one Elastic IP address per Availability Zone when you create an internal-facing load
    #         balancer. For internal load balancers, you can specify a private IP address from the IPv4
    #         range of the subnet.</p>
    #
    #   @return [Array<LoadBalancerAddress>]
    #
    AvailabilityZone = ::Struct.new(
      :zone_name,
      :subnet_id,
      :outpost_id,
      :load_balancer_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Availability Zone is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AvailabilityZoneNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an SSL server certificate.</p>
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>Indicates whether the certificate is the default certificate. Do not set this value when
    #         specifying a certificate as an input. This value is not included in the output when describing
    #         a listener, but is included when describing listener certificates.</p>
    #
    #   @return [Boolean]
    #
    Certificate = ::Struct.new(
      :certificate_arn,
      :is_default,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified certificate does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CertificateNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a cipher used in a policy.</p>
    #
    # @!attribute name
    #   <p>The name of the cipher.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority of the cipher.</p>
    #
    #   @return [Integer]
    #
    Cipher = ::Struct.new(
      :name,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol for connections from clients to the load balancer. For Application Load
    #         Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the
    #         supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP
    #         protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load
    #         Balancer.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port on which the load balancer is listening. You cannot specify a port for a Gateway
    #         Load Balancer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html describe-ssl-policies">Security policies</a> in the <i>Application Load Balancers Guide</i> and
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html describe-ssl-policies">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    #
    #   @return [Array<Certificate>]
    #
    # @!attribute default_actions
    #   <p>The actions for the default rule.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute alpn_policy
    #   <p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
    #         can specify one policy name. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTP1Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Preferred</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to assign to the listener.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateListenerInput = ::Struct.new(
      :load_balancer_arn,
      :protocol,
      :port,
      :ssl_policy,
      :certificates,
      :default_actions,
      :alpn_policy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listeners
    #   <p>Information about the listener.</p>
    #
    #   @return [Array<Listener>]
    #
    CreateListenerOutput = ::Struct.new(
      :listeners,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the load balancer.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must
    #         not begin with "internal-".</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability
    #         Zones.</p>
    #            <p>[Gateway Load Balancers] You can specify subnets from one or more Availability
    #         Zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_mappings
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones. You cannot specify Elastic IP addresses for your subnets.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can specify one Elastic IP address per subnet if you need static IP addresses for your
    #         internet-facing load balancer. For internal load balancers, you can specify one private IP
    #         address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
    #         can specify one IPv6 address per subnet.</p>
    #            <p>[Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         cannot specify Elastic IP addresses for your subnets.</p>
    #
    #   @return [Array<SubnetMapping>]
    #
    # @!attribute security_groups
    #   <p>[Application Load Balancers] The IDs of the security groups for the load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute scheme
    #   <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
    #         Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
    #         Therefore, Internet-facing load balancers can route requests from clients over the
    #         internet.</p>
    #            <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
    #         internal load balancer is publicly resolvable to the private IP addresses of the nodes.
    #         Therefore, internal load balancers can route requests only from clients with access to the VPC
    #         for the load balancer.</p>
    #            <p>The default is an Internet-facing load balancer.</p>
    #            <p>You cannot specify a scheme for a Gateway Load Balancer.</p>
    #
    #   Enum, one of: ["internet-facing", "internal"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the load balancer.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute type
    #   <p>The type of load balancer. The default is <code>application</code>.</p>
    #
    #   Enum, one of: ["application", "network", "gateway"]
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The type of IP addresses used by the subnets for your load balancer. The possible values
    #         are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
    #         addresses). </p>
    #
    #   Enum, one of: ["ipv4", "dualstack"]
    #
    #   @return [String]
    #
    # @!attribute customer_owned_ipv4_pool
    #   <p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool (CoIP
    #         pool).</p>
    #
    #   @return [String]
    #
    CreateLoadBalancerInput = ::Struct.new(
      :name,
      :subnets,
      :subnet_mappings,
      :security_groups,
      :scheme,
      :tags,
      :type,
      :ip_address_type,
      :customer_owned_ipv4_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancers
    #   <p>Information about the load balancer.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    CreateLoadBalancerOutput = ::Struct.new(
      :load_balancers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute conditions
    #   <p>The conditions.</p>
    #
    #   @return [Array<RuleCondition>]
    #
    # @!attribute priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    #
    #   @return [Integer]
    #
    # @!attribute actions
    #   <p>The actions.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute tags
    #   <p>The tags to assign to the rule.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateRuleInput = ::Struct.new(
      :listener_arn,
      :conditions,
      :priority,
      :actions,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Information about the rule.</p>
    #
    #   @return [Array<Rule>]
    #
    CreateRuleOutput = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the target group.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, and must not begin or end with a
    #         hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol to use for routing traffic to the targets. For Application Load Balancers,
    #         the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported
    #         protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is
    #         GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a
    #         Lambda function, this parameter does not apply.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute protocol_version
    #   <p>[HTTP/HTTPS protocol] The protocol version. Specify <code>GRPC</code> to send requests to
    #         targets using gRPC. Specify <code>HTTP2</code> to send requests to targets using HTTP/2. The
    #         default is <code>HTTP1</code>, which sends requests to targets using HTTP/1.1.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port on which the targets receive traffic. This port is used unless you specify a port
    #         override when registering the target. If the target is a Lambda function, this parameter does
    #         not apply. If the protocol is GENEVE, the supported port is 6081.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the virtual private cloud (VPC). If the target is a Lambda function,
    #         this parameter does not apply. Otherwise, this parameter is required.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are
    #         not supported for health checks.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets. If the protocol
    #         is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is <code>traffic-port</code>, which is
    #         the port on which each target receives traffic from the load balancer. If the protocol is
    #         GENEVE, the default is port 80.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_enabled
    #   <p>Indicates whether health checks are enabled. If the target type is <code>lambda</code>,
    #         health checks are disabled by default but can be enabled. If the target type is
    #           <code>instance</code>, <code>ip</code>, or <code>alb</code>, health checks are always
    #         enabled and cannot be disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.
    #         If the target group protocol is TCP, TLS, UDP, or TCP_UDP, the supported values are 10 and 30
    #         seconds. If the target group protocol is HTTP or HTTPS, the default is 30 seconds. If the
    #         target group protocol is GENEVE, the default is 10 seconds. If the target type is
    #           <code>lambda</code>, the default is 35 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_timeout_seconds
    #   <p>The amount of time, in seconds, during which no response from a target means a failed
    #         health check. For target groups with a protocol of HTTP, HTTPS, or GENEVE, the default is 5
    #         seconds. For target groups with a protocol of TCP or TLS, this value must be 6 seconds for
    #         HTTP health checks and 10 seconds for TCP and HTTPS health checks. If the target type is
    #           <code>lambda</code>, the default is 30 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy. For target groups with a protocol of HTTP or HTTPS, the default is 5. For
    #         target groups with a protocol of TCP, TLS, or GENEVE, the default is 3. If the target type is
    #           <code>lambda</code>, the default is 5.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering a target
    #         unhealthy. If the target group protocol is HTTP or HTTPS, the default is 2. If the target
    #         group protocol is TCP or TLS, this value must be the same as the healthy threshold count. If
    #         the target group protocol is GENEVE, the default is 3. If the target type is
    #           <code>lambda</code>, the default is 2.</p>
    #
    #   @return [Integer]
    #
    # @!attribute matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful
    #         response from a target.</p>
    #
    #   @return [Matcher]
    #
    # @!attribute target_type
    #   <p>The type of target that you must specify when registering targets with this target group.
    #         You can't specify targets for a target group using more than one target type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>instance</code> - Register targets by instance ID. This is the default
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ip</code> - Register targets by IP address. You can specify IP addresses from
    #             the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range
    #             (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10).
    #             You can't specify publicly routable IP addresses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda</code> - Register a single Lambda function as a target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>alb</code> - Register a single Application Load Balancer as a target.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["instance", "ip", "lambda", "alb"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the target group.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute ip_address_type
    #   <p>The type of IP address used for this target group. The possible values are
    #           <code>ipv4</code> and <code>ipv6</code>. This is an optional parameter. If not specified,
    #         the IP address type defaults to <code>ipv4</code>.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    CreateTargetGroupInput = ::Struct.new(
      :name,
      :protocol,
      :protocol_version,
      :port,
      :vpc_id,
      :health_check_protocol,
      :health_check_port,
      :health_check_enabled,
      :health_check_path,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher,
      :target_type,
      :tags,
      :ip_address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_groups
    #   <p>Information about the target group.</p>
    #
    #   @return [Array<TargetGroup>]
    #
    CreateTargetGroupOutput = ::Struct.new(
      :target_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    DeleteListenerInput = ::Struct.new(
      :listener_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteListenerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    DeleteLoadBalancerInput = ::Struct.new(
      :load_balancer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLoadBalancerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    DeleteRuleInput = ::Struct.new(
      :rule_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    DeleteTargetGroupInput = ::Struct.new(
      :target_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTargetGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets. If you specified a port override when you registered a target, you must
    #         specify both the target ID and the port when you deregister it.</p>
    #
    #   @return [Array<TargetDescription>]
    #
    DeregisterTargetsInput = ::Struct.new(
      :target_group_arn,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterTargetsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeAccountLimitsInput = ::Struct.new(
      :marker,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limits
    #   <p>Information about the limits.</p>
    #
    #   @return [Array<Limit>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeAccountLimitsOutput = ::Struct.new(
      :limits,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Names (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeListenerCertificatesInput = ::Struct.new(
      :listener_arn,
      :marker,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificates
    #   <p>Information about the certificates.</p>
    #
    #   @return [Array<Certificate>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeListenerCertificatesOutput = ::Struct.new(
      :certificates,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute listener_arns
    #   <p>The Amazon Resource Names (ARN) of the listeners.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeListenersInput = ::Struct.new(
      :load_balancer_arn,
      :listener_arns,
      :marker,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listeners
    #   <p>Information about the listeners.</p>
    #
    #   @return [Array<Listener>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeListenersOutput = ::Struct.new(
      :listeners,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    DescribeLoadBalancerAttributesInput = ::Struct.new(
      :load_balancer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>Information about the load balancer attributes.</p>
    #
    #   @return [Array<LoadBalancerAttribute>]
    #
    DescribeLoadBalancerAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arns
    #   <p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load
    #         balancers in a single call.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute names
    #   <p>The names of the load balancers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeLoadBalancersInput = ::Struct.new(
      :load_balancer_arns,
      :names,
      :marker,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancers
    #   <p>Information about the load balancers.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeLoadBalancersOutput = ::Struct.new(
      :load_balancers,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_arns
    #   <p>The Amazon Resource Names (ARN) of the rules.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeRulesInput = ::Struct.new(
      :listener_arn,
      :rule_arns,
      :marker,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Information about the rules.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeRulesOutput = ::Struct.new(
      :rules,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names of the policies.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute load_balancer_type
    #   <p> The type of load balancer. The default lists the SSL policies for all load
    #         balancers.</p>
    #
    #   Enum, one of: ["application", "network", "gateway"]
    #
    #   @return [String]
    #
    DescribeSSLPoliciesInput = ::Struct.new(
      :names,
      :marker,
      :page_size,
      :load_balancer_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ssl_policies
    #   <p>Information about the security policies.</p>
    #
    #   @return [Array<SslPolicy>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeSSLPoliciesOutput = ::Struct.new(
      :ssl_policies,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a
    #         single call.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTagsInput = ::Struct.new(
      :resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_descriptions
    #   <p>Information about the tags.</p>
    #
    #   @return [Array<TagDescription>]
    #
    DescribeTagsOutput = ::Struct.new(
      :tag_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    DescribeTargetGroupAttributesInput = ::Struct.new(
      :target_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>Information about the target group attributes</p>
    #
    #   @return [Array<TargetGroupAttribute>]
    #
    DescribeTargetGroupAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_arns
    #   <p>The Amazon Resource Names (ARN) of the target groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute names
    #   <p>The names of the target groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeTargetGroupsInput = ::Struct.new(
      :load_balancer_arn,
      :target_group_arns,
      :names,
      :marker,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_groups
    #   <p>Information about the target groups.</p>
    #
    #   @return [Array<TargetGroup>]
    #
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #
    #   @return [String]
    #
    DescribeTargetGroupsOutput = ::Struct.new(
      :target_groups,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets.</p>
    #
    #   @return [Array<TargetDescription>]
    #
    DescribeTargetHealthInput = ::Struct.new(
      :target_group_arn,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_health_descriptions
    #   <p>Information about the health of the targets.</p>
    #
    #   @return [Array<TargetHealthDescription>]
    #
    DescribeTargetHealthOutput = ::Struct.new(
      :target_health_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A listener with the specified port already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateListenerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A load balancer with the specified name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateLoadBalancerNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag key was specified more than once.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateTagKeysException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A target group with the specified name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateTargetGroupNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an action that returns a custom HTTP response.</p>
    #
    # @!attribute message_body
    #   <p>The message.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The HTTP response code (2XX, 4XX, or 5XX).</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type.</p>
    #            <p>Valid Values: text/plain | text/css | text/html | application/javascript |
    #         application/json</p>
    #
    #   @return [String]
    #
    FixedResponseActionConfig = ::Struct.new(
      :message_body,
      :status_code,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a forward action.</p>
    #
    # @!attribute target_groups
    #   <p>One or more target groups. For Network Load Balancers, you can specify a single target
    #         group.</p>
    #
    #   @return [Array<TargetGroupTuple>]
    #
    # @!attribute target_group_stickiness_config
    #   <p>The target group stickiness for the rule.</p>
    #
    #   @return [TargetGroupStickinessConfig]
    #
    ForwardActionConfig = ::Struct.new(
      :target_groups,
      :target_group_stickiness_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The health of the specified targets could not be retrieved due to an internal
    #       error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HealthUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a host header condition.</p>
    #
    # @!attribute values
    #   <p>One or more host names. The maximum size of each name is 128 characters. The comparison is
    #         case insensitive. The following wildcard characters are supported: * (matches 0 or more
    #         characters) and ? (matches exactly 1 character).</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
    #         the host name.</p>
    #
    #   @return [Array<String>]
    #
    HostHeaderConditionConfig = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an HTTP header condition.</p>
    #          <p>There is a set of standard HTTP header fields. You can also define custom HTTP header
    #       fields.</p>
    #
    # @!attribute http_header_name
    #   <p>The name of the HTTP header field. The maximum size is 40 characters. The header name is
    #         case insensitive. The allowed characters are specified by RFC 7230. Wildcards are not
    #         supported.</p>
    #            <p>You can't use an HTTP header condition to specify the host header. Use <a>HostHeaderConditionConfig</a> to specify a host header condition.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>One or more strings to compare against the value of the HTTP header. The maximum size of
    #         each string is 128 characters. The comparison strings are case insensitive. The following
    #         wildcard characters are supported: * (matches 0 or more characters) and ? (matches exactly 1
    #         character).</p>
    #            <p>If the same header appears multiple times in the request, we search them in order until a
    #         match is found.</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
    #         the value of the HTTP header. To require that all of the strings are a match, create one
    #         condition per string.</p>
    #
    #   @return [Array<String>]
    #
    HttpHeaderConditionConfig = ::Struct.new(
      :http_header_name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an HTTP method condition.</p>
    #          <p>HTTP defines a set of request methods, also referred to as HTTP verbs. For more
    #       information, see the <a href="https://www.iana.org/assignments/http-methods/http-methods.xhtml">HTTP Method
    #         Registry</a>. You can also define custom HTTP methods.</p>
    #
    # @!attribute values
    #   <p>The name of the request method. The maximum size is 40 characters. The allowed characters
    #         are A-Z, hyphen (-), and underscore (_). The comparison is case sensitive. Wildcards are not
    #         supported; therefore, the method name must be an exact match.</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
    #         the HTTP request method. We recommend that you route GET and HEAD requests in the same way,
    #         because the response to a HEAD request may be cached.</p>
    #
    #   @return [Array<String>]
    #
    HttpRequestMethodConditionConfig = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified configuration is not valid with this protocol.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IncompatibleProtocolsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested configuration is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidConfigurationRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested action is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidLoadBalancerActionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested scheme is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSchemeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified security group does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSecurityGroupException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified subnet is out of available addresses.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSubnetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified target does not exist, is not in the same VPC as the target group, or has an
    #       unsupported instance type.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTargetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpAddressType
    #
    module IpAddressType
      # No documentation available.
      #
      IPV4 = "ipv4"

      # No documentation available.
      #
      DUALSTACK = "dualstack"
    end

    # <p>Information about an Elastic Load Balancing resource limit for your Amazon Web Services
    #       account.</p>
    #
    # @!attribute name
    #   <p>The name of the limit. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>application-load-balancers</p>
    #               </li>
    #               <li>
    #                  <p>condition-values-per-alb-rule</p>
    #               </li>
    #               <li>
    #                  <p>condition-wildcards-per-alb-rule</p>
    #               </li>
    #               <li>
    #                  <p>gateway-load-balancers</p>
    #               </li>
    #               <li>
    #                  <p>gateway-load-balancers-per-vpc</p>
    #               </li>
    #               <li>
    #                  <p>geneve-target-groups</p>
    #               </li>
    #               <li>
    #                  <p>listeners-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>listeners-per-network-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>network-load-balancers</p>
    #               </li>
    #               <li>
    #                  <p>rules-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>target-groups</p>
    #               </li>
    #               <li>
    #                  <p>target-groups-per-action-on-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>target-groups-per-action-on-network-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>target-groups-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-availability-zone-per-gateway-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-availability-zone-per-network-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-network-load-balancer</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute max
    #   <p>The maximum value of the limit.</p>
    #
    #   @return [String]
    #
    Limit = ::Struct.new(
      :name,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a listener.</p>
    #
    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port on which the load balancer is listening.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol for connections from clients to the load balancer.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>[HTTPS or TLS listener] The default certificate for the listener.</p>
    #
    #   @return [Array<Certificate>]
    #
    # @!attribute ssl_policy
    #   <p>[HTTPS or TLS listener] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #
    #   @return [String]
    #
    # @!attribute default_actions
    #   <p>The default actions for the listener.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute alpn_policy
    #   <p>[TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN)
    #         policy.</p>
    #
    #   @return [Array<String>]
    #
    Listener = ::Struct.new(
      :listener_arn,
      :load_balancer_arn,
      :port,
      :protocol,
      :certificates,
      :ssl_policy,
      :default_actions,
      :alpn_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified listener does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ListenerNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a load balancer.</p>
    #
    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The public DNS name of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute canonical_hosted_zone_id
    #   <p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the load balancer was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute scheme
    #   <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
    #         Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
    #         Therefore, Internet-facing load balancers can route requests from clients over the
    #         internet.</p>
    #            <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
    #         internal load balancer is publicly resolvable to the private IP addresses of the nodes.
    #         Therefore, internal load balancers can route requests only from clients with access to the VPC
    #         for the load balancer.</p>
    #
    #   Enum, one of: ["internet-facing", "internal"]
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the load balancer.</p>
    #
    #   @return [LoadBalancerState]
    #
    # @!attribute type
    #   <p>The type of load balancer.</p>
    #
    #   Enum, one of: ["application", "network", "gateway"]
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   <p>The subnets for the load balancer.</p>
    #
    #   @return [Array<AvailabilityZone>]
    #
    # @!attribute security_groups
    #   <p>The IDs of the security groups for the load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ip_address_type
    #   <p>The type of IP addresses used by the subnets for your load balancer. The possible values
    #         are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
    #         addresses).</p>
    #
    #   Enum, one of: ["ipv4", "dualstack"]
    #
    #   @return [String]
    #
    # @!attribute customer_owned_ipv4_pool
    #   <p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool.</p>
    #
    #   @return [String]
    #
    LoadBalancer = ::Struct.new(
      :load_balancer_arn,
      :dns_name,
      :canonical_hosted_zone_id,
      :created_time,
      :load_balancer_name,
      :scheme,
      :vpc_id,
      :state,
      :type,
      :availability_zones,
      :security_groups,
      :ip_address_type,
      :customer_owned_ipv4_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a static IP address for a load balancer.</p>
    #
    # @!attribute ip_address
    #   <p>The static IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute allocation_id
    #   <p>[Network Load Balancers] The allocation ID of the Elastic IP address for an
    #         internal-facing load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute private_i_pv4_address
    #   <p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute i_pv6_address
    #   <p>[Network Load Balancers] The IPv6 address.</p>
    #
    #   @return [String]
    #
    LoadBalancerAddress = ::Struct.new(
      :ip_address,
      :allocation_id,
      :private_i_pv4_address,
      :i_pv6_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a load balancer attribute.</p>
    #
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #
    #            <p>The following attribute is supported by all load balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deletion_protection.enabled</code> - Indicates whether deletion protection is
    #             enabled. The value is <code>true</code> or <code>false</code>. The default is
    #               <code>false</code>.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attributes are supported by both Application Load Balancers and Network Load
    #         Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>access_logs.s3.enabled</code> - Indicates whether access logs are enabled. The
    #             value is <code>true</code> or <code>false</code>. The default is
    #             <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>access_logs.s3.bucket</code> - The name of the S3 bucket for the access logs.
    #             This attribute is required if access logs are enabled. The bucket must exist in the same
    #             region as the load balancer and have a bucket policy that grants Elastic Load Balancing
    #             permissions to write to the bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>access_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the
    #             access logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ipv6.deny-all-igw-traffic</code> - Blocks internet gateway (IGW) access to the
    #             load balancer. It is set to <code>false</code> for internet-facing load balancers and
    #             <code>true</code> for internal load balancers, preventing unintended access to your
    #             internal load balancer through an internet gateway.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attributes are supported by only Application Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>idle_timeout.timeout_seconds</code> - The idle timeout value, in seconds. The
    #             valid range is 1-4000 seconds. The default is 60 seconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.desync_mitigation_mode</code> - Determines how the load balancer
    #             handles requests that might pose a security risk to your application. The possible values
    #             are <code>monitor</code>, <code>defensive</code>, and <code>strictest</code>. The default
    #             is <code>defensive</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.drop_invalid_header_fields.enabled</code> - Indicates whether HTTP
    #             headers with invalid header fields are removed by the load balancer (<code>true</code>) or
    #             routed to targets (<code>false</code>). The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.x_amzn_tls_version_and_cipher_suite.enabled</code> - Indicates
    #             whether the two headers (<code>x-amzn-tls-version</code> and
    #               <code>x-amzn-tls-cipher-suite</code>), which contain information about the negotiated
    #             TLS version and cipher suite, are added to the client request before sending it to the
    #             target. The <code>x-amzn-tls-version</code> header has information about the TLS protocol
    #             version negotiated with the client, and the <code>x-amzn-tls-cipher-suite</code> header
    #             has information about the cipher suite negotiated with the client. Both headers are in
    #             OpenSSL format. The possible values for the attribute are <code>true</code> and
    #               <code>false</code>. The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.xff_client_port.enabled</code> - Indicates whether the
    #               <code>X-Forwarded-For</code> header should preserve the source port that the client used
    #             to connect to the load balancer. The possible values are <code>true</code> and
    #               <code>false</code>. The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http2.enabled</code> - Indicates whether HTTP/2 is enabled. The possible
    #             values are <code>true</code> and <code>false</code>. The default is <code>true</code>.
    #             Elastic Load Balancing requires that message header names contain only alphanumeric
    #             characters and hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>waf.fail_open.enabled</code> - Indicates whether to allow a WAF-enabled load
    #             balancer to route requests to targets if it is unable to forward the request to Amazon Web Services WAF. The possible values are <code>true</code> and <code>false</code>. The
    #             default is <code>false</code>.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attribute is supported by Network Load Balancers and Gateway Load
    #         Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross-zone load
    #             balancing is enabled. The possible values are <code>true</code> and <code>false</code>.
    #             The default is <code>false</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [String]
    #
    LoadBalancerAttribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified load balancer does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LoadBalancerNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LoadBalancerSchemeEnum
    #
    module LoadBalancerSchemeEnum
      # No documentation available.
      #
      INTERNET_FACING = "internet-facing"

      # No documentation available.
      #
      INTERNAL = "internal"
    end

    # <p>Information about the state of the load balancer.</p>
    #
    # @!attribute code
    #   <p>The state code. The initial state of the load balancer is <code>provisioning</code>. After
    #         the load balancer is fully set up and ready to route traffic, its state is
    #         <code>active</code>. If load balancer is routing traffic but does not have the resources it
    #         needs to scale, its state is<code>active_impaired</code>. If the load balancer could not be
    #         set up, its state is <code>failed</code>.</p>
    #
    #   Enum, one of: ["active", "provisioning", "active_impaired", "failed"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A description of the state.</p>
    #
    #   @return [String]
    #
    LoadBalancerState = ::Struct.new(
      :code,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LoadBalancerStateEnum
    #
    module LoadBalancerStateEnum
      # No documentation available.
      #
      ACTIVE = "active"

      # No documentation available.
      #
      PROVISIONING = "provisioning"

      # No documentation available.
      #
      ACTIVE_IMPAIRED = "active_impaired"

      # No documentation available.
      #
      FAILED = "failed"
    end

    # Includes enum constants for LoadBalancerTypeEnum
    #
    module LoadBalancerTypeEnum
      # No documentation available.
      #
      APPLICATION = "application"

      # No documentation available.
      #
      NETWORK = "network"

      # No documentation available.
      #
      GATEWAY = "gateway"
    end

    # <p>The codes to use when checking for a successful response from a target. If the protocol
    #       version is gRPC, these are gRPC codes. Otherwise, these are HTTP codes. </p>
    #
    # @!attribute http_code
    #   <p>For Application Load Balancers, you can specify values between 200 and 499, and the
    #         default value is 200. You can specify multiple values (for example, "200,202") or a range of
    #         values (for example, "200-299").</p>
    #            <p>For Network Load Balancers and Gateway Load Balancers, this must be "200–399".</p>
    #            <p>Note that when using shorthand syntax, some values such as commas need to be
    #         escaped.</p>
    #
    #   @return [String]
    #
    # @!attribute grpc_code
    #   <p>You can specify values between 0 and 99. You can specify multiple values (for example,
    #         "0,1") or a range of values (for example, "0-5"). The default value is 12.</p>
    #
    #   @return [String]
    #
    Matcher = ::Struct.new(
      :http_code,
      :grpc_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port for connections from clients to the load balancer. You cannot specify a port for
    #         a Gateway Load Balancer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol for connections from clients to the load balancer. Application Load Balancers
    #         support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and
    #         TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is
    #         enabled. You cannot specify a protocol for a Gateway Load Balancer.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html describe-ssl-policies">Security policies</a> in the <i>Application Load Balancers Guide</i> or
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html describe-ssl-policies">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    #
    #   @return [Array<Certificate>]
    #
    # @!attribute default_actions
    #   <p>The actions for the default rule.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute alpn_policy
    #   <p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
    #         can specify one policy name. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTP1Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Preferred</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    ModifyListenerInput = ::Struct.new(
      :listener_arn,
      :port,
      :protocol,
      :ssl_policy,
      :certificates,
      :default_actions,
      :alpn_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listeners
    #   <p>Information about the modified listener.</p>
    #
    #   @return [Array<Listener>]
    #
    ModifyListenerOutput = ::Struct.new(
      :listeners,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The load balancer attributes.</p>
    #
    #   @return [Array<LoadBalancerAttribute>]
    #
    ModifyLoadBalancerAttributesInput = ::Struct.new(
      :load_balancer_arn,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>Information about the load balancer attributes.</p>
    #
    #   @return [Array<LoadBalancerAttribute>]
    #
    ModifyLoadBalancerAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute conditions
    #   <p>The conditions.</p>
    #
    #   @return [Array<RuleCondition>]
    #
    # @!attribute actions
    #   <p>The actions.</p>
    #
    #   @return [Array<Action>]
    #
    ModifyRuleInput = ::Struct.new(
      :rule_arn,
      :conditions,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Information about the modified rule.</p>
    #
    #   @return [Array<Rule>]
    #
    ModifyRuleOutput = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes.</p>
    #
    #   @return [Array<TargetGroupAttribute>]
    #
    ModifyTargetGroupAttributesInput = ::Struct.new(
      :target_group_arn,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>Information about the attributes.</p>
    #
    #   @return [Array<TargetGroupAttribute>]
    #
    ModifyTargetGroupAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. It is supported for health checks only if the
    #         protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP
    #         protocols are not supported for health checks.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_enabled
    #   <p>Indicates whether health checks are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.
    #         For TCP health checks, the supported values are 10 or 30 seconds.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_timeout_seconds
    #   <p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means
    #         a failed health check.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering the target
    #         unhealthy. For target groups with a protocol of TCP or TLS, this value must be the same as the
    #         healthy threshold count.</p>
    #
    #   @return [Integer]
    #
    # @!attribute matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful
    #         response from a target.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    #   @return [Matcher]
    #
    ModifyTargetGroupInput = ::Struct.new(
      :target_group_arn,
      :health_check_protocol,
      :health_check_port,
      :health_check_path,
      :health_check_enabled,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_groups
    #   <p>Information about the modified target group.</p>
    #
    #   @return [Array<TargetGroup>]
    #
    ModifyTargetGroupOutput = ::Struct.new(
      :target_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation is not allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationNotPermittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a path pattern condition.</p>
    #
    # @!attribute values
    #   <p>One or more path patterns to compare against the request URL. The maximum size of each
    #         string is 128 characters. The comparison is case sensitive. The following wildcard characters
    #         are supported: * (matches 0 or more characters) and ? (matches exactly 1 character).</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of them matches the
    #         request URL. The path pattern is compared only to the path of the URL, not to its query
    #         string. To compare against the query string, use <a>QueryStringConditionConfig</a>.</p>
    #
    #   @return [Array<String>]
    #
    PathPatternConditionConfig = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified priority is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PriorityInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProtocolEnum
    #
    module ProtocolEnum
      # No documentation available.
      #
      HTTP = "HTTP"

      # No documentation available.
      #
      HTTPS = "HTTPS"

      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      TLS = "TLS"

      # No documentation available.
      #
      UDP = "UDP"

      # No documentation available.
      #
      TCP_UDP = "TCP_UDP"

      # No documentation available.
      #
      GENEVE = "GENEVE"
    end

    # <p>Information about a query string condition.</p>
    #          <p>The query string component of a URI starts after the first '?' character and is terminated
    #       by either a '#' character or the end of the URI. A typical query string contains key/value
    #       pairs separated by '&' characters. The allowed characters are specified by RFC 3986. Any
    #       character can be percentage encoded.</p>
    #
    # @!attribute values
    #   <p>One or more key/value pairs or values to find in the query string. The maximum size of
    #         each string is 128 characters. The comparison is case insensitive. The following wildcard
    #         characters are supported: * (matches 0 or more characters) and ? (matches exactly 1
    #         character). To search for a literal '*' or '?' character in a query string, you must escape
    #         these characters in <code>Values</code> using a '\' character.</p>
    #            <p>If you specify multiple key/value pairs or values, the condition is satisfied if one of
    #         them is found in the query string.</p>
    #
    #   @return [Array<QueryStringKeyValuePair>]
    #
    QueryStringConditionConfig = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a key/value pair.</p>
    #
    # @!attribute key
    #   <p>The key. You can omit the key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value.</p>
    #
    #   @return [String]
    #
    QueryStringKeyValuePair = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a redirect action.</p>
    #          <p>A URI consists of the following components: protocol://hostname:port/path?query. You must
    #       modify at least one of the following components to avoid a redirect loop: protocol, hostname,
    #       port, or path. Any components that you do not modify retain their original values.</p>
    #          <p>You can reuse URI components using the following reserved keywords:</p>
    #          <ul>
    #             <li>
    #                <p>#{protocol}</p>
    #             </li>
    #             <li>
    #                <p>#{host}</p>
    #             </li>
    #             <li>
    #                <p>#{port}</p>
    #             </li>
    #             <li>
    #                <p>#{path} (the leading "/" is removed)</p>
    #             </li>
    #             <li>
    #                <p>#{query}</p>
    #             </li>
    #          </ul>
    #          <p>For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}",
    #       or the query to "#{query}&value=xyz".</p>
    #
    # @!attribute protocol
    #   <p>The protocol. You can specify HTTP, HTTPS, or  {protocol}. You can redirect HTTP to HTTP,
    #         HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port. You can specify a value from 1 to 65535 or  {port}.</p>
    #
    #   @return [String]
    #
    # @!attribute host
    #   <p>The hostname. This component is not percent-encoded. The hostname can contain
    #          {host}.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The absolute path, starting with the leading "/". This component is not percent-encoded.
    #         The path can contain  {host},  {path}, and  {port}.</p>
    #
    #   @return [String]
    #
    # @!attribute query
    #   <p>The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include
    #         the leading "?", as it is automatically added. You can specify any of the reserved
    #         keywords.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP
    #         302).</p>
    #
    #   Enum, one of: ["HTTP_301", "HTTP_302"]
    #
    #   @return [String]
    #
    RedirectActionConfig = ::Struct.new(
      :protocol,
      :port,
      :host,
      :path,
      :query,
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RedirectActionStatusCodeEnum
    #
    module RedirectActionStatusCodeEnum
      # No documentation available.
      #
      HTTP_301 = "HTTP_301"

      # No documentation available.
      #
      HTTP_302 = "HTTP_302"
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets.</p>
    #
    #   @return [Array<TargetDescription>]
    #
    RegisterTargetsInput = ::Struct.new(
      :target_group_arn,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterTargetsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>The certificate to remove. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    #
    #   @return [Array<Certificate>]
    #
    RemoveListenerCertificatesInput = ::Struct.new(
      :listener_arn,
      :certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveListenerCertificatesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_keys
    #   <p>The tag keys for the tags to remove.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsInput = ::Struct.new(
      :resource_arns,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified resource is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a rule.</p>
    #
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority.</p>
    #
    #   @return [String]
    #
    # @!attribute conditions
    #   <p>The conditions. Each rule can include zero or one of the following conditions:
    #           <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and
    #           <code>source-ip</code>, and zero or more of the following conditions:
    #           <code>http-header</code> and <code>query-string</code>.</p>
    #
    #   @return [Array<RuleCondition>]
    #
    # @!attribute actions
    #   <p>The actions. Each rule must include exactly one of the following types of actions:
    #           <code>forward</code>, <code>redirect</code>, or <code>fixed-response</code>, and it must be
    #         the last action to be performed.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute is_default
    #   <p>Indicates whether this is the default rule.</p>
    #
    #   @return [Boolean]
    #
    Rule = ::Struct.new(
      :rule_arn,
      :priority,
      :conditions,
      :actions,
      :is_default,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default ||= false
      end
    end

    # <p>Information about a condition for a rule.</p>
    #          <p>Each rule can optionally include up to one of each of the following conditions:
    #         <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and
    #         <code>source-ip</code>. Each rule can also optionally include one or more of each of the
    #       following conditions: <code>http-header</code> and <code>query-string</code>.</p>
    #
    # @!attribute field
    #   <p>The field in the HTTP request. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>http-header</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>http-request-method</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>host-header</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>path-pattern</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>query-string</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>source-ip</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The condition value. Specify only when <code>Field</code> is <code>host-header</code> or
    #           <code>path-pattern</code>. Alternatively, to specify multiple host names or multiple path
    #         patterns, use <code>HostHeaderConfig</code> or <code>PathPatternConfig</code>.</p>
    #            <p>If <code>Field</code> is <code>host-header</code> and you are not using
    #           <code>HostHeaderConfig</code>, you can specify a single host name (for example,
    #         my.example.com) in <code>Values</code>. A host name is case insensitive, can be up to 128
    #         characters in length, and can contain any of the following characters.</p>
    #            <ul>
    #               <li>
    #                  <p>A-Z, a-z, 0-9</p>
    #               </li>
    #               <li>
    #                  <p>- .</p>
    #               </li>
    #               <li>
    #                  <p>* (matches 0 or more characters)</p>
    #               </li>
    #               <li>
    #                  <p>? (matches exactly 1 character)</p>
    #               </li>
    #            </ul>
    #            <p>If <code>Field</code> is <code>path-pattern</code> and you are not using
    #           <code>PathPatternConfig</code>, you can specify a single path pattern (for example, /img/*)
    #         in <code>Values</code>. A path pattern is case-sensitive, can be up to 128 characters in
    #         length, and can contain any of the following characters.</p>
    #            <ul>
    #               <li>
    #                  <p>A-Z, a-z, 0-9</p>
    #               </li>
    #               <li>
    #                  <p>_ - . $ / ~ " ' @ : +</p>
    #               </li>
    #               <li>
    #                  <p>& (using &amp;)</p>
    #               </li>
    #               <li>
    #                  <p>* (matches 0 or more characters)</p>
    #               </li>
    #               <li>
    #                  <p>? (matches exactly 1 character)</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute host_header_config
    #   <p>Information for a host header condition. Specify only when <code>Field</code> is
    #           <code>host-header</code>.</p>
    #
    #   @return [HostHeaderConditionConfig]
    #
    # @!attribute path_pattern_config
    #   <p>Information for a path pattern condition. Specify only when <code>Field</code> is
    #           <code>path-pattern</code>.</p>
    #
    #   @return [PathPatternConditionConfig]
    #
    # @!attribute http_header_config
    #   <p>Information for an HTTP header condition. Specify only when <code>Field</code> is
    #           <code>http-header</code>.</p>
    #
    #   @return [HttpHeaderConditionConfig]
    #
    # @!attribute query_string_config
    #   <p>Information for a query string condition. Specify only when <code>Field</code> is
    #           <code>query-string</code>.</p>
    #
    #   @return [QueryStringConditionConfig]
    #
    # @!attribute http_request_method_config
    #   <p>Information for an HTTP method condition. Specify only when <code>Field</code> is
    #           <code>http-request-method</code>.</p>
    #
    #   @return [HttpRequestMethodConditionConfig]
    #
    # @!attribute source_ip_config
    #   <p>Information for a source IP condition. Specify only when <code>Field</code> is
    #           <code>source-ip</code>.</p>
    #
    #   @return [SourceIpConditionConfig]
    #
    RuleCondition = ::Struct.new(
      :field,
      :values,
      :host_header_config,
      :path_pattern_config,
      :http_header_config,
      :query_string_config,
      :http_request_method_config,
      :source_ip_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified rule does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RuleNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the priorities for the rules for a listener.</p>
    #
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The rule priority.</p>
    #
    #   @return [Integer]
    #
    RulePriorityPair = ::Struct.new(
      :rule_arn,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified SSL policy does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SSLPolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The IP address type. The possible values are <code>ipv4</code> (for IPv4 addresses) and
    #           <code>dualstack</code> (for IPv4 and IPv6 addresses).
    #          You can’t specify
    #           <code>dualstack</code> for a load balancer with a UDP or TCP_UDP listener.</p>
    #
    #   Enum, one of: ["ipv4", "dualstack"]
    #
    #   @return [String]
    #
    SetIpAddressTypeInput = ::Struct.new(
      :load_balancer_arn,
      :ip_address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_address_type
    #   <p>The IP address type.</p>
    #
    #   Enum, one of: ["ipv4", "dualstack"]
    #
    #   @return [String]
    #
    SetIpAddressTypeOutput = ::Struct.new(
      :ip_address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_priorities
    #   <p>The rule priorities.</p>
    #
    #   @return [Array<RulePriorityPair>]
    #
    SetRulePrioritiesInput = ::Struct.new(
      :rule_priorities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Information about the rules.</p>
    #
    #   @return [Array<Rule>]
    #
    SetRulePrioritiesOutput = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The IDs of the security groups.</p>
    #
    #   @return [Array<String>]
    #
    SetSecurityGroupsInput = ::Struct.new(
      :load_balancer_arn,
      :security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the load balancer.</p>
    #
    #   @return [Array<String>]
    #
    SetSecurityGroupsOutput = ::Struct.new(
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability
    #         Zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_mappings
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones. You cannot specify Elastic IP addresses for your subnets.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can specify one Elastic IP address per subnet if you need static IP addresses for your
    #         internet-facing load balancer. For internal load balancers, you can specify one private IP
    #         address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
    #         can specify one IPv6 address per subnet.</p>
    #
    #   @return [Array<SubnetMapping>]
    #
    # @!attribute ip_address_type
    #   <p>[Network Load Balancers] The type of IP addresses used by the subnets for your load
    #         balancer. The possible values are <code>ipv4</code> (for IPv4 addresses) and
    #           <code>dualstack</code> (for IPv4 and IPv6 addresses). You can’t specify
    #           <code>dualstack</code> for a load balancer with a UDP or TCP_UDP listener.
    #         .</p>
    #
    #   Enum, one of: ["ipv4", "dualstack"]
    #
    #   @return [String]
    #
    SetSubnetsInput = ::Struct.new(
      :load_balancer_arn,
      :subnets,
      :subnet_mappings,
      :ip_address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute availability_zones
    #   <p>Information about the subnets.</p>
    #
    #   @return [Array<AvailabilityZone>]
    #
    # @!attribute ip_address_type
    #   <p>[Network Load Balancers] The IP address type.</p>
    #
    #   Enum, one of: ["ipv4", "dualstack"]
    #
    #   @return [String]
    #
    SetSubnetsOutput = ::Struct.new(
      :availability_zones,
      :ip_address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a source IP condition.</p>
    #          <p>You can use this condition to route based on the IP address of the source that connects to
    #       the load balancer. If a client is behind a proxy, this is the IP address of the proxy not the
    #       IP address of the client.</p>
    #
    # @!attribute values
    #   <p>One or more source IP addresses, in CIDR format. You can use both IPv4 and IPv6 addresses.
    #         Wildcards are not supported.</p>
    #            <p>If you specify multiple addresses, the condition is satisfied if the source IP address of
    #         the request matches one of the CIDR blocks. This condition is not satisfied by the addresses
    #         in the X-Forwarded-For header. To search for addresses in the X-Forwarded-For header, use
    #           <a>HttpHeaderConditionConfig</a>.</p>
    #
    #   @return [Array<String>]
    #
    SourceIpConditionConfig = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a policy used for SSL negotiation.</p>
    #
    # @!attribute ssl_protocols
    #   <p>The protocols.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ciphers
    #   <p>The ciphers.</p>
    #
    #   @return [Array<Cipher>]
    #
    # @!attribute name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_load_balancer_types
    #   <p> The supported load balancers. </p>
    #
    #   @return [Array<String>]
    #
    SslPolicy = ::Struct.new(
      :ssl_protocols,
      :ciphers,
      :name,
      :supported_load_balancer_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a subnet mapping.</p>
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute allocation_id
    #   <p>[Network Load Balancers] The allocation ID of the Elastic IP address for an
    #         internet-facing load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute private_i_pv4_address
    #   <p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute i_pv6_address
    #   <p>[Network Load Balancers] The IPv6 address.</p>
    #
    #   @return [String]
    #
    SubnetMapping = ::Struct.new(
      :subnet_id,
      :allocation_id,
      :private_i_pv4_address,
      :i_pv6_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified subnet does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a tag.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tags associated with a resource.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Information about the tags.</p>
    #
    #   @return [Array<Tag>]
    #
    TagDescription = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a target.</p>
    #
    # @!attribute id
    #   <p>The ID of the target. If the target type of the target group is <code>instance</code>,
    #         specify an instance ID. If the target type is <code>ip</code>, specify an IP address. If the
    #         target type is <code>lambda</code>, specify the ARN of the Lambda function. If the target type
    #         is <code>alb</code>, specify the ARN of the Application Load Balancer target. </p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port on which the target is listening. If the target group protocol is GENEVE, the
    #         supported port is 6081. If the target type is <code>alb</code>, the targeted Application Load
    #         Balancer must have at least one listener whose port matches the target group port. Not used if
    #         the target is a Lambda function.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>An Availability Zone or <code>all</code>. This determines whether the target receives
    #         traffic from the load balancer nodes in the specified Availability Zone or from all enabled
    #         Availability Zones for the load balancer.</p>
    #            <p>This parameter is not supported if the target type of the target group is
    #           <code>instance</code> or <code>alb</code>.</p>
    #            <p>If the target type is <code>ip</code> and the IP address is in a subnet of the VPC for the
    #         target group, the Availability Zone is automatically detected and this parameter is optional.
    #         If the IP address is outside the VPC, this parameter is required.</p>
    #            <p>With an Application Load Balancer, if the target type is <code>ip</code> and the IP
    #         address is outside the VPC for the target group, the only supported value is
    #         <code>all</code>.</p>
    #            <p>If the target type is <code>lambda</code>, this parameter is optional and the only
    #         supported value is <code>all</code>.</p>
    #
    #   @return [String]
    #
    TargetDescription = ::Struct.new(
      :id,
      :port,
      :availability_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a target group.</p>
    #
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_name
    #   <p>The name of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol to use for routing traffic to the targets.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port on which the targets are listening. Not used if the target is a Lambda
    #         function.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the targets.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_protocol
    #   <p>The protocol to use to connect with the target. The GENEVE, TLS, UDP, and TCP_UDP
    #         protocols are not supported for health checks.</p>
    #
    #   Enum, one of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #
    #   @return [String]
    #
    # @!attribute health_check_port
    #   <p>The port to use to connect with the target.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_enabled
    #   <p>Indicates whether health checks are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual
    #         target.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_timeout_seconds
    #   <p>The amount of time, in seconds, during which no response means a failed health
    #         check.</p>
    #
    #   @return [Integer]
    #
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering the target
    #         unhealthy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health_check_path
    #   <p>The destination for health checks on the targets.</p>
    #
    #   @return [String]
    #
    # @!attribute matcher
    #   <p>The HTTP or gRPC codes to use when checking for a successful response from a
    #         target.</p>
    #
    #   @return [Matcher]
    #
    # @!attribute load_balancer_arns
    #   <p>The Amazon Resource Names (ARN) of the load balancers that route traffic to this target
    #         group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_type
    #   <p>The type of target that you must specify when registering targets with this target group.
    #         The possible values are <code>instance</code> (register targets by instance ID),
    #           <code>ip</code> (register targets by IP address), <code>lambda</code> (register a single
    #         Lambda function as a target), or <code>alb</code> (register a single Application Load Balancer
    #         as a target).</p>
    #
    #   Enum, one of: ["instance", "ip", "lambda", "alb"]
    #
    #   @return [String]
    #
    # @!attribute protocol_version
    #   <p>[HTTP/HTTPS protocol] The protocol version. The possible values are <code>GRPC</code>,
    #           <code>HTTP1</code>, and <code>HTTP2</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_type
    #   <p>The type of IP address used for this target group. The possible values are
    #           <code>ipv4</code> and <code>ipv6</code>. This is an optional parameter. If not specified,
    #         the IP address type defaults to <code>ipv4</code>.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    TargetGroup = ::Struct.new(
      :target_group_arn,
      :target_group_name,
      :protocol,
      :port,
      :vpc_id,
      :health_check_protocol,
      :health_check_port,
      :health_check_enabled,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :health_check_path,
      :matcher,
      :load_balancer_arns,
      :target_type,
      :protocol_version,
      :ip_address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of load balancers per target group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetGroupAssociationLimitException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a target group attribute.</p>
    #
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #
    #            <p>The following attribute is supported by all load balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deregistration_delay.timeout_seconds</code> - The amount of time, in seconds,
    #             for Elastic Load Balancing to wait before changing the state of a deregistering target
    #             from <code>draining</code> to <code>unused</code>. The range is 0-3600 seconds. The
    #             default value is 300 seconds. If the target is a Lambda function, this attribute is not
    #             supported.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attributes are supported by both Application Load Balancers and Network Load
    #         Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>stickiness.enabled</code> - Indicates whether sticky sessions are enabled. The
    #             value is <code>true</code> or <code>false</code>. The default is
    #             <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.type</code> - The type of sticky sessions. The possible values are
    #               <code>lb_cookie</code> and <code>app_cookie</code> for Application Load Balancers or
    #               <code>source_ip</code> for Network Load Balancers.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attributes are supported only if the load balancer is an Application Load
    #         Balancer and the target is an instance or an IP address:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>load_balancing.algorithm.type</code> - The load balancing algorithm determines
    #             how the load balancer selects targets when routing requests. The value is
    #               <code>round_robin</code> or <code>least_outstanding_requests</code>. The default is
    #               <code>round_robin</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>slow_start.duration_seconds</code> - The time period, in seconds, during which a
    #             newly registered target receives an increasing share of the traffic to the target group.
    #             After this time period ends, the target receives its full share of traffic. The range is
    #             30-900 seconds (15 minutes). The default is 0 seconds (disabled).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.app_cookie.cookie_name</code> - Indicates the name of the
    #             application-based cookie. Names that start with the following prefixes are not allowed:
    #               <code>AWSALB</code>, <code>AWSALBAPP</code>, and <code>AWSALBTG</code>; they're reserved
    #             for use by the load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.app_cookie.duration_seconds</code> - The time period, in seconds,
    #             during which requests from a client should be routed to the same target. After this time
    #             period expires, the application-based cookie is considered stale. The range is 1 second to
    #             1 week (604800 seconds). The default value is 1 day (86400 seconds).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.lb_cookie.duration_seconds</code> - The time period, in seconds,
    #             during which requests from a client should be routed to the same target. After this time
    #             period expires, the load balancer-generated cookie is considered stale. The range is 1
    #             second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attribute is supported only if the load balancer is an Application Load
    #         Balancer and the target is a Lambda function:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>lambda.multi_value_headers.enabled</code> - Indicates whether the request and
    #             response headers that are exchanged between the load balancer and the Lambda function
    #             include arrays of values or strings. The value is <code>true</code> or <code>false</code>.
    #             The default is <code>false</code>. If the value is <code>false</code> and the request
    #             contains a duplicate header field name or query parameter key, the load balancer uses the
    #             last value sent by the client.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following attributes are supported only by Network Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deregistration_delay.connection_termination.enabled</code> - Indicates whether
    #             the load balancer terminates connections at the end of the deregistration timeout. The
    #             value is <code>true</code> or <code>false</code>. The default is
    #             <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>preserve_client_ip.enabled</code> - Indicates whether client IP preservation is
    #             enabled. The value is <code>true</code> or <code>false</code>. The default is disabled if
    #             the target group type is IP address and the target group protocol is TCP or TLS.
    #             Otherwise, the default is enabled. Client IP preservation cannot be disabled for UDP and
    #             TCP_UDP target groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>proxy_protocol_v2.enabled</code> - Indicates whether Proxy Protocol version 2 is
    #             enabled. The value is <code>true</code> or <code>false</code>. The default is
    #               <code>false</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [String]
    #
    TargetGroupAttribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetGroupIpAddressTypeEnum
    #
    module TargetGroupIpAddressTypeEnum
      # No documentation available.
      #
      IPV4 = "ipv4"

      # No documentation available.
      #
      IPV6 = "ipv6"
    end

    # <p>The specified target group does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetGroupNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the target group stickiness for a rule.</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether target group stickiness is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute duration_seconds
    #   <p>The time period, in seconds, during which requests from a client should be routed to the
    #         same target group. The range is 1-604800 seconds (7 days).</p>
    #
    #   @return [Integer]
    #
    TargetGroupStickinessConfig = ::Struct.new(
      :enabled,
      :duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about how traffic will be distributed between multiple target groups in a
    #       forward rule.</p>
    #
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The weight. The range is 0 to 999.</p>
    #
    #   @return [Integer]
    #
    TargetGroupTuple = ::Struct.new(
      :target_group_arn,
      :weight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the current health of a target.</p>
    #
    # @!attribute state
    #   <p>The state of the target.</p>
    #
    #   Enum, one of: ["initial", "healthy", "unhealthy", "unused", "draining", "unavailable"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason code.</p>
    #
    #            <p>If the target state is <code>healthy</code>, a reason code is not provided.</p>
    #
    #            <p>If the target state is <code>initial</code>, the reason code can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered
    #             with the load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the
    #             minimum number of health checks required to determine its health status.</p>
    #               </li>
    #            </ul>
    #
    #            <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.ResponseCodeMismatch</code> - The health checks did not return an
    #             expected HTTP code. Applies only to Application Load Balancers and Gateway Load
    #             Balancers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.Timeout</code> - The health check requests timed out. Applies only to
    #             Application Load Balancers and Gateway Load Balancers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.FailedHealthChecks</code> - The load balancer received an error while
    #             establishing a connection to the target or the target response was malformed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Elb.InternalError</code> - The health checks failed due to an internal error.
    #             Applies only to Application Load Balancers.</p>
    #               </li>
    #            </ul>
    #
    #            <p>If the target state is <code>unused</code>, the reason code can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.NotRegistered</code> - The target is not registered with the target
    #             group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.NotInUse</code> - The target group is not used by any load balancer or
    #             the target is in an Availability Zone that is not enabled for its load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.InvalidState</code> - The target is in the stopped or terminated
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load
    #             balancer.</p>
    #               </li>
    #            </ul>
    #
    #            <p>If the target state is <code>draining</code>, the reason code can be the following
    #         value:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.DeregistrationInProgress</code> - The target is in the process of being
    #             deregistered and the deregistration delay period has not expired.</p>
    #               </li>
    #            </ul>
    #
    #            <p>If the target state is <code>unavailable</code>, the reason code can be the following
    #         value:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.HealthCheckDisabled</code> - Health checks are disabled for the target
    #             group. Applies only to Application Load Balancers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Elb.InternalError</code> - Target health is unavailable due to an internal
    #             error. Applies only to Network Load Balancers.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Elb.RegistrationInProgress", "Elb.InitialHealthChecking", "Target.ResponseCodeMismatch", "Target.Timeout", "Target.FailedHealthChecks", "Target.NotRegistered", "Target.NotInUse", "Target.DeregistrationInProgress", "Target.InvalidState", "Target.IpUnusable", "Target.HealthCheckDisabled", "Elb.InternalError"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the target health that provides additional details. If the state is
    #           <code>healthy</code>, a description is not provided.</p>
    #
    #   @return [String]
    #
    TargetHealth = ::Struct.new(
      :state,
      :reason,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the health of a target.</p>
    #
    # @!attribute target
    #   <p>The description of the target.</p>
    #
    #   @return [TargetDescription]
    #
    # @!attribute health_check_port
    #   <p>The port to use to connect with the target.</p>
    #
    #   @return [String]
    #
    # @!attribute target_health
    #   <p>The health information for the target.</p>
    #
    #   @return [TargetHealth]
    #
    TargetHealthDescription = ::Struct.new(
      :target,
      :health_check_port,
      :target_health,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetHealthReasonEnum
    #
    module TargetHealthReasonEnum
      # No documentation available.
      #
      REGISTRATION_IN_PROGRESS = "Elb.RegistrationInProgress"

      # No documentation available.
      #
      INITIAL_HEALTH_CHECKING = "Elb.InitialHealthChecking"

      # No documentation available.
      #
      RESPONSE_CODE_MISMATCH = "Target.ResponseCodeMismatch"

      # No documentation available.
      #
      TIMEOUT = "Target.Timeout"

      # No documentation available.
      #
      FAILED_HEALTH_CHECKS = "Target.FailedHealthChecks"

      # No documentation available.
      #
      NOT_REGISTERED = "Target.NotRegistered"

      # No documentation available.
      #
      NOT_IN_USE = "Target.NotInUse"

      # No documentation available.
      #
      DEREGISTRATION_IN_PROGRESS = "Target.DeregistrationInProgress"

      # No documentation available.
      #
      INVALID_STATE = "Target.InvalidState"

      # No documentation available.
      #
      IP_UNUSABLE = "Target.IpUnusable"

      # No documentation available.
      #
      HEALTH_CHECK_DISABLED = "Target.HealthCheckDisabled"

      # No documentation available.
      #
      INTERNAL_ERROR = "Elb.InternalError"
    end

    # Includes enum constants for TargetHealthStateEnum
    #
    module TargetHealthStateEnum
      # No documentation available.
      #
      INITIAL = "initial"

      # No documentation available.
      #
      HEALTHY = "healthy"

      # No documentation available.
      #
      UNHEALTHY = "unhealthy"

      # No documentation available.
      #
      UNUSED = "unused"

      # No documentation available.
      #
      DRAINING = "draining"

      # No documentation available.
      #
      UNAVAILABLE = "unavailable"
    end

    # Includes enum constants for TargetTypeEnum
    #
    module TargetTypeEnum
      # No documentation available.
      #
      INSTANCE = "instance"

      # No documentation available.
      #
      IP = "ip"

      # No documentation available.
      #
      LAMBDA = "lambda"

      # No documentation available.
      #
      ALB = "alb"
    end

    # <p>You've reached the limit on the number of actions per rule.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyActionsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of certificates per load balancer.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCertificatesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of listeners per load balancer.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyListenersException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of load balancers for your Amazon Web Services
    #       account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyLoadBalancersException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of times a target can be registered with a load
    #       balancer.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRegistrationsForTargetIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of rules per load balancer.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRulesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of tags per load balancer.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of target groups for your Amazon Web Services
    #       account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTargetGroupsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of targets.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTargetsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of unique target groups per load balancer across
    #       all listeners. If a target group is used by multiple actions for a load balancer, it is
    #       counted as only one use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyUniqueTargetGroupsPerLoadBalancerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified protocol is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedProtocolException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
