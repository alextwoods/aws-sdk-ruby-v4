# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Shield
  # An API client for AWSShield_20160616
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Shield Advanced</fullname>
  #          <p>This is the <i>Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the Shield Advanced API actions,
  #          data types, and errors. For detailed information about WAF and Shield Advanced features and an overview of how to use the WAF and Shield Advanced APIs, see the
  #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">WAF and Shield Developer Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Shield::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket containing log data such as Application Load Balancer access logs, CloudFront logs, or logs from third party sources. You can associate up to 10 Amazon S3 buckets with your subscription.</p>
    #          <p>To use the services of the SRT and make an <code>AssociateDRTLogBucket</code> request, you must be subscribed to the <a href="https://docs.aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://docs.aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDRTLogBucketInput}.
    #
    # @option params [String] :log_bucket
    #   <p>The Amazon S3 bucket that contains the logs that you want to share.</p>
    #
    # @return [Types::AssociateDRTLogBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_drt_log_bucket(
    #     log_bucket: 'LogBucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDRTLogBucketOutput
    #
    def associate_drt_log_bucket(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDRTLogBucketInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDRTLogBucketInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDRTLogBucket
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::AccessDeniedForDependencyException, Errors::InvalidParameterException, Errors::NoAssociatedRoleException, Errors::OptimisticLockException, Errors::InternalErrorException, Errors::LimitsExceededException]),
        data_parser: Parsers::AssociateDRTLogBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDRTLogBucket,
        stubs: @stubs,
        params_class: Params::AssociateDRTLogBucketOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_drt_log_bucket
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Authorizes the Shield Response Team (SRT) using the specified role, to access your Amazon Web Services account to assist with DDoS attack mitigation during potential attacks. This enables the SRT to inspect your WAF configuration and create or update WAF rules and web ACLs.</p>
    #          <p>You can associate only one <code>RoleArn</code> with your subscription. If you submit an <code>AssociateDRTRole</code> request for an account that already has an associated role, the new <code>RoleArn</code> will replace the existing <code>RoleArn</code>. </p>
    #          <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <code>AWSShieldDRTAccessPolicy</code> managed policy to the role that you'll specify in the request. You can access this policy in the IAM console at <a href="https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a>. For more information see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Adding and removing IAM identity permissions</a>. The role must also trust the service principal
    # <code>drt.shield.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">IAM JSON policy elements: Principal</a>.</p>
    #
    #          <p>The SRT will have access only to your WAF and Shield resources. By submitting this request, you authorize the SRT to inspect your WAF and Shield configuration and create and update WAF rules and web ACLs on your behalf. The SRT takes these actions only if explicitly authorized by you.</p>
    #          <p>You must have the <code>iam:PassRole</code> permission to make an <code>AssociateDRTRole</code> request. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">Granting a user permissions to pass a role to an Amazon Web Services service</a>. </p>
    #          <p>To use the services of the SRT and make an <code>AssociateDRTRole</code> request, you must be subscribed to the <a href="https://docs.aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://docs.aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDRTRoleInput}.
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role the SRT will use to access your Amazon Web Services account.</p>
    #   	        <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href="https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a> managed policy to this role.  For more information see <a href=" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Attaching and Detaching IAM Policies</a>.</p>
    #
    # @return [Types::AssociateDRTRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_drt_role(
    #     role_arn: 'RoleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDRTRoleOutput
    #
    def associate_drt_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDRTRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDRTRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDRTRole
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::AccessDeniedForDependencyException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::AssociateDRTRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDRTRole,
        stubs: @stubs,
        params_class: Params::AssociateDRTRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_drt_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your Amazon Web Services resource to improve responsiveness and accuracy in attack detection and response.  </p>
    #          <p>You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option">Shield Advanced Health-Based Detection</a> in the <i>WAF Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateHealthCheckInput}.
    #
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to add the health check association to. </p>
    #
    # @option params [String] :health_check_arn
    #   <p>The Amazon Resource Name (ARN) of the health check to associate with the protection.</p>
    #
    # @return [Types::AssociateHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_health_check(
    #     protection_id: 'ProtectionId', # required
    #     health_check_arn: 'HealthCheckArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateHealthCheckOutput
    #
    def associate_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateHealthCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateHealthCheck
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::InvalidResourceException, Errors::OptimisticLockException, Errors::InternalErrorException, Errors::LimitsExceededException]),
        data_parser: Parsers::AssociateHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateHealthCheck,
        stubs: @stubs,
        params_class: Params::AssociateHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initializes proactive engagement and sets the list of contacts for the Shield Response Team (SRT) to use. You must provide at least one phone number in the emergency contact list. </p>
    #          <p>After you have initialized proactive engagement using this call, to disable or enable proactive engagement, use the calls <code>DisableProactiveEngagement</code> and <code>EnableProactiveEngagement</code>.  </p>
    #          <note>
    #             <p>This call defines the list of email addresses and phone numbers that the SRT can use to contact you for escalations to the SRT and to initiate proactive customer support.</p>
    #             <p>The contacts that you provide in the request replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it to this call.  </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateProactiveEngagementDetailsInput}.
    #
    # @option params [Array<EmergencyContact>] :emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support. </p>
    #            <p>To enable proactive engagement, the contact list must include at least one phone number.</p>
    #            <note>
    #               <p>The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it here.  </p>
    #            </note>
    #
    # @return [Types::AssociateProactiveEngagementDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_proactive_engagement_details(
    #     emergency_contact_list: [
    #       {
    #         email_address: 'EmailAddress', # required
    #         phone_number: 'PhoneNumber',
    #         contact_notes: 'ContactNotes'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateProactiveEngagementDetailsOutput
    #
    def associate_proactive_engagement_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateProactiveEngagementDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateProactiveEngagementDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateProactiveEngagementDetails
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::AssociateProactiveEngagementDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateProactiveEngagementDetails,
        stubs: @stubs,
        params_class: Params::AssociateProactiveEngagementDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_proactive_engagement_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables Shield Advanced for a specific Amazon Web Services resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone.</p>
    #          <p>You can add protection to only a single resource with each <code>CreateProtection</code> request. You can add protection to multiple resources
    #           at once through the Shield Advanced console at <a href="https://console.aws.amazon.com/wafv2/shieldv2#/">https://console.aws.amazon.com/wafv2/shieldv2#/</a>.
    #               For more information see
    #           <a href="https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html">Getting Started with Shield Advanced</a>
    #               and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html">Adding Shield Advanced protection to Amazon Web Services resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProtectionInput}.
    #
    # @option params [String] :name
    #   <p>Friendly name for the <code>Protection</code> you are creating.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
    #            <p>The ARN should be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Global Accelerator accelerator: <code>arn:aws:globalaccelerator::<i>account-id</i>:accelerator/<i>accelerator-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tag key-value pairs for the <a>Protection</a> object that is created.</p>
    #
    # @return [Types::CreateProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_protection(
    #     name: 'Name', # required
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProtectionOutput
    #   resp.data.protection_id #=> String
    #
    def create_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProtection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::InvalidResourceException, Errors::OptimisticLockException, Errors::InternalErrorException, Errors::LimitsExceededException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProtection,
        stubs: @stubs,
        params_class: Params::CreateProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateProtectionGroupInput}.
    #
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    # @option params [String] :aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type. </p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. Newly protected resources of this type are automatically added to the group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    # @option params [Array<String>] :members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tag key-value pairs for the protection group.</p>
    #
    # @return [Types::CreateProtectionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_protection_group(
    #     protection_group_id: 'ProtectionGroupId', # required
    #     aggregation: 'SUM', # required - accepts ["SUM", "MEAN", "MAX"]
    #     pattern: 'ALL', # required - accepts ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #     resource_type: 'CLOUDFRONT_DISTRIBUTION', # accepts ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #     members: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProtectionGroupOutput
    #
    def create_protection_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProtectionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProtectionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProtectionGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException, Errors::LimitsExceededException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateProtectionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProtectionGroup,
        stubs: @stubs,
        params_class: Params::CreateProtectionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_protection_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Activates Shield Advanced for an account.</p>
    #
    #          <p>When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period.  You can change this by submitting an <code>UpdateSubscription</code> request. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSubscriptionInput}.
    #
    # @return [Types::CreateSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSubscriptionOutput
    #
    def create_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSubscription,
        stubs: @stubs,
        params_class: Params::CreateSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Shield Advanced <a>Protection</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProtectionInput}.
    #
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to be
    #            deleted.</p>
    #
    # @return [Types::DeleteProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protection(
    #     protection_id: 'ProtectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProtectionOutput
    #
    def delete_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProtection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProtection,
        stubs: @stubs,
        params_class: Params::DeleteProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified protection group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProtectionGroupInput}.
    #
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    # @return [Types::DeleteProtectionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protection_group(
    #     protection_group_id: 'ProtectionGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProtectionGroupOutput
    #
    def delete_protection_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProtectionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProtectionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProtectionGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteProtectionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProtectionGroup,
        stubs: @stubs,
        params_class: Params::DeleteProtectionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_protection_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes Shield Advanced from an account. Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DeleteSubscriptionInput}.
    #
    # @return [Types::DeleteSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSubscriptionOutput
    #
    def delete_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::LockedSubscriptionException]),
        data_parser: Parsers::DeleteSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSubscription,
        stubs: @stubs,
        params_class: Params::DeleteSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the details of a DDoS attack. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAttackInput}.
    #
    # @option params [String] :attack_id
    #   <p>The unique identifier (ID) for the attack.</p>
    #
    # @return [Types::DescribeAttackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_attack(
    #     attack_id: 'AttackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAttackOutput
    #   resp.data.attack #=> Types::AttackDetail
    #   resp.data.attack.attack_id #=> String
    #   resp.data.attack.resource_arn #=> String
    #   resp.data.attack.sub_resources #=> Array<SubResourceSummary>
    #   resp.data.attack.sub_resources[0] #=> Types::SubResourceSummary
    #   resp.data.attack.sub_resources[0].type #=> String, one of ["IP", "URL"]
    #   resp.data.attack.sub_resources[0].id #=> String
    #   resp.data.attack.sub_resources[0].attack_vectors #=> Array<SummarizedAttackVector>
    #   resp.data.attack.sub_resources[0].attack_vectors[0] #=> Types::SummarizedAttackVector
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_type #=> String
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters #=> Array<SummarizedCounter>
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0] #=> Types::SummarizedCounter
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0].name #=> String
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0].max #=> Float
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0].average #=> Float
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0].sum #=> Float
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0].n #=> Integer
    #   resp.data.attack.sub_resources[0].attack_vectors[0].vector_counters[0].unit #=> String
    #   resp.data.attack.sub_resources[0].counters #=> Array<SummarizedCounter>
    #   resp.data.attack.start_time #=> Time
    #   resp.data.attack.end_time #=> Time
    #   resp.data.attack.attack_counters #=> Array<SummarizedCounter>
    #   resp.data.attack.attack_properties #=> Array<AttackProperty>
    #   resp.data.attack.attack_properties[0] #=> Types::AttackProperty
    #   resp.data.attack.attack_properties[0].attack_layer #=> String, one of ["NETWORK", "APPLICATION"]
    #   resp.data.attack.attack_properties[0].attack_property_identifier #=> String, one of ["DESTINATION_URL", "REFERRER", "SOURCE_ASN", "SOURCE_COUNTRY", "SOURCE_IP_ADDRESS", "SOURCE_USER_AGENT", "WORDPRESS_PINGBACK_REFLECTOR", "WORDPRESS_PINGBACK_SOURCE"]
    #   resp.data.attack.attack_properties[0].top_contributors #=> Array<Contributor>
    #   resp.data.attack.attack_properties[0].top_contributors[0] #=> Types::Contributor
    #   resp.data.attack.attack_properties[0].top_contributors[0].name #=> String
    #   resp.data.attack.attack_properties[0].top_contributors[0].value #=> Integer
    #   resp.data.attack.attack_properties[0].unit #=> String, one of ["BITS", "BYTES", "PACKETS", "REQUESTS"]
    #   resp.data.attack.attack_properties[0].total #=> Integer
    #   resp.data.attack.mitigations #=> Array<Mitigation>
    #   resp.data.attack.mitigations[0] #=> Types::Mitigation
    #   resp.data.attack.mitigations[0].mitigation_name #=> String
    #
    def describe_attack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAttackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAttackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAttack
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeAttack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAttack,
        stubs: @stubs,
        params_class: Params::DescribeAttackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_attack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the number and type of attacks Shield has detected in the last year for all resources that belong to your account, regardless of whether you've defined Shield protections for them. This operation is available to Shield customers as well as to Shield Advanced customers.</p>
    #          <p>The operation returns data for the time range of midnight UTC, one year ago, to midnight UTC, today. For example, if the current time is <code>2020-10-26 15:39:32 PDT</code>, equal to <code>2020-10-26 22:39:32 UTC</code>, then the time range for the attack data returned is from <code>2019-10-26 00:00:00 UTC</code> to <code>2020-10-26 00:00:00 UTC</code>. </p>
    #          <p>The time range indicates the period covered by the attack statistics data items.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAttackStatisticsInput}.
    #
    # @return [Types::DescribeAttackStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_attack_statistics()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAttackStatisticsOutput
    #   resp.data.time_range #=> Types::TimeRange
    #   resp.data.time_range.from_inclusive #=> Time
    #   resp.data.time_range.to_exclusive #=> Time
    #   resp.data.data_items #=> Array<AttackStatisticsDataItem>
    #   resp.data.data_items[0] #=> Types::AttackStatisticsDataItem
    #   resp.data.data_items[0].attack_volume #=> Types::AttackVolume
    #   resp.data.data_items[0].attack_volume.bits_per_second #=> Types::AttackVolumeStatistics
    #   resp.data.data_items[0].attack_volume.bits_per_second.max #=> Float
    #   resp.data.data_items[0].attack_volume.packets_per_second #=> Types::AttackVolumeStatistics
    #   resp.data.data_items[0].attack_volume.requests_per_second #=> Types::AttackVolumeStatistics
    #   resp.data.data_items[0].attack_count #=> Integer
    #
    def describe_attack_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAttackStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAttackStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAttackStatistics
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException]),
        data_parser: Parsers::DescribeAttackStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAttackStatistics,
        stubs: @stubs,
        params_class: Params::DescribeAttackStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_attack_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your Amazon Web Services account while assisting with attack mitigation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDRTAccessInput}.
    #
    # @return [Types::DescribeDRTAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_drt_access()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDRTAccessOutput
    #   resp.data.role_arn #=> String
    #   resp.data.log_bucket_list #=> Array<String>
    #   resp.data.log_bucket_list[0] #=> String
    #
    def describe_drt_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDRTAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDRTAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDRTAccess
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeDRTAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDRTAccess,
        stubs: @stubs,
        params_class: Params::DescribeDRTAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_drt_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEmergencyContactSettingsInput}.
    #
    # @return [Types::DescribeEmergencyContactSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_emergency_contact_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEmergencyContactSettingsOutput
    #   resp.data.emergency_contact_list #=> Array<EmergencyContact>
    #   resp.data.emergency_contact_list[0] #=> Types::EmergencyContact
    #   resp.data.emergency_contact_list[0].email_address #=> String
    #   resp.data.emergency_contact_list[0].phone_number #=> String
    #   resp.data.emergency_contact_list[0].contact_notes #=> String
    #
    def describe_emergency_contact_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEmergencyContactSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEmergencyContactSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEmergencyContactSettings
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeEmergencyContactSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEmergencyContactSettings,
        stubs: @stubs,
        params_class: Params::DescribeEmergencyContactSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_emergency_contact_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the details of a <a>Protection</a> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProtectionInput}.
    #
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object that is
    #            described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the Amazon Web Services resource for the <a>Protection</a> object that is
    #            described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>
    #
    # @return [Types::DescribeProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protection(
    #     protection_id: 'ProtectionId',
    #     resource_arn: 'ResourceArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProtectionOutput
    #   resp.data.protection #=> Types::Protection
    #   resp.data.protection.id #=> String
    #   resp.data.protection.name #=> String
    #   resp.data.protection.resource_arn #=> String
    #   resp.data.protection.health_check_ids #=> Array<String>
    #   resp.data.protection.health_check_ids[0] #=> String
    #   resp.data.protection.protection_arn #=> String
    #   resp.data.protection.application_layer_automatic_response_configuration #=> Types::ApplicationLayerAutomaticResponseConfiguration
    #   resp.data.protection.application_layer_automatic_response_configuration.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.protection.application_layer_automatic_response_configuration.action #=> Types::ResponseAction
    #   resp.data.protection.application_layer_automatic_response_configuration.action.block #=> Types::BlockAction
    #   resp.data.protection.application_layer_automatic_response_configuration.action.count #=> Types::CountAction
    #
    def describe_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProtection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProtection,
        stubs: @stubs,
        params_class: Params::DescribeProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the specification for the specified protection group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProtectionGroupInput}.
    #
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    # @return [Types::DescribeProtectionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protection_group(
    #     protection_group_id: 'ProtectionGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProtectionGroupOutput
    #   resp.data.protection_group #=> Types::ProtectionGroup
    #   resp.data.protection_group.protection_group_id #=> String
    #   resp.data.protection_group.aggregation #=> String, one of ["SUM", "MEAN", "MAX"]
    #   resp.data.protection_group.pattern #=> String, one of ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #   resp.data.protection_group.resource_type #=> String, one of ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #   resp.data.protection_group.members #=> Array<String>
    #   resp.data.protection_group.members[0] #=> String
    #   resp.data.protection_group.protection_group_arn #=> String
    #
    def describe_protection_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProtectionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProtectionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProtectionGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeProtectionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProtectionGroup,
        stubs: @stubs,
        params_class: Params::DescribeProtectionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_protection_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details about the Shield Advanced subscription for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSubscriptionInput}.
    #
    # @return [Types::DescribeSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscription()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSubscriptionOutput
    #   resp.data.subscription #=> Types::Subscription
    #   resp.data.subscription.start_time #=> Time
    #   resp.data.subscription.end_time #=> Time
    #   resp.data.subscription.time_commitment_in_seconds #=> Integer
    #   resp.data.subscription.auto_renew #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.subscription.limits #=> Array<Limit>
    #   resp.data.subscription.limits[0] #=> Types::Limit
    #   resp.data.subscription.limits[0].type #=> String
    #   resp.data.subscription.limits[0].max #=> Integer
    #   resp.data.subscription.proactive_engagement_status #=> String, one of ["ENABLED", "DISABLED", "PENDING"]
    #   resp.data.subscription.subscription_limits #=> Types::SubscriptionLimits
    #   resp.data.subscription.subscription_limits.protection_limits #=> Types::ProtectionLimits
    #   resp.data.subscription.subscription_limits.protection_limits.protected_resource_type_limits #=> Array<Limit>
    #   resp.data.subscription.subscription_limits.protection_group_limits #=> Types::ProtectionGroupLimits
    #   resp.data.subscription.subscription_limits.protection_group_limits.max_protection_groups #=> Integer
    #   resp.data.subscription.subscription_limits.protection_group_limits.pattern_type_limits #=> Types::ProtectionGroupPatternTypeLimits
    #   resp.data.subscription.subscription_limits.protection_group_limits.pattern_type_limits.arbitrary_pattern_limits #=> Types::ProtectionGroupArbitraryPatternLimits
    #   resp.data.subscription.subscription_limits.protection_group_limits.pattern_type_limits.arbitrary_pattern_limits.max_members #=> Integer
    #   resp.data.subscription.subscription_arn #=> String
    #
    def describe_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSubscription,
        stubs: @stubs,
        params_class: Params::DescribeSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disable the Shield Advanced automatic application layer DDoS mitigation feature for the resource. This
    #        stops Shield Advanced from creating, verifying, and applying WAF rules for attacks that it detects for the resource. </p>
    #
    # @param [Hash] params
    #   See {Types::DisableApplicationLayerAutomaticResponseInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    # @return [Types::DisableApplicationLayerAutomaticResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_application_layer_automatic_response(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableApplicationLayerAutomaticResponseOutput
    #
    def disable_application_layer_automatic_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableApplicationLayerAutomaticResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableApplicationLayerAutomaticResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableApplicationLayerAutomaticResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DisableApplicationLayerAutomaticResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableApplicationLayerAutomaticResponse,
        stubs: @stubs,
        params_class: Params::DisableApplicationLayerAutomaticResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_application_layer_automatic_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes authorization from the Shield Response Team (SRT) to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableProactiveEngagementInput}.
    #
    # @return [Types::DisableProactiveEngagementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_proactive_engagement()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableProactiveEngagementOutput
    #
    def disable_proactive_engagement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableProactiveEngagementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableProactiveEngagementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableProactiveEngagement
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DisableProactiveEngagement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableProactiveEngagement,
        stubs: @stubs,
        params_class: Params::DisableProactiveEngagementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_proactive_engagement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the Shield Response Team's (SRT) access to the specified Amazon S3 bucket containing the logs that you shared previously.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDRTLogBucketInput}.
    #
    # @option params [String] :log_bucket
    #   <p>The Amazon S3 bucket that contains the logs that you want to share.</p>
    #
    # @return [Types::DisassociateDRTLogBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_drt_log_bucket(
    #     log_bucket: 'LogBucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDRTLogBucketOutput
    #
    def disassociate_drt_log_bucket(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDRTLogBucketInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDRTLogBucketInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDRTLogBucket
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::AccessDeniedForDependencyException, Errors::NoAssociatedRoleException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DisassociateDRTLogBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDRTLogBucket,
        stubs: @stubs,
        params_class: Params::DisassociateDRTLogBucketOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_drt_log_bucket
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the Shield Response Team's (SRT) access to your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDRTRoleInput}.
    #
    # @return [Types::DisassociateDRTRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_drt_role()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDRTRoleOutput
    #
    def disassociate_drt_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDRTRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDRTRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDRTRole
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DisassociateDRTRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDRTRole,
        stubs: @stubs,
        params_class: Params::DisassociateDRTRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_drt_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your Amazon Web Services resource to improve responsiveness and accuracy in attack detection and response. </p>
    #          <p>You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option">Shield Advanced Health-Based Detection</a> in the <i>WAF Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateHealthCheckInput}.
    #
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to remove the health check association from. </p>
    #
    # @option params [String] :health_check_arn
    #   <p>The Amazon Resource Name (ARN) of the health check that is associated with the protection.</p>
    #
    # @return [Types::DisassociateHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_health_check(
    #     protection_id: 'ProtectionId', # required
    #     health_check_arn: 'HealthCheckArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateHealthCheckOutput
    #
    def disassociate_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateHealthCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateHealthCheck
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::InvalidResourceException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::DisassociateHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateHealthCheck,
        stubs: @stubs,
        params_class: Params::DisassociateHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enable the Shield Advanced automatic application layer DDoS mitigation for the resource. </p>
    #          <note>
    #             <p>This feature is available for Amazon CloudFront distributions only.</p>
    #          </note>
    #          <p>This causes Shield Advanced to create, verify, and apply WAF rules for DDoS attacks that it detects for the
    #        resource. Shield Advanced applies the rules in a Shield rule group inside the web ACL that you've associated
    #            with the resource. For information about how automatic mitigation works and the requirements for using it, see
    #    <a href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html">Shield Advanced automatic application layer DDoS mitigation</a>.</p>
    #          <p>Don't use this action to make changes to automatic mitigation settings when it's already enabled for a resource. Instead, use <a>UpdateApplicationLayerAutomaticResponse</a>.</p>
    #          <p>To use this feature, you must associate a web ACL with the protected resource. The web ACL must be created using the latest version of WAF (v2). You can associate the web ACL through the Shield Advanced console
    #            at <a href="https://console.aws.amazon.com/wafv2/shieldv2#/">https://console.aws.amazon.com/wafv2/shieldv2#/</a>. For more information,
    #                see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html">Getting Started with Shield Advanced</a>.</p>
    #          <p>You can also do this through the WAF console or the WAF API, but you must manage Shield Advanced automatic mitigation through Shield Advanced. For information about WAF, see
    #        <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableApplicationLayerAutomaticResponseInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    # @option params [ResponseAction] :action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    #
    # @return [Types::EnableApplicationLayerAutomaticResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_application_layer_automatic_response(
    #     resource_arn: 'ResourceArn', # required
    #     action: {
    #       block: { },
    #       count: { }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableApplicationLayerAutomaticResponseOutput
    #
    def enable_application_layer_automatic_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableApplicationLayerAutomaticResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableApplicationLayerAutomaticResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableApplicationLayerAutomaticResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException, Errors::LimitsExceededException]),
        data_parser: Parsers::EnableApplicationLayerAutomaticResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableApplicationLayerAutomaticResponse,
        stubs: @stubs,
        params_class: Params::EnableApplicationLayerAutomaticResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_application_layer_automatic_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableProactiveEngagementInput}.
    #
    # @return [Types::EnableProactiveEngagementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_proactive_engagement()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableProactiveEngagementOutput
    #
    def enable_proactive_engagement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableProactiveEngagementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableProactiveEngagementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableProactiveEngagement
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::EnableProactiveEngagement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableProactiveEngagement,
        stubs: @stubs,
        params_class: Params::EnableProactiveEngagementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_proactive_engagement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSubscriptionStateInput}.
    #
    # @return [Types::GetSubscriptionStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_state()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSubscriptionStateOutput
    #   resp.data.subscription_state #=> String, one of ["ACTIVE", "INACTIVE"]
    #
    def get_subscription_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSubscriptionStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSubscriptionStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSubscriptionState
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException]),
        data_parser: Parsers::GetSubscriptionState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSubscriptionState,
        stubs: @stubs,
        params_class: Params::GetSubscriptionStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_subscription_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time
    #          period.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttacksInput}.
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The ARNs (Amazon Resource Names) of the resources that were attacked. If you leave this
    #            blank, all applicable resources for this account will be included.</p>
    #
    # @option params [TimeRange] :start_time
    #   <p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
    #              but you can provide the time in any valid <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">timestamp format</a> setting.  </p>
    #
    # @option params [TimeRange] :end_time
    #   <p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
    #              but you can provide the time in any valid <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">timestamp format</a> setting.  </p>
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    # @return [Types::ListAttacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attacks(
    #     resource_arns: [
    #       'member'
    #     ],
    #     start_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttacksOutput
    #   resp.data.attack_summaries #=> Array<AttackSummary>
    #   resp.data.attack_summaries[0] #=> Types::AttackSummary
    #   resp.data.attack_summaries[0].attack_id #=> String
    #   resp.data.attack_summaries[0].resource_arn #=> String
    #   resp.data.attack_summaries[0].start_time #=> Time
    #   resp.data.attack_summaries[0].end_time #=> Time
    #   resp.data.attack_summaries[0].attack_vectors #=> Array<AttackVectorDescription>
    #   resp.data.attack_summaries[0].attack_vectors[0] #=> Types::AttackVectorDescription
    #   resp.data.attack_summaries[0].attack_vectors[0].vector_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_attacks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttacks
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::ListAttacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttacks,
        stubs: @stubs,
        params_class: Params::ListAttacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attacks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the <a>ProtectionGroup</a> objects for the account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProtectionGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    # @return [Types::ListProtectionGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protection_groups(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProtectionGroupsOutput
    #   resp.data.protection_groups #=> Array<ProtectionGroup>
    #   resp.data.protection_groups[0] #=> Types::ProtectionGroup
    #   resp.data.protection_groups[0].protection_group_id #=> String
    #   resp.data.protection_groups[0].aggregation #=> String, one of ["SUM", "MEAN", "MAX"]
    #   resp.data.protection_groups[0].pattern #=> String, one of ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #   resp.data.protection_groups[0].resource_type #=> String, one of ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #   resp.data.protection_groups[0].members #=> Array<String>
    #   resp.data.protection_groups[0].members[0] #=> String
    #   resp.data.protection_groups[0].protection_group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_protection_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProtectionGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProtectionGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProtectionGroups
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidPaginationTokenException, Errors::InternalErrorException]),
        data_parser: Parsers::ListProtectionGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProtectionGroups,
        stubs: @stubs,
        params_class: Params::ListProtectionGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_protection_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all <a>Protection</a> objects for the account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProtectionsInput}.
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    # @return [Types::ListProtectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protections(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProtectionsOutput
    #   resp.data.protections #=> Array<Protection>
    #   resp.data.protections[0] #=> Types::Protection
    #   resp.data.protections[0].id #=> String
    #   resp.data.protections[0].name #=> String
    #   resp.data.protections[0].resource_arn #=> String
    #   resp.data.protections[0].health_check_ids #=> Array<String>
    #   resp.data.protections[0].health_check_ids[0] #=> String
    #   resp.data.protections[0].protection_arn #=> String
    #   resp.data.protections[0].application_layer_automatic_response_configuration #=> Types::ApplicationLayerAutomaticResponseConfiguration
    #   resp.data.protections[0].application_layer_automatic_response_configuration.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.protections[0].application_layer_automatic_response_configuration.action #=> Types::ResponseAction
    #   resp.data.protections[0].application_layer_automatic_response_configuration.action.block #=> Types::BlockAction
    #   resp.data.protections[0].application_layer_automatic_response_configuration.action.count #=> Types::CountAction
    #   resp.data.next_token #=> String
    #
    def list_protections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProtectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProtectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProtections
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidPaginationTokenException, Errors::InternalErrorException]),
        data_parser: Parsers::ListProtections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProtections,
        stubs: @stubs,
        params_class: Params::ListProtectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_protections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resources that are included in the protection group. </p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesInProtectionGroupInput}.
    #
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #              <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #              <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    #
    # @return [Types::ListResourcesInProtectionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_in_protection_group(
    #     protection_group_id: 'ProtectionGroupId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesInProtectionGroupOutput
    #   resp.data.resource_arns #=> Array<String>
    #   resp.data.resource_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_resources_in_protection_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesInProtectionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesInProtectionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourcesInProtectionGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidPaginationTokenException, Errors::InternalErrorException]),
        data_parser: Parsers::ListResourcesInProtectionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourcesInProtectionGroup,
        stubs: @stubs,
        params_class: Params::ListResourcesInProtectionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources_in_protection_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in Shield.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidResourceException, Errors::InternalErrorException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates tags for a resource in Shield.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags that you want to modify or add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::InvalidResourceException, Errors::InternalErrorException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a resource in Shield.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::InvalidResourceException, Errors::InternalErrorException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing Shield Advanced automatic application layer DDoS mitigation configuration for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationLayerAutomaticResponseInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    # @option params [ResponseAction] :action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    #
    # @return [Types::UpdateApplicationLayerAutomaticResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_layer_automatic_response(
    #     resource_arn: 'ResourceArn', # required
    #     action: {
    #       block: { },
    #       count: { }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationLayerAutomaticResponseOutput
    #
    def update_application_layer_automatic_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationLayerAutomaticResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationLayerAutomaticResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplicationLayerAutomaticResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::UpdateApplicationLayerAutomaticResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplicationLayerAutomaticResponse,
        stubs: @stubs,
        params_class: Params::UpdateApplicationLayerAutomaticResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application_layer_automatic_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of the list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEmergencyContactSettingsInput}.
    #
    # @option params [Array<EmergencyContact>] :emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #            <p>If you have proactive engagement enabled, the contact list must include at least one phone number.</p>
    #
    # @return [Types::UpdateEmergencyContactSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_emergency_contact_settings(
    #     emergency_contact_list: [
    #       {
    #         email_address: 'EmailAddress', # required
    #         phone_number: 'PhoneNumber',
    #         contact_notes: 'ContactNotes'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEmergencyContactSettingsOutput
    #
    def update_emergency_contact_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEmergencyContactSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEmergencyContactSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEmergencyContactSettings
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::UpdateEmergencyContactSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEmergencyContactSettings,
        stubs: @stubs,
        params_class: Params::UpdateEmergencyContactSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_emergency_contact_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing protection group. A protection group is a grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProtectionGroupInput}.
    #
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    #
    # @option params [String] :aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    # @option params [Array<String>] :members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    #
    # @return [Types::UpdateProtectionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_protection_group(
    #     protection_group_id: 'ProtectionGroupId', # required
    #     aggregation: 'SUM', # required - accepts ["SUM", "MEAN", "MAX"]
    #     pattern: 'ALL', # required - accepts ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]
    #     resource_type: 'CLOUDFRONT_DISTRIBUTION', # accepts ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]
    #     members: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProtectionGroupOutput
    #
    def update_protection_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProtectionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProtectionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProtectionGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException]),
        data_parser: Parsers::UpdateProtectionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProtectionGroup,
        stubs: @stubs,
        params_class: Params::UpdateProtectionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_protection_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSubscriptionInput}.
    #
    # @option params [String] :auto_renew
    #   <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>
    #
    # @return [Types::UpdateSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription(
    #     auto_renew: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSubscriptionOutput
    #
    def update_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OptimisticLockException, Errors::InternalErrorException, Errors::LockedSubscriptionException]),
        data_parser: Parsers::UpdateSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSubscription,
        stubs: @stubs,
        params_class: Params::UpdateSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_subscription
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
