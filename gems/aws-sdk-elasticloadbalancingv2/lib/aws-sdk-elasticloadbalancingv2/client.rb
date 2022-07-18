# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ElasticLoadBalancingV2
  # An API client for ElasticLoadBalancing_v10
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Elastic Load Balancing</fullname>
  #
  #          <p>A load balancer distributes incoming traffic across targets, such as your EC2 instances.
  #       This enables you to increase the availability of your application. The load balancer also
  #       monitors the health of its registered targets and ensures that it routes traffic only to
  #       healthy targets. You configure your load balancer to accept incoming traffic by specifying one
  #       or more listeners, which are configured with a protocol and port number for connections from
  #       clients to the load balancer. You configure a target group with a protocol and port number for
  #       connections from the load balancer to the targets, and with health check settings to be used
  #       when checking the health status of the targets.</p>
  #
  #          <p>Elastic Load Balancing supports the following types of load balancers: Application Load
  #       Balancers, Network Load Balancers, Gateway Load Balancers, and Classic Load Balancers. This
  #       reference covers the following load balancer types:</p>
  #          <ul>
  #             <li>
  #                <p>Application Load Balancer - Operates at the application layer (layer 7) and supports
  #           HTTP and HTTPS.</p>
  #             </li>
  #             <li>
  #                <p>Network Load Balancer - Operates at the transport layer (layer 4) and supports TCP,
  #           TLS, and UDP.</p>
  #             </li>
  #             <li>
  #                <p>Gateway Load Balancer - Operates at the network layer (layer 3).</p>
  #             </li>
  #          </ul>
  #
  #          <p>For more information, see the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User
  #       Guide</a>.</p>
  #
  #
  #
  #
  #
  #
  #
  #          <p>All Elastic Load Balancing operations are idempotent, which means that they complete at
  #       most one time. If you repeat an operation, it succeeds.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::ElasticLoadBalancingV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds the specified SSL server certificate to the certificate list for the specified HTTPS
    #       or TLS listener.</p>
    #          <p>If the certificate in already in the certificate list, the call is successful but the
    #       certificate is not added again.</p>
    #
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html">HTTPS
    #         listeners</a> in the <i>Application Load Balancers Guide</i> or <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html">TLS
    #         listeners</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddListenerCertificatesInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [Array<Certificate>] :certificates
    #   <p>The certificate to add. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    #
    # @return [Types::AddListenerCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_listener_certificates(
    #     listener_arn: 'ListenerArn', # required
    #     certificates: [
    #       {
    #         certificate_arn: 'CertificateArn',
    #         is_default: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddListenerCertificatesOutput
    #   resp.data.certificates #=> Array<Certificate>
    #   resp.data.certificates[0] #=> Types::Certificate
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.certificates[0].is_default #=> Boolean
    #
    def add_listener_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddListenerCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddListenerCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddListenerCertificates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateNotFoundException, Errors::ListenerNotFoundException, Errors::TooManyCertificatesException]),
        data_parser: Parsers::AddListenerCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddListenerCertificates,
        stubs: @stubs,
        params_class: Params::AddListenerCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_listener_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your
    #       Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups,
    #       listeners, and rules.</p>
    #          <p>Each tag consists of a key and an optional value. If a resource already has a tag with the
    #       same key, <code>AddTags</code> updates its value.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags.</p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     resource_arns: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsOutput
    #
    def add_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTags
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateTagKeysException, Errors::ListenerNotFoundException, Errors::LoadBalancerNotFoundException, Errors::RuleNotFoundException, Errors::TargetGroupNotFoundException, Errors::TooManyTagsException]),
        data_parser: Parsers::AddTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTags,
        stubs: @stubs,
        params_class: Params::AddTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a listener for the specified Application Load Balancer, Network Load Balancer, or
    #       Gateway Load Balancer.</p>
    #
    #
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html">Listeners for
    #             your Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html">Listeners for
    #             your Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-listeners.html">Listeners for your
    #             Gateway Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation is idempotent, which means that it completes at most one time. If you
    #       attempt to create multiple listeners with the same settings, each call succeeds.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateListenerInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [String] :protocol
    #   <p>The protocol for connections from clients to the load balancer. For Application Load
    #         Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the
    #         supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP
    #         protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load
    #         Balancer.</p>
    #
    # @option params [Integer] :port
    #   <p>The port on which the load balancer is listening. You cannot specify a port for a Gateway
    #         Load Balancer.</p>
    #
    # @option params [String] :ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security policies</a> in the <i>Application Load Balancers Guide</i> and
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    # @option params [Array<Certificate>] :certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    #
    # @option params [Array<Action>] :default_actions
    #   <p>The actions for the default rule.</p>
    #
    # @option params [Array<String>] :alpn_policy
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
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the listener.</p>
    #
    # @return [Types::CreateListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener(
    #     load_balancer_arn: 'LoadBalancerArn', # required
    #     protocol: 'HTTP', # accepts ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #     port: 1,
    #     ssl_policy: 'SslPolicy',
    #     certificates: [
    #       {
    #         certificate_arn: 'CertificateArn',
    #         is_default: false
    #       }
    #     ],
    #     default_actions: [
    #       {
    #         type: 'forward', # required - accepts ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #         target_group_arn: 'TargetGroupArn',
    #         authenticate_oidc_config: {
    #           issuer: 'Issuer', # required
    #           authorization_endpoint: 'AuthorizationEndpoint', # required
    #           token_endpoint: 'TokenEndpoint', # required
    #           user_info_endpoint: 'UserInfoEndpoint', # required
    #           client_id: 'ClientId', # required
    #           client_secret: 'ClientSecret',
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny', # accepts ["deny", "allow", "authenticate"]
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: 'UserPoolArn', # required
    #           user_pool_client_id: 'UserPoolClientId', # required
    #           user_pool_domain: 'UserPoolDomain', # required
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny' # accepts ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: 'Protocol',
    #           port: 'Port',
    #           host: 'Host',
    #           path: 'Path',
    #           query: 'Query',
    #           status_code: 'HTTP_301' # required - accepts ["HTTP_301", "HTTP_302"]
    #         },
    #         fixed_response_config: {
    #           message_body: 'MessageBody',
    #           status_code: 'StatusCode', # required
    #           content_type: 'ContentType'
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: 'TargetGroupArn',
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ], # required
    #     alpn_policy: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateListenerOutput
    #   resp.data.listeners #=> Array<Listener>
    #   resp.data.listeners[0] #=> Types::Listener
    #   resp.data.listeners[0].listener_arn #=> String
    #   resp.data.listeners[0].load_balancer_arn #=> String
    #   resp.data.listeners[0].port #=> Integer
    #   resp.data.listeners[0].protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.listeners[0].certificates #=> Array<Certificate>
    #   resp.data.listeners[0].certificates[0] #=> Types::Certificate
    #   resp.data.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.data.listeners[0].certificates[0].is_default #=> Boolean
    #   resp.data.listeners[0].ssl_policy #=> String
    #   resp.data.listeners[0].default_actions #=> Array<Action>
    #   resp.data.listeners[0].default_actions[0] #=> Types::Action
    #   resp.data.listeners[0].default_actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.listeners[0].default_actions[0].order #=> Integer
    #   resp.data.listeners[0].default_actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.listeners[0].default_actions[0].redirect_config.protocol #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.port #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.host #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.path #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.query #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.listeners[0].default_actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.message_body #=> String
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.status_code #=> String
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.content_type #=> String
    #   resp.data.listeners[0].default_actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.listeners[0].alpn_policy #=> Array<String>
    #   resp.data.listeners[0].alpn_policy[0] #=> String
    #
    def create_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateListenerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateListener
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ALPNPolicyNotSupportedException, Errors::CertificateNotFoundException, Errors::DuplicateListenerException, Errors::IncompatibleProtocolsException, Errors::InvalidConfigurationRequestException, Errors::InvalidLoadBalancerActionException, Errors::LoadBalancerNotFoundException, Errors::SSLPolicyNotFoundException, Errors::TargetGroupAssociationLimitException, Errors::TargetGroupNotFoundException, Errors::TooManyActionsException, Errors::TooManyCertificatesException, Errors::TooManyListenersException, Errors::TooManyRegistrationsForTargetIdException, Errors::TooManyTagsException, Errors::TooManyTargetsException, Errors::TooManyUniqueTargetGroupsPerLoadBalancerException, Errors::UnsupportedProtocolException]),
        data_parser: Parsers::CreateListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateListener,
        stubs: @stubs,
        params_class: Params::CreateListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Application Load Balancer, Network Load Balancer, or Gateway Load
    #       Balancer.</p>
    #
    #
    #
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html">Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html">Network Load
    #             Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html">Gateway Load
    #             Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation is idempotent, which means that it completes at most one time. If you
    #       attempt to create multiple load balancers with the same settings, each call succeeds.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLoadBalancerInput}.
    #
    # @option params [String] :name
    #   <p>The name of the load balancer.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must
    #         not begin with "internal-".</p>
    #
    # @option params [Array<String>] :subnets
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
    # @option params [Array<SubnetMapping>] :subnet_mappings
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
    # @option params [Array<String>] :security_groups
    #   <p>[Application Load Balancers] The IDs of the security groups for the load balancer.</p>
    #
    # @option params [String] :scheme
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
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the load balancer.</p>
    #
    # @option params [String] :type
    #   <p>The type of load balancer. The default is <code>application</code>.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The type of IP addresses used by the subnets for your load balancer. The possible values
    #         are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
    #         addresses). </p>
    #
    # @option params [String] :customer_owned_ipv4_pool
    #   <p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool (CoIP
    #         pool).</p>
    #
    # @return [Types::CreateLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer(
    #     name: 'Name', # required
    #     subnets: [
    #       'member'
    #     ],
    #     subnet_mappings: [
    #       {
    #         subnet_id: 'SubnetId',
    #         allocation_id: 'AllocationId',
    #         private_i_pv4_address: 'PrivateIPv4Address',
    #         i_pv6_address: 'IPv6Address'
    #       }
    #     ],
    #     security_groups: [
    #       'member'
    #     ],
    #     scheme: 'internet-facing', # accepts ["internet-facing", "internal"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     type: 'application', # accepts ["application", "network", "gateway"]
    #     ip_address_type: 'ipv4', # accepts ["ipv4", "dualstack"]
    #     customer_owned_ipv4_pool: 'CustomerOwnedIpv4Pool'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLoadBalancerOutput
    #   resp.data.load_balancers #=> Array<LoadBalancer>
    #   resp.data.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.load_balancers[0].load_balancer_arn #=> String
    #   resp.data.load_balancers[0].dns_name #=> String
    #   resp.data.load_balancers[0].canonical_hosted_zone_id #=> String
    #   resp.data.load_balancers[0].created_time #=> Time
    #   resp.data.load_balancers[0].load_balancer_name #=> String
    #   resp.data.load_balancers[0].scheme #=> String, one of ["internet-facing", "internal"]
    #   resp.data.load_balancers[0].vpc_id #=> String
    #   resp.data.load_balancers[0].state #=> Types::LoadBalancerState
    #   resp.data.load_balancers[0].state.code #=> String, one of ["active", "provisioning", "active_impaired", "failed"]
    #   resp.data.load_balancers[0].state.reason #=> String
    #   resp.data.load_balancers[0].type #=> String, one of ["application", "network", "gateway"]
    #   resp.data.load_balancers[0].availability_zones #=> Array<AvailabilityZone>
    #   resp.data.load_balancers[0].availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.load_balancers[0].availability_zones[0].zone_name #=> String
    #   resp.data.load_balancers[0].availability_zones[0].subnet_id #=> String
    #   resp.data.load_balancers[0].availability_zones[0].outpost_id #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses #=> Array<LoadBalancerAddress>
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0] #=> Types::LoadBalancerAddress
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].ip_address #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].allocation_id #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].private_i_pv4_address #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].i_pv6_address #=> String
    #   resp.data.load_balancers[0].security_groups #=> Array<String>
    #   resp.data.load_balancers[0].security_groups[0] #=> String
    #   resp.data.load_balancers[0].ip_address_type #=> String, one of ["ipv4", "dualstack"]
    #   resp.data.load_balancers[0].customer_owned_ipv4_pool #=> String
    #
    def create_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLoadBalancer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AllocationIdNotFoundException, Errors::AvailabilityZoneNotSupportedException, Errors::DuplicateLoadBalancerNameException, Errors::DuplicateTagKeysException, Errors::InvalidConfigurationRequestException, Errors::InvalidSchemeException, Errors::InvalidSecurityGroupException, Errors::InvalidSubnetException, Errors::OperationNotPermittedException, Errors::ResourceInUseException, Errors::SubnetNotFoundException, Errors::TooManyLoadBalancersException, Errors::TooManyTagsException]),
        data_parser: Parsers::CreateLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLoadBalancer,
        stubs: @stubs,
        params_class: Params::CreateLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a rule for the specified listener. The listener must be associated with an
    #       Application Load Balancer.</p>
    #          <p>Each rule consists of a priority, one or more actions, and one or more conditions. Rules
    #       are evaluated in priority order, from the lowest value to the highest value. When the
    #       conditions for a rule are met, its actions are performed. If the conditions for no rules are
    #       met, the actions for the default rule are performed. For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules">Listener rules</a> in the <i>Application Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [Array<RuleCondition>] :conditions
    #   <p>The conditions.</p>
    #
    # @option params [Integer] :priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    #
    # @option params [Array<Action>] :actions
    #   <p>The actions.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the rule.</p>
    #
    # @return [Types::CreateRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule(
    #     listener_arn: 'ListenerArn', # required
    #     conditions: [
    #       {
    #         field: 'Field',
    #         values: [
    #           'member'
    #         ],
    #         host_header_config: {
    #         },
    #         path_pattern_config: {
    #         },
    #         http_header_config: {
    #           http_header_name: 'HttpHeaderName',
    #         },
    #         query_string_config: {
    #           values: [
    #             {
    #               key: 'Key',
    #               value: 'Value'
    #             }
    #           ]
    #         },
    #         http_request_method_config: {
    #         },
    #         source_ip_config: {
    #         }
    #       }
    #     ], # required
    #     priority: 1, # required
    #     actions: [
    #       {
    #         type: 'forward', # required - accepts ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #         target_group_arn: 'TargetGroupArn',
    #         authenticate_oidc_config: {
    #           issuer: 'Issuer', # required
    #           authorization_endpoint: 'AuthorizationEndpoint', # required
    #           token_endpoint: 'TokenEndpoint', # required
    #           user_info_endpoint: 'UserInfoEndpoint', # required
    #           client_id: 'ClientId', # required
    #           client_secret: 'ClientSecret',
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny', # accepts ["deny", "allow", "authenticate"]
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: 'UserPoolArn', # required
    #           user_pool_client_id: 'UserPoolClientId', # required
    #           user_pool_domain: 'UserPoolDomain', # required
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny' # accepts ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: 'Protocol',
    #           port: 'Port',
    #           host: 'Host',
    #           path: 'Path',
    #           query: 'Query',
    #           status_code: 'HTTP_301' # required - accepts ["HTTP_301", "HTTP_302"]
    #         },
    #         fixed_response_config: {
    #           message_body: 'MessageBody',
    #           status_code: 'StatusCode', # required
    #           content_type: 'ContentType'
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: 'TargetGroupArn',
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRuleOutput
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].rule_arn #=> String
    #   resp.data.rules[0].priority #=> String
    #   resp.data.rules[0].conditions #=> Array<RuleCondition>
    #   resp.data.rules[0].conditions[0] #=> Types::RuleCondition
    #   resp.data.rules[0].conditions[0].field #=> String
    #   resp.data.rules[0].conditions[0].values #=> Array<String>
    #   resp.data.rules[0].conditions[0].values[0] #=> String
    #   resp.data.rules[0].conditions[0].host_header_config #=> Types::HostHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].host_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].path_pattern_config #=> Types::PathPatternConditionConfig
    #   resp.data.rules[0].conditions[0].path_pattern_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].http_header_config #=> Types::HttpHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.data.rules[0].conditions[0].http_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].query_string_config #=> Types::QueryStringConditionConfig
    #   resp.data.rules[0].conditions[0].query_string_config.values #=> Array<QueryStringKeyValuePair>
    #   resp.data.rules[0].conditions[0].query_string_config.values[0] #=> Types::QueryStringKeyValuePair
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.data.rules[0].conditions[0].http_request_method_config #=> Types::HttpRequestMethodConditionConfig
    #   resp.data.rules[0].conditions[0].http_request_method_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].source_ip_config #=> Types::SourceIpConditionConfig
    #   resp.data.rules[0].conditions[0].source_ip_config.values #=> Array<String>
    #   resp.data.rules[0].actions #=> Array<Action>
    #   resp.data.rules[0].actions[0] #=> Types::Action
    #   resp.data.rules[0].actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.rules[0].actions[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.rules[0].actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].order #=> Integer
    #   resp.data.rules[0].actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.data.rules[0].actions[0].redirect_config.port #=> String
    #   resp.data.rules[0].actions[0].redirect_config.host #=> String
    #   resp.data.rules[0].actions[0].redirect_config.path #=> String
    #   resp.data.rules[0].actions[0].redirect_config.query #=> String
    #   resp.data.rules[0].actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.rules[0].actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.data.rules[0].actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.rules[0].actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.rules[0].is_default #=> Boolean
    #
    def create_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleProtocolsException, Errors::InvalidConfigurationRequestException, Errors::InvalidLoadBalancerActionException, Errors::ListenerNotFoundException, Errors::PriorityInUseException, Errors::TargetGroupAssociationLimitException, Errors::TargetGroupNotFoundException, Errors::TooManyActionsException, Errors::TooManyRegistrationsForTargetIdException, Errors::TooManyRulesException, Errors::TooManyTagsException, Errors::TooManyTargetGroupsException, Errors::TooManyTargetsException, Errors::TooManyUniqueTargetGroupsPerLoadBalancerException, Errors::UnsupportedProtocolException]),
        data_parser: Parsers::CreateRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRule,
        stubs: @stubs,
        params_class: Params::CreateRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a target group.</p>
    #
    #
    #
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html">Target
    #             groups for your Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html">Target groups
    #             for your Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html">Target groups for your
    #             Gateway Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation is idempotent, which means that it completes at most one time. If you
    #       attempt to create multiple target groups with the same settings, each call succeeds.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTargetGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the target group.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, and must not begin or end with a
    #         hyphen.</p>
    #
    # @option params [String] :protocol
    #   <p>The protocol to use for routing traffic to the targets. For Application Load Balancers,
    #         the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported
    #         protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is
    #         GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a
    #         Lambda function, this parameter does not apply.</p>
    #
    # @option params [String] :protocol_version
    #   <p>[HTTP/HTTPS protocol] The protocol version. Specify <code>GRPC</code> to send requests to
    #         targets using gRPC. Specify <code>HTTP2</code> to send requests to targets using HTTP/2. The
    #         default is <code>HTTP1</code>, which sends requests to targets using HTTP/1.1.</p>
    #
    # @option params [Integer] :port
    #   <p>The port on which the targets receive traffic. This port is used unless you specify a port
    #         override when registering the target. If the target is a Lambda function, this parameter does
    #         not apply. If the protocol is GENEVE, the supported port is 6081.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The identifier of the virtual private cloud (VPC). If the target is a Lambda function,
    #         this parameter does not apply. Otherwise, this parameter is required.</p>
    #
    # @option params [String] :health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are
    #         not supported for health checks.</p>
    #
    # @option params [String] :health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets. If the protocol
    #         is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is <code>traffic-port</code>, which is
    #         the port on which each target receives traffic from the load balancer. If the protocol is
    #         GENEVE, the default is port 80.</p>
    #
    # @option params [Boolean] :health_check_enabled
    #   <p>Indicates whether health checks are enabled. If the target type is <code>lambda</code>,
    #         health checks are disabled by default but can be enabled. If the target type is
    #           <code>instance</code>, <code>ip</code>, or <code>alb</code>, health checks are always
    #         enabled and cannot be disabled.</p>
    #
    # @option params [String] :health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    #
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.
    #         If the target group protocol is TCP, TLS, UDP, or TCP_UDP, the supported values are 10 and 30
    #         seconds. If the target group protocol is HTTP or HTTPS, the default is 30 seconds. If the
    #         target group protocol is GENEVE, the default is 10 seconds. If the target type is
    #           <code>lambda</code>, the default is 35 seconds.</p>
    #
    # @option params [Integer] :health_check_timeout_seconds
    #   <p>The amount of time, in seconds, during which no response from a target means a failed
    #         health check. For target groups with a protocol of HTTP, HTTPS, or GENEVE, the default is 5
    #         seconds. For target groups with a protocol of TCP or TLS, this value must be 6 seconds for
    #         HTTP health checks and 10 seconds for TCP and HTTPS health checks. If the target type is
    #           <code>lambda</code>, the default is 30 seconds.</p>
    #
    # @option params [Integer] :healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy. For target groups with a protocol of HTTP or HTTPS, the default is 5. For
    #         target groups with a protocol of TCP, TLS, or GENEVE, the default is 3. If the target type is
    #           <code>lambda</code>, the default is 5.</p>
    #
    # @option params [Integer] :unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering a target
    #         unhealthy. If the target group protocol is HTTP or HTTPS, the default is 2. If the target
    #         group protocol is TCP or TLS, this value must be the same as the healthy threshold count. If
    #         the target group protocol is GENEVE, the default is 3. If the target type is
    #           <code>lambda</code>, the default is 2.</p>
    #
    # @option params [Matcher] :matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful
    #         response from a target.</p>
    #
    # @option params [String] :target_type
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
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the target group.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The type of IP address used for this target group. The possible values are
    #           <code>ipv4</code> and <code>ipv6</code>. This is an optional parameter. If not specified,
    #         the IP address type defaults to <code>ipv4</code>.</p>
    #
    # @return [Types::CreateTargetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_target_group(
    #     name: 'Name', # required
    #     protocol: 'HTTP', # accepts ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #     protocol_version: 'ProtocolVersion',
    #     port: 1,
    #     vpc_id: 'VpcId',
    #     health_check_protocol: 'HTTP', # accepts ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #     health_check_port: 'HealthCheckPort',
    #     health_check_enabled: false,
    #     health_check_path: 'HealthCheckPath',
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: 'HttpCode',
    #       grpc_code: 'GrpcCode'
    #     },
    #     target_type: 'instance', # accepts ["instance", "ip", "lambda", "alb"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     ip_address_type: 'ipv4' # accepts ["ipv4", "ipv6"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTargetGroupOutput
    #   resp.data.target_groups #=> Array<TargetGroup>
    #   resp.data.target_groups[0] #=> Types::TargetGroup
    #   resp.data.target_groups[0].target_group_arn #=> String
    #   resp.data.target_groups[0].target_group_name #=> String
    #   resp.data.target_groups[0].protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.target_groups[0].port #=> Integer
    #   resp.data.target_groups[0].vpc_id #=> String
    #   resp.data.target_groups[0].health_check_protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.target_groups[0].health_check_port #=> String
    #   resp.data.target_groups[0].health_check_enabled #=> Boolean
    #   resp.data.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.data.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.data.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.data.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.data.target_groups[0].health_check_path #=> String
    #   resp.data.target_groups[0].matcher #=> Types::Matcher
    #   resp.data.target_groups[0].matcher.http_code #=> String
    #   resp.data.target_groups[0].matcher.grpc_code #=> String
    #   resp.data.target_groups[0].load_balancer_arns #=> Array<String>
    #   resp.data.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.data.target_groups[0].target_type #=> String, one of ["instance", "ip", "lambda", "alb"]
    #   resp.data.target_groups[0].protocol_version #=> String
    #   resp.data.target_groups[0].ip_address_type #=> String, one of ["ipv4", "ipv6"]
    #
    def create_target_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTargetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTargetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTargetGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateTargetGroupNameException, Errors::InvalidConfigurationRequestException, Errors::TooManyTagsException, Errors::TooManyTargetGroupsException]),
        data_parser: Parsers::CreateTargetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTargetGroup,
        stubs: @stubs,
        params_class: Params::CreateTargetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_target_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified listener.</p>
    #          <p>Alternatively, your listener is deleted when you delete the load balancer to which it is
    #         attached.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @return [Types::DeleteListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener(
    #     listener_arn: 'ListenerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteListenerOutput
    #
    def delete_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteListenerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteListener
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteListener,
        stubs: @stubs,
        params_class: Params::DeleteListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Application Load Balancer, Network Load Balancer, or Gateway Load
    #       Balancer. Deleting a load balancer also deletes its listeners.</p>
    #          <p>You can't delete a load balancer if deletion protection is enabled. If the load balancer
    #       does not exist or has already been deleted, the call succeeds.</p>
    #          <p>Deleting a load balancer does not affect its registered targets. For example, your EC2
    #       instances continue to run and are still registered to their target groups. If you no longer
    #       need these EC2 instances, you can stop or terminate them.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @return [Types::DeleteLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer(
    #     load_balancer_arn: 'LoadBalancerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLoadBalancerOutput
    #
    def delete_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLoadBalancer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LoadBalancerNotFoundException, Errors::OperationNotPermittedException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLoadBalancer,
        stubs: @stubs,
        params_class: Params::DeleteLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified rule.</p>
    #          <p>You can't delete the default rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleInput}.
    #
    # @option params [String] :rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    # @return [Types::DeleteRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule(
    #     rule_arn: 'RuleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleOutput
    #
    def delete_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::RuleNotFoundException]),
        data_parser: Parsers::DeleteRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRule,
        stubs: @stubs,
        params_class: Params::DeleteRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified target group.</p>
    #          <p>You can delete a target group if it is not referenced by any actions. Deleting a target
    #       group also deletes any associated health checks. Deleting a target group does not affect its
    #       registered targets. For example, any EC2 instances continue to run until you stop or terminate
    #       them.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTargetGroupInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @return [Types::DeleteTargetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target_group(
    #     target_group_arn: 'TargetGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTargetGroupOutput
    #
    def delete_target_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTargetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTargetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTargetGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteTargetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTargetGroup,
        stubs: @stubs,
        params_class: Params::DeleteTargetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_target_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters the specified targets from the specified target group. After the targets are
    #       deregistered, they no longer receive traffic from the load balancer.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterTargetsInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @option params [Array<TargetDescription>] :targets
    #   <p>The targets. If you specified a port override when you registered a target, you must
    #         specify both the target ID and the port when you deregister it.</p>
    #
    # @return [Types::DeregisterTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_targets(
    #     target_group_arn: 'TargetGroupArn', # required
    #     targets: [
    #       {
    #         id: 'Id', # required
    #         port: 1,
    #         availability_zone: 'AvailabilityZone'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterTargetsOutput
    #
    def deregister_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterTargets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTargetException, Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::DeregisterTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterTargets,
        stubs: @stubs,
        params_class: Params::DeregisterTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current Elastic Load Balancing resource limits for your Amazon Web Services
    #       account.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Quotas for your
    #             Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Quotas for your
    #             Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html">Quotas for your Gateway
    #             Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountLimitsInput}.
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @return [Types::DescribeAccountLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits(
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountLimitsOutput
    #   resp.data.limits #=> Array<Limit>
    #   resp.data.limits[0] #=> Types::Limit
    #   resp.data.limits[0].name #=> String
    #   resp.data.limits[0].max #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_account_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountLimits
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeAccountLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountLimits,
        stubs: @stubs,
        params_class: Params::DescribeAccountLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the default certificate and the certificate list for the specified HTTPS or TLS
    #       listener.</p>
    #          <p>If the default certificate is also in the certificate list, it appears twice in the
    #       results (once with <code>IsDefault</code> set to true and once with <code>IsDefault</code> set
    #       to false).</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates">SSL certificates</a> in the <i>Application Load Balancers Guide</i> or
    #         <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#tls-listener-certificate">Server certificates</a> in the <i>Network Load Balancers
    #       Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeListenerCertificatesInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Names (ARN) of the listener.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @return [Types::DescribeListenerCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listener_certificates(
    #     listener_arn: 'ListenerArn', # required
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeListenerCertificatesOutput
    #   resp.data.certificates #=> Array<Certificate>
    #   resp.data.certificates[0] #=> Types::Certificate
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.certificates[0].is_default #=> Boolean
    #   resp.data.next_marker #=> String
    #
    def describe_listener_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeListenerCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeListenerCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeListenerCertificates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException]),
        data_parser: Parsers::DescribeListenerCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeListenerCertificates,
        stubs: @stubs,
        params_class: Params::DescribeListenerCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_listener_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified listeners or the listeners for the specified Application Load
    #       Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load
    #       balancer or one or more listeners.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeListenersInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [Array<String>] :listener_arns
    #   <p>The Amazon Resource Names (ARN) of the listeners.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @return [Types::DescribeListenersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listeners(
    #     load_balancer_arn: 'LoadBalancerArn',
    #     listener_arns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeListenersOutput
    #   resp.data.listeners #=> Array<Listener>
    #   resp.data.listeners[0] #=> Types::Listener
    #   resp.data.listeners[0].listener_arn #=> String
    #   resp.data.listeners[0].load_balancer_arn #=> String
    #   resp.data.listeners[0].port #=> Integer
    #   resp.data.listeners[0].protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.listeners[0].certificates #=> Array<Certificate>
    #   resp.data.listeners[0].certificates[0] #=> Types::Certificate
    #   resp.data.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.data.listeners[0].certificates[0].is_default #=> Boolean
    #   resp.data.listeners[0].ssl_policy #=> String
    #   resp.data.listeners[0].default_actions #=> Array<Action>
    #   resp.data.listeners[0].default_actions[0] #=> Types::Action
    #   resp.data.listeners[0].default_actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.listeners[0].default_actions[0].order #=> Integer
    #   resp.data.listeners[0].default_actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.listeners[0].default_actions[0].redirect_config.protocol #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.port #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.host #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.path #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.query #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.listeners[0].default_actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.message_body #=> String
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.status_code #=> String
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.content_type #=> String
    #   resp.data.listeners[0].default_actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.listeners[0].alpn_policy #=> Array<String>
    #   resp.data.listeners[0].alpn_policy[0] #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_listeners(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeListenersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeListenersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeListeners
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException, Errors::LoadBalancerNotFoundException, Errors::UnsupportedProtocolException]),
        data_parser: Parsers::DescribeListeners
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeListeners,
        stubs: @stubs,
        params_class: Params::DescribeListenersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_listeners
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the attributes for the specified Application Load Balancer, Network Load
    #       Balancer, or Gateway Load Balancer.</p>
    #
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes">Load balancer attributes</a> in the <i>Application Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes">Load balancer attributes</a> in the <i>Network Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes">Load balancer attributes</a> in the <i>Gateway Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancerAttributesInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @return [Types::DescribeLoadBalancerAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_attributes(
    #     load_balancer_arn: 'LoadBalancerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancerAttributesOutput
    #   resp.data.attributes #=> Array<LoadBalancerAttribute>
    #   resp.data.attributes[0] #=> Types::LoadBalancerAttribute
    #   resp.data.attributes[0].key #=> String
    #   resp.data.attributes[0].value #=> String
    #
    def describe_load_balancer_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBalancerAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBalancerAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBalancerAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LoadBalancerNotFoundException]),
        data_parser: Parsers::DescribeLoadBalancerAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBalancerAttributes,
        stubs: @stubs,
        params_class: Params::DescribeLoadBalancerAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_balancer_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified load balancers or all of your load balancers.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancersInput}.
    #
    # @option params [Array<String>] :load_balancer_arns
    #   <p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load
    #         balancers in a single call.</p>
    #
    # @option params [Array<String>] :names
    #   <p>The names of the load balancers.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @return [Types::DescribeLoadBalancersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers(
    #     load_balancer_arns: [
    #       'member'
    #     ],
    #     names: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancersOutput
    #   resp.data.load_balancers #=> Array<LoadBalancer>
    #   resp.data.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.load_balancers[0].load_balancer_arn #=> String
    #   resp.data.load_balancers[0].dns_name #=> String
    #   resp.data.load_balancers[0].canonical_hosted_zone_id #=> String
    #   resp.data.load_balancers[0].created_time #=> Time
    #   resp.data.load_balancers[0].load_balancer_name #=> String
    #   resp.data.load_balancers[0].scheme #=> String, one of ["internet-facing", "internal"]
    #   resp.data.load_balancers[0].vpc_id #=> String
    #   resp.data.load_balancers[0].state #=> Types::LoadBalancerState
    #   resp.data.load_balancers[0].state.code #=> String, one of ["active", "provisioning", "active_impaired", "failed"]
    #   resp.data.load_balancers[0].state.reason #=> String
    #   resp.data.load_balancers[0].type #=> String, one of ["application", "network", "gateway"]
    #   resp.data.load_balancers[0].availability_zones #=> Array<AvailabilityZone>
    #   resp.data.load_balancers[0].availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.load_balancers[0].availability_zones[0].zone_name #=> String
    #   resp.data.load_balancers[0].availability_zones[0].subnet_id #=> String
    #   resp.data.load_balancers[0].availability_zones[0].outpost_id #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses #=> Array<LoadBalancerAddress>
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0] #=> Types::LoadBalancerAddress
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].ip_address #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].allocation_id #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].private_i_pv4_address #=> String
    #   resp.data.load_balancers[0].availability_zones[0].load_balancer_addresses[0].i_pv6_address #=> String
    #   resp.data.load_balancers[0].security_groups #=> Array<String>
    #   resp.data.load_balancers[0].security_groups[0] #=> String
    #   resp.data.load_balancers[0].ip_address_type #=> String, one of ["ipv4", "dualstack"]
    #   resp.data.load_balancers[0].customer_owned_ipv4_pool #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_load_balancers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBalancersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBalancersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBalancers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LoadBalancerNotFoundException]),
        data_parser: Parsers::DescribeLoadBalancers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBalancers,
        stubs: @stubs,
        params_class: Params::DescribeLoadBalancersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_balancers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified rules or the rules for the specified listener. You must specify
    #       either a listener or one or more rules.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRulesInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [Array<String>] :rule_arns
    #   <p>The Amazon Resource Names (ARN) of the rules.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @return [Types::DescribeRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rules(
    #     listener_arn: 'ListenerArn',
    #     rule_arns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRulesOutput
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].rule_arn #=> String
    #   resp.data.rules[0].priority #=> String
    #   resp.data.rules[0].conditions #=> Array<RuleCondition>
    #   resp.data.rules[0].conditions[0] #=> Types::RuleCondition
    #   resp.data.rules[0].conditions[0].field #=> String
    #   resp.data.rules[0].conditions[0].values #=> Array<String>
    #   resp.data.rules[0].conditions[0].values[0] #=> String
    #   resp.data.rules[0].conditions[0].host_header_config #=> Types::HostHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].host_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].path_pattern_config #=> Types::PathPatternConditionConfig
    #   resp.data.rules[0].conditions[0].path_pattern_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].http_header_config #=> Types::HttpHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.data.rules[0].conditions[0].http_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].query_string_config #=> Types::QueryStringConditionConfig
    #   resp.data.rules[0].conditions[0].query_string_config.values #=> Array<QueryStringKeyValuePair>
    #   resp.data.rules[0].conditions[0].query_string_config.values[0] #=> Types::QueryStringKeyValuePair
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.data.rules[0].conditions[0].http_request_method_config #=> Types::HttpRequestMethodConditionConfig
    #   resp.data.rules[0].conditions[0].http_request_method_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].source_ip_config #=> Types::SourceIpConditionConfig
    #   resp.data.rules[0].conditions[0].source_ip_config.values #=> Array<String>
    #   resp.data.rules[0].actions #=> Array<Action>
    #   resp.data.rules[0].actions[0] #=> Types::Action
    #   resp.data.rules[0].actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.rules[0].actions[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.rules[0].actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].order #=> Integer
    #   resp.data.rules[0].actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.data.rules[0].actions[0].redirect_config.port #=> String
    #   resp.data.rules[0].actions[0].redirect_config.host #=> String
    #   resp.data.rules[0].actions[0].redirect_config.path #=> String
    #   resp.data.rules[0].actions[0].redirect_config.query #=> String
    #   resp.data.rules[0].actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.rules[0].actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.data.rules[0].actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.rules[0].actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.rules[0].is_default #=> Boolean
    #   resp.data.next_marker #=> String
    #
    def describe_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException, Errors::RuleNotFoundException, Errors::UnsupportedProtocolException]),
        data_parser: Parsers::DescribeRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRules,
        stubs: @stubs,
        params_class: Params::DescribeRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified policies or all policies used for SSL negotiation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security policies</a> in the <i>Application Load Balancers Guide</i> or
    #         <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSSLPoliciesInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names of the policies.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @option params [String] :load_balancer_type
    #   <p> The type of load balancer. The default lists the SSL policies for all load
    #         balancers.</p>
    #
    # @return [Types::DescribeSSLPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ssl_policies(
    #     names: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     page_size: 1,
    #     load_balancer_type: 'application' # accepts ["application", "network", "gateway"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSSLPoliciesOutput
    #   resp.data.ssl_policies #=> Array<SslPolicy>
    #   resp.data.ssl_policies[0] #=> Types::SslPolicy
    #   resp.data.ssl_policies[0].ssl_protocols #=> Array<String>
    #   resp.data.ssl_policies[0].ssl_protocols[0] #=> String
    #   resp.data.ssl_policies[0].ciphers #=> Array<Cipher>
    #   resp.data.ssl_policies[0].ciphers[0] #=> Types::Cipher
    #   resp.data.ssl_policies[0].ciphers[0].name #=> String
    #   resp.data.ssl_policies[0].ciphers[0].priority #=> Integer
    #   resp.data.ssl_policies[0].name #=> String
    #   resp.data.ssl_policies[0].supported_load_balancer_types #=> Array<String>
    #   resp.data.ssl_policies[0].supported_load_balancer_types[0] #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_ssl_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSSLPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSSLPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSSLPolicies
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SSLPolicyNotFoundException]),
        data_parser: Parsers::DescribeSSLPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSSLPolicies,
        stubs: @stubs,
        params_class: Params::DescribeSSLPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ssl_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the tags for the specified Elastic Load Balancing resources. You can describe
    #       the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load
    #       Balancers, target groups, listeners, or rules.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a
    #         single call.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     resource_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.tag_descriptions #=> Array<TagDescription>
    #   resp.data.tag_descriptions[0] #=> Types::TagDescription
    #   resp.data.tag_descriptions[0].resource_arn #=> String
    #   resp.data.tag_descriptions[0].tags #=> Array<Tag>
    #   resp.data.tag_descriptions[0].tags[0] #=> Types::Tag
    #   resp.data.tag_descriptions[0].tags[0].key #=> String
    #   resp.data.tag_descriptions[0].tags[0].value #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException, Errors::LoadBalancerNotFoundException, Errors::RuleNotFoundException, Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::DescribeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTags,
        stubs: @stubs,
        params_class: Params::DescribeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the attributes for the specified target group.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes">Target group attributes</a> in the <i>Application Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes">Target group attributes</a> in the <i>Network Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes">Target group attributes</a> in the <i>Gateway Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeTargetGroupAttributesInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @return [Types::DescribeTargetGroupAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_group_attributes(
    #     target_group_arn: 'TargetGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTargetGroupAttributesOutput
    #   resp.data.attributes #=> Array<TargetGroupAttribute>
    #   resp.data.attributes[0] #=> Types::TargetGroupAttribute
    #   resp.data.attributes[0].key #=> String
    #   resp.data.attributes[0].value #=> String
    #
    def describe_target_group_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTargetGroupAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTargetGroupAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTargetGroupAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::DescribeTargetGroupAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTargetGroupAttributes,
        stubs: @stubs,
        params_class: Params::DescribeTargetGroupAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_target_group_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified target groups or all of your target groups. By default, all target
    #       groups are described. Alternatively, you can specify one of the following to filter the
    #       results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of
    #       one or more target groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTargetGroupsInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [Array<String>] :target_group_arns
    #   <p>The Amazon Resource Names (ARN) of the target groups.</p>
    #
    # @option params [Array<String>] :names
    #   <p>The names of the target groups.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    #
    # @return [Types::DescribeTargetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_groups(
    #     load_balancer_arn: 'LoadBalancerArn',
    #     target_group_arns: [
    #       'member'
    #     ],
    #     names: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTargetGroupsOutput
    #   resp.data.target_groups #=> Array<TargetGroup>
    #   resp.data.target_groups[0] #=> Types::TargetGroup
    #   resp.data.target_groups[0].target_group_arn #=> String
    #   resp.data.target_groups[0].target_group_name #=> String
    #   resp.data.target_groups[0].protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.target_groups[0].port #=> Integer
    #   resp.data.target_groups[0].vpc_id #=> String
    #   resp.data.target_groups[0].health_check_protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.target_groups[0].health_check_port #=> String
    #   resp.data.target_groups[0].health_check_enabled #=> Boolean
    #   resp.data.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.data.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.data.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.data.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.data.target_groups[0].health_check_path #=> String
    #   resp.data.target_groups[0].matcher #=> Types::Matcher
    #   resp.data.target_groups[0].matcher.http_code #=> String
    #   resp.data.target_groups[0].matcher.grpc_code #=> String
    #   resp.data.target_groups[0].load_balancer_arns #=> Array<String>
    #   resp.data.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.data.target_groups[0].target_type #=> String, one of ["instance", "ip", "lambda", "alb"]
    #   resp.data.target_groups[0].protocol_version #=> String
    #   resp.data.target_groups[0].ip_address_type #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.next_marker #=> String
    #
    def describe_target_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTargetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTargetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTargetGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LoadBalancerNotFoundException, Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::DescribeTargetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTargetGroups,
        stubs: @stubs,
        params_class: Params::DescribeTargetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_target_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the health of the specified targets or all of your targets.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTargetHealthInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @option params [Array<TargetDescription>] :targets
    #   <p>The targets.</p>
    #
    # @return [Types::DescribeTargetHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_health(
    #     target_group_arn: 'TargetGroupArn', # required
    #     targets: [
    #       {
    #         id: 'Id', # required
    #         port: 1,
    #         availability_zone: 'AvailabilityZone'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTargetHealthOutput
    #   resp.data.target_health_descriptions #=> Array<TargetHealthDescription>
    #   resp.data.target_health_descriptions[0] #=> Types::TargetHealthDescription
    #   resp.data.target_health_descriptions[0].target #=> Types::TargetDescription
    #   resp.data.target_health_descriptions[0].target.id #=> String
    #   resp.data.target_health_descriptions[0].target.port #=> Integer
    #   resp.data.target_health_descriptions[0].target.availability_zone #=> String
    #   resp.data.target_health_descriptions[0].health_check_port #=> String
    #   resp.data.target_health_descriptions[0].target_health #=> Types::TargetHealth
    #   resp.data.target_health_descriptions[0].target_health.state #=> String, one of ["initial", "healthy", "unhealthy", "unused", "draining", "unavailable"]
    #   resp.data.target_health_descriptions[0].target_health.reason #=> String, one of ["Elb.RegistrationInProgress", "Elb.InitialHealthChecking", "Target.ResponseCodeMismatch", "Target.Timeout", "Target.FailedHealthChecks", "Target.NotRegistered", "Target.NotInUse", "Target.DeregistrationInProgress", "Target.InvalidState", "Target.IpUnusable", "Target.HealthCheckDisabled", "Elb.InternalError"]
    #   resp.data.target_health_descriptions[0].target_health.description #=> String
    #
    def describe_target_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTargetHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTargetHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTargetHealth
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HealthUnavailableException, Errors::InvalidTargetException, Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::DescribeTargetHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTargetHealth,
        stubs: @stubs,
        params_class: Params::DescribeTargetHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_target_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the specified properties of the specified listener. Any properties that you do
    #       not specify remain unchanged.</p>
    #          <p>Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy
    #       and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP
    #       to TLS, you must add the security policy and default certificate properties.</p>
    #          <p>To add an item to a list, remove an item from a list, or update an item in a list, you
    #       must provide the entire list. For example, to add an action, specify a list with the current
    #       actions plus the new action.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [Integer] :port
    #   <p>The port for connections from clients to the load balancer. You cannot specify a port for
    #         a Gateway Load Balancer.</p>
    #
    # @option params [String] :protocol
    #   <p>The protocol for connections from clients to the load balancer. Application Load Balancers
    #         support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and
    #         TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is
    #         enabled. You cannot specify a protocol for a Gateway Load Balancer.</p>
    #
    # @option params [String] :ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security policies</a> in the <i>Application Load Balancers Guide</i> or
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    # @option params [Array<Certificate>] :certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    #
    # @option params [Array<Action>] :default_actions
    #   <p>The actions for the default rule.</p>
    #
    # @option params [Array<String>] :alpn_policy
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
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #
    # @return [Types::ModifyListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_listener(
    #     listener_arn: 'ListenerArn', # required
    #     port: 1,
    #     protocol: 'HTTP', # accepts ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #     ssl_policy: 'SslPolicy',
    #     certificates: [
    #       {
    #         certificate_arn: 'CertificateArn',
    #         is_default: false
    #       }
    #     ],
    #     default_actions: [
    #       {
    #         type: 'forward', # required - accepts ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #         target_group_arn: 'TargetGroupArn',
    #         authenticate_oidc_config: {
    #           issuer: 'Issuer', # required
    #           authorization_endpoint: 'AuthorizationEndpoint', # required
    #           token_endpoint: 'TokenEndpoint', # required
    #           user_info_endpoint: 'UserInfoEndpoint', # required
    #           client_id: 'ClientId', # required
    #           client_secret: 'ClientSecret',
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny', # accepts ["deny", "allow", "authenticate"]
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: 'UserPoolArn', # required
    #           user_pool_client_id: 'UserPoolClientId', # required
    #           user_pool_domain: 'UserPoolDomain', # required
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny' # accepts ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: 'Protocol',
    #           port: 'Port',
    #           host: 'Host',
    #           path: 'Path',
    #           query: 'Query',
    #           status_code: 'HTTP_301' # required - accepts ["HTTP_301", "HTTP_302"]
    #         },
    #         fixed_response_config: {
    #           message_body: 'MessageBody',
    #           status_code: 'StatusCode', # required
    #           content_type: 'ContentType'
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: 'TargetGroupArn',
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ],
    #     alpn_policy: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyListenerOutput
    #   resp.data.listeners #=> Array<Listener>
    #   resp.data.listeners[0] #=> Types::Listener
    #   resp.data.listeners[0].listener_arn #=> String
    #   resp.data.listeners[0].load_balancer_arn #=> String
    #   resp.data.listeners[0].port #=> Integer
    #   resp.data.listeners[0].protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.listeners[0].certificates #=> Array<Certificate>
    #   resp.data.listeners[0].certificates[0] #=> Types::Certificate
    #   resp.data.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.data.listeners[0].certificates[0].is_default #=> Boolean
    #   resp.data.listeners[0].ssl_policy #=> String
    #   resp.data.listeners[0].default_actions #=> Array<Action>
    #   resp.data.listeners[0].default_actions[0] #=> Types::Action
    #   resp.data.listeners[0].default_actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.listeners[0].default_actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.listeners[0].default_actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.listeners[0].default_actions[0].order #=> Integer
    #   resp.data.listeners[0].default_actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.listeners[0].default_actions[0].redirect_config.protocol #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.port #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.host #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.path #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.query #=> String
    #   resp.data.listeners[0].default_actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.listeners[0].default_actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.message_body #=> String
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.status_code #=> String
    #   resp.data.listeners[0].default_actions[0].fixed_response_config.content_type #=> String
    #   resp.data.listeners[0].default_actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.listeners[0].default_actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.listeners[0].alpn_policy #=> Array<String>
    #   resp.data.listeners[0].alpn_policy[0] #=> String
    #
    def modify_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyListenerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyListener
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ALPNPolicyNotSupportedException, Errors::CertificateNotFoundException, Errors::DuplicateListenerException, Errors::IncompatibleProtocolsException, Errors::InvalidConfigurationRequestException, Errors::InvalidLoadBalancerActionException, Errors::ListenerNotFoundException, Errors::SSLPolicyNotFoundException, Errors::TargetGroupAssociationLimitException, Errors::TargetGroupNotFoundException, Errors::TooManyActionsException, Errors::TooManyCertificatesException, Errors::TooManyListenersException, Errors::TooManyRegistrationsForTargetIdException, Errors::TooManyTargetsException, Errors::TooManyUniqueTargetGroupsPerLoadBalancerException, Errors::UnsupportedProtocolException]),
        data_parser: Parsers::ModifyListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyListener,
        stubs: @stubs,
        params_class: Params::ModifyListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the specified attributes of the specified Application Load Balancer, Network Load
    #       Balancer, or Gateway Load Balancer.</p>
    #          <p>If any of the specified attributes can't be modified as requested, the call fails. Any
    #       existing attributes that you do not modify retain their current values.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyLoadBalancerAttributesInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [Array<LoadBalancerAttribute>] :attributes
    #   <p>The load balancer attributes.</p>
    #
    # @return [Types::ModifyLoadBalancerAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_load_balancer_attributes(
    #     load_balancer_arn: 'LoadBalancerArn', # required
    #     attributes: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyLoadBalancerAttributesOutput
    #   resp.data.attributes #=> Array<LoadBalancerAttribute>
    #   resp.data.attributes[0] #=> Types::LoadBalancerAttribute
    #   resp.data.attributes[0].key #=> String
    #   resp.data.attributes[0].value #=> String
    #
    def modify_load_balancer_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyLoadBalancerAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyLoadBalancerAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyLoadBalancerAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::LoadBalancerNotFoundException]),
        data_parser: Parsers::ModifyLoadBalancerAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyLoadBalancerAttributes,
        stubs: @stubs,
        params_class: Params::ModifyLoadBalancerAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_load_balancer_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the specified properties of the specified rule. Any properties that you do not
    #       specify are unchanged.</p>
    #          <p>To add an item to a list, remove an item from a list, or update an item in a list, you
    #       must provide the entire list. For example, to add an action, specify a list with the current
    #       actions plus the new action.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyRuleInput}.
    #
    # @option params [String] :rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #
    # @option params [Array<RuleCondition>] :conditions
    #   <p>The conditions.</p>
    #
    # @option params [Array<Action>] :actions
    #   <p>The actions.</p>
    #
    # @return [Types::ModifyRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_rule(
    #     rule_arn: 'RuleArn', # required
    #     conditions: [
    #       {
    #         field: 'Field',
    #         values: [
    #           'member'
    #         ],
    #         host_header_config: {
    #         },
    #         path_pattern_config: {
    #         },
    #         http_header_config: {
    #           http_header_name: 'HttpHeaderName',
    #         },
    #         query_string_config: {
    #           values: [
    #             {
    #               key: 'Key',
    #               value: 'Value'
    #             }
    #           ]
    #         },
    #         http_request_method_config: {
    #         },
    #         source_ip_config: {
    #         }
    #       }
    #     ],
    #     actions: [
    #       {
    #         type: 'forward', # required - accepts ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #         target_group_arn: 'TargetGroupArn',
    #         authenticate_oidc_config: {
    #           issuer: 'Issuer', # required
    #           authorization_endpoint: 'AuthorizationEndpoint', # required
    #           token_endpoint: 'TokenEndpoint', # required
    #           user_info_endpoint: 'UserInfoEndpoint', # required
    #           client_id: 'ClientId', # required
    #           client_secret: 'ClientSecret',
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny', # accepts ["deny", "allow", "authenticate"]
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: 'UserPoolArn', # required
    #           user_pool_client_id: 'UserPoolClientId', # required
    #           user_pool_domain: 'UserPoolDomain', # required
    #           session_cookie_name: 'SessionCookieName',
    #           scope: 'Scope',
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             'key' => 'value'
    #           },
    #           on_unauthenticated_request: 'deny' # accepts ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: 'Protocol',
    #           port: 'Port',
    #           host: 'Host',
    #           path: 'Path',
    #           query: 'Query',
    #           status_code: 'HTTP_301' # required - accepts ["HTTP_301", "HTTP_302"]
    #         },
    #         fixed_response_config: {
    #           message_body: 'MessageBody',
    #           status_code: 'StatusCode', # required
    #           content_type: 'ContentType'
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: 'TargetGroupArn',
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyRuleOutput
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].rule_arn #=> String
    #   resp.data.rules[0].priority #=> String
    #   resp.data.rules[0].conditions #=> Array<RuleCondition>
    #   resp.data.rules[0].conditions[0] #=> Types::RuleCondition
    #   resp.data.rules[0].conditions[0].field #=> String
    #   resp.data.rules[0].conditions[0].values #=> Array<String>
    #   resp.data.rules[0].conditions[0].values[0] #=> String
    #   resp.data.rules[0].conditions[0].host_header_config #=> Types::HostHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].host_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].path_pattern_config #=> Types::PathPatternConditionConfig
    #   resp.data.rules[0].conditions[0].path_pattern_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].http_header_config #=> Types::HttpHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.data.rules[0].conditions[0].http_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].query_string_config #=> Types::QueryStringConditionConfig
    #   resp.data.rules[0].conditions[0].query_string_config.values #=> Array<QueryStringKeyValuePair>
    #   resp.data.rules[0].conditions[0].query_string_config.values[0] #=> Types::QueryStringKeyValuePair
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.data.rules[0].conditions[0].http_request_method_config #=> Types::HttpRequestMethodConditionConfig
    #   resp.data.rules[0].conditions[0].http_request_method_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].source_ip_config #=> Types::SourceIpConditionConfig
    #   resp.data.rules[0].conditions[0].source_ip_config.values #=> Array<String>
    #   resp.data.rules[0].actions #=> Array<Action>
    #   resp.data.rules[0].actions[0] #=> Types::Action
    #   resp.data.rules[0].actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.rules[0].actions[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.rules[0].actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].order #=> Integer
    #   resp.data.rules[0].actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.data.rules[0].actions[0].redirect_config.port #=> String
    #   resp.data.rules[0].actions[0].redirect_config.host #=> String
    #   resp.data.rules[0].actions[0].redirect_config.path #=> String
    #   resp.data.rules[0].actions[0].redirect_config.query #=> String
    #   resp.data.rules[0].actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.rules[0].actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.data.rules[0].actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.rules[0].actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.rules[0].is_default #=> Boolean
    #
    def modify_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleProtocolsException, Errors::InvalidLoadBalancerActionException, Errors::OperationNotPermittedException, Errors::RuleNotFoundException, Errors::TargetGroupAssociationLimitException, Errors::TargetGroupNotFoundException, Errors::TooManyActionsException, Errors::TooManyRegistrationsForTargetIdException, Errors::TooManyTargetsException, Errors::TooManyUniqueTargetGroupsPerLoadBalancerException, Errors::UnsupportedProtocolException]),
        data_parser: Parsers::ModifyRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyRule,
        stubs: @stubs,
        params_class: Params::ModifyRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the health checks used when evaluating the health state of the targets in the
    #       specified target group.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyTargetGroupInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @option params [String] :health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. It is supported for health checks only if the
    #         protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP
    #         protocols are not supported for health checks.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    # @option params [String] :health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets.</p>
    #
    # @option params [String] :health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    #
    # @option params [Boolean] :health_check_enabled
    #   <p>Indicates whether health checks are enabled.</p>
    #
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.
    #         For TCP health checks, the supported values are 10 or 30 seconds.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    # @option params [Integer] :health_check_timeout_seconds
    #   <p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means
    #         a failed health check.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    # @option params [Integer] :healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy.</p>
    #
    # @option params [Integer] :unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering the target
    #         unhealthy. For target groups with a protocol of TCP or TLS, this value must be the same as the
    #         healthy threshold count.</p>
    #
    # @option params [Matcher] :matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful
    #         response from a target.</p>
    #            <p>With Network Load Balancers, you can't modify this setting.</p>
    #
    # @return [Types::ModifyTargetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_target_group(
    #     target_group_arn: 'TargetGroupArn', # required
    #     health_check_protocol: 'HTTP', # accepts ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #     health_check_port: 'HealthCheckPort',
    #     health_check_path: 'HealthCheckPath',
    #     health_check_enabled: false,
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: 'HttpCode',
    #       grpc_code: 'GrpcCode'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyTargetGroupOutput
    #   resp.data.target_groups #=> Array<TargetGroup>
    #   resp.data.target_groups[0] #=> Types::TargetGroup
    #   resp.data.target_groups[0].target_group_arn #=> String
    #   resp.data.target_groups[0].target_group_name #=> String
    #   resp.data.target_groups[0].protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.target_groups[0].port #=> Integer
    #   resp.data.target_groups[0].vpc_id #=> String
    #   resp.data.target_groups[0].health_check_protocol #=> String, one of ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"]
    #   resp.data.target_groups[0].health_check_port #=> String
    #   resp.data.target_groups[0].health_check_enabled #=> Boolean
    #   resp.data.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.data.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.data.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.data.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.data.target_groups[0].health_check_path #=> String
    #   resp.data.target_groups[0].matcher #=> Types::Matcher
    #   resp.data.target_groups[0].matcher.http_code #=> String
    #   resp.data.target_groups[0].matcher.grpc_code #=> String
    #   resp.data.target_groups[0].load_balancer_arns #=> Array<String>
    #   resp.data.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.data.target_groups[0].target_type #=> String, one of ["instance", "ip", "lambda", "alb"]
    #   resp.data.target_groups[0].protocol_version #=> String
    #   resp.data.target_groups[0].ip_address_type #=> String, one of ["ipv4", "ipv6"]
    #
    def modify_target_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyTargetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyTargetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyTargetGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::ModifyTargetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyTargetGroup,
        stubs: @stubs,
        params_class: Params::ModifyTargetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_target_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the specified attributes of the specified target group.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyTargetGroupAttributesInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @option params [Array<TargetGroupAttribute>] :attributes
    #   <p>The attributes.</p>
    #
    # @return [Types::ModifyTargetGroupAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_target_group_attributes(
    #     target_group_arn: 'TargetGroupArn', # required
    #     attributes: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyTargetGroupAttributesOutput
    #   resp.data.attributes #=> Array<TargetGroupAttribute>
    #   resp.data.attributes[0] #=> Types::TargetGroupAttribute
    #   resp.data.attributes[0].key #=> String
    #   resp.data.attributes[0].value #=> String
    #
    def modify_target_group_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyTargetGroupAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyTargetGroupAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyTargetGroupAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::TargetGroupNotFoundException]),
        data_parser: Parsers::ModifyTargetGroupAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyTargetGroupAttributes,
        stubs: @stubs,
        params_class: Params::ModifyTargetGroupAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_target_group_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers the specified targets with the specified target group.</p>
    #
    #          <p>If the target is an EC2 instance, it must be in the <code>running</code> state when you
    #       register it.</p>
    #
    #          <p>By default, the load balancer routes requests to registered targets using the protocol and
    #       port for the target group. Alternatively, you can override the port for a target when you
    #       register it. You can register each EC2 instance or IP address with the same target group
    #       multiple times using different ports.</p>
    #
    #          <p>With a Network Load Balancer, you cannot register instances by instance ID if they have
    #       the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3,
    #       and T1. You can register instances of these types by IP address.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterTargetsInput}.
    #
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    # @option params [Array<TargetDescription>] :targets
    #   <p>The targets.</p>
    #
    # @return [Types::RegisterTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_targets(
    #     target_group_arn: 'TargetGroupArn', # required
    #     targets: [
    #       {
    #         id: 'Id', # required
    #         port: 1,
    #         availability_zone: 'AvailabilityZone'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterTargetsOutput
    #
    def register_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterTargets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTargetException, Errors::TargetGroupNotFoundException, Errors::TooManyRegistrationsForTargetIdException, Errors::TooManyTargetsException]),
        data_parser: Parsers::RegisterTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterTargets,
        stubs: @stubs,
        params_class: Params::RegisterTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified certificate from the certificate list for the specified HTTPS or TLS
    #       listener.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveListenerCertificatesInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [Array<Certificate>] :certificates
    #   <p>The certificate to remove. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    #
    # @return [Types::RemoveListenerCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_listener_certificates(
    #     listener_arn: 'ListenerArn', # required
    #     certificates: [
    #       {
    #         certificate_arn: 'CertificateArn',
    #         is_default: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveListenerCertificatesOutput
    #
    def remove_listener_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveListenerCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveListenerCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveListenerCertificates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::RemoveListenerCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveListenerCertificates,
        stubs: @stubs,
        params_class: Params::RemoveListenerCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_listener_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the specified Elastic Load Balancing resources. You can
    #       remove the tags for one or more Application Load Balancers, Network Load Balancers, Gateway
    #       Load Balancers, target groups, listeners, or rules.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys for the tags to remove.</p>
    #
    # @return [Types::RemoveTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags(
    #     resource_arns: [
    #       'member'
    #     ], # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsOutput
    #
    def remove_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTags
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ListenerNotFoundException, Errors::LoadBalancerNotFoundException, Errors::RuleNotFoundException, Errors::TargetGroupNotFoundException, Errors::TooManyTagsException]),
        data_parser: Parsers::RemoveTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTags,
        stubs: @stubs,
        params_class: Params::RemoveTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the type of IP addresses used by the subnets of the specified Application Load
    #       Balancer or Network Load Balancer.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIpAddressTypeInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The IP address type. The possible values are <code>ipv4</code> (for IPv4 addresses) and
    #           <code>dualstack</code> (for IPv4 and IPv6 addresses).
    #          You can’t specify
    #           <code>dualstack</code> for a load balancer with a UDP or TCP_UDP listener.</p>
    #
    # @return [Types::SetIpAddressTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_ip_address_type(
    #     load_balancer_arn: 'LoadBalancerArn', # required
    #     ip_address_type: 'ipv4' # required - accepts ["ipv4", "dualstack"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIpAddressTypeOutput
    #   resp.data.ip_address_type #=> String, one of ["ipv4", "dualstack"]
    #
    def set_ip_address_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIpAddressTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIpAddressTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIpAddressType
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::InvalidSubnetException, Errors::LoadBalancerNotFoundException]),
        data_parser: Parsers::SetIpAddressType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIpAddressType,
        stubs: @stubs,
        params_class: Params::SetIpAddressTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_ip_address_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the priorities of the specified rules.</p>
    #          <p>You can reorder the rules as long as there are no priority conflicts in the new order. Any
    #       existing rules that you do not specify retain their current priority.</p>
    #
    # @param [Hash] params
    #   See {Types::SetRulePrioritiesInput}.
    #
    # @option params [Array<RulePriorityPair>] :rule_priorities
    #   <p>The rule priorities.</p>
    #
    # @return [Types::SetRulePrioritiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_rule_priorities(
    #     rule_priorities: [
    #       {
    #         rule_arn: 'RuleArn',
    #         priority: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetRulePrioritiesOutput
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].rule_arn #=> String
    #   resp.data.rules[0].priority #=> String
    #   resp.data.rules[0].conditions #=> Array<RuleCondition>
    #   resp.data.rules[0].conditions[0] #=> Types::RuleCondition
    #   resp.data.rules[0].conditions[0].field #=> String
    #   resp.data.rules[0].conditions[0].values #=> Array<String>
    #   resp.data.rules[0].conditions[0].values[0] #=> String
    #   resp.data.rules[0].conditions[0].host_header_config #=> Types::HostHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].host_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].path_pattern_config #=> Types::PathPatternConditionConfig
    #   resp.data.rules[0].conditions[0].path_pattern_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].http_header_config #=> Types::HttpHeaderConditionConfig
    #   resp.data.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.data.rules[0].conditions[0].http_header_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].query_string_config #=> Types::QueryStringConditionConfig
    #   resp.data.rules[0].conditions[0].query_string_config.values #=> Array<QueryStringKeyValuePair>
    #   resp.data.rules[0].conditions[0].query_string_config.values[0] #=> Types::QueryStringKeyValuePair
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.data.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.data.rules[0].conditions[0].http_request_method_config #=> Types::HttpRequestMethodConditionConfig
    #   resp.data.rules[0].conditions[0].http_request_method_config.values #=> Array<String>
    #   resp.data.rules[0].conditions[0].source_ip_config #=> Types::SourceIpConditionConfig
    #   resp.data.rules[0].conditions[0].source_ip_config.values #=> Array<String>
    #   resp.data.rules[0].actions #=> Array<Action>
    #   resp.data.rules[0].actions[0] #=> Types::Action
    #   resp.data.rules[0].actions[0].type #=> String, one of ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"]
    #   resp.data.rules[0].actions[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config #=> Types::AuthenticateOidcActionConfig
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.data.rules[0].actions[0].authenticate_cognito_config #=> Types::AuthenticateCognitoActionConfig
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash<String, String>
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params['key'] #=> String
    #   resp.data.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of ["deny", "allow", "authenticate"]
    #   resp.data.rules[0].actions[0].order #=> Integer
    #   resp.data.rules[0].actions[0].redirect_config #=> Types::RedirectActionConfig
    #   resp.data.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.data.rules[0].actions[0].redirect_config.port #=> String
    #   resp.data.rules[0].actions[0].redirect_config.host #=> String
    #   resp.data.rules[0].actions[0].redirect_config.path #=> String
    #   resp.data.rules[0].actions[0].redirect_config.query #=> String
    #   resp.data.rules[0].actions[0].redirect_config.status_code #=> String, one of ["HTTP_301", "HTTP_302"]
    #   resp.data.rules[0].actions[0].fixed_response_config #=> Types::FixedResponseActionConfig
    #   resp.data.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.data.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.data.rules[0].actions[0].forward_config #=> Types::ForwardActionConfig
    #   resp.data.rules[0].actions[0].forward_config.target_groups #=> Array<TargetGroupTuple>
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0] #=> Types::TargetGroupTuple
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.data.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config #=> Types::TargetGroupStickinessConfig
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.data.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.data.rules[0].is_default #=> Boolean
    #
    def set_rule_priorities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetRulePrioritiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetRulePrioritiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetRulePriorities
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::PriorityInUseException, Errors::RuleNotFoundException]),
        data_parser: Parsers::SetRulePriorities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetRulePriorities,
        stubs: @stubs,
        params_class: Params::SetRulePrioritiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_rule_priorities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified security groups with the specified Application Load Balancer. The
    #       specified security groups override the previously associated security groups.</p>
    #          <p>You can't specify a security group for a Network Load Balancer or Gateway Load
    #       Balancer.</p>
    #
    # @param [Hash] params
    #   See {Types::SetSecurityGroupsInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>The IDs of the security groups.</p>
    #
    # @return [Types::SetSecurityGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_security_groups(
    #     load_balancer_arn: 'LoadBalancerArn', # required
    #     security_groups: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetSecurityGroupsOutput
    #   resp.data.security_group_ids #=> Array<String>
    #   resp.data.security_group_ids[0] #=> String
    #
    def set_security_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetSecurityGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetSecurityGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetSecurityGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::InvalidSecurityGroupException, Errors::LoadBalancerNotFoundException]),
        data_parser: Parsers::SetSecurityGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetSecurityGroups,
        stubs: @stubs,
        params_class: Params::SetSecurityGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_security_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the Availability Zones for the specified public subnets for the specified
    #       Application Load Balancer or Network Load Balancer. The specified subnets replace the
    #       previously enabled subnets.</p>
    #          <p>When you specify subnets for a Network Load Balancer, you must include all subnets that
    #       were enabled previously, with their existing configurations, plus any additional
    #       subnets.</p>
    #
    # @param [Hash] params
    #   See {Types::SetSubnetsInput}.
    #
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #
    # @option params [Array<String>] :subnets
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
    # @option params [Array<SubnetMapping>] :subnet_mappings
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
    # @option params [String] :ip_address_type
    #   <p>[Network Load Balancers] The type of IP addresses used by the subnets for your load
    #         balancer. The possible values are <code>ipv4</code> (for IPv4 addresses) and
    #           <code>dualstack</code> (for IPv4 and IPv6 addresses). You can’t specify
    #           <code>dualstack</code> for a load balancer with a UDP or TCP_UDP listener.
    #         .</p>
    #
    # @return [Types::SetSubnetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_subnets(
    #     load_balancer_arn: 'LoadBalancerArn', # required
    #     subnets: [
    #       'member'
    #     ],
    #     subnet_mappings: [
    #       {
    #         subnet_id: 'SubnetId',
    #         allocation_id: 'AllocationId',
    #         private_i_pv4_address: 'PrivateIPv4Address',
    #         i_pv6_address: 'IPv6Address'
    #       }
    #     ],
    #     ip_address_type: 'ipv4' # accepts ["ipv4", "dualstack"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetSubnetsOutput
    #   resp.data.availability_zones #=> Array<AvailabilityZone>
    #   resp.data.availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.availability_zones[0].zone_name #=> String
    #   resp.data.availability_zones[0].subnet_id #=> String
    #   resp.data.availability_zones[0].outpost_id #=> String
    #   resp.data.availability_zones[0].load_balancer_addresses #=> Array<LoadBalancerAddress>
    #   resp.data.availability_zones[0].load_balancer_addresses[0] #=> Types::LoadBalancerAddress
    #   resp.data.availability_zones[0].load_balancer_addresses[0].ip_address #=> String
    #   resp.data.availability_zones[0].load_balancer_addresses[0].allocation_id #=> String
    #   resp.data.availability_zones[0].load_balancer_addresses[0].private_i_pv4_address #=> String
    #   resp.data.availability_zones[0].load_balancer_addresses[0].i_pv6_address #=> String
    #   resp.data.ip_address_type #=> String, one of ["ipv4", "dualstack"]
    #
    def set_subnets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetSubnetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetSubnetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetSubnets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AllocationIdNotFoundException, Errors::AvailabilityZoneNotSupportedException, Errors::InvalidConfigurationRequestException, Errors::InvalidSubnetException, Errors::LoadBalancerNotFoundException, Errors::SubnetNotFoundException]),
        data_parser: Parsers::SetSubnets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetSubnets,
        stubs: @stubs,
        params_class: Params::SetSubnetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_subnets
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
