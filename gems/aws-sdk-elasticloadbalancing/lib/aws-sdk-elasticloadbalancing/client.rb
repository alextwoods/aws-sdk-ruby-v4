# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ElasticLoadBalancing
  # An API client for ElasticLoadBalancing_v7
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Elastic Load Balancing</fullname>
  #
  #         <p>A load balancer can distribute incoming traffic across your EC2 instances.
  #             This enables you to increase the availability of your application. The load balancer
  #             also monitors the health of its registered instances and ensures that it routes traffic
  #             only to healthy instances. You configure your load balancer to accept incoming traffic
  #             by specifying one or more listeners, which are configured with a protocol and port
  #             number for connections from clients to the load balancer and a protocol and port number
  #             for connections from the load balancer to the instances.</p>
  #         <p>Elastic Load Balancing supports three types of load balancers: Application Load Balancers, Network Load Balancers,
  #             and Classic Load Balancers. You can select a load balancer based on your application needs. For more
  #             information, see the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User Guide</a>.</p>
  #         <p>This reference covers the 2012-06-01 API, which supports Classic Load Balancers.
  #             The 2015-12-01 API supports Application Load Balancers and Network Load Balancers.</p>
  #
  #         <p>To get started, create a load balancer with one or more listeners using <a>CreateLoadBalancer</a>.
  #             Register your instances with the load balancer using <a>RegisterInstancesWithLoadBalancer</a>.</p>
  #
  #         <p>All Elastic Load Balancing operations are <i>idempotent</i>, which means
  #             that they complete at most one time. If you repeat an operation, it succeeds with a 200 OK
  #             response code.</p>
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
    def initialize(config = AWS::SDK::ElasticLoadBalancing::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags.</p>
    #
    #         <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated
    #             with the load balancer, <code>AddTags</code> updates its value.</p>
    #
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>The name of the load balancer. You can specify one load balancer only.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags.</p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     load_balancer_names: [
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException]),
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

    # <p>Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups">Security Groups for Load Balancers in a VPC</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ApplySecurityGroupsToLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.</p>
    #
    # @return [Types::ApplySecurityGroupsToLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_security_groups_to_load_balancer(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     security_groups: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApplySecurityGroupsToLoadBalancerOutput
    #   resp.data.security_groups #=> Array<String>
    #   resp.data.security_groups[0] #=> String
    #
    def apply_security_groups_to_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApplySecurityGroupsToLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApplySecurityGroupsToLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApplySecurityGroupsToLoadBalancer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::AccessPointNotFoundException, Errors::InvalidSecurityGroupException]),
        data_parser: Parsers::ApplySecurityGroupsToLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApplySecurityGroupsToLoadBalancer,
        stubs: @stubs,
        params_class: Params::ApplySecurityGroupsToLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :apply_security_groups_to_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more subnets to the set of configured subnets for the specified load balancer.</p>
    #         <p>The load balancer evenly distributes requests across all registered subnets.
    #             For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html">Add or Remove Subnets for Your Load Balancer in a VPC</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachLoadBalancerToSubnetsInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets to add. You can add only one subnet per Availability Zone.</p>
    #
    # @return [Types::AttachLoadBalancerToSubnetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancer_to_subnets(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     subnets: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachLoadBalancerToSubnetsOutput
    #   resp.data.subnets #=> Array<String>
    #   resp.data.subnets[0] #=> String
    #
    def attach_load_balancer_to_subnets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachLoadBalancerToSubnetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachLoadBalancerToSubnetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachLoadBalancerToSubnets
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::AccessPointNotFoundException, Errors::SubnetNotFoundException, Errors::InvalidSubnetException]),
        data_parser: Parsers::AttachLoadBalancerToSubnets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachLoadBalancerToSubnets,
        stubs: @stubs,
        params_class: Params::AttachLoadBalancerToSubnetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_load_balancer_to_subnets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies the health check settings to use when evaluating the health state of your EC2 instances.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html">Configure Health Checks for Your Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfigureHealthCheckInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [HealthCheck] :health_check
    #   <p>The configuration information.</p>
    #
    # @return [Types::ConfigureHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_health_check(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     health_check: {
    #       target: 'Target', # required
    #       interval: 1, # required
    #       timeout: 1, # required
    #       unhealthy_threshold: 1, # required
    #       healthy_threshold: 1 # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfigureHealthCheckOutput
    #   resp.data.health_check #=> Types::HealthCheck
    #   resp.data.health_check.target #=> String
    #   resp.data.health_check.interval #=> Integer
    #   resp.data.health_check.timeout #=> Integer
    #   resp.data.health_check.unhealthy_threshold #=> Integer
    #   resp.data.health_check.healthy_threshold #=> Integer
    #
    def configure_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfigureHealthCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfigureHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfigureHealthCheck
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException]),
        data_parser: Parsers::ConfigureHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfigureHealthCheck,
        stubs: @stubs,
        params_class: Params::ConfigureHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :configure_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners.</p>
    #         <p>This policy is similar to the policy created by <a>CreateLBCookieStickinessPolicy</a>,
    #             except that the lifetime of the special Elastic Load Balancing cookie, <code>AWSELB</code>,
    #             follows the lifetime of the application-generated cookie specified in the policy configuration.
    #             The load balancer only inserts a new stickiness cookie when the application response
    #             includes a new application cookie.</p>
    #         <p>If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppCookieStickinessPolicyInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
    #
    # @option params [String] :cookie_name
    #   <p>The name of the application cookie used for stickiness.</p>
    #
    # @return [Types::CreateAppCookieStickinessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_cookie_stickiness_policy(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     policy_name: 'PolicyName', # required
    #     cookie_name: 'CookieName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppCookieStickinessPolicyOutput
    #
    def create_app_cookie_stickiness_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppCookieStickinessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppCookieStickinessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppCookieStickinessPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::TooManyPoliciesException, Errors::AccessPointNotFoundException, Errors::DuplicatePolicyNameException]),
        data_parser: Parsers::CreateAppCookieStickinessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppCookieStickinessPolicy,
        stubs: @stubs,
        params_class: Params::CreateAppCookieStickinessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_cookie_stickiness_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.</p>
    #         <p>When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request.
    #             If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.</p>
    #         <p>A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.</p>
    #
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLBCookieStickinessPolicyInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
    #
    # @option params [Integer] :cookie_expiration_period
    #   <p>The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.</p>
    #
    # @return [Types::CreateLBCookieStickinessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lb_cookie_stickiness_policy(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     policy_name: 'PolicyName', # required
    #     cookie_expiration_period: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLBCookieStickinessPolicyOutput
    #
    def create_lb_cookie_stickiness_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLBCookieStickinessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLBCookieStickinessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLBCookieStickinessPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::TooManyPoliciesException, Errors::AccessPointNotFoundException, Errors::DuplicatePolicyNameException]),
        data_parser: Parsers::CreateLBCookieStickinessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLBCookieStickinessPolicy,
        stubs: @stubs,
        params_class: Params::CreateLBCookieStickinessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_lb_cookie_stickiness_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Classic Load Balancer.</p>
    #
    #         <p>You can add listeners, security groups, subnets, and tags when you create your load balancer,
    #             or you can add them later using <a>CreateLoadBalancerListeners</a>,
    #             <a>ApplySecurityGroupsToLoadBalancer</a>, <a>AttachLoadBalancerToSubnets</a>,
    #             and <a>AddTags</a>.</p>
    #         <p>To describe your current load balancers, see <a>DescribeLoadBalancers</a>.
    #             When you are finished with a load balancer, you can delete it using
    #             <a>DeleteLoadBalancer</a>.</p>
    #
    #         <p>You can create up to 20 load balancers per region per account.
    #             You can request an increase for the number of load balancers for your account.
    #             For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #           <p>This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.</p>
    #
    # @option params [Array<Listener>] :listeners
    #   <p>The listeners.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>One or more Availability Zones from the same region as the load balancer.</p>
    #           <p>You must specify at least one Availability Zone.</p>
    #           <p>You can add more Availability Zones after you create the load balancer using
    #               <a>EnableAvailabilityZonesForLoadBalancer</a>.</p>
    #
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets in your VPC to attach to the load balancer.
    #               Specify one subnet per Availability Zone specified in <code>AvailabilityZones</code>.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>The IDs of the security groups to assign to the load balancer.</p>
    #
    # @option params [String] :scheme
    #   <p>The type of a load balancer. Valid only for load balancers in a VPC.</p>
    #           <p>By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses.
    #               For more information about Internet-facing and Internal load balancers, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme">Load Balancer Scheme</a>
    #               in the <i>Elastic Load Balancing User Guide</i>.</p>
    #           <p>Specify <code>internal</code> to create a load balancer with a DNS name that resolves to private IP addresses.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to assign to the load balancer.</p>
    #           <p>For more information about tagging your load balancer, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @return [Types::CreateLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     listeners: [
    #       {
    #         protocol: 'Protocol', # required
    #         load_balancer_port: 1, # required
    #         instance_protocol: 'InstanceProtocol',
    #         instance_port: 1, # required
    #         ssl_certificate_id: 'SSLCertificateId'
    #       }
    #     ], # required
    #     availability_zones: [
    #       'member'
    #     ],
    #     subnets: [
    #       'member'
    #     ],
    #     security_groups: [
    #       'member'
    #     ],
    #     scheme: 'Scheme',
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
    #   resp.data #=> Types::CreateLoadBalancerOutput
    #   resp.data.dns_name #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSchemeException, Errors::SubnetNotFoundException, Errors::TooManyAccessPointsException, Errors::InvalidSecurityGroupException, Errors::OperationNotPermittedException, Errors::TooManyTagsException, Errors::InvalidSubnetException, Errors::InvalidConfigurationRequestException, Errors::CertificateNotFoundException, Errors::UnsupportedProtocolException, Errors::DuplicateTagKeysException, Errors::DuplicateAccessPointNameException]),
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

    # <p>Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLoadBalancerListenersInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<Listener>] :listeners
    #   <p>The listeners.</p>
    #
    # @return [Types::CreateLoadBalancerListenersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer_listeners(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     listeners: [
    #       {
    #         protocol: 'Protocol', # required
    #         load_balancer_port: 1, # required
    #         instance_protocol: 'InstanceProtocol',
    #         instance_port: 1, # required
    #         ssl_certificate_id: 'SSLCertificateId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLoadBalancerListenersOutput
    #
    def create_load_balancer_listeners(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLoadBalancerListenersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLoadBalancerListenersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLoadBalancerListeners
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::CertificateNotFoundException, Errors::UnsupportedProtocolException, Errors::AccessPointNotFoundException, Errors::DuplicateListenerException]),
        data_parser: Parsers::CreateLoadBalancerListeners
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLoadBalancerListeners,
        stubs: @stubs,
        params_class: Params::CreateLoadBalancerListenersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_load_balancer_listeners
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a policy with the specified attributes for the specified load balancer.</p>
    #          <p>Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLoadBalancerPolicyInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.</p>
    #
    # @option params [String] :policy_type_name
    #   <p>The name of the base policy type.
    #      	   To get the list of policy types, use <a>DescribeLoadBalancerPolicyTypes</a>.</p>
    #
    # @option params [Array<PolicyAttribute>] :policy_attributes
    #   <p>The policy attributes.</p>
    #
    # @return [Types::CreateLoadBalancerPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer_policy(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     policy_name: 'PolicyName', # required
    #     policy_type_name: 'PolicyTypeName', # required
    #     policy_attributes: [
    #       {
    #         attribute_name: 'AttributeName',
    #         attribute_value: 'AttributeValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLoadBalancerPolicyOutput
    #
    def create_load_balancer_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLoadBalancerPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLoadBalancerPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLoadBalancerPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::TooManyPoliciesException, Errors::AccessPointNotFoundException, Errors::DuplicatePolicyNameException, Errors::PolicyTypeNotFoundException]),
        data_parser: Parsers::CreateLoadBalancerPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLoadBalancerPolicy,
        stubs: @stubs,
        params_class: Params::CreateLoadBalancerPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_load_balancer_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified load balancer.</p>
    #         <p>If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances.</p>
    #         <p>If the load balancer does not exist or has already been deleted, the call to
    #             <code>DeleteLoadBalancer</code> still succeeds.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @return [Types::DeleteLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer(
    #     load_balancer_name: 'LoadBalancerName' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Deletes the specified listeners from the specified load balancer.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoadBalancerListenersInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<Integer>] :load_balancer_ports
    #   <p>The client port numbers of the listeners.</p>
    #
    # @return [Types::DeleteLoadBalancerListenersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer_listeners(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     load_balancer_ports: [
    #       1
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLoadBalancerListenersOutput
    #
    def delete_load_balancer_listeners(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLoadBalancerListenersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLoadBalancerListenersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLoadBalancerListeners
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DeleteLoadBalancerListeners
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLoadBalancerListeners,
        stubs: @stubs,
        params_class: Params::DeleteLoadBalancerListenersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_load_balancer_listeners
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoadBalancerPolicyInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    # @return [Types::DeleteLoadBalancerPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer_policy(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLoadBalancerPolicyOutput
    #
    def delete_load_balancer_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLoadBalancerPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLoadBalancerPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLoadBalancerPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DeleteLoadBalancerPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLoadBalancerPolicy,
        stubs: @stubs,
        params_class: Params::DeleteLoadBalancerPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_load_balancer_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer.</p>
    #
    #         <p>You can use <a>DescribeLoadBalancers</a> to verify that the instance is deregistered from the load balancer.</p>
    #
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterInstancesFromLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<Instance>] :instances
    #   <p>The IDs of the instances.</p>
    #
    # @return [Types::DeregisterInstancesFromLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instances_from_load_balancer(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     instances: [
    #       {
    #         instance_id: 'InstanceId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterInstancesFromLoadBalancerOutput
    #   resp.data.instances #=> Array<Instance>
    #   resp.data.instances[0] #=> Types::Instance
    #   resp.data.instances[0].instance_id #=> String
    #
    def deregister_instances_from_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterInstancesFromLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterInstancesFromLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterInstancesFromLoadBalancer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidEndPointException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DeregisterInstancesFromLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterInstancesFromLoadBalancer,
        stubs: @stubs,
        params_class: Params::DeregisterInstancesFromLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_instances_from_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current Elastic Load Balancing resource limits for your AWS account.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountLimitsInput}.
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceHealthInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<Instance>] :instances
    #   <p>The IDs of the instances.</p>
    #
    # @return [Types::DescribeInstanceHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_health(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     instances: [
    #       {
    #         instance_id: 'InstanceId'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceHealthOutput
    #   resp.data.instance_states #=> Array<InstanceState>
    #   resp.data.instance_states[0] #=> Types::InstanceState
    #   resp.data.instance_states[0].instance_id #=> String
    #   resp.data.instance_states[0].state #=> String
    #   resp.data.instance_states[0].reason_code #=> String
    #   resp.data.instance_states[0].description #=> String
    #
    def describe_instance_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceHealth
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidEndPointException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DescribeInstanceHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceHealth,
        stubs: @stubs,
        params_class: Params::DescribeInstanceHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the attributes for the specified load balancer.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancerAttributesInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @return [Types::DescribeLoadBalancerAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_attributes(
    #     load_balancer_name: 'LoadBalancerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancerAttributesOutput
    #   resp.data.load_balancer_attributes #=> Types::LoadBalancerAttributes
    #   resp.data.load_balancer_attributes.cross_zone_load_balancing #=> Types::CrossZoneLoadBalancing
    #   resp.data.load_balancer_attributes.cross_zone_load_balancing.enabled #=> Boolean
    #   resp.data.load_balancer_attributes.access_log #=> Types::AccessLog
    #   resp.data.load_balancer_attributes.access_log.enabled #=> Boolean
    #   resp.data.load_balancer_attributes.access_log.s3_bucket_name #=> String
    #   resp.data.load_balancer_attributes.access_log.emit_interval #=> Integer
    #   resp.data.load_balancer_attributes.access_log.s3_bucket_prefix #=> String
    #   resp.data.load_balancer_attributes.connection_draining #=> Types::ConnectionDraining
    #   resp.data.load_balancer_attributes.connection_draining.enabled #=> Boolean
    #   resp.data.load_balancer_attributes.connection_draining.timeout #=> Integer
    #   resp.data.load_balancer_attributes.connection_settings #=> Types::ConnectionSettings
    #   resp.data.load_balancer_attributes.connection_settings.idle_timeout #=> Integer
    #   resp.data.load_balancer_attributes.additional_attributes #=> Array<AdditionalAttribute>
    #   resp.data.load_balancer_attributes.additional_attributes[0] #=> Types::AdditionalAttribute
    #   resp.data.load_balancer_attributes.additional_attributes[0].key #=> String
    #   resp.data.load_balancer_attributes.additional_attributes[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException, Errors::LoadBalancerAttributeNotFoundException]),
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

    # <p>Describes the specified policies.</p>
    #          <p>If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer.
    #     If you specify a policy name associated with your load balancer, the action returns the description of that policy.
    #     If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies.
    #     The names of the sample policies have the <code>ELBSample-</code> prefix.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancerPoliciesInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<String>] :policy_names
    #   <p>The names of the policies.</p>
    #
    # @return [Types::DescribeLoadBalancerPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_policies(
    #     load_balancer_name: 'LoadBalancerName',
    #     policy_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancerPoliciesOutput
    #   resp.data.policy_descriptions #=> Array<PolicyDescription>
    #   resp.data.policy_descriptions[0] #=> Types::PolicyDescription
    #   resp.data.policy_descriptions[0].policy_name #=> String
    #   resp.data.policy_descriptions[0].policy_type_name #=> String
    #   resp.data.policy_descriptions[0].policy_attribute_descriptions #=> Array<PolicyAttributeDescription>
    #   resp.data.policy_descriptions[0].policy_attribute_descriptions[0] #=> Types::PolicyAttributeDescription
    #   resp.data.policy_descriptions[0].policy_attribute_descriptions[0].attribute_name #=> String
    #   resp.data.policy_descriptions[0].policy_attribute_descriptions[0].attribute_value #=> String
    #
    def describe_load_balancer_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBalancerPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBalancerPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBalancerPolicies
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyNotFoundException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DescribeLoadBalancerPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBalancerPolicies,
        stubs: @stubs,
        params_class: Params::DescribeLoadBalancerPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_balancer_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified load balancer policy types or all load balancer policy types.</p>
    #          <p>The description of each type indicates how it can be used. For example,
    #            some policies can be used only with layer 7 listeners,
    #            some policies can be used only with layer 4 listeners,
    #            and some policies can be used only with your EC2 instances.</p>
    #          <p>You can use <a>CreateLoadBalancerPolicy</a> to create a policy configuration for any of these policy types.
    #            Then, depending on the policy type, use either <a>SetLoadBalancerPoliciesOfListener</a> or
    #            <a>SetLoadBalancerPoliciesForBackendServer</a> to set the policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancerPolicyTypesInput}.
    #
    # @option params [Array<String>] :policy_type_names
    #   <p>The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.</p>
    #
    # @return [Types::DescribeLoadBalancerPolicyTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_policy_types(
    #     policy_type_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancerPolicyTypesOutput
    #   resp.data.policy_type_descriptions #=> Array<PolicyTypeDescription>
    #   resp.data.policy_type_descriptions[0] #=> Types::PolicyTypeDescription
    #   resp.data.policy_type_descriptions[0].policy_type_name #=> String
    #   resp.data.policy_type_descriptions[0].description #=> String
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions #=> Array<PolicyAttributeTypeDescription>
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions[0] #=> Types::PolicyAttributeTypeDescription
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions[0].attribute_name #=> String
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions[0].attribute_type #=> String
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions[0].description #=> String
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions[0].default_value #=> String
    #   resp.data.policy_type_descriptions[0].policy_attribute_type_descriptions[0].cardinality #=> String
    #
    def describe_load_balancer_policy_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBalancerPolicyTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBalancerPolicyTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBalancerPolicyTypes
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyTypeNotFoundException]),
        data_parser: Parsers::DescribeLoadBalancerPolicyTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBalancerPolicyTypes,
        stubs: @stubs,
        params_class: Params::DescribeLoadBalancerPolicyTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_balancer_policy_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancersInput}.
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call (a number from 1 to 400). The default is 400.</p>
    #
    # @return [Types::DescribeLoadBalancersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers(
    #     load_balancer_names: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancersOutput
    #   resp.data.load_balancer_descriptions #=> Array<LoadBalancerDescription>
    #   resp.data.load_balancer_descriptions[0] #=> Types::LoadBalancerDescription
    #   resp.data.load_balancer_descriptions[0].load_balancer_name #=> String
    #   resp.data.load_balancer_descriptions[0].dns_name #=> String
    #   resp.data.load_balancer_descriptions[0].canonical_hosted_zone_name #=> String
    #   resp.data.load_balancer_descriptions[0].canonical_hosted_zone_name_id #=> String
    #   resp.data.load_balancer_descriptions[0].listener_descriptions #=> Array<ListenerDescription>
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0] #=> Types::ListenerDescription
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].listener #=> Types::Listener
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].listener.protocol #=> String
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].listener.load_balancer_port #=> Integer
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].listener.instance_protocol #=> String
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].listener.instance_port #=> Integer
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].listener.ssl_certificate_id #=> String
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].policy_names #=> Array<String>
    #   resp.data.load_balancer_descriptions[0].listener_descriptions[0].policy_names[0] #=> String
    #   resp.data.load_balancer_descriptions[0].policies #=> Types::Policies
    #   resp.data.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies #=> Array<AppCookieStickinessPolicy>
    #   resp.data.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies[0] #=> Types::AppCookieStickinessPolicy
    #   resp.data.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.data.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies[0].cookie_name #=> String
    #   resp.data.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies #=> Array<LBCookieStickinessPolicy>
    #   resp.data.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies[0] #=> Types::LBCookieStickinessPolicy
    #   resp.data.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.data.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies[0].cookie_expiration_period #=> Integer
    #   resp.data.load_balancer_descriptions[0].policies.other_policies #=> Array<String>
    #   resp.data.load_balancer_descriptions[0].backend_server_descriptions #=> Array<BackendServerDescription>
    #   resp.data.load_balancer_descriptions[0].backend_server_descriptions[0] #=> Types::BackendServerDescription
    #   resp.data.load_balancer_descriptions[0].backend_server_descriptions[0].instance_port #=> Integer
    #   resp.data.load_balancer_descriptions[0].backend_server_descriptions[0].policy_names #=> Array<String>
    #   resp.data.load_balancer_descriptions[0].availability_zones #=> Array<String>
    #   resp.data.load_balancer_descriptions[0].availability_zones[0] #=> String
    #   resp.data.load_balancer_descriptions[0].subnets #=> Array<String>
    #   resp.data.load_balancer_descriptions[0].subnets[0] #=> String
    #   resp.data.load_balancer_descriptions[0].vpc_id #=> String
    #   resp.data.load_balancer_descriptions[0].instances #=> Array<Instance>
    #   resp.data.load_balancer_descriptions[0].instances[0] #=> Types::Instance
    #   resp.data.load_balancer_descriptions[0].instances[0].instance_id #=> String
    #   resp.data.load_balancer_descriptions[0].health_check #=> Types::HealthCheck
    #   resp.data.load_balancer_descriptions[0].health_check.target #=> String
    #   resp.data.load_balancer_descriptions[0].health_check.interval #=> Integer
    #   resp.data.load_balancer_descriptions[0].health_check.timeout #=> Integer
    #   resp.data.load_balancer_descriptions[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.load_balancer_descriptions[0].health_check.healthy_threshold #=> Integer
    #   resp.data.load_balancer_descriptions[0].source_security_group #=> Types::SourceSecurityGroup
    #   resp.data.load_balancer_descriptions[0].source_security_group.owner_alias #=> String
    #   resp.data.load_balancer_descriptions[0].source_security_group.group_name #=> String
    #   resp.data.load_balancer_descriptions[0].security_groups #=> Array<String>
    #   resp.data.load_balancer_descriptions[0].security_groups[0] #=> String
    #   resp.data.load_balancer_descriptions[0].created_time #=> Time
    #   resp.data.load_balancer_descriptions[0].scheme #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException, Errors::DependencyThrottleException]),
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

    # <p>Describes the tags associated with the specified load balancers.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     load_balancer_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.tag_descriptions #=> Array<TagDescription>
    #   resp.data.tag_descriptions[0] #=> Types::TagDescription
    #   resp.data.tag_descriptions[0].load_balancer_name #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException]),
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

    # <p>Removes the specified subnets from the set of configured subnets for the load balancer.</p>
    #         <p>After a subnet is removed, all EC2 instances registered with the load balancer
    #             in the removed subnet go into the <code>OutOfService</code> state. Then,
    #             the load balancer balances the traffic among the remaining routable subnets.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachLoadBalancerFromSubnetsInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets.</p>
    #
    # @return [Types::DetachLoadBalancerFromSubnetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancer_from_subnets(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     subnets: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachLoadBalancerFromSubnetsOutput
    #   resp.data.subnets #=> Array<String>
    #   resp.data.subnets[0] #=> String
    #
    def detach_load_balancer_from_subnets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachLoadBalancerFromSubnetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachLoadBalancerFromSubnetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachLoadBalancerFromSubnets
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DetachLoadBalancerFromSubnets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachLoadBalancerFromSubnets,
        stubs: @stubs,
        params_class: Params::DetachLoadBalancerFromSubnetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_load_balancer_from_subnets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer
    #             in EC2-Classic or a default VPC.</p>
    #         <p>For load balancers in a non-default VPC, use <a>DetachLoadBalancerFromSubnets</a>.</p>
    #         <p>There must be at least one Availability Zone registered with a load balancer at all times.
    #          After an Availability Zone is removed, all instances registered with the load balancer that are in the removed
    #          Availability Zone go into the <code>OutOfService</code> state. Then, the load balancer attempts to equally balance
    #          the traffic among its remaining Availability Zones.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableAvailabilityZonesForLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones.</p>
    #
    # @return [Types::DisableAvailabilityZonesForLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_availability_zones_for_load_balancer(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     availability_zones: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableAvailabilityZonesForLoadBalancerOutput
    #   resp.data.availability_zones #=> Array<String>
    #   resp.data.availability_zones[0] #=> String
    #
    def disable_availability_zones_for_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableAvailabilityZonesForLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableAvailabilityZonesForLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableAvailabilityZonesForLoadBalancer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::DisableAvailabilityZonesForLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableAvailabilityZonesForLoadBalancer,
        stubs: @stubs,
        params_class: Params::DisableAvailabilityZonesForLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_availability_zones_for_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer
    #             in EC2-Classic or a default VPC.</p>
    #         <p>For load balancers in a non-default VPC, use <a>AttachLoadBalancerToSubnets</a>.</p>
    #         <p>The load balancer evenly distributes requests across all its registered Availability Zones
    #             that contain instances. For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableAvailabilityZonesForLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones. These must be in the same region as the load balancer.</p>
    #
    # @return [Types::EnableAvailabilityZonesForLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_availability_zones_for_load_balancer(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     availability_zones: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableAvailabilityZonesForLoadBalancerOutput
    #   resp.data.availability_zones #=> Array<String>
    #   resp.data.availability_zones[0] #=> String
    #
    def enable_availability_zones_for_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableAvailabilityZonesForLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableAvailabilityZonesForLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableAvailabilityZonesForLoadBalancer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException]),
        data_parser: Parsers::EnableAvailabilityZonesForLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableAvailabilityZonesForLoadBalancer,
        stubs: @stubs,
        params_class: Params::EnableAvailabilityZonesForLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_availability_zones_for_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the attributes of the specified load balancer.</p>
    #         <p>You can modify the load balancer attributes, such as <code>AccessLogs</code>, <code>ConnectionDraining</code>, and
    #             <code>CrossZoneLoadBalancing</code> by either enabling or disabling them. Or, you can modify the load balancer attribute
    #             <code>ConnectionSettings</code> by specifying an idle connection timeout value for your load balancer.</p>
    #         <p>For more information, see the following in the <i>Classic Load Balancers Guide</i>:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html">Cross-Zone Load Balancing</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html">Connection Draining</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html">Access Logs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html">Idle Connection Timeout</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ModifyLoadBalancerAttributesInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [LoadBalancerAttributes] :load_balancer_attributes
    #   <p>The attributes for the load balancer.</p>
    #
    # @return [Types::ModifyLoadBalancerAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_load_balancer_attributes(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: false # required
    #       },
    #       access_log: {
    #         enabled: false, # required
    #         s3_bucket_name: 'S3BucketName',
    #         emit_interval: 1,
    #         s3_bucket_prefix: 'S3BucketPrefix'
    #       },
    #       connection_draining: {
    #         enabled: false, # required
    #         timeout: 1
    #       },
    #       connection_settings: {
    #         idle_timeout: 1 # required
    #       },
    #       additional_attributes: [
    #         {
    #           key: 'Key',
    #           value: 'Value'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyLoadBalancerAttributesOutput
    #   resp.data.load_balancer_name #=> String
    #   resp.data.load_balancer_attributes #=> Types::LoadBalancerAttributes
    #   resp.data.load_balancer_attributes.cross_zone_load_balancing #=> Types::CrossZoneLoadBalancing
    #   resp.data.load_balancer_attributes.cross_zone_load_balancing.enabled #=> Boolean
    #   resp.data.load_balancer_attributes.access_log #=> Types::AccessLog
    #   resp.data.load_balancer_attributes.access_log.enabled #=> Boolean
    #   resp.data.load_balancer_attributes.access_log.s3_bucket_name #=> String
    #   resp.data.load_balancer_attributes.access_log.emit_interval #=> Integer
    #   resp.data.load_balancer_attributes.access_log.s3_bucket_prefix #=> String
    #   resp.data.load_balancer_attributes.connection_draining #=> Types::ConnectionDraining
    #   resp.data.load_balancer_attributes.connection_draining.enabled #=> Boolean
    #   resp.data.load_balancer_attributes.connection_draining.timeout #=> Integer
    #   resp.data.load_balancer_attributes.connection_settings #=> Types::ConnectionSettings
    #   resp.data.load_balancer_attributes.connection_settings.idle_timeout #=> Integer
    #   resp.data.load_balancer_attributes.additional_attributes #=> Array<AdditionalAttribute>
    #   resp.data.load_balancer_attributes.additional_attributes[0] #=> Types::AdditionalAttribute
    #   resp.data.load_balancer_attributes.additional_attributes[0].key #=> String
    #   resp.data.load_balancer_attributes.additional_attributes[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::AccessPointNotFoundException, Errors::LoadBalancerAttributeNotFoundException]),
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

    # <p>Adds the specified instances to the specified load balancer.</p>
    #
    #         <p>The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.</p>
    #
    #         <p>Note that <code>RegisterInstanceWithLoadBalancer</code> completes when the request has been registered.
    #          Instance registration takes a little time to complete. To check the state of the registered instances, use
    #          <a>DescribeLoadBalancers</a> or <a>DescribeInstanceHealth</a>.</p>
    #
    #         <p>After the instance is registered, it starts receiving traffic
    #          and requests from the load balancer. Any instance that is not
    #          in one of the Availability Zones registered for the load balancer
    #          is moved to the <code>OutOfService</code> state. If an Availability Zone
    #          is added to the load balancer later, any instances registered with the
    #          load balancer move to the <code>InService</code> state.</p>
    #
    #         <p>To deregister instances from a load balancer, use <a>DeregisterInstancesFromLoadBalancer</a>.</p>
    #
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterInstancesWithLoadBalancerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Array<Instance>] :instances
    #   <p>The IDs of the instances.</p>
    #
    # @return [Types::RegisterInstancesWithLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instances_with_load_balancer(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     instances: [
    #       {
    #         instance_id: 'InstanceId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterInstancesWithLoadBalancerOutput
    #   resp.data.instances #=> Array<Instance>
    #   resp.data.instances[0] #=> Types::Instance
    #   resp.data.instances[0].instance_id #=> String
    #
    def register_instances_with_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterInstancesWithLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterInstancesWithLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterInstancesWithLoadBalancer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidEndPointException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::RegisterInstancesWithLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterInstancesWithLoadBalancer,
        stubs: @stubs,
        params_class: Params::RegisterInstancesWithLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_instances_with_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from the specified load balancer.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>The name of the load balancer. You can specify a maximum of one load balancer name.</p>
    #
    # @option params [Array<TagKeyOnly>] :tags
    #   <p>The list of tag keys to remove.</p>
    #
    # @return [Types::RemoveTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags(
    #     load_balancer_names: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key'
    #       }
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessPointNotFoundException]),
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

    # <p>Sets the certificate that terminates the specified listener's SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port.</p>
    #
    #         <p>For more information about updating your SSL certificate, see
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html">Replace the SSL Certificate for Your Load Balancer</a>
    #                 in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetLoadBalancerListenerSSLCertificateInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Integer] :load_balancer_port
    #   <p>The port that uses the specified SSL certificate.</p>
    #
    # @option params [String] :ssl_certificate_id
    #   <p>The Amazon Resource Name (ARN) of the SSL certificate.</p>
    #
    # @return [Types::SetLoadBalancerListenerSSLCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_balancer_listener_ssl_certificate(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     load_balancer_port: 1, # required
    #     ssl_certificate_id: 'SSLCertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetLoadBalancerListenerSSLCertificateOutput
    #
    def set_load_balancer_listener_ssl_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetLoadBalancerListenerSSLCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetLoadBalancerListenerSSLCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetLoadBalancerListenerSSLCertificate
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::CertificateNotFoundException, Errors::UnsupportedProtocolException, Errors::AccessPointNotFoundException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::SetLoadBalancerListenerSSLCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetLoadBalancerListenerSSLCertificate,
        stubs: @stubs,
        params_class: Params::SetLoadBalancerListenerSSLCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_load_balancer_listener_ssl_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies.
    #             At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies.</p>
    #         <p>Each time you use <code>SetLoadBalancerPoliciesForBackendServer</code> to enable the policies,
    #             use the <code>PolicyNames</code> parameter to list the policies that you want to enable.</p>
    #         <p>You can use <a>DescribeLoadBalancers</a> or <a>DescribeLoadBalancerPolicies</a> to verify that the policy
    #             is associated with the EC2 instance.</p>
    #
    #         <p>For more information about enabling back-end instance authentication, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt">Configure Back-end Instance Authentication</a>
    #             in the <i>Classic Load Balancers Guide</i>. For more information about Proxy Protocol, see
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html">Configure Proxy Protocol Support</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetLoadBalancerPoliciesForBackendServerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Integer] :instance_port
    #   <p>The port number associated with the EC2 instance.</p>
    #
    # @option params [Array<String>] :policy_names
    #   <p>The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.</p>
    #
    # @return [Types::SetLoadBalancerPoliciesForBackendServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_balancer_policies_for_backend_server(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     instance_port: 1, # required
    #     policy_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetLoadBalancerPoliciesForBackendServerOutput
    #
    def set_load_balancer_policies_for_backend_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetLoadBalancerPoliciesForBackendServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetLoadBalancerPoliciesForBackendServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetLoadBalancerPoliciesForBackendServer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::PolicyNotFoundException, Errors::AccessPointNotFoundException]),
        data_parser: Parsers::SetLoadBalancerPoliciesForBackendServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetLoadBalancerPoliciesForBackendServer,
        stubs: @stubs,
        params_class: Params::SetLoadBalancerPoliciesForBackendServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_load_balancer_policies_for_backend_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the current set of policies for the specified load balancer port with the specified set of policies.</p>
    #         <p>To enable back-end server authentication, use <a>SetLoadBalancerPoliciesForBackendServer</a>.</p>
    #         <p>For more information about setting policies, see
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html">Update the SSL Negotiation Configuration</a>,
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a>, and
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetLoadBalancerPoliciesOfListenerInput}.
    #
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    # @option params [Integer] :load_balancer_port
    #   <p>The external port of the load balancer.</p>
    #
    # @option params [Array<String>] :policy_names
    #   <p>The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.</p>
    #
    # @return [Types::SetLoadBalancerPoliciesOfListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_balancer_policies_of_listener(
    #     load_balancer_name: 'LoadBalancerName', # required
    #     load_balancer_port: 1, # required
    #     policy_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetLoadBalancerPoliciesOfListenerOutput
    #
    def set_load_balancer_policies_of_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetLoadBalancerPoliciesOfListenerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetLoadBalancerPoliciesOfListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetLoadBalancerPoliciesOfListener
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationRequestException, Errors::PolicyNotFoundException, Errors::AccessPointNotFoundException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::SetLoadBalancerPoliciesOfListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetLoadBalancerPoliciesOfListener,
        stubs: @stubs,
        params_class: Params::SetLoadBalancerPoliciesOfListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_load_balancer_policies_of_listener
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
