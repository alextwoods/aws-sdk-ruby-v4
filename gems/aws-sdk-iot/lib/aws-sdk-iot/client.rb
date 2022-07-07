# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::IoT
  # An API client for AWSIotService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>IoT</fullname>
  #         <p>IoT provides secure, bi-directional communication between Internet-connected
  #             devices (such as sensors, actuators, embedded devices, or smart appliances) and the Amazon Web Services
  #             cloud. You can discover your custom IoT-Data endpoint to communicate with, configure
  #             rules for data processing and integration with other services, organize resources
  #             associated with each device (Registry), configure logging, and create and manage
  #             policies and credentials to authenticate devices.</p>
  #         <p>The service endpoints that expose this API are listed in
  #             <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html">Amazon Web Services IoT Core Endpoints and Quotas</a>.
  #             You must use the endpoint for the region that has the resources you want to access.</p>
  #         <p>The service name used by <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Amazon Web Services
  #                 Signature Version 4</a> to sign the request is:
  #             <i>execute-api</i>.</p>
  #         <p>For more information about how IoT works, see the <a href="https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html">Developer
  #             Guide</a>.</p>
  #         <p>For information about how to use the credentials provider for IoT, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html">Authorizing Direct Calls to Amazon Web Services Services</a>.</p>
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
    def initialize(config = AWS::SDK::IoT::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts a pending certificate transfer. The default state of the certificate is
    #          INACTIVE.</p>
    #          <p>To check for pending certificate transfers, call <a>ListCertificates</a>
    #          to enumerate your certificates.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AcceptCertificateTransfer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptCertificateTransferInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @option params [Boolean] :set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    #
    # @return [Types::AcceptCertificateTransferOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_certificate_transfer(
    #     certificate_id: 'certificateId', # required
    #     set_as_active: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptCertificateTransferOutput
    #
    def accept_certificate_transfer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptCertificateTransferInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptCertificateTransferInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptCertificateTransfer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TransferAlreadyCompletedException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::AcceptCertificateTransfer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptCertificateTransfer,
        stubs: @stubs,
        params_class: Params::AcceptCertificateTransferOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_certificate_transfer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a thing to a billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AddThingToBillingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AddThingToBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #   		       <note>
    #               <p>This call is asynchronous. It might take several seconds for the detachment to propagate.</p>
    #            </note>
    #
    # @option params [String] :billing_group_arn
    #   <p>The ARN of the billing group.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to be added to the billing group.</p>
    #
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to be added to the billing group.</p>
    #
    # @return [Types::AddThingToBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_thing_to_billing_group(
    #     billing_group_name: 'billingGroupName',
    #     billing_group_arn: 'billingGroupArn',
    #     thing_name: 'thingName',
    #     thing_arn: 'thingArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddThingToBillingGroupOutput
    #
    def add_thing_to_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddThingToBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddThingToBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddThingToBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AddThingToBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddThingToBillingGroup,
        stubs: @stubs,
        params_class: Params::AddThingToBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_thing_to_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a thing to a thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AddThingToThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AddThingToThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The name of the group to which you are adding a thing.</p>
    #
    # @option params [String] :thing_group_arn
    #   <p>The ARN of the group to which you are adding a thing.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to add to a group.</p>
    #
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to add to a group.</p>
    #
    # @option params [Boolean] :override_dynamic_groups
    #   <p>Override dynamic thing groups with static thing groups when 10-group limit is
    #   			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
    #   			dynamic thing groups, adding a thing to a static group removes the thing from the last
    #   			dynamic group.</p>
    #
    # @return [Types::AddThingToThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_thing_to_thing_group(
    #     thing_group_name: 'thingGroupName',
    #     thing_group_arn: 'thingGroupArn',
    #     thing_name: 'thingName',
    #     thing_arn: 'thingArn',
    #     override_dynamic_groups: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddThingToThingGroupOutput
    #
    def add_thing_to_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddThingToThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddThingToThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddThingToThingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AddThingToThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddThingToThingGroup,
        stubs: @stubs,
        params_class: Params::AddThingToThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_thing_to_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a group with a continuous job. The following criteria must be met: </p>
    #         <ul>
    #             <li>
    #                 <p>The job must have been created with the <code>targetSelection</code> field set to
    #                     "CONTINUOUS".</p>
    #             </li>
    #             <li>
    #                 <p>The job status must currently be "IN_PROGRESS".</p>
    #             </li>
    #             <li>
    #                 <p>The total number of targets associated with a job must not exceed 100.</p>
    #             </li>
    #          </ul>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AssociateTargetsWithJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateTargetsWithJobInput}.
    #
    # @option params [Array<String>] :targets
    #   <p>A list of thing group ARNs that define the targets of the job.</p>
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @option params [String] :comment
    #   <p>An optional comment string describing why the job was associated with the targets.</p>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @return [Types::AssociateTargetsWithJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_targets_with_job(
    #     targets: [
    #       'member'
    #     ], # required
    #     job_id: 'jobId', # required
    #     comment: 'comment',
    #     namespace_id: 'namespaceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTargetsWithJobOutput
    #   resp.data.job_arn #=> String
    #   resp.data.job_id #=> String
    #   resp.data.description #=> String
    #
    def associate_targets_with_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTargetsWithJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTargetsWithJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTargetsWithJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AssociateTargetsWithJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTargetsWithJob,
        stubs: @stubs,
        params_class: Params::AssociateTargetsWithJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_targets_with_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified policy to the specified principal (certificate or other
    #          credential).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachPolicy</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy to attach.</p>
    #
    # @option params [String] :target
    #   <p>The <a href="https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html">identity</a> to which the policy is attached. For example, a thing group or a certificate.</p>
    #
    # @return [Types::AttachPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy(
    #     policy_name: 'policyName', # required
    #     target: 'target' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachPolicyOutput
    #
    def attach_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::AttachPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachPolicy,
        stubs: @stubs,
        params_class: Params::AttachPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified policy to the specified principal (certificate or other
    #          credential).</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated. Please use <a>AttachPolicy</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachPrincipalPolicy</a> action.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::AttachPrincipalPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @option params [String] :principal
    #   <p>The principal, which can be a certificate ARN (as returned from the CreateCertificate
    #            operation) or an Amazon Cognito ID.</p>
    #
    # @return [Types::AttachPrincipalPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_principal_policy(
    #     policy_name: 'policyName', # required
    #     principal: 'principal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachPrincipalPolicyOutput
    #
    def attach_principal_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachPrincipalPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachPrincipalPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachPrincipalPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::AttachPrincipalPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachPrincipalPolicy,
        stubs: @stubs,
        params_class: Params::AttachPrincipalPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_principal_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a Device Defender security profile with a thing group or this account. Each
    #         thing group or account can have up to five security profiles associated with it.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The security profile that is attached.</p>
    #
    # @option params [String] :security_profile_target_arn
    #   <p>The ARN of the target (thing group) to which the security profile is attached.</p>
    #
    # @return [Types::AttachSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_security_profile(
    #     security_profile_name: 'securityProfileName', # required
    #     security_profile_target_arn: 'securityProfileTargetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachSecurityProfileOutput
    #
    def attach_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachSecurityProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AttachSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachSecurityProfile,
        stubs: @stubs,
        params_class: Params::AttachSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified principal to the specified thing. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachThingPrincipal</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachThingPrincipalInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @option params [String] :principal
    #   <p>The principal, which can be a certificate ARN (as returned from the
    #   			CreateCertificate operation) or an Amazon Cognito ID.</p>
    #
    # @return [Types::AttachThingPrincipalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_thing_principal(
    #     thing_name: 'thingName', # required
    #     principal: 'principal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachThingPrincipalOutput
    #
    def attach_thing_principal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachThingPrincipalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachThingPrincipalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachThingPrincipal
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::AttachThingPrincipal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachThingPrincipal,
        stubs: @stubs,
        params_class: Params::AttachThingPrincipalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_thing_principal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a mitigation action task that is in progress. If the task
    #       is not
    #       in progress, an InvalidRequestException occurs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelAuditMitigationActionsTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelAuditMitigationActionsTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The unique identifier for the task that you want to cancel. </p>
    #
    # @return [Types::CancelAuditMitigationActionsTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_audit_mitigation_actions_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelAuditMitigationActionsTaskOutput
    #
    def cancel_audit_mitigation_actions_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelAuditMitigationActionsTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelAuditMitigationActionsTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelAuditMitigationActionsTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelAuditMitigationActionsTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelAuditMitigationActionsTask,
        stubs: @stubs,
        params_class: Params::CancelAuditMitigationActionsTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_audit_mitigation_actions_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels an audit that is in progress. The audit can be either scheduled or on demand. If the audit isn't in progress, an "InvalidRequestException" occurs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelAuditTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelAuditTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the audit you want to cancel. You can only cancel an
    #                 audit that is "IN_PROGRESS".</p>
    #
    # @return [Types::CancelAuditTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_audit_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelAuditTaskOutput
    #
    def cancel_audit_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelAuditTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelAuditTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelAuditTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelAuditTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelAuditTask,
        stubs: @stubs,
        params_class: Params::CancelAuditTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_audit_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a pending transfer for the specified certificate.</p>
    #          <p>
    #             <b>Note</b> Only the transfer source account can use this
    #          operation to cancel a transfer. (Transfer destinations can use <a>RejectCertificateTransfer</a> instead.) After transfer, IoT returns the
    #          certificate to the source account in the INACTIVE state. After the destination account has
    #          accepted the transfer, the transfer cannot be cancelled.</p>
    #          <p>After a certificate transfer is cancelled, the status of the certificate changes from
    #          PENDING_TRANSFER to INACTIVE.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelCertificateTransfer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelCertificateTransferInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @return [Types::CancelCertificateTransferOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_certificate_transfer(
    #     certificate_id: 'certificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelCertificateTransferOutput
    #
    def cancel_certificate_transfer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelCertificateTransferInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelCertificateTransferInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelCertificateTransfer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TransferAlreadyCompletedException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CancelCertificateTransfer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelCertificateTransfer,
        stubs: @stubs,
        params_class: Params::CancelCertificateTransferOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_certificate_transfer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Cancels a Device Defender ML Detect mitigation action.
    #       </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelDetectMitigationActionsTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelDetectMitigationActionsTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #
    # @return [Types::CancelDetectMitigationActionsTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_detect_mitigation_actions_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelDetectMitigationActionsTaskOutput
    #
    def cancel_detect_mitigation_actions_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelDetectMitigationActionsTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelDetectMitigationActionsTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelDetectMitigationActionsTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelDetectMitigationActionsTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelDetectMitigationActionsTask,
        stubs: @stubs,
        params_class: Params::CancelDetectMitigationActionsTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_detect_mitigation_actions_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a job.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @option params [String] :reason_code
    #   <p>(Optional)A reason code string that explains why the job was canceled.</p>
    #
    # @option params [String] :comment
    #   <p>An optional comment string describing why the job was canceled.</p>
    #
    # @option params [Boolean] :force
    #   <p>(Optional) If <code>true</code> job executions with status "IN_PROGRESS" and "QUEUED"
    #             are canceled, otherwise only job executions with status "QUEUED" are canceled. The default
    #             is <code>false</code>.</p>
    #           <p>Canceling a job which is "IN_PROGRESS", will cause a device which is executing
    #             the job to be unable to update the job execution status.  Use caution and ensure that each
    #             device executing a job which is canceled is able to recover to a valid state.</p>
    #
    # @return [Types::CancelJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job(
    #     job_id: 'jobId', # required
    #     reason_code: 'reasonCode',
    #     comment: 'comment',
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobOutput
    #   resp.data.job_arn #=> String
    #   resp.data.job_id #=> String
    #   resp.data.description #=> String
    #
    def cancel_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJob,
        stubs: @stubs,
        params_class: Params::CancelJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the execution of a job for a given thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelJobExecution</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobExecutionInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job to be canceled.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing whose execution of the job will be canceled.</p>
    #
    # @option params [Boolean] :force
    #   <p>(Optional) If <code>true</code> the job execution will be canceled if it has status
    #             IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has status
    #             QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do not set
    #             <code>force</code> to <code>true</code>, then an <code>InvalidStateTransitionException</code>
    #             will be thrown. The default is <code>false</code>.</p>
    #           <p>Canceling a job execution which is "IN_PROGRESS", will cause the device to be unable
    #             to update the job execution status.  Use caution and ensure that the device is able to
    #             recover to a valid state.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>(Optional) The expected current version of the job execution. Each time you update the job
    #             execution, its version is incremented. If the version of the job execution stored in Jobs does
    #             not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that
    #             contains the current job execution status data is returned. (This makes it unnecessary to
    #             perform a separate DescribeJobExecution request in order to obtain the job execution status
    #             data.)</p>
    #
    # @option params [Hash<String, String>] :status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If not
    #             specified, the statusDetails are unchanged. You can specify at most 10 name/value pairs.</p>
    #
    # @return [Types::CancelJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job_execution(
    #     job_id: 'jobId', # required
    #     thing_name: 'thingName', # required
    #     force: false,
    #     expected_version: 1,
    #     status_details: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobExecutionOutput
    #
    def cancel_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJobExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateTransitionException, Errors::VersionConflictException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJobExecution,
        stubs: @stubs,
        params_class: Params::CancelJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Clears the default authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ClearDefaultAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ClearDefaultAuthorizerInput}.
    #
    # @return [Types::ClearDefaultAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clear_default_authorizer()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ClearDefaultAuthorizerOutput
    #
    def clear_default_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ClearDefaultAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ClearDefaultAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ClearDefaultAuthorizer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ClearDefaultAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ClearDefaultAuthorizer,
        stubs: @stubs,
        params_class: Params::ClearDefaultAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :clear_default_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Confirms a topic rule destination. When you create a rule requiring a destination, IoT
    #          sends a confirmation message to the endpoint or base address you specify. The message
    #          includes a token which you pass back when calling <code>ConfirmTopicRuleDestination</code>
    #          to confirm that you own or have access to the endpoint.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ConfirmTopicRuleDestination</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmTopicRuleDestinationInput}.
    #
    # @option params [String] :confirmation_token
    #   <p>The token used to confirm ownership or access to the topic rule confirmation URL.</p>
    #
    # @return [Types::ConfirmTopicRuleDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_topic_rule_destination(
    #     confirmation_token: 'confirmationToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmTopicRuleDestinationOutput
    #
    def confirm_topic_rule_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmTopicRuleDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmTopicRuleDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmTopicRuleDestination
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::ConfirmTopicRuleDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmTopicRuleDestination,
        stubs: @stubs,
        params_class: Params::ConfirmTopicRuleDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_topic_rule_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a Device Defender audit suppression.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateAuditSuppression</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAuditSuppressionInput}.
    #
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #           to select which checks are enabled.)</p>
    #
    # @option params [ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #
    # @option params [Time] :expiration_date
    #   <p>
    #         The epoch timestamp in seconds at which this suppression expires.
    #       </p>
    #
    # @option params [Boolean] :suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #         Each audit supression must have a unique client request token. If you try to create a new audit
    #         suppression with the same token as one that already exists, an exception occurs. If you omit this
    #         value, Amazon Web Services SDKs will automatically generate a unique client request.</p>
    #
    # @return [Types::CreateAuditSuppressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_audit_suppression(
    #     check_name: 'checkName', # required
    #     resource_identifier: {
    #       device_certificate_id: 'deviceCertificateId',
    #       ca_certificate_id: 'caCertificateId',
    #       cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #       client_id: 'clientId',
    #       policy_version_identifier: {
    #         policy_name: 'policyName',
    #         policy_version_id: 'policyVersionId'
    #       },
    #       account: 'account',
    #       iam_role_arn: 'iamRoleArn',
    #       role_alias_arn: 'roleAliasArn'
    #     }, # required
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: 'description',
    #     client_request_token: 'clientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAuditSuppressionOutput
    #
    def create_audit_suppression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAuditSuppressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAuditSuppressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAuditSuppression
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateAuditSuppression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAuditSuppression,
        stubs: @stubs,
        params_class: Params::CreateAuditSuppressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_audit_suppression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAuthorizerInput}.
    #
    # @option params [String] :authorizer_name
    #   <p>The authorizer name.</p>
    #
    # @option params [String] :authorizer_function_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    #
    # @option params [String] :token_key_name
    #   <p>The name of the token key used to extract the token from the HTTP headers.</p>
    #
    # @option params [Hash<String, String>] :token_signing_public_keys
    #   <p>The public keys used to verify the digital signature returned by your custom
    #            authentication service.</p>
    #
    # @option params [String] :status
    #   <p>The status of the create authorizer request.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the custom authorizer.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @option params [Boolean] :signing_disabled
    #   <p>Specifies whether IoT validates the token signature in an authorization request.</p>
    #
    # @option params [Boolean] :enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for clients that use persistent HTTP connections. The results are cached for the time
    #   	  specified by the Lambda function in <code>refreshAfterInSeconds</code>. This value
    #        does not affect authorization of clients that use MQTT connections.</p>
    #            <p>The default value is <code>false</code>.</p>
    #
    # @return [Types::CreateAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer(
    #     authorizer_name: 'authorizerName', # required
    #     authorizer_function_arn: 'authorizerFunctionArn', # required
    #     token_key_name: 'tokenKeyName',
    #     token_signing_public_keys: {
    #       'key' => 'value'
    #     },
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     signing_disabled: false,
    #     enable_caching_for_http: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAuthorizerOutput
    #   resp.data.authorizer_name #=> String
    #   resp.data.authorizer_arn #=> String
    #
    def create_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAuthorizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAuthorizer,
        stubs: @stubs,
        params_class: Params::CreateAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateBillingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name you wish to give to the billing group.</p>
    #
    # @option params [BillingGroupProperties] :billing_group_properties
    #   <p>The properties of the billing group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the billing group.</p>
    #
    # @return [Types::CreateBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_billing_group(
    #     billing_group_name: 'billingGroupName', # required
    #     billing_group_properties: {
    #       billing_group_description: 'billingGroupDescription'
    #     },
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
    #   resp.data #=> Types::CreateBillingGroupOutput
    #   resp.data.billing_group_name #=> String
    #   resp.data.billing_group_arn #=> String
    #   resp.data.billing_group_id #=> String
    #
    def create_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBillingGroup,
        stubs: @stubs,
        params_class: Params::CreateBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an X.509 certificate using the specified certificate signing
    #          request.</p>
    #          <p>
    #             <b>Note:</b> The CSR must include a public key that is either an
    #          RSA key with a length of at least 2048 bits or an ECC key from NIST P-256, NIST P-384, or NIST P-512
    #          curves. For supported certificates, consult <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms">
    #             Certificate signing algorithms supported by IoT</a>.</p>
    #          <p>
    #             <b>Note:</b> Reusing the same certificate signing request (CSR)
    #          results in a distinct certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateCertificateFromCsr</a> action.</p>
    #
    #          <p>You can create multiple certificates in a batch by creating a directory, copying
    #          multiple .csr files into that directory, and then specifying that directory on the command
    #          line. The following commands show how to create a batch of certificates given a batch of
    #          CSRs.</p>
    #          <p>Assuming a set of CSRs are located inside of the directory
    #          my-csr-directory:</p>
    #
    #          <p>On Linux and OS X, the command is:</p>
    #
    #          <p>$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
    #          --certificate-signing-request file://my-csr-directory/{}</p>
    #          <p>This command lists all of the CSRs in my-csr-directory and pipes each CSR file name
    #          to the aws iot create-certificate-from-csr Amazon Web Services CLI command to create a certificate for the
    #          corresponding CSR.</p>
    #          <p>The aws iot create-certificate-from-csr part of the command can also be run in
    #          parallel to speed up the certificate creation process:</p>
    #          <p>$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr
    #          --certificate-signing-request file://my-csr-directory/{}</p>
    #          <p>On Windows PowerShell, the command to create certificates for all CSRs in
    #          my-csr-directory is:</p>
    #          <p>> ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
    #          --certificate-signing-request file://my-csr-directory/$_}</p>
    #          <p>On a Windows command prompt, the command to create certificates for all CSRs in
    #          my-csr-directory is:</p>
    #          <p>> forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr
    #          --certificate-signing-request file://@path"</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCertificateFromCsrInput}.
    #
    # @option params [String] :certificate_signing_request
    #   <p>The certificate signing request (CSR).</p>
    #
    # @option params [Boolean] :set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    #
    # @return [Types::CreateCertificateFromCsrOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_from_csr(
    #     certificate_signing_request: 'certificateSigningRequest', # required
    #     set_as_active: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCertificateFromCsrOutput
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_id #=> String
    #   resp.data.certificate_pem #=> String
    #
    def create_certificate_from_csr(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCertificateFromCsrInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCertificateFromCsrInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCertificateFromCsr
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateCertificateFromCsr
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCertificateFromCsr,
        stubs: @stubs,
        params_class: Params::CreateCertificateFromCsrOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_certificate_from_csr
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Use this API to define a
    #       Custom
    #       Metric
    #       published by your devices to Device Defender. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateCustomMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p> The name of the custom metric. This will be used in the metric report submitted from the
    #         device/thing. The name can't begin with <code>aws:</code>. You can't change the name after you
    #         define it.</p>
    #
    # @option params [String] :display_name
    #   <p> The friendly name in the console for the custom metric. This name doesn't have to be
    #         unique. Don't use this name as the metric identifier in the device metric report. You can
    #         update the friendly name after you define it.</p>
    #
    # @option params [String] :metric_type
    #   <p> The type of the custom metric. </p>
    #            <important>
    #               <p>The type <code>number</code> only takes a single metric value as an input, but when you
    #           submit the metrics value in the DeviceMetrics report, you must pass it as an array with a
    #           single value.</p>
    #            </important>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #         Metadata that can be used to manage the custom metric.
    #       </p>
    #
    # @option params [String] :client_request_token
    #   <p>Each custom
    #         metric must have a unique client request token. If you try to create a new custom metric that
    #         already exists with a different token,
    #         an exception
    #         occurs. If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request. </p>
    #
    # @return [Types::CreateCustomMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_metric(
    #     metric_name: 'metricName', # required
    #     display_name: 'displayName',
    #     metric_type: 'string-list', # required - accepts ["string-list", "ip-address-list", "number-list", "number"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     client_request_token: 'clientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomMetricOutput
    #   resp.data.metric_name #=> String
    #   resp.data.metric_arn #=> String
    #
    def create_custom_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomMetric
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateCustomMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomMetric,
        stubs: @stubs,
        params_class: Params::CreateCustomMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a dimension that you can use to limit the scope of a metric used in a security profile for IoT Device Defender.
    #       For example, using a <code>TOPIC_FILTER</code> dimension, you can narrow down the scope of the metric only to MQTT topics whose name match the pattern specified in the dimension.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateDimension</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDimensionInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>
    #
    # @option params [String] :type
    #   <p>Specifies the type of dimension. Supported types: <code>TOPIC_FILTER.</code>
    #            </p>
    #
    # @option params [Array<String>] :string_values
    #   <p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the dimension.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each dimension must have a unique client request token. If you try to create a new dimension with the same token as a dimension that already exists, an exception occurs.
    #         If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request.</p>
    #
    # @return [Types::CreateDimensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dimension(
    #     name: 'name', # required
    #     type: 'TOPIC_FILTER', # required - accepts ["TOPIC_FILTER"]
    #     string_values: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     client_request_token: 'clientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDimensionOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #
    def create_dimension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDimensionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDimensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDimension
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDimension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDimension,
        stubs: @stubs,
        params_class: Params::CreateDimensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dimension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a domain configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateDomainConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainConfigurationInput}.
    #
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration. This value must be unique to a region.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    #
    # @option params [Array<String>] :server_certificate_arns
    #   <p>The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN.
    #         This value is not required for Amazon Web Services-managed domains.</p>
    #
    # @option params [String] :validation_certificate_arn
    #   <p>The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority.
    #            This value is not required for Amazon Web Services-managed domains.</p>
    #
    # @option params [AuthorizerConfig] :authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    #
    # @option params [String] :service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #            <note>
    #               <p>Amazon Web Services IoT Core currently supports only the <code>DATA</code> service type.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the domain configuration.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @return [Types::CreateDomainConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_configuration(
    #     domain_configuration_name: 'domainConfigurationName', # required
    #     domain_name: 'domainName',
    #     server_certificate_arns: [
    #       'member'
    #     ],
    #     validation_certificate_arn: 'validationCertificateArn',
    #     authorizer_config: {
    #       default_authorizer_name: 'defaultAuthorizerName',
    #       allow_authorizer_override: false
    #     },
    #     service_type: 'DATA', # accepts ["DATA", "CREDENTIAL_PROVIDER", "JOBS"]
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
    #   resp.data #=> Types::CreateDomainConfigurationOutput
    #   resp.data.domain_configuration_name #=> String
    #   resp.data.domain_configuration_arn #=> String
    #
    def create_domain_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomainConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateDomainConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomainConfiguration,
        stubs: @stubs,
        params_class: Params::CreateDomainConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a dynamic thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateDynamicThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDynamicThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The dynamic thing group name to create.</p>
    #
    # @option params [ThingGroupProperties] :thing_group_properties
    #   <p>The dynamic thing group properties.</p>
    #
    # @option params [String] :index_name
    #   <p>The dynamic thing group index name.</p>
    #   		       <note>
    #   			         <p>Currently one index is supported: <code>AWS_Things</code>.</p>
    #   		       </note>
    #
    # @option params [String] :query_string
    #   <p>The dynamic thing group search query string.</p>
    #   		       <p>See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html">Query Syntax</a> for information about query string syntax.</p>
    #
    # @option params [String] :query_version
    #   <p>The dynamic thing group query version.</p>
    #   		       <note>
    #   			         <p>Currently one query version is supported: "2017-09-30". If not specified, the
    #   				query version defaults to this value.</p>
    #   		       </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the dynamic thing group.</p>
    #
    # @return [Types::CreateDynamicThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dynamic_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     thing_group_properties: {
    #       thing_group_description: 'thingGroupDescription',
    #       attribute_payload: {
    #         attributes: {
    #           'key' => 'value'
    #         },
    #         merge: false
    #       }
    #     },
    #     index_name: 'indexName',
    #     query_string: 'queryString', # required
    #     query_version: 'queryVersion',
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
    #   resp.data #=> Types::CreateDynamicThingGroupOutput
    #   resp.data.thing_group_name #=> String
    #   resp.data.thing_group_arn #=> String
    #   resp.data.thing_group_id #=> String
    #   resp.data.index_name #=> String
    #   resp.data.query_string #=> String
    #   resp.data.query_version #=> String
    #
    def create_dynamic_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDynamicThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDynamicThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDynamicThingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDynamicThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDynamicThingGroup,
        stubs: @stubs,
        params_class: Params::CreateDynamicThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dynamic_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a fleet metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateFleetMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFleetMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to create.</p>
    #
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    #
    # @option params [AggregationType] :aggregation_type
    #   <p>The type of the aggregation query.</p>
    #
    # @option params [Integer] :period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    #
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    #
    # @option params [String] :description
    #   <p>The fleet metric description.</p>
    #
    # @option params [String] :query_version
    #   <p>The query version.</p>
    #
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    #
    # @option params [String] :unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>. Default to null.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata, which can be used to manage the fleet metric.</p>
    #
    # @return [Types::CreateFleetMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet_metric(
    #     metric_name: 'metricName', # required
    #     query_string: 'queryString', # required
    #     aggregation_type: {
    #       name: 'Statistics', # required - accepts ["Statistics", "Percentiles", "Cardinality"]
    #       values: [
    #         'member'
    #       ]
    #     }, # required
    #     period: 1, # required
    #     aggregation_field: 'aggregationField', # required
    #     description: 'description',
    #     query_version: 'queryVersion',
    #     index_name: 'indexName',
    #     unit: 'Seconds', # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
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
    #   resp.data #=> Types::CreateFleetMetricOutput
    #   resp.data.metric_name #=> String
    #   resp.data.metric_arn #=> String
    #
    def create_fleet_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleetMetric
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidAggregationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateFleetMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleetMetric,
        stubs: @stubs,
        params_class: Params::CreateFleetMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a job.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobInput}.
    #
    # @option params [String] :job_id
    #   <p>A job identifier which must be unique for your Amazon Web Services account. We recommend using a UUID. Alpha-numeric
    #               characters, "-" and "_" are valid for use here.</p>
    #
    # @option params [Array<String>] :targets
    #   <p>A list of things and thing groups to which the job should be sent.</p>
    #
    # @option params [String] :document_source
    #   <p>An S3 link to the job document. Required if you don't specify a value for <code>document</code>.</p>
    #           <note>
    #               <p>If the job document resides in an S3 bucket, you must use a placeholder link when specifying the document.</p>
    #               <p>The placeholder link is of the following form:</p>
    #               <p>
    #                  <code>${aws:iot:s3-presigned-url:https://s3.amazonaws.com/<i>bucket</i>/<i>key</i>}</code>
    #               </p>
    #               <p>where <i>bucket</i> is your bucket name and <i>key</i> is the object in the bucket to which you are linking.</p>
    #           </note>
    #
    # @option params [String] :document
    #   <p>The job document. Required if you don't specify a value for <code>documentSource</code>.</p>
    #
    # @option params [String] :description
    #   <p>A short text description of the job.</p>
    #
    # @option params [PresignedUrlConfig] :presigned_url_config
    #   <p>Configuration information for pre-signed S3 URLs.</p>
    #
    # @option params [String] :target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things
    #               specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing
    #               when a change is detected in a target. For example, a job will run on a thing when the thing is added to a
    #               target group, even after the job was completed by all things originally in the group.</p>
    #           <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic thing group targets.
    #                   By using continuous jobs, devices that join the group receive the job execution even after the job has
    #                   been created.</p>
    #           </note>
    #
    # @option params [JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of the job.</p>
    #
    # @option params [AbortConfig] :abort_config
    #   <p>Allows you to create the criteria to abort a job.</p>
    #
    # @option params [TimeoutConfig] :timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. The timer
    #              is started when the job execution status is set to <code>IN_PROGRESS</code>. If the job
    #              execution status is not set to another terminal state before the time expires, it will be
    #              automatically set to <code>TIMED_OUT</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the job.</p>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @option params [String] :job_template_arn
    #   <p>The ARN of the job template used to create the job.</p>
    #
    # @option params [JobExecutionsRetryConfig] :job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    #
    # @option params [Hash<String, String>] :document_parameters
    #   <p>Parameters of an Amazon Web Services managed template that you can specify to create the job document.</p>
    #           <note>
    #               <p>
    #                  <code>documentParameters</code> can only be used when creating jobs from Amazon Web Services
    #                   managed templates. This parameter can't be used with custom job templates or to
    #                   create jobs from them.</p>
    #           </note>
    #
    # @return [Types::CreateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job(
    #     job_id: 'jobId', # required
    #     targets: [
    #       'member'
    #     ], # required
    #     document_source: 'documentSource',
    #     document: 'document',
    #     description: 'description',
    #     presigned_url_config: {
    #       role_arn: 'roleArn',
    #       expires_in_sec: 1
    #     },
    #     target_selection: 'CONTINUOUS', # accepts ["CONTINUOUS", "SNAPSHOT"]
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: {
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         } # required
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #           action: 'CANCEL', # required - accepts ["CANCEL"]
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1 # required
    #         }
    #       ] # required
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     namespace_id: 'namespaceId',
    #     job_template_arn: 'jobTemplateArn',
    #     job_executions_retry_config: {
    #       criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "TIMED_OUT", "ALL"]
    #           number_of_retries: 1 # required
    #         }
    #       ] # required
    #     },
    #     document_parameters: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobOutput
    #   resp.data.job_arn #=> String
    #   resp.data.job_id #=> String
    #   resp.data.description #=> String
    #
    def create_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJob,
        stubs: @stubs,
        params_class: Params::CreateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a job template.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateJobTemplate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobTemplateInput}.
    #
    # @option params [String] :job_template_id
    #   <p>A unique identifier for the job template. We recommend using a UUID. Alpha-numeric
    #           characters, "-", and "_" are valid for use here.</p>
    #
    # @option params [String] :job_arn
    #   <p>The ARN of the job to use as the basis for the job template.</p>
    #
    # @option params [String] :document_source
    #   <p>An S3 link to the job document to use in the template. Required if you don't specify a value for <code>document</code>.</p>
    #           <note>
    #               <p>If the job document resides in an S3 bucket, you must use a placeholder link when specifying the document.</p>
    #               <p>The placeholder link is of the following form:</p>
    #               <p>
    #                  <code>${aws:iot:s3-presigned-url:https://s3.amazonaws.com/<i>bucket</i>/<i>key</i>}</code>
    #               </p>
    #               <p>where <i>bucket</i> is your bucket name and <i>key</i> is the object in the bucket to which you are linking.</p>
    #           </note>
    #
    # @option params [String] :document
    #   <p>The job document. Required if you don't specify a value for <code>documentSource</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the job document.</p>
    #
    # @option params [PresignedUrlConfig] :presigned_url_config
    #   <p>Configuration for pre-signed S3 URLs.</p>
    #
    # @option params [JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of a job.</p>
    #
    # @option params [AbortConfig] :abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    #
    # @option params [TimeoutConfig] :timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job.  A timer
    #              is started when the job execution status is set to <code>IN_PROGRESS</code>. If the job
    #              execution status is not set to another terminal state before the timer expires, it will
    #              be automatically set to <code>TIMED_OUT</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the job template.</p>
    #
    # @option params [JobExecutionsRetryConfig] :job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    #
    # @return [Types::CreateJobTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_template(
    #     job_template_id: 'jobTemplateId', # required
    #     job_arn: 'jobArn',
    #     document_source: 'documentSource',
    #     document: 'document',
    #     description: 'description', # required
    #     presigned_url_config: {
    #       role_arn: 'roleArn',
    #       expires_in_sec: 1
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: {
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         } # required
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #           action: 'CANCEL', # required - accepts ["CANCEL"]
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1 # required
    #         }
    #       ] # required
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     job_executions_retry_config: {
    #       criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "TIMED_OUT", "ALL"]
    #           number_of_retries: 1 # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobTemplateOutput
    #   resp.data.job_template_arn #=> String
    #   resp.data.job_template_id #=> String
    #
    def create_job_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJobTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateJobTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJobTemplate,
        stubs: @stubs,
        params_class: Params::CreateJobTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued
    #          public key. You can also call <code>CreateKeysAndCertificate</code> over MQTT from a
    #          device, for more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api">Provisioning MQTT API</a>.</p>
    #          <p>
    #             <b>Note</b> This is the only time IoT issues the private key
    #          for this certificate, so it is important to keep it in a secure location.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateKeysAndCertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateKeysAndCertificateInput}.
    #
    # @option params [Boolean] :set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    #
    # @return [Types::CreateKeysAndCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_keys_and_certificate(
    #     set_as_active: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateKeysAndCertificateOutput
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_id #=> String
    #   resp.data.certificate_pem #=> String
    #   resp.data.key_pair #=> Types::KeyPair
    #   resp.data.key_pair.public_key #=> String
    #   resp.data.key_pair.private_key #=> String
    #
    def create_keys_and_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateKeysAndCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateKeysAndCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateKeysAndCertificate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateKeysAndCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateKeysAndCertificate,
        stubs: @stubs,
        params_class: Params::CreateKeysAndCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_keys_and_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines an action that can be applied to audit findings by using StartAuditMitigationActionsTask. Only certain types of mitigation actions can be applied to specific check names.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html">Mitigation actions</a>. Each mitigation action can apply only one type of change.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateMitigationAction</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMitigationActionInput}.
    #
    # @option params [String] :action_name
    #   <p>A friendly name for the action. Choose a friendly name that accurately describes the action (for example, <code>EnableLoggingAction</code>).</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that is used to apply the mitigation action.</p>
    #
    # @option params [MitigationActionParams] :action_params
    #   <p>Defines the type of action and the parameters for that action.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the mitigation action.</p>
    #
    # @return [Types::CreateMitigationActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mitigation_action(
    #     action_name: 'actionName', # required
    #     role_arn: 'roleArn', # required
    #     action_params: {
    #       update_device_certificate_params: {
    #         action: 'DEACTIVATE' # required - accepts ["DEACTIVATE"]
    #       },
    #       update_ca_certificate_params: {
    #         action: 'DEACTIVATE' # required - accepts ["DEACTIVATE"]
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: [
    #           'member'
    #         ], # required
    #         override_dynamic_groups: false
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: 'BLANK_POLICY' # required - accepts ["BLANK_POLICY"]
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: 'roleArnForLogging', # required
    #         log_level: 'DEBUG' # required - accepts ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: 'topicArn' # required
    #       }
    #     }, # required
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
    #   resp.data #=> Types::CreateMitigationActionOutput
    #   resp.data.action_arn #=> String
    #   resp.data.action_id #=> String
    #
    def create_mitigation_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMitigationActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMitigationActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMitigationAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateMitigationAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMitigationAction,
        stubs: @stubs,
        params_class: Params::CreateMitigationActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_mitigation_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IoT OTA update on a target group of things or groups.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateOTAUpdate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOTAUpdateInput}.
    #
    # @option params [String] :ota_update_id
    #   <p>The ID of the OTA update to be created.</p>
    #
    # @option params [String] :description
    #   <p>The description of the OTA update.</p>
    #
    # @option params [Array<String>] :targets
    #   <p>The devices targeted to receive OTA updates.</p>
    #
    # @option params [Array<String>] :protocols
    #   <p>The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both
    #              HTTP and MQTT are specified, the target device can choose the protocol.</p>
    #
    # @option params [String] :target_selection
    #   <p>Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things
    #               specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a
    #               thing when a change is detected in a target. For example, an update will run on a thing when the thing is
    #               added to a target group, even after the update was completed by all things originally in the group. Valid
    #               values: CONTINUOUS | SNAPSHOT.</p>
    #
    # @option params [AwsJobExecutionsRolloutConfig] :aws_job_executions_rollout_config
    #   <p>Configuration for the rollout of OTA updates.</p>
    #
    # @option params [AwsJobPresignedUrlConfig] :aws_job_presigned_url_config
    #   <p>Configuration information for pre-signed URLs.</p>
    #
    # @option params [AwsJobAbortConfig] :aws_job_abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    #
    # @option params [AwsJobTimeoutConfig] :aws_job_timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job.  A timer is
    #               started when the job execution status is set to <code>IN_PROGRESS</code>. If the job execution
    #               status is not set to another terminal state before the timer expires, it will be automatically
    #               set to <code>TIMED_OUT</code>.</p>
    #
    # @option params [Array<OTAUpdateFile>] :files
    #   <p>The files to be streamed by the OTA update.</p>
    #
    # @option params [String] :role_arn
    #   <p>The IAM role that grants Amazon Web Services IoT Core access to the Amazon S3, IoT jobs and Amazon Web Services Code Signing resources
    #               to create an OTA update job.</p>
    #
    # @option params [Hash<String, String>] :additional_parameters
    #   <p>A list of additional OTA update parameters which are name-value pairs.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage updates.</p>
    #
    # @return [Types::CreateOTAUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ota_update(
    #     ota_update_id: 'otaUpdateId', # required
    #     description: 'description',
    #     targets: [
    #       'member'
    #     ], # required
    #     protocols: [
    #       'MQTT' # accepts ["MQTT", "HTTP"]
    #     ],
    #     target_selection: 'CONTINUOUS', # accepts ["CONTINUOUS", "SNAPSHOT"]
    #     aws_job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: {
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         } # required
    #       }
    #     },
    #     aws_job_presigned_url_config: {
    #       expires_in_sec: 1
    #     },
    #     aws_job_abort_config: {
    #       abort_criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #           action: 'CANCEL', # required - accepts ["CANCEL"]
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1 # required
    #         }
    #       ] # required
    #     },
    #     aws_job_timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     files: [
    #       {
    #         file_name: 'fileName',
    #         file_type: 1,
    #         file_version: 'fileVersion',
    #         file_location: {
    #           stream: {
    #             stream_id: 'streamId',
    #             file_id: 1
    #           },
    #           s3_location: {
    #             bucket: 'bucket',
    #             key: 'key',
    #             version: 'version'
    #           }
    #         },
    #         code_signing: {
    #           aws_signer_job_id: 'awsSignerJobId',
    #           start_signing_job_parameter: {
    #             signing_profile_parameter: {
    #               certificate_arn: 'certificateArn',
    #               platform: 'platform',
    #               certificate_path_on_device: 'certificatePathOnDevice'
    #             },
    #             signing_profile_name: 'signingProfileName',
    #             destination: {
    #               s3_destination: {
    #                 bucket: 'bucket',
    #                 prefix: 'prefix'
    #               }
    #             }
    #           },
    #           custom_code_signing: {
    #             signature: {
    #               inline_document: 'inlineDocument'
    #             },
    #             certificate_chain: {
    #               certificate_name: 'certificateName',
    #               inline_document: 'inlineDocument'
    #             },
    #             hash_algorithm: 'hashAlgorithm',
    #             signature_algorithm: 'signatureAlgorithm'
    #           }
    #         },
    #         attributes: {
    #           'key' => 'value'
    #         }
    #       }
    #     ], # required
    #     role_arn: 'roleArn', # required
    #     additional_parameters: {
    #       'key' => 'value'
    #     },
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
    #   resp.data #=> Types::CreateOTAUpdateOutput
    #   resp.data.ota_update_id #=> String
    #   resp.data.aws_iot_job_id #=> String
    #   resp.data.ota_update_arn #=> String
    #   resp.data.aws_iot_job_arn #=> String
    #   resp.data.ota_update_status #=> String, one of ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #
    def create_ota_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOTAUpdateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOTAUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOTAUpdate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateOTAUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOTAUpdate,
        stubs: @stubs,
        params_class: Params::CreateOTAUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ota_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IoT policy.</p>
    #          <p>The created policy is the default version for the policy. This operation creates a
    #          policy version with a version identifier of <b>1</b> and sets
    #             <b>1</b> as the policy's default version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreatePolicy</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @option params [String] :policy_document
    #   <p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of
    #            2048, excluding whitespace.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the policy.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @return [Types::CreatePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy(
    #     policy_name: 'policyName', # required
    #     policy_document: 'policyDocument', # required
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
    #   resp.data #=> Types::CreatePolicyOutput
    #   resp.data.policy_name #=> String
    #   resp.data.policy_arn #=> String
    #   resp.data.policy_document #=> String
    #   resp.data.policy_version_id #=> String
    #
    def create_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MalformedPolicyException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreatePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePolicy,
        stubs: @stubs,
        params_class: Params::CreatePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of the specified IoT policy. To update a policy, create a
    #          new policy version. A managed policy can have up to five versions. If the policy has five
    #          versions, you must use <a>DeletePolicyVersion</a> to delete an existing version
    #          before you create a new one.</p>
    #          <p>Optionally, you can set the new version as the policy's default version. The default
    #          version is the operative version (that is, the version that is in effect for the
    #          certificates to which the policy is attached).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreatePolicyVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePolicyVersionInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @option params [String] :policy_document
    #   <p>The JSON document that describes the policy. Minimum length of 1. Maximum length of
    #            2048, excluding whitespace.</p>
    #
    # @option params [Boolean] :set_as_default
    #   <p>Specifies whether the policy version is set as the default. When this parameter is
    #            true, the new policy version becomes the operative version (that is, the version that is in
    #            effect for the certificates to which the policy is attached).</p>
    #
    # @return [Types::CreatePolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_version(
    #     policy_name: 'policyName', # required
    #     policy_document: 'policyDocument', # required
    #     set_as_default: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePolicyVersionOutput
    #   resp.data.policy_arn #=> String
    #   resp.data.policy_document #=> String
    #   resp.data.policy_version_id #=> String
    #   resp.data.is_default_version #=> Boolean
    #
    def create_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePolicyVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePolicyVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MalformedPolicyException, Errors::VersionsLimitExceededException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreatePolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePolicyVersion,
        stubs: @stubs,
        params_class: Params::CreatePolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a provisioning claim.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateProvisioningClaim</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProvisioningClaimInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the provisioning template to use.</p>
    #
    # @return [Types::CreateProvisioningClaimOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_claim(
    #     template_name: 'templateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProvisioningClaimOutput
    #   resp.data.certificate_id #=> String
    #   resp.data.certificate_pem #=> String
    #   resp.data.key_pair #=> Types::KeyPair
    #   resp.data.key_pair.public_key #=> String
    #   resp.data.key_pair.private_key #=> String
    #   resp.data.expiration #=> Time
    #
    def create_provisioning_claim(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProvisioningClaimInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProvisioningClaimInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProvisioningClaim
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateProvisioningClaim
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProvisioningClaim,
        stubs: @stubs,
        params_class: Params::CreateProvisioningClaimOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_provisioning_claim
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a fleet provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateProvisioningTemplate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProvisioningTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provisioning template.</p>
    #
    # @option params [String] :description
    #   <p>The description of the fleet provisioning template.</p>
    #
    # @option params [String] :template_body
    #   <p>The JSON formatted contents of the fleet provisioning template.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>True to enable the fleet provisioning template, otherwise false.</p>
    #
    # @option params [String] :provisioning_role_arn
    #   <p>The role ARN for the role associated with the fleet provisioning template. This IoT role
    #            grants permission to provision a device.</p>
    #
    # @option params [ProvisioningHook] :pre_provisioning_hook
    #   <p>Creates a pre-provisioning hook template.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the fleet provisioning template.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @return [Types::CreateProvisioningTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_template(
    #     template_name: 'templateName', # required
    #     description: 'description',
    #     template_body: 'templateBody', # required
    #     enabled: false,
    #     provisioning_role_arn: 'provisioningRoleArn', # required
    #     pre_provisioning_hook: {
    #       payload_version: 'payloadVersion',
    #       target_arn: 'targetArn' # required
    #     },
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
    #   resp.data #=> Types::CreateProvisioningTemplateOutput
    #   resp.data.template_arn #=> String
    #   resp.data.template_name #=> String
    #   resp.data.default_version_id #=> Integer
    #
    def create_provisioning_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProvisioningTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProvisioningTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProvisioningTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateProvisioningTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProvisioningTemplate,
        stubs: @stubs,
        params_class: Params::CreateProvisioningTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_provisioning_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of a fleet provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateProvisioningTemplateVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProvisioningTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provisioning template.</p>
    #
    # @option params [String] :template_body
    #   <p>The JSON formatted contents of the fleet provisioning template.</p>
    #
    # @option params [Boolean] :set_as_default
    #   <p>Sets a fleet provision template version as the default version.</p>
    #
    # @return [Types::CreateProvisioningTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_template_version(
    #     template_name: 'templateName', # required
    #     template_body: 'templateBody', # required
    #     set_as_default: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProvisioningTemplateVersionOutput
    #   resp.data.template_arn #=> String
    #   resp.data.template_name #=> String
    #   resp.data.version_id #=> Integer
    #   resp.data.is_default_version #=> Boolean
    #
    def create_provisioning_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProvisioningTemplateVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProvisioningTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProvisioningTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionsLimitExceededException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ConflictingResourceUpdateException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateProvisioningTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProvisioningTemplateVersion,
        stubs: @stubs,
        params_class: Params::CreateProvisioningTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_provisioning_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a role alias.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateRoleAlias</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoleAliasInput}.
    #
    # @option params [String] :role_alias
    #   <p>The role alias that points to a role ARN. This allows you to change the role without
    #            having to update the device.</p>
    #
    # @option params [String] :role_arn
    #   <p>The role ARN.</p>
    #
    # @option params [Integer] :credential_duration_seconds
    #   <p>How long (in seconds) the credentials will be valid. The default value is 3,600 seconds.</p>
    #            <p>This value must be less than or equal to the maximum session duration of the IAM role
    #         that the role alias references.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the role alias.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @return [Types::CreateRoleAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_role_alias(
    #     role_alias: 'roleAlias', # required
    #     role_arn: 'roleArn', # required
    #     credential_duration_seconds: 1,
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
    #   resp.data #=> Types::CreateRoleAliasOutput
    #   resp.data.role_alias #=> String
    #   resp.data.role_alias_arn #=> String
    #
    def create_role_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoleAliasInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoleAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoleAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateRoleAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoleAlias,
        stubs: @stubs,
        params_class: Params::CreateRoleAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_role_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a scheduled audit that is run at a specified
    #           time interval.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateScheduledAudit</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateScheduledAuditInput}.
    #
    # @option params [String] :frequency
    #   <p>How often the scheduled audit takes
    #         place, either
    #         <code>DAILY</code>,
    #         <code>WEEKLY</code>, <code>BIWEEKLY</code> or <code>MONTHLY</code>. The start time of each audit is
    #         determined by the system.</p>
    #
    # @option params [String] :day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This
    #         can be "1" through "31" or "LAST". This field is required if the "frequency"
    #         parameter is set to <code>MONTHLY</code>. If days
    #         29
    #         to 31 are specified, and the month
    #         doesn't
    #         have that many days, the audit takes place on the <code>LAST</code> day of the month.</p>
    #
    # @option params [String] :day_of_week
    #   <p>The day of the week on which the scheduled audit takes
    #         place,
    #         either
    #         <code>SUN</code>,
    #         <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the <code>frequency</code>
    #         parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>
    #
    # @option params [Array<String>] :target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be enabled
    #               for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #               to select which checks are enabled.)</p>
    #
    # @option params [String] :scheduled_audit_name
    #   <p>The name you want to give to the scheduled audit. (Max. 128 chars)</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the scheduled audit.</p>
    #
    # @return [Types::CreateScheduledAuditOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_audit(
    #     frequency: 'DAILY', # required - accepts ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"]
    #     day_of_month: 'dayOfMonth',
    #     day_of_week: 'SUN', # accepts ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    #     target_check_names: [
    #       'member'
    #     ], # required
    #     scheduled_audit_name: 'scheduledAuditName', # required
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
    #   resp.data #=> Types::CreateScheduledAuditOutput
    #   resp.data.scheduled_audit_arn #=> String
    #
    def create_scheduled_audit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateScheduledAuditInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateScheduledAuditInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateScheduledAudit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateScheduledAudit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateScheduledAudit,
        stubs: @stubs,
        params_class: Params::CreateScheduledAuditOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_scheduled_audit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The name you are giving to the security profile.</p>
    #
    # @option params [String] :security_profile_description
    #   <p>A description of the security profile.</p>
    #
    # @option params [Array<Behavior>] :behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #
    # @option params [Hash<String, AlertTarget>] :alert_targets
    #   <p>Specifies the destinations to which alerts are sent. (Alerts are always sent to the
    #           console.) Alerts are generated when a device (thing) violates a behavior.</p>
    #
    # @option params [Array<String>] :additional_metrics_to_retain
    #   <p>
    #               <i>Please use <a>CreateSecurityProfileRequest$additionalMetricsToRetainV2</a> instead.</i>
    #            </p>
    #            <p>A list of metrics whose data is retained (stored). By default, data is retained
    #           for any metric used in the profile's <code>behaviors</code>, but it is also retained for
    #           any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #
    # @option params [Array<MetricToRetain>] :additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's <code>behaviors</code>, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the security profile.</p>
    #
    # @return [Types::CreateSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_profile(
    #     security_profile_name: 'securityProfileName', # required
    #     security_profile_description: 'securityProfileDescription',
    #     behaviors: [
    #       {
    #         name: 'name', # required
    #         metric: 'metric',
    #         metric_dimension: {
    #           dimension_name: 'dimensionName', # required
    #           operator: 'IN' # accepts ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: 'less-than', # accepts ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #           value: {
    #             count: 1,
    #             cidrs: [
    #               'member'
    #             ],
    #             ports: [
    #               1
    #             ],
    #             number: 1.0,
    #             numbers: [
    #               1.0
    #             ],
    #             strings: [
    #               'member'
    #             ]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: 'statistic'
    #           },
    #           ml_detection_config: {
    #             confidence_level: 'LOW' # required - accepts ["LOW", "MEDIUM", "HIGH"]
    #           }
    #         },
    #         suppress_alerts: false
    #       }
    #     ],
    #     alert_targets: {
    #       'key' => {
    #         alert_target_arn: 'alertTargetArn', # required
    #         role_arn: 'roleArn' # required
    #       }
    #     },
    #     additional_metrics_to_retain: [
    #       'member'
    #     ],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: 'metric', # required
    #       }
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
    #   resp.data #=> Types::CreateSecurityProfileOutput
    #   resp.data.security_profile_name #=> String
    #   resp.data.security_profile_arn #=> String
    #
    def create_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSecurityProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSecurityProfile,
        stubs: @stubs,
        params_class: Params::CreateSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data
    #             bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files
    #             associated with a stream.</p>
    #     	    <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateStream</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamInput}.
    #
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    #
    # @option params [String] :description
    #   <p>A description of the stream.</p>
    #
    # @option params [Array<StreamFile>] :files
    #   <p>The files to stream.</p>
    #
    # @option params [String] :role_arn
    #   <p>An IAM role that allows the IoT service principal to access your S3 files.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage streams.</p>
    #
    # @return [Types::CreateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream(
    #     stream_id: 'streamId', # required
    #     description: 'description',
    #     files: [
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: 'bucket',
    #           key: 'key',
    #           version: 'version'
    #         }
    #       }
    #     ], # required
    #     role_arn: 'roleArn', # required
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
    #   resp.data #=> Types::CreateStreamOutput
    #   resp.data.stream_id #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.stream_version #=> Integer
    #
    def create_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStream,
        stubs: @stubs,
        params_class: Params::CreateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a thing record in the registry. If this call is made multiple times using
    # 			the same thing name and configuration, the call will succeed. If this call is made with
    # 			the same thing name but different configuration a
    # 				<code>ResourceAlreadyExistsException</code> is thrown.</p>
    # 		       <note>
    # 			         <p>This is a control plane operation. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html">Authorization</a> for
    # 				information about authorizing control plane actions.</p>
    # 		       </note>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to create.</p>
    #   		       <p>You can't change a thing's name after you create it. To change a thing's name, you must create a
    #   			new thing, give it the new name, and then delete the old thing.</p>
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type associated with the new thing.</p>
    #
    # @option params [AttributePayload] :attribute_payload
    #   <p>The attribute payload, which consists of up to three name/value pairs in a JSON
    #   			document. For example:</p>
    #   		       <p>
    #   			         <code>{\"attributes\":{\"string1\":\"string2\"}}</code>
    #   		       </p>
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group the thing will be added to.</p>
    #
    # @return [Types::CreateThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing(
    #     thing_name: 'thingName', # required
    #     thing_type_name: 'thingTypeName',
    #     attribute_payload: {
    #       attributes: {
    #         'key' => 'value'
    #       },
    #       merge: false
    #     },
    #     billing_group_name: 'billingGroupName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateThingOutput
    #   resp.data.thing_name #=> String
    #   resp.data.thing_arn #=> String
    #   resp.data.thing_id #=> String
    #
    def create_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateThing,
        stubs: @stubs,
        params_class: Params::CreateThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a thing group.</p>
    # 		       <note>
    # 			         <p>This is a control plane operation. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html">Authorization</a> for
    # 				information about authorizing control plane actions.</p>
    # 		       </note>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The thing group name to create.</p>
    #
    # @option params [String] :parent_group_name
    #   <p>The name of the parent thing group.</p>
    #
    # @option params [ThingGroupProperties] :thing_group_properties
    #   <p>The thing group properties.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the thing group.</p>
    #
    # @return [Types::CreateThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     parent_group_name: 'parentGroupName',
    #     thing_group_properties: {
    #       thing_group_description: 'thingGroupDescription',
    #       attribute_payload: {
    #         attributes: {
    #           'key' => 'value'
    #         },
    #         merge: false
    #       }
    #     },
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
    #   resp.data #=> Types::CreateThingGroupOutput
    #   resp.data.thing_group_name #=> String
    #   resp.data.thing_group_arn #=> String
    #   resp.data.thing_group_id #=> String
    #
    def create_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateThingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateThingGroup,
        stubs: @stubs,
        params_class: Params::CreateThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new thing type.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateThingType</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThingTypeInput}.
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    #
    # @option params [ThingTypeProperties] :thing_type_properties
    #   <p>The ThingTypeProperties for the thing type to create. It contains information about
    #   			the new thing type including a description, and a list of searchable thing attribute
    #   			names.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the thing type.</p>
    #
    # @return [Types::CreateThingTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing_type(
    #     thing_type_name: 'thingTypeName', # required
    #     thing_type_properties: {
    #       thing_type_description: 'thingTypeDescription',
    #       searchable_attributes: [
    #         'member'
    #       ]
    #     },
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
    #   resp.data #=> Types::CreateThingTypeOutput
    #   resp.data.thing_type_name #=> String
    #   resp.data.thing_type_arn #=> String
    #   resp.data.thing_type_id #=> String
    #
    def create_thing_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThingTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThingTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateThingType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateThingType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateThingType,
        stubs: @stubs,
        params_class: Params::CreateThingTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_thing_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a rule. Creating rules is an administrator-level action. Any user who has
    #          permission to create rules will be able to access data processed by the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateTopicRule</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTopicRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    #
    # @option params [TopicRulePayload] :topic_rule_payload
    #   <p>The rule payload.</p>
    #
    # @option params [String] :tags
    #   <p>Metadata which can be used to manage the topic rule.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: --tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @return [Types::CreateTopicRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_rule(
    #     rule_name: 'ruleName', # required
    #     topic_rule_payload: {
    #       sql: 'sql', # required
    #       description: 'description',
    #       actions: [
    #         {
    #           dynamo_db: {
    #             table_name: 'tableName', # required
    #             role_arn: 'roleArn', # required
    #             operation: 'operation',
    #             hash_key_field: 'hashKeyField', # required
    #             hash_key_value: 'hashKeyValue', # required
    #             hash_key_type: 'STRING', # accepts ["STRING", "NUMBER"]
    #             range_key_field: 'rangeKeyField',
    #             range_key_value: 'rangeKeyValue',
    #             range_key_type: 'STRING', # accepts ["STRING", "NUMBER"]
    #             payload_field: 'payloadField'
    #           },
    #           dynamo_d_bv2: {
    #             role_arn: 'roleArn', # required
    #             put_item: {
    #               table_name: 'tableName' # required
    #             } # required
    #           },
    #           lambda: {
    #             function_arn: 'functionArn' # required
    #           },
    #           sns: {
    #             target_arn: 'targetArn', # required
    #             role_arn: 'roleArn', # required
    #             message_format: 'RAW' # accepts ["RAW", "JSON"]
    #           },
    #           sqs: {
    #             role_arn: 'roleArn', # required
    #             queue_url: 'queueUrl', # required
    #             use_base64: false
    #           },
    #           kinesis: {
    #             role_arn: 'roleArn', # required
    #             stream_name: 'streamName', # required
    #             partition_key: 'partitionKey'
    #           },
    #           republish: {
    #             role_arn: 'roleArn', # required
    #             topic: 'topic', # required
    #             qos: 1
    #           },
    #           s3: {
    #             role_arn: 'roleArn', # required
    #             bucket_name: 'bucketName', # required
    #             key: 'key', # required
    #             canned_acl: 'private' # accepts ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #           },
    #           firehose: {
    #             role_arn: 'roleArn', # required
    #             delivery_stream_name: 'deliveryStreamName', # required
    #             separator: 'separator',
    #             batch_mode: false
    #           },
    #           cloudwatch_metric: {
    #             role_arn: 'roleArn', # required
    #             metric_namespace: 'metricNamespace', # required
    #             metric_name: 'metricName', # required
    #             metric_value: 'metricValue', # required
    #             metric_unit: 'metricUnit', # required
    #             metric_timestamp: 'metricTimestamp'
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: 'roleArn', # required
    #             alarm_name: 'alarmName', # required
    #             state_reason: 'stateReason', # required
    #             state_value: 'stateValue' # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: 'roleArn', # required
    #             log_group_name: 'logGroupName' # required
    #           },
    #           elasticsearch: {
    #             role_arn: 'roleArn', # required
    #             endpoint: 'endpoint', # required
    #             index: 'index', # required
    #             type: 'type', # required
    #             id: 'id' # required
    #           },
    #           salesforce: {
    #             token: 'token', # required
    #             url: 'url' # required
    #           },
    #           iot_analytics: {
    #             channel_arn: 'channelArn',
    #             channel_name: 'channelName',
    #             batch_mode: false,
    #             role_arn: 'roleArn'
    #           },
    #           iot_events: {
    #             input_name: 'inputName', # required
    #             message_id: 'messageId',
    #             batch_mode: false,
    #             role_arn: 'roleArn' # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [
    #               {
    #                 entry_id: 'entryId',
    #                 asset_id: 'assetId',
    #                 property_id: 'propertyId',
    #                 property_alias: 'propertyAlias',
    #                 property_values: [
    #                   {
    #                     value: {
    #                       # One of:
    #                       string_value: 'stringValue',
    #                       integer_value: 'integerValue',
    #                       double_value: 'doubleValue',
    #                       boolean_value: 'booleanValue'
    #                     }, # required
    #                     timestamp: {
    #                       time_in_seconds: 'timeInSeconds', # required
    #                       offset_in_nanos: 'offsetInNanos'
    #                     }, # required
    #                     quality: 'quality'
    #                   }
    #                 ] # required
    #               }
    #             ], # required
    #             role_arn: 'roleArn' # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: 'executionNamePrefix',
    #             state_machine_name: 'stateMachineName', # required
    #             role_arn: 'roleArn' # required
    #           },
    #           timestream: {
    #             role_arn: 'roleArn', # required
    #             database_name: 'databaseName', # required
    #             table_name: 'tableName', # required
    #             dimensions: [
    #               {
    #                 name: 'name', # required
    #                 value: 'value' # required
    #               }
    #             ], # required
    #             timestamp: {
    #               value: 'value', # required
    #               unit: 'unit' # required
    #             }
    #           },
    #           http: {
    #             url: 'url', # required
    #             confirmation_url: 'confirmationUrl',
    #             headers: [
    #               {
    #                 key: 'key', # required
    #                 value: 'value' # required
    #               }
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: 'signingRegion', # required
    #                 service_name: 'serviceName', # required
    #                 role_arn: 'roleArn' # required
    #               }
    #             }
    #           },
    #           kafka: {
    #             destination_arn: 'destinationArn', # required
    #             topic: 'topic', # required
    #             key: 'key',
    #             partition: 'partition',
    #             client_properties: {
    #               'key' => 'value'
    #             } # required
    #           },
    #           open_search: {
    #             role_arn: 'roleArn', # required
    #             endpoint: 'endpoint', # required
    #             index: 'index', # required
    #             type: 'type', # required
    #             id: 'id' # required
    #           }
    #         }
    #       ], # required
    #       rule_disabled: false,
    #       aws_iot_sql_version: 'awsIotSqlVersion',
    #     }, # required
    #     tags: 'tags'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTopicRuleOutput
    #
    def create_topic_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTopicRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTopicRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTopicRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::SqlParseException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException]),
        data_parser: Parsers::CreateTopicRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTopicRule,
        stubs: @stubs,
        params_class: Params::CreateTopicRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_topic_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a topic rule destination. The destination must be confirmed prior to use.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateTopicRuleDestination</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTopicRuleDestinationInput}.
    #
    # @option params [TopicRuleDestinationConfiguration] :destination_configuration
    #   <p>The topic rule destination configuration.</p>
    #
    # @return [Types::CreateTopicRuleDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_rule_destination(
    #     destination_configuration: {
    #       http_url_configuration: {
    #         confirmation_url: 'confirmationUrl' # required
    #       },
    #       vpc_configuration: {
    #         subnet_ids: [
    #           'member'
    #         ], # required
    #         security_groups: [
    #           'member'
    #         ],
    #         vpc_id: 'vpcId', # required
    #         role_arn: 'roleArn' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTopicRuleDestinationOutput
    #   resp.data.topic_rule_destination #=> Types::TopicRuleDestination
    #   resp.data.topic_rule_destination.arn #=> String
    #   resp.data.topic_rule_destination.status #=> String, one of ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"]
    #   resp.data.topic_rule_destination.created_at #=> Time
    #   resp.data.topic_rule_destination.last_updated_at #=> Time
    #   resp.data.topic_rule_destination.status_reason #=> String
    #   resp.data.topic_rule_destination.http_url_properties #=> Types::HttpUrlDestinationProperties
    #   resp.data.topic_rule_destination.http_url_properties.confirmation_url #=> String
    #   resp.data.topic_rule_destination.vpc_properties #=> Types::VpcDestinationProperties
    #   resp.data.topic_rule_destination.vpc_properties.subnet_ids #=> Array<String>
    #   resp.data.topic_rule_destination.vpc_properties.subnet_ids[0] #=> String
    #   resp.data.topic_rule_destination.vpc_properties.security_groups #=> Array<String>
    #   resp.data.topic_rule_destination.vpc_properties.security_groups[0] #=> String
    #   resp.data.topic_rule_destination.vpc_properties.vpc_id #=> String
    #   resp.data.topic_rule_destination.vpc_properties.role_arn #=> String
    #
    def create_topic_rule_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTopicRuleDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTopicRuleDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTopicRuleDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException]),
        data_parser: Parsers::CreateTopicRuleDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTopicRuleDestination,
        stubs: @stubs,
        params_class: Params::CreateTopicRuleDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_topic_rule_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores the default settings for Device Defender audits for this account. Any
    #           configuration data you entered is deleted and all audit checks are reset to
    #           disabled.  </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteAccountAuditConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountAuditConfigurationInput}.
    #
    # @option params [Boolean] :delete_scheduled_audits
    #   <p>If true, all scheduled audits are deleted.</p>
    #
    # @return [Types::DeleteAccountAuditConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_audit_configuration(
    #     delete_scheduled_audits: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountAuditConfigurationOutput
    #
    def delete_account_audit_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountAuditConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountAuditConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccountAuditConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteAccountAuditConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccountAuditConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteAccountAuditConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account_audit_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes a Device Defender audit suppression.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteAuditSuppression</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAuditSuppressionInput}.
    #
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #           to select which checks are enabled.)</p>
    #
    # @option params [ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #
    # @return [Types::DeleteAuditSuppressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_audit_suppression(
    #     check_name: 'checkName', # required
    #     resource_identifier: {
    #       device_certificate_id: 'deviceCertificateId',
    #       ca_certificate_id: 'caCertificateId',
    #       cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #       client_id: 'clientId',
    #       policy_version_identifier: {
    #         policy_name: 'policyName',
    #         policy_version_id: 'policyVersionId'
    #       },
    #       account: 'account',
    #       iam_role_arn: 'iamRoleArn',
    #       role_alias_arn: 'roleAliasArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAuditSuppressionOutput
    #
    def delete_audit_suppression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAuditSuppressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAuditSuppressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAuditSuppression
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteAuditSuppression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAuditSuppression,
        stubs: @stubs,
        params_class: Params::DeleteAuditSuppressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_audit_suppression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAuthorizerInput}.
    #
    # @option params [String] :authorizer_name
    #   <p>The name of the authorizer to delete.</p>
    #
    # @return [Types::DeleteAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer(
    #     authorizer_name: 'authorizerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAuthorizerOutput
    #
    def delete_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAuthorizer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAuthorizer,
        stubs: @stubs,
        params_class: Params::DeleteAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteBillingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the billing group. If the version of the billing group does
    #   			not match the expected version specified in the request, the
    #   				<code>DeleteBillingGroup</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #
    # @return [Types::DeleteBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_billing_group(
    #     billing_group_name: 'billingGroupName', # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBillingGroupOutput
    #
    def delete_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBillingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBillingGroup,
        stubs: @stubs,
        params_class: Params::DeleteBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a registered CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCACertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCACertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate to delete. (The last part of the certificate ARN contains
    #            the certificate ID.)</p>
    #
    # @return [Types::DeleteCACertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ca_certificate(
    #     certificate_id: 'certificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCACertificateOutput
    #
    def delete_ca_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCACertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCACertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCACertificate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::CertificateStateException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteCACertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCACertificate,
        stubs: @stubs,
        params_class: Params::DeleteCACertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ca_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified certificate.</p>
    #          <p>A certificate cannot be deleted if it has a policy or IoT thing attached to it or if
    #          its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPolicy</a> action to detach all policies. Next, use the <a>UpdateCertificate</a> action to set the certificate to the INACTIVE
    #          status.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>Forces the deletion of a certificate if it is inactive and is not attached to an IoT
    #            thing.</p>
    #
    # @return [Types::DeleteCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate(
    #     certificate_id: 'certificateId', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCertificateOutput
    #
    def delete_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCertificate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::DeleteConflictException, Errors::CertificateStateException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCertificate,
        stubs: @stubs,
        params_class: Params::DeleteCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes a Device Defender detect custom metric.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCustomMetric</a> action.</p>
    #          <note>
    #             <p>Before you can delete a custom metric, you must first remove the custom metric from all
    #       security profiles it's a part of.
    #       The
    #       security
    #       profile associated with the custom metric can be found using the <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html">ListSecurityProfiles</a>
    #       API with <code>metricName</code> set to your custom metric name.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #
    # @return [Types::DeleteCustomMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_metric(
    #     metric_name: 'metricName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomMetricOutput
    #
    def delete_custom_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomMetric
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteCustomMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomMetric,
        stubs: @stubs,
        params_class: Params::DeleteCustomMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified dimension from your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteDimension</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDimensionInput}.
    #
    # @option params [String] :name
    #   <p>The unique identifier for the dimension that you want to delete.</p>
    #
    # @return [Types::DeleteDimensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dimension(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDimensionOutput
    #
    def delete_dimension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDimensionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDimensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDimension
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteDimension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDimension,
        stubs: @stubs,
        params_class: Params::DeleteDimensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dimension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified domain configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteDomainConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainConfigurationInput}.
    #
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration to be deleted.</p>
    #
    # @return [Types::DeleteDomainConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_configuration(
    #     domain_configuration_name: 'domainConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainConfigurationOutput
    #
    def delete_domain_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomainConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteDomainConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomainConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteDomainConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dynamic thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteDynamicThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDynamicThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The name of the dynamic thing group to delete.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the dynamic thing group to delete.</p>
    #
    # @return [Types::DeleteDynamicThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dynamic_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDynamicThingGroupOutput
    #
    def delete_dynamic_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDynamicThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDynamicThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDynamicThingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteDynamicThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDynamicThingGroup,
        stubs: @stubs,
        params_class: Params::DeleteDynamicThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dynamic_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified fleet metric.
    #         Returns successfully with no error if the deletion is successful or you specify a fleet metric that doesn't exist.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteFleetMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to delete.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the fleet metric to delete.</p>
    #
    # @return [Types::DeleteFleetMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_metric(
    #     metric_name: 'metricName', # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetMetricOutput
    #
    def delete_fleet_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleetMetric
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteFleetMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleetMetric,
        stubs: @stubs,
        params_class: Params::DeleteFleetMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a job and its related job executions.</p>
    #          <p>Deleting a job may take time, depending on the number of job
    #         executions created for the job and various other factors. While the job
    #         is being deleted, the status of the job will be shown as
    #         "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status
    #         is already "DELETION_IN_PROGRESS" will result in an error.</p>
    #          <p>Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or
    #         a LimitExceededException will occur.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job to be deleted.</p>
    #            <p>After a job deletion is completed, you may reuse this jobId when you create a new job.
    #           However, this is not recommended, and you must ensure that your devices are not using the
    #           jobId to refer to the deleted job.</p>
    #
    # @option params [Boolean] :force
    #   <p>(Optional) When true, you can delete a job which is "IN_PROGRESS". Otherwise, you can
    #           only delete a job which is in a terminal state ("COMPLETED" or "CANCELED") or an exception
    #           will occur. The default is false.</p>
    #            <note>
    #               <p>Deleting a job which is "IN_PROGRESS", will cause a device which is executing
    #           the job to be unable to access job information or update the job execution status.
    #           Use caution and ensure that each device executing a job which is deleted is able to recover to
    #           a valid state.</p>
    #            </note>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @return [Types::DeleteJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job(
    #     job_id: 'jobId', # required
    #     force: false,
    #     namespace_id: 'namespaceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobOutput
    #
    def delete_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateTransitionException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJob,
        stubs: @stubs,
        params_class: Params::DeleteJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a job execution.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteJobExecution</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobExecutionInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job whose execution on a particular device will be deleted.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing whose job execution will be deleted.</p>
    #
    # @option params [Integer] :execution_number
    #   <p>The ID of the job execution to be deleted. The <code>executionNumber</code> refers to the
    #           execution of a particular job on a particular device.</p>
    #            <p>Note that once a job execution is deleted, the <code>executionNumber</code> may be reused
    #           by IoT, so be sure you get and use the correct value here.</p>
    #
    # @option params [Boolean] :force
    #   <p>(Optional) When true, you can delete a job execution which is "IN_PROGRESS". Otherwise,
    #           you can only delete a job execution which is in a terminal state ("SUCCEEDED", "FAILED",
    #           "REJECTED", "REMOVED" or "CANCELED") or an exception will occur. The default is false.</p>
    #            <note>
    #               <p>Deleting a job execution which is "IN_PROGRESS", will cause the device
    #           to be unable to access job information or update the job execution status.
    #           Use caution and ensure that the device is able to recover to a valid state.</p>
    #            </note>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @return [Types::DeleteJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_execution(
    #     job_id: 'jobId', # required
    #     thing_name: 'thingName', # required
    #     execution_number: 1, # required
    #     force: false,
    #     namespace_id: 'namespaceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobExecutionOutput
    #
    def delete_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJobExecution
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateTransitionException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJobExecution,
        stubs: @stubs,
        params_class: Params::DeleteJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified job template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobTemplateInput}.
    #
    # @option params [String] :job_template_id
    #   <p>The unique identifier of the job template to delete.</p>
    #
    # @return [Types::DeleteJobTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_template(
    #     job_template_id: 'jobTemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobTemplateOutput
    #
    def delete_job_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJobTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteJobTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJobTemplate,
        stubs: @stubs,
        params_class: Params::DeleteJobTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a defined mitigation action from your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteMitigationAction</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMitigationActionInput}.
    #
    # @option params [String] :action_name
    #   <p>The name of the mitigation action that you want to delete.</p>
    #
    # @return [Types::DeleteMitigationActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mitigation_action(
    #     action_name: 'actionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMitigationActionOutput
    #
    def delete_mitigation_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMitigationActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMitigationActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMitigationAction
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteMitigationAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMitigationAction,
        stubs: @stubs,
        params_class: Params::DeleteMitigationActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mitigation_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an OTA update.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteOTAUpdate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOTAUpdateInput}.
    #
    # @option params [String] :ota_update_id
    #   <p>The ID of the OTA update to delete.</p>
    #
    # @option params [Boolean] :delete_stream
    #   <p>When true, the stream created by the OTAUpdate process is deleted when the OTA update is deleted.
    #               Ignored if the stream specified in the OTAUpdate is supplied by the user.</p>
    #
    # @option params [Boolean] :force_delete_aws_job
    #   <p>When true, deletes the IoT job created by the OTAUpdate process even if it is "IN_PROGRESS". Otherwise, if the
    #               job is not in a terminal state ("COMPLETED" or "CANCELED") an exception will occur. The default is false.</p>
    #
    # @return [Types::DeleteOTAUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ota_update(
    #     ota_update_id: 'otaUpdateId', # required
    #     delete_stream: false,
    #     force_delete_aws_job: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOTAUpdateOutput
    #
    def delete_ota_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOTAUpdateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOTAUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOTAUpdate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteOTAUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOTAUpdate,
        stubs: @stubs,
        params_class: Params::DeleteOTAUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ota_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified policy.</p>
    #          <p>A policy cannot be deleted if it has non-default versions or it is attached to any
    #          certificate.</p>
    #          <p>To delete a policy, use the <a>DeletePolicyVersion</a> action to delete all non-default
    #          versions of the policy; use the <a>DetachPolicy</a> action to detach the policy from any
    #          certificate; and then use the DeletePolicy action to delete the policy.</p>
    #          <p>When a policy is deleted using DeletePolicy, its default version is deleted with
    #          it.</p>
    #          <note>
    #             <p>Because of the distributed nature of Amazon Web Services, it can take up to five minutes after
    #          a policy is detached before it's ready to be deleted.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeletePolicy</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy to delete.</p>
    #
    # @return [Types::DeletePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy(
    #     policy_name: 'policyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePolicyOutput
    #
    def delete_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeletePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePolicy,
        stubs: @stubs,
        params_class: Params::DeletePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified version of the specified policy. You cannot delete the default
    #          version of a policy using this action. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default
    #          version, use ListPolicyVersions.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeletePolicyVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyVersionInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    # @option params [String] :policy_version_id
    #   <p>The policy version ID.</p>
    #
    # @return [Types::DeletePolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_version(
    #     policy_name: 'policyName', # required
    #     policy_version_id: 'policyVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePolicyVersionOutput
    #
    def delete_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePolicyVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePolicyVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeletePolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePolicyVersion,
        stubs: @stubs,
        params_class: Params::DeletePolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a fleet provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteProvisioningTemplate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProvisioningTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provision template to delete.</p>
    #
    # @return [Types::DeleteProvisioningTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_template(
    #     template_name: 'templateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProvisioningTemplateOutput
    #
    def delete_provisioning_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProvisioningTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProvisioningTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProvisioningTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ConflictingResourceUpdateException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteProvisioningTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProvisioningTemplate,
        stubs: @stubs,
        params_class: Params::DeleteProvisioningTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_provisioning_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a fleet provisioning template version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteProvisioningTemplateVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProvisioningTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provisioning template version to delete.</p>
    #
    # @option params [Integer] :version_id
    #   <p>The fleet provisioning template version ID to delete.</p>
    #
    # @return [Types::DeleteProvisioningTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_template_version(
    #     template_name: 'templateName', # required
    #     version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProvisioningTemplateVersionOutput
    #
    def delete_provisioning_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProvisioningTemplateVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProvisioningTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProvisioningTemplateVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ConflictingResourceUpdateException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteProvisioningTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProvisioningTemplateVersion,
        stubs: @stubs,
        params_class: Params::DeleteProvisioningTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_provisioning_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a CA certificate registration code.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteRegistrationCode</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRegistrationCodeInput}.
    #
    # @return [Types::DeleteRegistrationCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registration_code()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRegistrationCodeOutput
    #
    def delete_registration_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRegistrationCodeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRegistrationCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRegistrationCode
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteRegistrationCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRegistrationCode,
        stubs: @stubs,
        params_class: Params::DeleteRegistrationCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_registration_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a role alias</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteRoleAlias</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoleAliasInput}.
    #
    # @option params [String] :role_alias
    #   <p>The role alias to delete.</p>
    #
    # @return [Types::DeleteRoleAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_alias(
    #     role_alias: 'roleAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoleAliasOutput
    #
    def delete_role_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoleAliasInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoleAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoleAlias
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteRoleAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoleAlias,
        stubs: @stubs,
        params_class: Params::DeleteRoleAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_role_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a scheduled audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteScheduledAudit</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScheduledAuditInput}.
    #
    # @option params [String] :scheduled_audit_name
    #   <p>The name of the scheduled audit you want to delete.</p>
    #
    # @return [Types::DeleteScheduledAuditOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_audit(
    #     scheduled_audit_name: 'scheduledAuditName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScheduledAuditOutput
    #
    def delete_scheduled_audit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScheduledAuditInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScheduledAuditInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScheduledAudit
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteScheduledAudit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScheduledAudit,
        stubs: @stubs,
        params_class: Params::DeleteScheduledAuditOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scheduled_audit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile to be deleted.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the security profile. A new version is generated whenever
    #           the security profile is updated. If you specify a value that is different from the actual
    #           version, a <code>VersionConflictException</code> is thrown.</p>
    #
    # @return [Types::DeleteSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_profile(
    #     security_profile_name: 'securityProfileName', # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSecurityProfileOutput
    #
    def delete_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSecurityProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSecurityProfile,
        stubs: @stubs,
        params_class: Params::DeleteSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a stream.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteStream</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamInput}.
    #
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    #
    # @return [Types::DeleteStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream(
    #     stream_id: 'streamId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamOutput
    #
    def delete_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStream
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::DeleteConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStream,
        stubs: @stubs,
        params_class: Params::DeleteStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified thing. Returns successfully with no error if the deletion is
    # 			successful or you specify a thing that doesn't exist.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to delete.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing record in the registry. If the version of the
    #   			record in the registry does not match the expected version specified in the request, the
    #   				<code>DeleteThing</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #
    # @return [Types::DeleteThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing(
    #     thing_name: 'thingName', # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThingOutput
    #
    def delete_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThing
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThing,
        stubs: @stubs,
        params_class: Params::DeleteThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The name of the thing group to delete.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing group to delete.</p>
    #
    # @return [Types::DeleteThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThingGroupOutput
    #
    def delete_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThingGroup,
        stubs: @stubs,
        params_class: Params::DeleteThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified thing type. You cannot delete a thing type if it has things
    # 			associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and
    # 			finally use <a>DeleteThingType</a> to delete the thing type.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingType</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThingTypeInput}.
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    #
    # @return [Types::DeleteThingTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_type(
    #     thing_type_name: 'thingTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThingTypeOutput
    #
    def delete_thing_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThingTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThingTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThingType
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteThingType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThingType,
        stubs: @stubs,
        params_class: Params::DeleteThingTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_thing_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteTopicRule</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTopicRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    #
    # @return [Types::DeleteTopicRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_rule(
    #     rule_name: 'ruleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTopicRuleOutput
    #
    def delete_topic_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTopicRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTopicRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTopicRule
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteTopicRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTopicRule,
        stubs: @stubs,
        params_class: Params::DeleteTopicRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_topic_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a topic rule destination.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteTopicRuleDestination</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTopicRuleDestinationInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the topic rule destination to delete.</p>
    #
    # @return [Types::DeleteTopicRuleDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_rule_destination(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTopicRuleDestinationOutput
    #
    def delete_topic_rule_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTopicRuleDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTopicRuleDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTopicRuleDestination
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteTopicRuleDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTopicRuleDestination,
        stubs: @stubs,
        params_class: Params::DeleteTopicRuleDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_topic_rule_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a logging level.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteV2LoggingLevel</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteV2LoggingLevelInput}.
    #
    # @option params [String] :target_type
    #   <p>The type of resource for which you are configuring logging. Must be
    #               <code>THING_Group</code>.</p>
    #
    # @option params [String] :target_name
    #   <p>The name of the resource for which you are configuring logging.</p>
    #
    # @return [Types::DeleteV2LoggingLevelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_v2_logging_level(
    #     target_type: 'DEFAULT', # required - accepts ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"]
    #     target_name: 'targetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteV2LoggingLevelOutput
    #
    def delete_v2_logging_level(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteV2LoggingLevelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteV2LoggingLevelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteV2LoggingLevel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException]),
        data_parser: Parsers::DeleteV2LoggingLevel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteV2LoggingLevel,
        stubs: @stubs,
        params_class: Params::DeleteV2LoggingLevelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_v2_logging_level
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecates a thing type. You can not associate new things with deprecated thing
    # 			type.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeprecateThingType</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprecateThingTypeInput}.
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type to deprecate.</p>
    #
    # @option params [Boolean] :undo_deprecate
    #   <p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can
    #   			associate it with things.</p>
    #
    # @return [Types::DeprecateThingTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_thing_type(
    #     thing_type_name: 'thingTypeName', # required
    #     undo_deprecate: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprecateThingTypeOutput
    #
    def deprecate_thing_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprecateThingTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprecateThingTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprecateThingType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeprecateThingType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprecateThingType,
        stubs: @stubs,
        params_class: Params::DeprecateThingTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprecate_thing_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the Device Defender audit settings for this account.
    #           Settings include how audit notifications are sent and which audit checks are
    #           enabled or disabled.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAccountAuditConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAuditConfigurationInput}.
    #
    # @return [Types::DescribeAccountAuditConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_audit_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAuditConfigurationOutput
    #   resp.data.role_arn #=> String
    #   resp.data.audit_notification_target_configurations #=> Hash<String, AuditNotificationTarget>
    #   resp.data.audit_notification_target_configurations['key'] #=> Types::AuditNotificationTarget
    #   resp.data.audit_notification_target_configurations['key'].target_arn #=> String
    #   resp.data.audit_notification_target_configurations['key'].role_arn #=> String
    #   resp.data.audit_notification_target_configurations['key'].enabled #=> Boolean
    #   resp.data.audit_check_configurations #=> Hash<String, AuditCheckConfiguration>
    #   resp.data.audit_check_configurations['key'] #=> Types::AuditCheckConfiguration
    #   resp.data.audit_check_configurations['key'].enabled #=> Boolean
    #
    def describe_account_audit_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAuditConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAuditConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAuditConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeAccountAuditConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAuditConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeAccountAuditConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_audit_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a single audit finding. Properties include the reason for
    #       noncompliance, the severity of the issue,
    #       and the start time
    #       when the audit that returned the
    #       finding.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAuditFinding</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAuditFindingInput}.
    #
    # @option params [String] :finding_id
    #   <p>A unique identifier for a single audit finding. You can use this identifier to apply mitigation actions to the finding.</p>
    #
    # @return [Types::DescribeAuditFindingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_finding(
    #     finding_id: 'findingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuditFindingOutput
    #   resp.data.finding #=> Types::AuditFinding
    #   resp.data.finding.finding_id #=> String
    #   resp.data.finding.task_id #=> String
    #   resp.data.finding.check_name #=> String
    #   resp.data.finding.task_start_time #=> Time
    #   resp.data.finding.finding_time #=> Time
    #   resp.data.finding.severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW"]
    #   resp.data.finding.non_compliant_resource #=> Types::NonCompliantResource
    #   resp.data.finding.non_compliant_resource.resource_type #=> String, one of ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE"]
    #   resp.data.finding.non_compliant_resource.resource_identifier #=> Types::ResourceIdentifier
    #   resp.data.finding.non_compliant_resource.resource_identifier.device_certificate_id #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.ca_certificate_id #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.cognito_identity_pool_id #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.client_id #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.policy_version_identifier #=> Types::PolicyVersionIdentifier
    #   resp.data.finding.non_compliant_resource.resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.account #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.iam_role_arn #=> String
    #   resp.data.finding.non_compliant_resource.resource_identifier.role_alias_arn #=> String
    #   resp.data.finding.non_compliant_resource.additional_info #=> Hash<String, String>
    #   resp.data.finding.non_compliant_resource.additional_info['key'] #=> String
    #   resp.data.finding.related_resources #=> Array<RelatedResource>
    #   resp.data.finding.related_resources[0] #=> Types::RelatedResource
    #   resp.data.finding.related_resources[0].resource_type #=> String, one of ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE"]
    #   resp.data.finding.related_resources[0].resource_identifier #=> Types::ResourceIdentifier
    #   resp.data.finding.related_resources[0].additional_info #=> Hash<String, String>
    #   resp.data.finding.reason_for_non_compliance #=> String
    #   resp.data.finding.reason_for_non_compliance_code #=> String
    #   resp.data.finding.is_suppressed #=> Boolean
    #
    def describe_audit_finding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuditFindingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuditFindingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuditFinding
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeAuditFinding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuditFinding,
        stubs: @stubs,
        params_class: Params::DescribeAuditFindingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_audit_finding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an audit mitigation task that is used to apply mitigation actions to a set of audit findings. Properties include the actions being applied, the audit checks to which they're being applied, the task status, and aggregated task statistics.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAuditMitigationActionsTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The unique identifier for the audit mitigation task.</p>
    #
    # @return [Types::DescribeAuditMitigationActionsTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_mitigation_actions_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuditMitigationActionsTaskOutput
    #   resp.data.task_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.task_statistics #=> Hash<String, TaskStatisticsForAuditCheck>
    #   resp.data.task_statistics['key'] #=> Types::TaskStatisticsForAuditCheck
    #   resp.data.task_statistics['key'].total_findings_count #=> Integer
    #   resp.data.task_statistics['key'].failed_findings_count #=> Integer
    #   resp.data.task_statistics['key'].succeeded_findings_count #=> Integer
    #   resp.data.task_statistics['key'].skipped_findings_count #=> Integer
    #   resp.data.task_statistics['key'].canceled_findings_count #=> Integer
    #   resp.data.target #=> Types::AuditMitigationActionsTaskTarget
    #   resp.data.target.audit_task_id #=> String
    #   resp.data.target.finding_ids #=> Array<String>
    #   resp.data.target.finding_ids[0] #=> String
    #   resp.data.target.audit_check_to_reason_code_filter #=> Hash<String, Array<String>>
    #   resp.data.target.audit_check_to_reason_code_filter['key'] #=> Array<String>
    #   resp.data.target.audit_check_to_reason_code_filter['key'][0] #=> String
    #   resp.data.audit_check_to_actions_mapping #=> Hash<String, Array<String>>
    #   resp.data.audit_check_to_actions_mapping['key'] #=> Array<String>
    #   resp.data.audit_check_to_actions_mapping['key'][0] #=> String
    #   resp.data.actions_definition #=> Array<MitigationAction>
    #   resp.data.actions_definition[0] #=> Types::MitigationAction
    #   resp.data.actions_definition[0].name #=> String
    #   resp.data.actions_definition[0].id #=> String
    #   resp.data.actions_definition[0].role_arn #=> String
    #   resp.data.actions_definition[0].action_params #=> Types::MitigationActionParams
    #   resp.data.actions_definition[0].action_params.update_device_certificate_params #=> Types::UpdateDeviceCertificateParams
    #   resp.data.actions_definition[0].action_params.update_device_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.actions_definition[0].action_params.update_ca_certificate_params #=> Types::UpdateCACertificateParams
    #   resp.data.actions_definition[0].action_params.update_ca_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.actions_definition[0].action_params.add_things_to_thing_group_params #=> Types::AddThingsToThingGroupParams
    #   resp.data.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names #=> Array<String>
    #   resp.data.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.data.actions_definition[0].action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.data.actions_definition[0].action_params.replace_default_policy_version_params #=> Types::ReplaceDefaultPolicyVersionParams
    #   resp.data.actions_definition[0].action_params.replace_default_policy_version_params.template_name #=> String, one of ["BLANK_POLICY"]
    #   resp.data.actions_definition[0].action_params.enable_io_t_logging_params #=> Types::EnableIoTLoggingParams
    #   resp.data.actions_definition[0].action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.data.actions_definition[0].action_params.enable_io_t_logging_params.log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   resp.data.actions_definition[0].action_params.publish_finding_to_sns_params #=> Types::PublishFindingToSnsParams
    #   resp.data.actions_definition[0].action_params.publish_finding_to_sns_params.topic_arn #=> String
    #
    def describe_audit_mitigation_actions_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuditMitigationActionsTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuditMitigationActionsTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuditMitigationActionsTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeAuditMitigationActionsTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuditMitigationActionsTask,
        stubs: @stubs,
        params_class: Params::DescribeAuditMitigationActionsTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_audit_mitigation_actions_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets information about a Device Defender audit suppression.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAuditSuppressionInput}.
    #
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #           to select which checks are enabled.)</p>
    #
    # @option params [ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #
    # @return [Types::DescribeAuditSuppressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_suppression(
    #     check_name: 'checkName', # required
    #     resource_identifier: {
    #       device_certificate_id: 'deviceCertificateId',
    #       ca_certificate_id: 'caCertificateId',
    #       cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #       client_id: 'clientId',
    #       policy_version_identifier: {
    #         policy_name: 'policyName',
    #         policy_version_id: 'policyVersionId'
    #       },
    #       account: 'account',
    #       iam_role_arn: 'iamRoleArn',
    #       role_alias_arn: 'roleAliasArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuditSuppressionOutput
    #   resp.data.check_name #=> String
    #   resp.data.resource_identifier #=> Types::ResourceIdentifier
    #   resp.data.resource_identifier.device_certificate_id #=> String
    #   resp.data.resource_identifier.ca_certificate_id #=> String
    #   resp.data.resource_identifier.cognito_identity_pool_id #=> String
    #   resp.data.resource_identifier.client_id #=> String
    #   resp.data.resource_identifier.policy_version_identifier #=> Types::PolicyVersionIdentifier
    #   resp.data.resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.data.resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.data.resource_identifier.account #=> String
    #   resp.data.resource_identifier.iam_role_arn #=> String
    #   resp.data.resource_identifier.role_alias_arn #=> String
    #   resp.data.expiration_date #=> Time
    #   resp.data.suppress_indefinitely #=> Boolean
    #   resp.data.description #=> String
    #
    def describe_audit_suppression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuditSuppressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuditSuppressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuditSuppression
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeAuditSuppression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuditSuppression,
        stubs: @stubs,
        params_class: Params::DescribeAuditSuppressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_audit_suppression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Device Defender audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAuditTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAuditTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the audit whose information you want to get.</p>
    #
    # @return [Types::DescribeAuditTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuditTaskOutput
    #   resp.data.task_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #   resp.data.task_type #=> String, one of ["ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"]
    #   resp.data.task_start_time #=> Time
    #   resp.data.task_statistics #=> Types::TaskStatistics
    #   resp.data.task_statistics.total_checks #=> Integer
    #   resp.data.task_statistics.in_progress_checks #=> Integer
    #   resp.data.task_statistics.waiting_for_data_collection_checks #=> Integer
    #   resp.data.task_statistics.compliant_checks #=> Integer
    #   resp.data.task_statistics.non_compliant_checks #=> Integer
    #   resp.data.task_statistics.failed_checks #=> Integer
    #   resp.data.task_statistics.canceled_checks #=> Integer
    #   resp.data.scheduled_audit_name #=> String
    #   resp.data.audit_details #=> Hash<String, AuditCheckDetails>
    #   resp.data.audit_details['key'] #=> Types::AuditCheckDetails
    #   resp.data.audit_details['key'].check_run_status #=> String, one of ["IN_PROGRESS", "WAITING_FOR_DATA_COLLECTION", "CANCELED", "COMPLETED_COMPLIANT", "COMPLETED_NON_COMPLIANT", "FAILED"]
    #   resp.data.audit_details['key'].check_compliant #=> Boolean
    #   resp.data.audit_details['key'].total_resources_count #=> Integer
    #   resp.data.audit_details['key'].non_compliant_resources_count #=> Integer
    #   resp.data.audit_details['key'].suppressed_non_compliant_resources_count #=> Integer
    #   resp.data.audit_details['key'].error_code #=> String
    #   resp.data.audit_details['key'].message #=> String
    #
    def describe_audit_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuditTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuditTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuditTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeAuditTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuditTask,
        stubs: @stubs,
        params_class: Params::DescribeAuditTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_audit_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAuthorizerInput}.
    #
    # @option params [String] :authorizer_name
    #   <p>The name of the authorizer to describe.</p>
    #
    # @return [Types::DescribeAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_authorizer(
    #     authorizer_name: 'authorizerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuthorizerOutput
    #   resp.data.authorizer_description #=> Types::AuthorizerDescription
    #   resp.data.authorizer_description.authorizer_name #=> String
    #   resp.data.authorizer_description.authorizer_arn #=> String
    #   resp.data.authorizer_description.authorizer_function_arn #=> String
    #   resp.data.authorizer_description.token_key_name #=> String
    #   resp.data.authorizer_description.token_signing_public_keys #=> Hash<String, String>
    #   resp.data.authorizer_description.token_signing_public_keys['key'] #=> String
    #   resp.data.authorizer_description.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.authorizer_description.creation_date #=> Time
    #   resp.data.authorizer_description.last_modified_date #=> Time
    #   resp.data.authorizer_description.signing_disabled #=> Boolean
    #   resp.data.authorizer_description.enable_caching_for_http #=> Boolean
    #
    def describe_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuthorizer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuthorizer,
        stubs: @stubs,
        params_class: Params::DescribeAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeBillingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #
    # @return [Types::DescribeBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_billing_group(
    #     billing_group_name: 'billingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBillingGroupOutput
    #   resp.data.billing_group_name #=> String
    #   resp.data.billing_group_id #=> String
    #   resp.data.billing_group_arn #=> String
    #   resp.data.version #=> Integer
    #   resp.data.billing_group_properties #=> Types::BillingGroupProperties
    #   resp.data.billing_group_properties.billing_group_description #=> String
    #   resp.data.billing_group_metadata #=> Types::BillingGroupMetadata
    #   resp.data.billing_group_metadata.creation_date #=> Time
    #
    def describe_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBillingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBillingGroup,
        stubs: @stubs,
        params_class: Params::DescribeBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a registered CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCACertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCACertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The CA certificate identifier.</p>
    #
    # @return [Types::DescribeCACertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ca_certificate(
    #     certificate_id: 'certificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCACertificateOutput
    #   resp.data.certificate_description #=> Types::CACertificateDescription
    #   resp.data.certificate_description.certificate_arn #=> String
    #   resp.data.certificate_description.certificate_id #=> String
    #   resp.data.certificate_description.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.certificate_description.certificate_pem #=> String
    #   resp.data.certificate_description.owned_by #=> String
    #   resp.data.certificate_description.creation_date #=> Time
    #   resp.data.certificate_description.auto_registration_status #=> String, one of ["ENABLE", "DISABLE"]
    #   resp.data.certificate_description.last_modified_date #=> Time
    #   resp.data.certificate_description.customer_version #=> Integer
    #   resp.data.certificate_description.generation_id #=> String
    #   resp.data.certificate_description.validity #=> Types::CertificateValidity
    #   resp.data.certificate_description.validity.not_before #=> Time
    #   resp.data.certificate_description.validity.not_after #=> Time
    #   resp.data.registration_config #=> Types::RegistrationConfig
    #   resp.data.registration_config.template_body #=> String
    #   resp.data.registration_config.role_arn #=> String
    #
    def describe_ca_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCACertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCACertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCACertificate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeCACertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCACertificate,
        stubs: @stubs,
        params_class: Params::DescribeCACertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ca_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @return [Types::DescribeCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate(
    #     certificate_id: 'certificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCertificateOutput
    #   resp.data.certificate_description #=> Types::CertificateDescription
    #   resp.data.certificate_description.certificate_arn #=> String
    #   resp.data.certificate_description.certificate_id #=> String
    #   resp.data.certificate_description.ca_certificate_id #=> String
    #   resp.data.certificate_description.status #=> String, one of ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   resp.data.certificate_description.certificate_pem #=> String
    #   resp.data.certificate_description.owned_by #=> String
    #   resp.data.certificate_description.previous_owned_by #=> String
    #   resp.data.certificate_description.creation_date #=> Time
    #   resp.data.certificate_description.last_modified_date #=> Time
    #   resp.data.certificate_description.customer_version #=> Integer
    #   resp.data.certificate_description.transfer_data #=> Types::TransferData
    #   resp.data.certificate_description.transfer_data.transfer_message #=> String
    #   resp.data.certificate_description.transfer_data.reject_reason #=> String
    #   resp.data.certificate_description.transfer_data.transfer_date #=> Time
    #   resp.data.certificate_description.transfer_data.accept_date #=> Time
    #   resp.data.certificate_description.transfer_data.reject_date #=> Time
    #   resp.data.certificate_description.generation_id #=> String
    #   resp.data.certificate_description.validity #=> Types::CertificateValidity
    #   resp.data.certificate_description.validity.not_before #=> Time
    #   resp.data.certificate_description.validity.not_after #=> Time
    #   resp.data.certificate_description.certificate_mode #=> String, one of ["DEFAULT", "SNI_ONLY"]
    #
    def describe_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificate,
        stubs: @stubs,
        params_class: Params::DescribeCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets information about a Device Defender detect custom metric.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCustomMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #
    # @return [Types::DescribeCustomMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_metric(
    #     metric_name: 'metricName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomMetricOutput
    #   resp.data.metric_name #=> String
    #   resp.data.metric_arn #=> String
    #   resp.data.metric_type #=> String, one of ["string-list", "ip-address-list", "number-list", "number"]
    #   resp.data.display_name #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def describe_custom_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomMetric
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeCustomMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomMetric,
        stubs: @stubs,
        params_class: Params::DescribeCustomMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the default authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDefaultAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDefaultAuthorizerInput}.
    #
    # @return [Types::DescribeDefaultAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_authorizer()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDefaultAuthorizerOutput
    #   resp.data.authorizer_description #=> Types::AuthorizerDescription
    #   resp.data.authorizer_description.authorizer_name #=> String
    #   resp.data.authorizer_description.authorizer_arn #=> String
    #   resp.data.authorizer_description.authorizer_function_arn #=> String
    #   resp.data.authorizer_description.token_key_name #=> String
    #   resp.data.authorizer_description.token_signing_public_keys #=> Hash<String, String>
    #   resp.data.authorizer_description.token_signing_public_keys['key'] #=> String
    #   resp.data.authorizer_description.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.authorizer_description.creation_date #=> Time
    #   resp.data.authorizer_description.last_modified_date #=> Time
    #   resp.data.authorizer_description.signing_disabled #=> Boolean
    #   resp.data.authorizer_description.enable_caching_for_http #=> Boolean
    #
    def describe_default_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDefaultAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDefaultAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDefaultAuthorizer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeDefaultAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDefaultAuthorizer,
        stubs: @stubs,
        params_class: Params::DescribeDefaultAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_default_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets information about a Device Defender ML Detect mitigation action.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDetectMitigationActionsTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDetectMitigationActionsTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #
    # @return [Types::DescribeDetectMitigationActionsTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detect_mitigation_actions_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDetectMitigationActionsTaskOutput
    #   resp.data.task_summary #=> Types::DetectMitigationActionsTaskSummary
    #   resp.data.task_summary.task_id #=> String
    #   resp.data.task_summary.task_status #=> String, one of ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "CANCELED"]
    #   resp.data.task_summary.task_start_time #=> Time
    #   resp.data.task_summary.task_end_time #=> Time
    #   resp.data.task_summary.target #=> Types::DetectMitigationActionsTaskTarget
    #   resp.data.task_summary.target.violation_ids #=> Array<String>
    #   resp.data.task_summary.target.violation_ids[0] #=> String
    #   resp.data.task_summary.target.security_profile_name #=> String
    #   resp.data.task_summary.target.behavior_name #=> String
    #   resp.data.task_summary.violation_event_occurrence_range #=> Types::ViolationEventOccurrenceRange
    #   resp.data.task_summary.violation_event_occurrence_range.start_time #=> Time
    #   resp.data.task_summary.violation_event_occurrence_range.end_time #=> Time
    #   resp.data.task_summary.only_active_violations_included #=> Boolean
    #   resp.data.task_summary.suppressed_alerts_included #=> Boolean
    #   resp.data.task_summary.actions_definition #=> Array<MitigationAction>
    #   resp.data.task_summary.actions_definition[0] #=> Types::MitigationAction
    #   resp.data.task_summary.actions_definition[0].name #=> String
    #   resp.data.task_summary.actions_definition[0].id #=> String
    #   resp.data.task_summary.actions_definition[0].role_arn #=> String
    #   resp.data.task_summary.actions_definition[0].action_params #=> Types::MitigationActionParams
    #   resp.data.task_summary.actions_definition[0].action_params.update_device_certificate_params #=> Types::UpdateDeviceCertificateParams
    #   resp.data.task_summary.actions_definition[0].action_params.update_device_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.task_summary.actions_definition[0].action_params.update_ca_certificate_params #=> Types::UpdateCACertificateParams
    #   resp.data.task_summary.actions_definition[0].action_params.update_ca_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params #=> Types::AddThingsToThingGroupParams
    #   resp.data.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names #=> Array<String>
    #   resp.data.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.data.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.data.task_summary.actions_definition[0].action_params.replace_default_policy_version_params #=> Types::ReplaceDefaultPolicyVersionParams
    #   resp.data.task_summary.actions_definition[0].action_params.replace_default_policy_version_params.template_name #=> String, one of ["BLANK_POLICY"]
    #   resp.data.task_summary.actions_definition[0].action_params.enable_io_t_logging_params #=> Types::EnableIoTLoggingParams
    #   resp.data.task_summary.actions_definition[0].action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.data.task_summary.actions_definition[0].action_params.enable_io_t_logging_params.log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   resp.data.task_summary.actions_definition[0].action_params.publish_finding_to_sns_params #=> Types::PublishFindingToSnsParams
    #   resp.data.task_summary.actions_definition[0].action_params.publish_finding_to_sns_params.topic_arn #=> String
    #   resp.data.task_summary.task_statistics #=> Types::DetectMitigationActionsTaskStatistics
    #   resp.data.task_summary.task_statistics.actions_executed #=> Integer
    #   resp.data.task_summary.task_statistics.actions_skipped #=> Integer
    #   resp.data.task_summary.task_statistics.actions_failed #=> Integer
    #
    def describe_detect_mitigation_actions_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDetectMitigationActionsTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDetectMitigationActionsTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDetectMitigationActionsTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeDetectMitigationActionsTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDetectMitigationActionsTask,
        stubs: @stubs,
        params_class: Params::DescribeDetectMitigationActionsTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_detect_mitigation_actions_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details about a dimension that is defined in your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDimension</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDimensionInput}.
    #
    # @option params [String] :name
    #   <p>The unique identifier for the dimension.</p>
    #
    # @return [Types::DescribeDimensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dimension(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDimensionOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.type #=> String, one of ["TOPIC_FILTER"]
    #   resp.data.string_values #=> Array<String>
    #   resp.data.string_values[0] #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def describe_dimension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDimensionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDimensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDimension
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeDimension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDimension,
        stubs: @stubs,
        params_class: Params::DescribeDimensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dimension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about a domain configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDomainConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainConfigurationInput}.
    #
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration.</p>
    #
    # @return [Types::DescribeDomainConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_configuration(
    #     domain_configuration_name: 'domainConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainConfigurationOutput
    #   resp.data.domain_configuration_name #=> String
    #   resp.data.domain_configuration_arn #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.server_certificates #=> Array<ServerCertificateSummary>
    #   resp.data.server_certificates[0] #=> Types::ServerCertificateSummary
    #   resp.data.server_certificates[0].server_certificate_arn #=> String
    #   resp.data.server_certificates[0].server_certificate_status #=> String, one of ["INVALID", "VALID"]
    #   resp.data.server_certificates[0].server_certificate_status_detail #=> String
    #   resp.data.authorizer_config #=> Types::AuthorizerConfig
    #   resp.data.authorizer_config.default_authorizer_name #=> String
    #   resp.data.authorizer_config.allow_authorizer_override #=> Boolean
    #   resp.data.domain_configuration_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.service_type #=> String, one of ["DATA", "CREDENTIAL_PROVIDER", "JOBS"]
    #   resp.data.domain_type #=> String, one of ["ENDPOINT", "AWS_MANAGED", "CUSTOMER_MANAGED"]
    #   resp.data.last_status_change_date #=> Time
    #
    def describe_domain_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomainConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeDomainConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomainConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeDomainConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a unique endpoint specific to the Amazon Web Services account making the call.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeEndpoint</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointInput}.
    #
    # @option params [String] :endpoint_type
    #   <p>The endpoint type. Valid endpoint types include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Data</code> - Returns a VeriSign signed data endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Data-ATS</code> - Returns an ATS signed data endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:CredentialProvider</code> - Returns an IoT credentials provider API
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Jobs</code> - Returns an IoT device management Jobs API
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #            <p>We strongly recommend that customers use the newer <code>iot:Data-ATS</code> endpoint type to avoid
    #            issues related to the widespread distrust of Symantec certificate authorities.</p>
    #
    # @return [Types::DescribeEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint(
    #     endpoint_type: 'endpointType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointOutput
    #   resp.data.endpoint_address #=> String
    #
    def describe_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpoint,
        stubs: @stubs,
        params_class: Params::DescribeEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes event configurations.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeEventConfigurations</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventConfigurationsInput}.
    #
    # @return [Types::DescribeEventConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_configurations()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventConfigurationsOutput
    #   resp.data.event_configurations #=> Hash<String, Configuration>
    #   resp.data.event_configurations['key'] #=> Types::Configuration
    #   resp.data.event_configurations['key'].enabled #=> Boolean
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def describe_event_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventConfigurations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeEventConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeEventConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified fleet metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeFleetMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to describe.</p>
    #
    # @return [Types::DescribeFleetMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_metric(
    #     metric_name: 'metricName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetMetricOutput
    #   resp.data.metric_name #=> String
    #   resp.data.query_string #=> String
    #   resp.data.aggregation_type #=> Types::AggregationType
    #   resp.data.aggregation_type.name #=> String, one of ["Statistics", "Percentiles", "Cardinality"]
    #   resp.data.aggregation_type.values #=> Array<String>
    #   resp.data.aggregation_type.values[0] #=> String
    #   resp.data.period #=> Integer
    #   resp.data.aggregation_field #=> String
    #   resp.data.description #=> String
    #   resp.data.query_version #=> String
    #   resp.data.index_name #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #   resp.data.unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.version #=> Integer
    #   resp.data.metric_arn #=> String
    #
    def describe_fleet_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetMetric
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeFleetMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetMetric,
        stubs: @stubs,
        params_class: Params::DescribeFleetMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a search index.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeIndex</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIndexInput}.
    #
    # @option params [String] :index_name
    #   <p>The index name.</p>
    #
    # @return [Types::DescribeIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index(
    #     index_name: 'indexName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIndexOutput
    #   resp.data.index_name #=> String
    #   resp.data.index_status #=> String, one of ["ACTIVE", "BUILDING", "REBUILDING"]
    #   resp.data.schema #=> String
    #
    def describe_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIndexInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIndex
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIndex,
        stubs: @stubs,
        params_class: Params::DescribeIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a job.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @return [Types::DescribeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobOutput
    #   resp.data.document_source #=> String
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_arn #=> String
    #   resp.data.job.job_id #=> String
    #   resp.data.job.target_selection #=> String, one of ["CONTINUOUS", "SNAPSHOT"]
    #   resp.data.job.status #=> String, one of ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS"]
    #   resp.data.job.force_canceled #=> Boolean
    #   resp.data.job.reason_code #=> String
    #   resp.data.job.comment #=> String
    #   resp.data.job.targets #=> Array<String>
    #   resp.data.job.targets[0] #=> String
    #   resp.data.job.description #=> String
    #   resp.data.job.presigned_url_config #=> Types::PresignedUrlConfig
    #   resp.data.job.presigned_url_config.role_arn #=> String
    #   resp.data.job.presigned_url_config.expires_in_sec #=> Integer
    #   resp.data.job.job_executions_rollout_config #=> Types::JobExecutionsRolloutConfig
    #   resp.data.job.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.data.job.job_executions_rollout_config.exponential_rate #=> Types::ExponentialRolloutRate
    #   resp.data.job.job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.data.job.job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.data.job.job_executions_rollout_config.exponential_rate.rate_increase_criteria #=> Types::RateIncreaseCriteria
    #   resp.data.job.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.data.job.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.data.job.abort_config #=> Types::AbortConfig
    #   resp.data.job.abort_config.criteria_list #=> Array<AbortCriteria>
    #   resp.data.job.abort_config.criteria_list[0] #=> Types::AbortCriteria
    #   resp.data.job.abort_config.criteria_list[0].failure_type #=> String, one of ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #   resp.data.job.abort_config.criteria_list[0].action #=> String, one of ["CANCEL"]
    #   resp.data.job.abort_config.criteria_list[0].threshold_percentage #=> Float
    #   resp.data.job.abort_config.criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.data.job.created_at #=> Time
    #   resp.data.job.last_updated_at #=> Time
    #   resp.data.job.completed_at #=> Time
    #   resp.data.job.job_process_details #=> Types::JobProcessDetails
    #   resp.data.job.job_process_details.processing_targets #=> Array<String>
    #   resp.data.job.job_process_details.processing_targets[0] #=> String
    #   resp.data.job.job_process_details.number_of_canceled_things #=> Integer
    #   resp.data.job.job_process_details.number_of_succeeded_things #=> Integer
    #   resp.data.job.job_process_details.number_of_failed_things #=> Integer
    #   resp.data.job.job_process_details.number_of_rejected_things #=> Integer
    #   resp.data.job.job_process_details.number_of_queued_things #=> Integer
    #   resp.data.job.job_process_details.number_of_in_progress_things #=> Integer
    #   resp.data.job.job_process_details.number_of_removed_things #=> Integer
    #   resp.data.job.job_process_details.number_of_timed_out_things #=> Integer
    #   resp.data.job.timeout_config #=> Types::TimeoutConfig
    #   resp.data.job.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.data.job.namespace_id #=> String
    #   resp.data.job.job_template_arn #=> String
    #   resp.data.job.job_executions_retry_config #=> Types::JobExecutionsRetryConfig
    #   resp.data.job.job_executions_retry_config.criteria_list #=> Array<RetryCriteria>
    #   resp.data.job.job_executions_retry_config.criteria_list[0] #=> Types::RetryCriteria
    #   resp.data.job.job_executions_retry_config.criteria_list[0].failure_type #=> String, one of ["FAILED", "TIMED_OUT", "ALL"]
    #   resp.data.job.job_executions_retry_config.criteria_list[0].number_of_retries #=> Integer
    #   resp.data.job.document_parameters #=> Hash<String, String>
    #   resp.data.job.document_parameters['key'] #=> String
    #   resp.data.job.is_concurrent #=> Boolean
    #
    def describe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJob,
        stubs: @stubs,
        params_class: Params::DescribeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a job execution.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeJobExecution</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobExecutionInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing on which the job execution is running.</p>
    #
    # @option params [Integer] :execution_number
    #   <p>A string (consisting of the digits "0" through "9" which is used to specify a particular job execution
    #               on a particular device.</p>
    #
    # @return [Types::DescribeJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_execution(
    #     job_id: 'jobId', # required
    #     thing_name: 'thingName', # required
    #     execution_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobExecutionOutput
    #   resp.data.execution #=> Types::JobExecution
    #   resp.data.execution.job_id #=> String
    #   resp.data.execution.status #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #   resp.data.execution.force_canceled #=> Boolean
    #   resp.data.execution.status_details #=> Types::JobExecutionStatusDetails
    #   resp.data.execution.status_details.details_map #=> Hash<String, String>
    #   resp.data.execution.status_details.details_map['key'] #=> String
    #   resp.data.execution.thing_arn #=> String
    #   resp.data.execution.queued_at #=> Time
    #   resp.data.execution.started_at #=> Time
    #   resp.data.execution.last_updated_at #=> Time
    #   resp.data.execution.execution_number #=> Integer
    #   resp.data.execution.version_number #=> Integer
    #   resp.data.execution.approximate_seconds_before_timed_out #=> Integer
    #
    def describe_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobExecution
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobExecution,
        stubs: @stubs,
        params_class: Params::DescribeJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a job template.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobTemplateInput}.
    #
    # @option params [String] :job_template_id
    #   <p>The unique identifier of the job template.</p>
    #
    # @return [Types::DescribeJobTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_template(
    #     job_template_id: 'jobTemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobTemplateOutput
    #   resp.data.job_template_arn #=> String
    #   resp.data.job_template_id #=> String
    #   resp.data.description #=> String
    #   resp.data.document_source #=> String
    #   resp.data.document #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.presigned_url_config #=> Types::PresignedUrlConfig
    #   resp.data.presigned_url_config.role_arn #=> String
    #   resp.data.presigned_url_config.expires_in_sec #=> Integer
    #   resp.data.job_executions_rollout_config #=> Types::JobExecutionsRolloutConfig
    #   resp.data.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.data.job_executions_rollout_config.exponential_rate #=> Types::ExponentialRolloutRate
    #   resp.data.job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.data.job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.data.job_executions_rollout_config.exponential_rate.rate_increase_criteria #=> Types::RateIncreaseCriteria
    #   resp.data.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.data.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.data.abort_config #=> Types::AbortConfig
    #   resp.data.abort_config.criteria_list #=> Array<AbortCriteria>
    #   resp.data.abort_config.criteria_list[0] #=> Types::AbortCriteria
    #   resp.data.abort_config.criteria_list[0].failure_type #=> String, one of ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #   resp.data.abort_config.criteria_list[0].action #=> String, one of ["CANCEL"]
    #   resp.data.abort_config.criteria_list[0].threshold_percentage #=> Float
    #   resp.data.abort_config.criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.data.timeout_config #=> Types::TimeoutConfig
    #   resp.data.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.data.job_executions_retry_config #=> Types::JobExecutionsRetryConfig
    #   resp.data.job_executions_retry_config.criteria_list #=> Array<RetryCriteria>
    #   resp.data.job_executions_retry_config.criteria_list[0] #=> Types::RetryCriteria
    #   resp.data.job_executions_retry_config.criteria_list[0].failure_type #=> String, one of ["FAILED", "TIMED_OUT", "ALL"]
    #   resp.data.job_executions_retry_config.criteria_list[0].number_of_retries #=> Integer
    #
    def describe_job_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeJobTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobTemplate,
        stubs: @stubs,
        params_class: Params::DescribeJobTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>View details of a managed job template.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeManagedJobTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The unique name of a managed job template, which is required.</p>
    #
    # @option params [String] :template_version
    #   <p>An optional parameter to specify version of a managed template. If not specified, the
    #               pre-defined default version is returned.</p>
    #
    # @return [Types::DescribeManagedJobTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_job_template(
    #     template_name: 'templateName', # required
    #     template_version: 'templateVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeManagedJobTemplateOutput
    #   resp.data.template_name #=> String
    #   resp.data.template_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.template_version #=> String
    #   resp.data.environments #=> Array<String>
    #   resp.data.environments[0] #=> String
    #   resp.data.document_parameters #=> Array<DocumentParameter>
    #   resp.data.document_parameters[0] #=> Types::DocumentParameter
    #   resp.data.document_parameters[0].key #=> String
    #   resp.data.document_parameters[0].description #=> String
    #   resp.data.document_parameters[0].regex #=> String
    #   resp.data.document_parameters[0].example #=> String
    #   resp.data.document_parameters[0].optional #=> Boolean
    #   resp.data.document #=> String
    #
    def describe_managed_job_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeManagedJobTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeManagedJobTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeManagedJobTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeManagedJobTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeManagedJobTemplate,
        stubs: @stubs,
        params_class: Params::DescribeManagedJobTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_managed_job_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a mitigation action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeMitigationAction</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMitigationActionInput}.
    #
    # @option params [String] :action_name
    #   <p>The friendly name that uniquely identifies the mitigation action.</p>
    #
    # @return [Types::DescribeMitigationActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mitigation_action(
    #     action_name: 'actionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMitigationActionOutput
    #   resp.data.action_name #=> String
    #   resp.data.action_type #=> String, one of ["UPDATE_DEVICE_CERTIFICATE", "UPDATE_CA_CERTIFICATE", "ADD_THINGS_TO_THING_GROUP", "REPLACE_DEFAULT_POLICY_VERSION", "ENABLE_IOT_LOGGING", "PUBLISH_FINDING_TO_SNS"]
    #   resp.data.action_arn #=> String
    #   resp.data.action_id #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.action_params #=> Types::MitigationActionParams
    #   resp.data.action_params.update_device_certificate_params #=> Types::UpdateDeviceCertificateParams
    #   resp.data.action_params.update_device_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.action_params.update_ca_certificate_params #=> Types::UpdateCACertificateParams
    #   resp.data.action_params.update_ca_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.action_params.add_things_to_thing_group_params #=> Types::AddThingsToThingGroupParams
    #   resp.data.action_params.add_things_to_thing_group_params.thing_group_names #=> Array<String>
    #   resp.data.action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.data.action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.data.action_params.replace_default_policy_version_params #=> Types::ReplaceDefaultPolicyVersionParams
    #   resp.data.action_params.replace_default_policy_version_params.template_name #=> String, one of ["BLANK_POLICY"]
    #   resp.data.action_params.enable_io_t_logging_params #=> Types::EnableIoTLoggingParams
    #   resp.data.action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.data.action_params.enable_io_t_logging_params.log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   resp.data.action_params.publish_finding_to_sns_params #=> Types::PublishFindingToSnsParams
    #   resp.data.action_params.publish_finding_to_sns_params.topic_arn #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def describe_mitigation_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMitigationActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMitigationActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMitigationAction
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeMitigationAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMitigationAction,
        stubs: @stubs,
        params_class: Params::DescribeMitigationActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_mitigation_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a fleet provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeProvisioningTemplate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProvisioningTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provisioning template.</p>
    #
    # @return [Types::DescribeProvisioningTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_template(
    #     template_name: 'templateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProvisioningTemplateOutput
    #   resp.data.template_arn #=> String
    #   resp.data.template_name #=> String
    #   resp.data.description #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #   resp.data.default_version_id #=> Integer
    #   resp.data.template_body #=> String
    #   resp.data.enabled #=> Boolean
    #   resp.data.provisioning_role_arn #=> String
    #   resp.data.pre_provisioning_hook #=> Types::ProvisioningHook
    #   resp.data.pre_provisioning_hook.payload_version #=> String
    #   resp.data.pre_provisioning_hook.target_arn #=> String
    #
    def describe_provisioning_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProvisioningTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProvisioningTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProvisioningTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeProvisioningTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProvisioningTemplate,
        stubs: @stubs,
        params_class: Params::DescribeProvisioningTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_provisioning_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a fleet provisioning template version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeProvisioningTemplateVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProvisioningTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The template name.</p>
    #
    # @option params [Integer] :version_id
    #   <p>The fleet provisioning template version ID.</p>
    #
    # @return [Types::DescribeProvisioningTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_template_version(
    #     template_name: 'templateName', # required
    #     version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProvisioningTemplateVersionOutput
    #   resp.data.version_id #=> Integer
    #   resp.data.creation_date #=> Time
    #   resp.data.template_body #=> String
    #   resp.data.is_default_version #=> Boolean
    #
    def describe_provisioning_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProvisioningTemplateVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProvisioningTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProvisioningTemplateVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeProvisioningTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProvisioningTemplateVersion,
        stubs: @stubs,
        params_class: Params::DescribeProvisioningTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_provisioning_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a role alias.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeRoleAlias</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRoleAliasInput}.
    #
    # @option params [String] :role_alias
    #   <p>The role alias to describe.</p>
    #
    # @return [Types::DescribeRoleAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_role_alias(
    #     role_alias: 'roleAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRoleAliasOutput
    #   resp.data.role_alias_description #=> Types::RoleAliasDescription
    #   resp.data.role_alias_description.role_alias #=> String
    #   resp.data.role_alias_description.role_alias_arn #=> String
    #   resp.data.role_alias_description.role_arn #=> String
    #   resp.data.role_alias_description.owner #=> String
    #   resp.data.role_alias_description.credential_duration_seconds #=> Integer
    #   resp.data.role_alias_description.creation_date #=> Time
    #   resp.data.role_alias_description.last_modified_date #=> Time
    #
    def describe_role_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRoleAliasInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRoleAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRoleAlias
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeRoleAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRoleAlias,
        stubs: @stubs,
        params_class: Params::DescribeRoleAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_role_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a scheduled audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeScheduledAudit</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScheduledAuditInput}.
    #
    # @option params [String] :scheduled_audit_name
    #   <p>The name of the scheduled audit whose information you want to get.</p>
    #
    # @return [Types::DescribeScheduledAuditOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_audit(
    #     scheduled_audit_name: 'scheduledAuditName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScheduledAuditOutput
    #   resp.data.frequency #=> String, one of ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"]
    #   resp.data.day_of_month #=> String
    #   resp.data.day_of_week #=> String, one of ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    #   resp.data.target_check_names #=> Array<String>
    #   resp.data.target_check_names[0] #=> String
    #   resp.data.scheduled_audit_name #=> String
    #   resp.data.scheduled_audit_arn #=> String
    #
    def describe_scheduled_audit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScheduledAuditInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScheduledAuditInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScheduledAudit
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeScheduledAudit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScheduledAudit,
        stubs: @stubs,
        params_class: Params::DescribeScheduledAuditOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scheduled_audit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile
    #         whose information you want to get.</p>
    #
    # @return [Types::DescribeSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_profile(
    #     security_profile_name: 'securityProfileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSecurityProfileOutput
    #   resp.data.security_profile_name #=> String
    #   resp.data.security_profile_arn #=> String
    #   resp.data.security_profile_description #=> String
    #   resp.data.behaviors #=> Array<Behavior>
    #   resp.data.behaviors[0] #=> Types::Behavior
    #   resp.data.behaviors[0].name #=> String
    #   resp.data.behaviors[0].metric #=> String
    #   resp.data.behaviors[0].metric_dimension #=> Types::MetricDimension
    #   resp.data.behaviors[0].metric_dimension.dimension_name #=> String
    #   resp.data.behaviors[0].metric_dimension.operator #=> String, one of ["IN", "NOT_IN"]
    #   resp.data.behaviors[0].criteria #=> Types::BehaviorCriteria
    #   resp.data.behaviors[0].criteria.comparison_operator #=> String, one of ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #   resp.data.behaviors[0].criteria.value #=> Types::MetricValue
    #   resp.data.behaviors[0].criteria.value.count #=> Integer
    #   resp.data.behaviors[0].criteria.value.cidrs #=> Array<String>
    #   resp.data.behaviors[0].criteria.value.cidrs[0] #=> String
    #   resp.data.behaviors[0].criteria.value.ports #=> Array<Integer>
    #   resp.data.behaviors[0].criteria.value.ports[0] #=> Integer
    #   resp.data.behaviors[0].criteria.value.number #=> Float
    #   resp.data.behaviors[0].criteria.value.numbers #=> Array<Float>
    #   resp.data.behaviors[0].criteria.value.numbers[0] #=> Float
    #   resp.data.behaviors[0].criteria.value.strings #=> Array<String>
    #   resp.data.behaviors[0].criteria.value.strings[0] #=> String
    #   resp.data.behaviors[0].criteria.duration_seconds #=> Integer
    #   resp.data.behaviors[0].criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.data.behaviors[0].criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.data.behaviors[0].criteria.statistical_threshold #=> Types::StatisticalThreshold
    #   resp.data.behaviors[0].criteria.statistical_threshold.statistic #=> String
    #   resp.data.behaviors[0].criteria.ml_detection_config #=> Types::MachineLearningDetectionConfig
    #   resp.data.behaviors[0].criteria.ml_detection_config.confidence_level #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.behaviors[0].suppress_alerts #=> Boolean
    #   resp.data.alert_targets #=> Hash<String, AlertTarget>
    #   resp.data.alert_targets['key'] #=> Types::AlertTarget
    #   resp.data.alert_targets['key'].alert_target_arn #=> String
    #   resp.data.alert_targets['key'].role_arn #=> String
    #   resp.data.additional_metrics_to_retain #=> Array<String>
    #   resp.data.additional_metrics_to_retain[0] #=> String
    #   resp.data.additional_metrics_to_retain_v2 #=> Array<MetricToRetain>
    #   resp.data.additional_metrics_to_retain_v2[0] #=> Types::MetricToRetain
    #   resp.data.additional_metrics_to_retain_v2[0].metric #=> String
    #   resp.data.additional_metrics_to_retain_v2[0].metric_dimension #=> Types::MetricDimension
    #   resp.data.version #=> Integer
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def describe_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSecurityProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSecurityProfile,
        stubs: @stubs,
        params_class: Params::DescribeSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a stream.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeStream</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamInput}.
    #
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    #
    # @return [Types::DescribeStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream(
    #     stream_id: 'streamId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamOutput
    #   resp.data.stream_info #=> Types::StreamInfo
    #   resp.data.stream_info.stream_id #=> String
    #   resp.data.stream_info.stream_arn #=> String
    #   resp.data.stream_info.stream_version #=> Integer
    #   resp.data.stream_info.description #=> String
    #   resp.data.stream_info.files #=> Array<StreamFile>
    #   resp.data.stream_info.files[0] #=> Types::StreamFile
    #   resp.data.stream_info.files[0].file_id #=> Integer
    #   resp.data.stream_info.files[0].s3_location #=> Types::S3Location
    #   resp.data.stream_info.files[0].s3_location.bucket #=> String
    #   resp.data.stream_info.files[0].s3_location.key #=> String
    #   resp.data.stream_info.files[0].s3_location.version #=> String
    #   resp.data.stream_info.created_at #=> Time
    #   resp.data.stream_info.last_updated_at #=> Time
    #   resp.data.stream_info.role_arn #=> String
    #
    def describe_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStream
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStream,
        stubs: @stubs,
        params_class: Params::DescribeStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified thing.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @return [Types::DescribeThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing(
    #     thing_name: 'thingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThingOutput
    #   resp.data.default_client_id #=> String
    #   resp.data.thing_name #=> String
    #   resp.data.thing_id #=> String
    #   resp.data.thing_arn #=> String
    #   resp.data.thing_type_name #=> String
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #   resp.data.version #=> Integer
    #   resp.data.billing_group_name #=> String
    #
    def describe_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThing
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThing,
        stubs: @stubs,
        params_class: Params::DescribeThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe a thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The name of the thing group.</p>
    #
    # @return [Types::DescribeThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_group(
    #     thing_group_name: 'thingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThingGroupOutput
    #   resp.data.thing_group_name #=> String
    #   resp.data.thing_group_id #=> String
    #   resp.data.thing_group_arn #=> String
    #   resp.data.version #=> Integer
    #   resp.data.thing_group_properties #=> Types::ThingGroupProperties
    #   resp.data.thing_group_properties.thing_group_description #=> String
    #   resp.data.thing_group_properties.attribute_payload #=> Types::AttributePayload
    #   resp.data.thing_group_properties.attribute_payload.attributes #=> Hash<String, String>
    #   resp.data.thing_group_properties.attribute_payload.attributes['key'] #=> String
    #   resp.data.thing_group_properties.attribute_payload.merge #=> Boolean
    #   resp.data.thing_group_metadata #=> Types::ThingGroupMetadata
    #   resp.data.thing_group_metadata.parent_group_name #=> String
    #   resp.data.thing_group_metadata.root_to_parent_thing_groups #=> Array<GroupNameAndArn>
    #   resp.data.thing_group_metadata.root_to_parent_thing_groups[0] #=> Types::GroupNameAndArn
    #   resp.data.thing_group_metadata.root_to_parent_thing_groups[0].group_name #=> String
    #   resp.data.thing_group_metadata.root_to_parent_thing_groups[0].group_arn #=> String
    #   resp.data.thing_group_metadata.creation_date #=> Time
    #   resp.data.index_name #=> String
    #   resp.data.query_string #=> String
    #   resp.data.query_version #=> String
    #   resp.data.status #=> String, one of ["ACTIVE", "BUILDING", "REBUILDING"]
    #
    def describe_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThingGroup,
        stubs: @stubs,
        params_class: Params::DescribeThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a bulk thing provisioning task.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThingRegistrationTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThingRegistrationTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The task ID.</p>
    #
    # @return [Types::DescribeThingRegistrationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_registration_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThingRegistrationTaskOutput
    #   resp.data.task_id #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #   resp.data.template_body #=> String
    #   resp.data.input_file_bucket #=> String
    #   resp.data.input_file_key #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.status #=> String, one of ["InProgress", "Completed", "Failed", "Cancelled", "Cancelling"]
    #   resp.data.message #=> String
    #   resp.data.success_count #=> Integer
    #   resp.data.failure_count #=> Integer
    #   resp.data.percentage_progress #=> Integer
    #
    def describe_thing_registration_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThingRegistrationTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThingRegistrationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThingRegistrationTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeThingRegistrationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThingRegistrationTask,
        stubs: @stubs,
        params_class: Params::DescribeThingRegistrationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_thing_registration_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified thing type.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThingType</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThingTypeInput}.
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    #
    # @return [Types::DescribeThingTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_type(
    #     thing_type_name: 'thingTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThingTypeOutput
    #   resp.data.thing_type_name #=> String
    #   resp.data.thing_type_id #=> String
    #   resp.data.thing_type_arn #=> String
    #   resp.data.thing_type_properties #=> Types::ThingTypeProperties
    #   resp.data.thing_type_properties.thing_type_description #=> String
    #   resp.data.thing_type_properties.searchable_attributes #=> Array<String>
    #   resp.data.thing_type_properties.searchable_attributes[0] #=> String
    #   resp.data.thing_type_metadata #=> Types::ThingTypeMetadata
    #   resp.data.thing_type_metadata.deprecated #=> Boolean
    #   resp.data.thing_type_metadata.deprecation_date #=> Time
    #   resp.data.thing_type_metadata.creation_date #=> Time
    #
    def describe_thing_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThingTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThingTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThingType
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeThingType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThingType,
        stubs: @stubs,
        params_class: Params::DescribeThingTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_thing_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a policy from the specified target.</p>
    #          <note>
    #             <p>Because of the distributed nature of Amazon Web Services, it can take up to five minutes after
    #          a policy is detached before it's ready to be deleted.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachPolicy</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy to detach.</p>
    #
    # @option params [String] :target
    #   <p>The target from which the policy will be detached.</p>
    #
    # @return [Types::DetachPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy(
    #     policy_name: 'policyName', # required
    #     target: 'target' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachPolicyOutput
    #
    def detach_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DetachPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachPolicy,
        stubs: @stubs,
        params_class: Params::DetachPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified policy from the specified certificate.</p>
    #          <note>
    #             <p>This action is deprecated. Please use <a>DetachPolicy</a> instead.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachPrincipalPolicy</a> action.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DetachPrincipalPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy to detach.</p>
    #
    # @option params [String] :principal
    #   <p>The principal.</p>
    #            <p>Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #
    # @return [Types::DetachPrincipalPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_principal_policy(
    #     policy_name: 'policyName', # required
    #     principal: 'principal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachPrincipalPolicyOutput
    #
    def detach_principal_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachPrincipalPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachPrincipalPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachPrincipalPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DetachPrincipalPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachPrincipalPolicy,
        stubs: @stubs,
        params_class: Params::DetachPrincipalPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_principal_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a Device Defender security profile from a thing group or from this account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The security profile that is detached.</p>
    #
    # @option params [String] :security_profile_target_arn
    #   <p>The ARN of the thing group from which the security profile is detached.</p>
    #
    # @return [Types::DetachSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_security_profile(
    #     security_profile_name: 'securityProfileName', # required
    #     security_profile_target_arn: 'securityProfileTargetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachSecurityProfileOutput
    #
    def detach_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachSecurityProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DetachSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachSecurityProfile,
        stubs: @stubs,
        params_class: Params::DetachSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches the specified principal from the specified thing. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities.</p>
    # 		       <note>
    # 			         <p>This call is asynchronous. It might take several seconds for the detachment to
    # 				propagate.</p>
    # 		       </note>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachThingPrincipal</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachThingPrincipalInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @option params [String] :principal
    #   <p>If the principal is a certificate, this value must be ARN of the certificate. If
    #   			the principal is an Amazon Cognito identity, this value must be the ID of the Amazon
    #   			Cognito identity.</p>
    #
    # @return [Types::DetachThingPrincipalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_thing_principal(
    #     thing_name: 'thingName', # required
    #     principal: 'principal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachThingPrincipalOutput
    #
    def detach_thing_principal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachThingPrincipalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachThingPrincipalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachThingPrincipal
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DetachThingPrincipal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachThingPrincipal,
        stubs: @stubs,
        params_class: Params::DetachThingPrincipalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_thing_principal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DisableTopicRule</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableTopicRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule to disable.</p>
    #
    # @return [Types::DisableTopicRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_topic_rule(
    #     rule_name: 'ruleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableTopicRuleOutput
    #
    def disable_topic_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableTopicRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableTopicRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableTopicRule
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::DisableTopicRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableTopicRule,
        stubs: @stubs,
        params_class: Params::DisableTopicRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_topic_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">EnableTopicRule</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableTopicRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the topic rule to enable.</p>
    #
    # @return [Types::EnableTopicRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_topic_rule(
    #     rule_name: 'ruleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableTopicRuleOutput
    #
    def enable_topic_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableTopicRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableTopicRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableTopicRule
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::EnableTopicRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableTopicRule,
        stubs: @stubs,
        params_class: Params::EnableTopicRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_topic_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns a Device Defender's ML Detect Security Profile training model's status.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetBehaviorModelTrainingSummaries</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBehaviorModelTrainingSummariesInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>
    #         The name of the security profile.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #
    # @return [Types::GetBehaviorModelTrainingSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_behavior_model_training_summaries(
    #     security_profile_name: 'securityProfileName',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBehaviorModelTrainingSummariesOutput
    #   resp.data.summaries #=> Array<BehaviorModelTrainingSummary>
    #   resp.data.summaries[0] #=> Types::BehaviorModelTrainingSummary
    #   resp.data.summaries[0].security_profile_name #=> String
    #   resp.data.summaries[0].behavior_name #=> String
    #   resp.data.summaries[0].training_data_collection_start_date #=> Time
    #   resp.data.summaries[0].model_status #=> String, one of ["PENDING_BUILD", "ACTIVE", "EXPIRED"]
    #   resp.data.summaries[0].datapoints_collection_percentage #=> Float
    #   resp.data.summaries[0].last_model_refresh_date #=> Time
    #   resp.data.next_token #=> String
    #
    def get_behavior_model_training_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBehaviorModelTrainingSummariesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBehaviorModelTrainingSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBehaviorModelTrainingSummaries
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetBehaviorModelTrainingSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBehaviorModelTrainingSummaries,
        stubs: @stubs,
        params_class: Params::GetBehaviorModelTrainingSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_behavior_model_training_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Aggregates on indexed data with search queries pertaining to particular fields. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetBucketsAggregation</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBucketsAggregationInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    #
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    #
    # @option params [String] :aggregation_field
    #   <p>The aggregation field.</p>
    #
    # @option params [String] :query_version
    #   <p>The version of the query.</p>
    #
    # @option params [BucketsAggregationType] :buckets_aggregation_type
    #   <p>The basic control of the response shape and the bucket aggregation type to perform. </p>
    #
    # @return [Types::GetBucketsAggregationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_buckets_aggregation(
    #     index_name: 'indexName',
    #     query_string: 'queryString', # required
    #     aggregation_field: 'aggregationField', # required
    #     query_version: 'queryVersion',
    #     buckets_aggregation_type: {
    #       terms_aggregation: {
    #         max_buckets: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketsAggregationOutput
    #   resp.data.total_count #=> Integer
    #   resp.data.buckets #=> Array<Bucket>
    #   resp.data.buckets[0] #=> Types::Bucket
    #   resp.data.buckets[0].key_value #=> String
    #   resp.data.buckets[0].count #=> Integer
    #
    def get_buckets_aggregation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketsAggregationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketsAggregationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketsAggregation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidAggregationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetBucketsAggregation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBucketsAggregation,
        stubs: @stubs,
        params_class: Params::GetBucketsAggregationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_buckets_aggregation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the approximate count of unique values that match the query.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetCardinality</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCardinalityInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    #
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    #
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    #
    # @option params [String] :query_version
    #   <p>The query version.</p>
    #
    # @return [Types::GetCardinalityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cardinality(
    #     index_name: 'indexName',
    #     query_string: 'queryString', # required
    #     aggregation_field: 'aggregationField',
    #     query_version: 'queryVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCardinalityOutput
    #   resp.data.cardinality #=> Integer
    #
    def get_cardinality(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCardinalityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCardinalityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCardinality
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidAggregationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetCardinality
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCardinality,
        stubs: @stubs,
        params_class: Params::GetCardinalityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cardinality
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the policies that have an effect on the authorization behavior of the
    #          specified device when it connects to the IoT device gateway.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetEffectivePolicies</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEffectivePoliciesInput}.
    #
    # @option params [String] :principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #
    # @option params [String] :cognito_identity_pool_id
    #   <p>The Cognito identity pool ID.</p>
    #
    # @option params [String] :thing_name
    #   <p>The thing name.</p>
    #
    # @return [Types::GetEffectivePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_policies(
    #     principal: 'principal',
    #     cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #     thing_name: 'thingName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEffectivePoliciesOutput
    #   resp.data.effective_policies #=> Array<EffectivePolicy>
    #   resp.data.effective_policies[0] #=> Types::EffectivePolicy
    #   resp.data.effective_policies[0].policy_name #=> String
    #   resp.data.effective_policies[0].policy_arn #=> String
    #   resp.data.effective_policies[0].policy_document #=> String
    #
    def get_effective_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEffectivePoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEffectivePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEffectivePolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetEffectivePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEffectivePolicies,
        stubs: @stubs,
        params_class: Params::GetEffectivePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_effective_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the indexing configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetIndexingConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIndexingConfigurationInput}.
    #
    # @return [Types::GetIndexingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_indexing_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIndexingConfigurationOutput
    #   resp.data.thing_indexing_configuration #=> Types::ThingIndexingConfiguration
    #   resp.data.thing_indexing_configuration.thing_indexing_mode #=> String, one of ["OFF", "REGISTRY", "REGISTRY_AND_SHADOW"]
    #   resp.data.thing_indexing_configuration.thing_connectivity_indexing_mode #=> String, one of ["OFF", "STATUS"]
    #   resp.data.thing_indexing_configuration.device_defender_indexing_mode #=> String, one of ["OFF", "VIOLATIONS"]
    #   resp.data.thing_indexing_configuration.named_shadow_indexing_mode #=> String, one of ["OFF", "ON"]
    #   resp.data.thing_indexing_configuration.managed_fields #=> Array<Field>
    #   resp.data.thing_indexing_configuration.managed_fields[0] #=> Types::Field
    #   resp.data.thing_indexing_configuration.managed_fields[0].name #=> String
    #   resp.data.thing_indexing_configuration.managed_fields[0].type #=> String, one of ["Number", "String", "Boolean"]
    #   resp.data.thing_indexing_configuration.custom_fields #=> Array<Field>
    #   resp.data.thing_group_indexing_configuration #=> Types::ThingGroupIndexingConfiguration
    #   resp.data.thing_group_indexing_configuration.thing_group_indexing_mode #=> String, one of ["OFF", "ON"]
    #   resp.data.thing_group_indexing_configuration.managed_fields #=> Array<Field>
    #   resp.data.thing_group_indexing_configuration.custom_fields #=> Array<Field>
    #
    def get_indexing_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIndexingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIndexingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIndexingConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetIndexingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIndexingConfiguration,
        stubs: @stubs,
        params_class: Params::GetIndexingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_indexing_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a job document.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetJobDocument</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobDocumentInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @return [Types::GetJobDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_document(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobDocumentOutput
    #   resp.data.document #=> String
    #
    def get_job_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobDocumentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobDocument
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetJobDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobDocument,
        stubs: @stubs,
        params_class: Params::GetJobDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the logging options.</p>
    #          <p>NOTE: use of this command is not recommended. Use <code>GetV2LoggingOptions</code>
    #          instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetLoggingOptions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLoggingOptionsInput}.
    #
    # @return [Types::GetLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logging_options()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLoggingOptionsOutput
    #   resp.data.role_arn #=> String
    #   resp.data.log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #
    def get_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLoggingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLoggingOptions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException]),
        data_parser: Parsers::GetLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLoggingOptions,
        stubs: @stubs,
        params_class: Params::GetLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an OTA update.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetOTAUpdate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOTAUpdateInput}.
    #
    # @option params [String] :ota_update_id
    #   <p>The OTA update ID.</p>
    #
    # @return [Types::GetOTAUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ota_update(
    #     ota_update_id: 'otaUpdateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOTAUpdateOutput
    #   resp.data.ota_update_info #=> Types::OTAUpdateInfo
    #   resp.data.ota_update_info.ota_update_id #=> String
    #   resp.data.ota_update_info.ota_update_arn #=> String
    #   resp.data.ota_update_info.creation_date #=> Time
    #   resp.data.ota_update_info.last_modified_date #=> Time
    #   resp.data.ota_update_info.description #=> String
    #   resp.data.ota_update_info.targets #=> Array<String>
    #   resp.data.ota_update_info.targets[0] #=> String
    #   resp.data.ota_update_info.protocols #=> Array<String>
    #   resp.data.ota_update_info.protocols[0] #=> String, one of ["MQTT", "HTTP"]
    #   resp.data.ota_update_info.aws_job_executions_rollout_config #=> Types::AwsJobExecutionsRolloutConfig
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.exponential_rate #=> Types::AwsJobExponentialRolloutRate
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.exponential_rate.rate_increase_criteria #=> Types::AwsJobRateIncreaseCriteria
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.data.ota_update_info.aws_job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.data.ota_update_info.aws_job_presigned_url_config #=> Types::AwsJobPresignedUrlConfig
    #   resp.data.ota_update_info.aws_job_presigned_url_config.expires_in_sec #=> Integer
    #   resp.data.ota_update_info.target_selection #=> String, one of ["CONTINUOUS", "SNAPSHOT"]
    #   resp.data.ota_update_info.ota_update_files #=> Array<OTAUpdateFile>
    #   resp.data.ota_update_info.ota_update_files[0] #=> Types::OTAUpdateFile
    #   resp.data.ota_update_info.ota_update_files[0].file_name #=> String
    #   resp.data.ota_update_info.ota_update_files[0].file_type #=> Integer
    #   resp.data.ota_update_info.ota_update_files[0].file_version #=> String
    #   resp.data.ota_update_info.ota_update_files[0].file_location #=> Types::FileLocation
    #   resp.data.ota_update_info.ota_update_files[0].file_location.stream #=> Types::Stream
    #   resp.data.ota_update_info.ota_update_files[0].file_location.stream.stream_id #=> String
    #   resp.data.ota_update_info.ota_update_files[0].file_location.stream.file_id #=> Integer
    #   resp.data.ota_update_info.ota_update_files[0].file_location.s3_location #=> Types::S3Location
    #   resp.data.ota_update_info.ota_update_files[0].file_location.s3_location.bucket #=> String
    #   resp.data.ota_update_info.ota_update_files[0].file_location.s3_location.key #=> String
    #   resp.data.ota_update_info.ota_update_files[0].file_location.s3_location.version #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing #=> Types::CodeSigning
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.aws_signer_job_id #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter #=> Types::StartSigningJobParameter
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter #=> Types::SigningProfileParameter
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter.certificate_arn #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter.platform #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter.certificate_path_on_device #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_name #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.destination #=> Types::Destination
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.destination.s3_destination #=> Types::S3Destination
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.destination.s3_destination.bucket #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.destination.s3_destination.prefix #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing #=> Types::CustomCodeSigning
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature #=> Types::CodeSigningSignature
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature.inline_document #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain #=> Types::CodeSigningCertificateChain
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.certificate_name #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.inline_document #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.hash_algorithm #=> String
    #   resp.data.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature_algorithm #=> String
    #   resp.data.ota_update_info.ota_update_files[0].attributes #=> Hash<String, String>
    #   resp.data.ota_update_info.ota_update_files[0].attributes['key'] #=> String
    #   resp.data.ota_update_info.ota_update_status #=> String, one of ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #   resp.data.ota_update_info.aws_iot_job_id #=> String
    #   resp.data.ota_update_info.aws_iot_job_arn #=> String
    #   resp.data.ota_update_info.error_info #=> Types::ErrorInfo
    #   resp.data.ota_update_info.error_info.code #=> String
    #   resp.data.ota_update_info.error_info.message #=> String
    #   resp.data.ota_update_info.additional_parameters #=> Hash<String, String>
    #   resp.data.ota_update_info.additional_parameters['key'] #=> String
    #
    def get_ota_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOTAUpdateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOTAUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOTAUpdate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetOTAUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOTAUpdate,
        stubs: @stubs,
        params_class: Params::GetOTAUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ota_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Groups the aggregated values that match the query into percentile groupings. The default
    #         percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own
    #         when you call <code>GetPercentiles</code>. This function returns a value for each
    #         percentile group specified (or the default percentile groupings). The percentile group
    #         "1" contains the aggregated field value that occurs in approximately one percent of the
    #         values that match the query. The percentile group "5" contains the aggregated field value
    #         that occurs in approximately five percent of the values that match the query, and so on.
    #         The result is an approximation, the more values that match the query, the more accurate
    #         the percentile values.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPercentiles</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPercentilesInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    #
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    #
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    #
    # @option params [String] :query_version
    #   <p>The query version.</p>
    #
    # @option params [Array<Float>] :percents
    #   <p>The percentile groups returned.</p>
    #
    # @return [Types::GetPercentilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_percentiles(
    #     index_name: 'indexName',
    #     query_string: 'queryString', # required
    #     aggregation_field: 'aggregationField',
    #     query_version: 'queryVersion',
    #     percents: [
    #       1.0
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPercentilesOutput
    #   resp.data.percentiles #=> Array<PercentPair>
    #   resp.data.percentiles[0] #=> Types::PercentPair
    #   resp.data.percentiles[0].percent #=> Float
    #   resp.data.percentiles[0].value #=> Float
    #
    def get_percentiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPercentilesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPercentilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPercentiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidAggregationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetPercentiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPercentiles,
        stubs: @stubs,
        params_class: Params::GetPercentilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_percentiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified policy with the policy document of the default
    #          version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPolicy</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    # @return [Types::GetPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy(
    #     policy_name: 'policyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyOutput
    #   resp.data.policy_name #=> String
    #   resp.data.policy_arn #=> String
    #   resp.data.policy_document #=> String
    #   resp.data.default_version_id #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #   resp.data.generation_id #=> String
    #
    def get_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicy,
        stubs: @stubs,
        params_class: Params::GetPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified policy version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPolicyVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyVersionInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    # @option params [String] :policy_version_id
    #   <p>The policy version ID.</p>
    #
    # @return [Types::GetPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_version(
    #     policy_name: 'policyName', # required
    #     policy_version_id: 'policyVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyVersionOutput
    #   resp.data.policy_arn #=> String
    #   resp.data.policy_name #=> String
    #   resp.data.policy_document #=> String
    #   resp.data.policy_version_id #=> String
    #   resp.data.is_default_version #=> Boolean
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #   resp.data.generation_id #=> String
    #
    def get_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicyVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicyVersion,
        stubs: @stubs,
        params_class: Params::GetPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a registration code used to register a CA certificate with IoT.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetRegistrationCode</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegistrationCodeInput}.
    #
    # @return [Types::GetRegistrationCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registration_code()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegistrationCodeOutput
    #   resp.data.registration_code #=> String
    #
    def get_registration_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRegistrationCodeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRegistrationCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRegistrationCode
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetRegistrationCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRegistrationCode,
        stubs: @stubs,
        params_class: Params::GetRegistrationCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_registration_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the count, average, sum, minimum, maximum, sum of squares, variance,
    #       and standard deviation for the specified aggregated field. If the aggregation field is of type
    #       <code>String</code>, only the count statistic is returned.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetStatistics</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStatisticsInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the index to search. The default value is <code>AWS_Things</code>.</p>
    #
    # @option params [String] :query_string
    #   <p>The query used to search. You can specify "*" for the query string to get the count of all
    #         indexed things in your Amazon Web Services account.</p>
    #
    # @option params [String] :aggregation_field
    #   <p>The aggregation field name.</p>
    #
    # @option params [String] :query_version
    #   <p>The version of the query used to search.</p>
    #
    # @return [Types::GetStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statistics(
    #     index_name: 'indexName',
    #     query_string: 'queryString', # required
    #     aggregation_field: 'aggregationField',
    #     query_version: 'queryVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStatisticsOutput
    #   resp.data.statistics #=> Types::Statistics
    #   resp.data.statistics.count #=> Integer
    #   resp.data.statistics.average #=> Float
    #   resp.data.statistics.sum #=> Float
    #   resp.data.statistics.minimum #=> Float
    #   resp.data.statistics.maximum #=> Float
    #   resp.data.statistics.sum_of_squares #=> Float
    #   resp.data.statistics.variance #=> Float
    #   resp.data.statistics.std_deviation #=> Float
    #
    def get_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStatisticsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidAggregationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStatistics,
        stubs: @stubs,
        params_class: Params::GetStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetTopicRule</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTopicRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    #
    # @return [Types::GetTopicRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_topic_rule(
    #     rule_name: 'ruleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTopicRuleOutput
    #   resp.data.rule_arn #=> String
    #   resp.data.rule #=> Types::TopicRule
    #   resp.data.rule.rule_name #=> String
    #   resp.data.rule.sql #=> String
    #   resp.data.rule.description #=> String
    #   resp.data.rule.created_at #=> Time
    #   resp.data.rule.actions #=> Array<Action>
    #   resp.data.rule.actions[0] #=> Types::Action
    #   resp.data.rule.actions[0].dynamo_db #=> Types::DynamoDBAction
    #   resp.data.rule.actions[0].dynamo_db.table_name #=> String
    #   resp.data.rule.actions[0].dynamo_db.role_arn #=> String
    #   resp.data.rule.actions[0].dynamo_db.operation #=> String
    #   resp.data.rule.actions[0].dynamo_db.hash_key_field #=> String
    #   resp.data.rule.actions[0].dynamo_db.hash_key_value #=> String
    #   resp.data.rule.actions[0].dynamo_db.hash_key_type #=> String, one of ["STRING", "NUMBER"]
    #   resp.data.rule.actions[0].dynamo_db.range_key_field #=> String
    #   resp.data.rule.actions[0].dynamo_db.range_key_value #=> String
    #   resp.data.rule.actions[0].dynamo_db.range_key_type #=> String, one of ["STRING", "NUMBER"]
    #   resp.data.rule.actions[0].dynamo_db.payload_field #=> String
    #   resp.data.rule.actions[0].dynamo_d_bv2 #=> Types::DynamoDBv2Action
    #   resp.data.rule.actions[0].dynamo_d_bv2.role_arn #=> String
    #   resp.data.rule.actions[0].dynamo_d_bv2.put_item #=> Types::PutItemInput
    #   resp.data.rule.actions[0].dynamo_d_bv2.put_item.table_name #=> String
    #   resp.data.rule.actions[0].lambda #=> Types::LambdaAction
    #   resp.data.rule.actions[0].lambda.function_arn #=> String
    #   resp.data.rule.actions[0].sns #=> Types::SnsAction
    #   resp.data.rule.actions[0].sns.target_arn #=> String
    #   resp.data.rule.actions[0].sns.role_arn #=> String
    #   resp.data.rule.actions[0].sns.message_format #=> String, one of ["RAW", "JSON"]
    #   resp.data.rule.actions[0].sqs #=> Types::SqsAction
    #   resp.data.rule.actions[0].sqs.role_arn #=> String
    #   resp.data.rule.actions[0].sqs.queue_url #=> String
    #   resp.data.rule.actions[0].sqs.use_base64 #=> Boolean
    #   resp.data.rule.actions[0].kinesis #=> Types::KinesisAction
    #   resp.data.rule.actions[0].kinesis.role_arn #=> String
    #   resp.data.rule.actions[0].kinesis.stream_name #=> String
    #   resp.data.rule.actions[0].kinesis.partition_key #=> String
    #   resp.data.rule.actions[0].republish #=> Types::RepublishAction
    #   resp.data.rule.actions[0].republish.role_arn #=> String
    #   resp.data.rule.actions[0].republish.topic #=> String
    #   resp.data.rule.actions[0].republish.qos #=> Integer
    #   resp.data.rule.actions[0].s3 #=> Types::S3Action
    #   resp.data.rule.actions[0].s3.role_arn #=> String
    #   resp.data.rule.actions[0].s3.bucket_name #=> String
    #   resp.data.rule.actions[0].s3.key #=> String
    #   resp.data.rule.actions[0].s3.canned_acl #=> String, one of ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #   resp.data.rule.actions[0].firehose #=> Types::FirehoseAction
    #   resp.data.rule.actions[0].firehose.role_arn #=> String
    #   resp.data.rule.actions[0].firehose.delivery_stream_name #=> String
    #   resp.data.rule.actions[0].firehose.separator #=> String
    #   resp.data.rule.actions[0].firehose.batch_mode #=> Boolean
    #   resp.data.rule.actions[0].cloudwatch_metric #=> Types::CloudwatchMetricAction
    #   resp.data.rule.actions[0].cloudwatch_metric.role_arn #=> String
    #   resp.data.rule.actions[0].cloudwatch_metric.metric_namespace #=> String
    #   resp.data.rule.actions[0].cloudwatch_metric.metric_name #=> String
    #   resp.data.rule.actions[0].cloudwatch_metric.metric_value #=> String
    #   resp.data.rule.actions[0].cloudwatch_metric.metric_unit #=> String
    #   resp.data.rule.actions[0].cloudwatch_metric.metric_timestamp #=> String
    #   resp.data.rule.actions[0].cloudwatch_alarm #=> Types::CloudwatchAlarmAction
    #   resp.data.rule.actions[0].cloudwatch_alarm.role_arn #=> String
    #   resp.data.rule.actions[0].cloudwatch_alarm.alarm_name #=> String
    #   resp.data.rule.actions[0].cloudwatch_alarm.state_reason #=> String
    #   resp.data.rule.actions[0].cloudwatch_alarm.state_value #=> String
    #   resp.data.rule.actions[0].cloudwatch_logs #=> Types::CloudwatchLogsAction
    #   resp.data.rule.actions[0].cloudwatch_logs.role_arn #=> String
    #   resp.data.rule.actions[0].cloudwatch_logs.log_group_name #=> String
    #   resp.data.rule.actions[0].elasticsearch #=> Types::ElasticsearchAction
    #   resp.data.rule.actions[0].elasticsearch.role_arn #=> String
    #   resp.data.rule.actions[0].elasticsearch.endpoint #=> String
    #   resp.data.rule.actions[0].elasticsearch.index #=> String
    #   resp.data.rule.actions[0].elasticsearch.type #=> String
    #   resp.data.rule.actions[0].elasticsearch.id #=> String
    #   resp.data.rule.actions[0].salesforce #=> Types::SalesforceAction
    #   resp.data.rule.actions[0].salesforce.token #=> String
    #   resp.data.rule.actions[0].salesforce.url #=> String
    #   resp.data.rule.actions[0].iot_analytics #=> Types::IotAnalyticsAction
    #   resp.data.rule.actions[0].iot_analytics.channel_arn #=> String
    #   resp.data.rule.actions[0].iot_analytics.channel_name #=> String
    #   resp.data.rule.actions[0].iot_analytics.batch_mode #=> Boolean
    #   resp.data.rule.actions[0].iot_analytics.role_arn #=> String
    #   resp.data.rule.actions[0].iot_events #=> Types::IotEventsAction
    #   resp.data.rule.actions[0].iot_events.input_name #=> String
    #   resp.data.rule.actions[0].iot_events.message_id #=> String
    #   resp.data.rule.actions[0].iot_events.batch_mode #=> Boolean
    #   resp.data.rule.actions[0].iot_events.role_arn #=> String
    #   resp.data.rule.actions[0].iot_site_wise #=> Types::IotSiteWiseAction
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries #=> Array<PutAssetPropertyValueEntry>
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0] #=> Types::PutAssetPropertyValueEntry
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].entry_id #=> String
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].asset_id #=> String
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_id #=> String
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_alias #=> String
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values #=> Array<AssetPropertyValue>
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0] #=> Types::AssetPropertyValue
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].value #=> AssetPropertyVariant
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp #=> Types::AssetPropertyTimestamp
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp.time_in_seconds #=> String
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp.offset_in_nanos #=> String
    #   resp.data.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].quality #=> String
    #   resp.data.rule.actions[0].iot_site_wise.role_arn #=> String
    #   resp.data.rule.actions[0].step_functions #=> Types::StepFunctionsAction
    #   resp.data.rule.actions[0].step_functions.execution_name_prefix #=> String
    #   resp.data.rule.actions[0].step_functions.state_machine_name #=> String
    #   resp.data.rule.actions[0].step_functions.role_arn #=> String
    #   resp.data.rule.actions[0].timestream #=> Types::TimestreamAction
    #   resp.data.rule.actions[0].timestream.role_arn #=> String
    #   resp.data.rule.actions[0].timestream.database_name #=> String
    #   resp.data.rule.actions[0].timestream.table_name #=> String
    #   resp.data.rule.actions[0].timestream.dimensions #=> Array<TimestreamDimension>
    #   resp.data.rule.actions[0].timestream.dimensions[0] #=> Types::TimestreamDimension
    #   resp.data.rule.actions[0].timestream.dimensions[0].name #=> String
    #   resp.data.rule.actions[0].timestream.dimensions[0].value #=> String
    #   resp.data.rule.actions[0].timestream.timestamp #=> Types::TimestreamTimestamp
    #   resp.data.rule.actions[0].timestream.timestamp.value #=> String
    #   resp.data.rule.actions[0].timestream.timestamp.unit #=> String
    #   resp.data.rule.actions[0].http #=> Types::HttpAction
    #   resp.data.rule.actions[0].http.url #=> String
    #   resp.data.rule.actions[0].http.confirmation_url #=> String
    #   resp.data.rule.actions[0].http.headers #=> Array<HttpActionHeader>
    #   resp.data.rule.actions[0].http.headers[0] #=> Types::HttpActionHeader
    #   resp.data.rule.actions[0].http.headers[0].key #=> String
    #   resp.data.rule.actions[0].http.headers[0].value #=> String
    #   resp.data.rule.actions[0].http.auth #=> Types::HttpAuthorization
    #   resp.data.rule.actions[0].http.auth.sigv4 #=> Types::SigV4Authorization
    #   resp.data.rule.actions[0].http.auth.sigv4.signing_region #=> String
    #   resp.data.rule.actions[0].http.auth.sigv4.service_name #=> String
    #   resp.data.rule.actions[0].http.auth.sigv4.role_arn #=> String
    #   resp.data.rule.actions[0].kafka #=> Types::KafkaAction
    #   resp.data.rule.actions[0].kafka.destination_arn #=> String
    #   resp.data.rule.actions[0].kafka.topic #=> String
    #   resp.data.rule.actions[0].kafka.key #=> String
    #   resp.data.rule.actions[0].kafka.partition #=> String
    #   resp.data.rule.actions[0].kafka.client_properties #=> Hash<String, String>
    #   resp.data.rule.actions[0].kafka.client_properties['key'] #=> String
    #   resp.data.rule.actions[0].open_search #=> Types::OpenSearchAction
    #   resp.data.rule.actions[0].open_search.role_arn #=> String
    #   resp.data.rule.actions[0].open_search.endpoint #=> String
    #   resp.data.rule.actions[0].open_search.index #=> String
    #   resp.data.rule.actions[0].open_search.type #=> String
    #   resp.data.rule.actions[0].open_search.id #=> String
    #   resp.data.rule.rule_disabled #=> Boolean
    #   resp.data.rule.aws_iot_sql_version #=> String
    #   resp.data.rule.error_action #=> Types::Action
    #
    def get_topic_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTopicRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTopicRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTopicRule
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetTopicRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTopicRule,
        stubs: @stubs,
        params_class: Params::GetTopicRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_topic_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a topic rule destination.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetTopicRuleDestination</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTopicRuleDestinationInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the topic rule destination.</p>
    #
    # @return [Types::GetTopicRuleDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_topic_rule_destination(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTopicRuleDestinationOutput
    #   resp.data.topic_rule_destination #=> Types::TopicRuleDestination
    #   resp.data.topic_rule_destination.arn #=> String
    #   resp.data.topic_rule_destination.status #=> String, one of ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"]
    #   resp.data.topic_rule_destination.created_at #=> Time
    #   resp.data.topic_rule_destination.last_updated_at #=> Time
    #   resp.data.topic_rule_destination.status_reason #=> String
    #   resp.data.topic_rule_destination.http_url_properties #=> Types::HttpUrlDestinationProperties
    #   resp.data.topic_rule_destination.http_url_properties.confirmation_url #=> String
    #   resp.data.topic_rule_destination.vpc_properties #=> Types::VpcDestinationProperties
    #   resp.data.topic_rule_destination.vpc_properties.subnet_ids #=> Array<String>
    #   resp.data.topic_rule_destination.vpc_properties.subnet_ids[0] #=> String
    #   resp.data.topic_rule_destination.vpc_properties.security_groups #=> Array<String>
    #   resp.data.topic_rule_destination.vpc_properties.security_groups[0] #=> String
    #   resp.data.topic_rule_destination.vpc_properties.vpc_id #=> String
    #   resp.data.topic_rule_destination.vpc_properties.role_arn #=> String
    #
    def get_topic_rule_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTopicRuleDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTopicRuleDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTopicRuleDestination
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetTopicRuleDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTopicRuleDestination,
        stubs: @stubs,
        params_class: Params::GetTopicRuleDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_topic_rule_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the fine grained logging options.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetV2LoggingOptions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetV2LoggingOptionsInput}.
    #
    # @return [Types::GetV2LoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_v2_logging_options()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetV2LoggingOptionsOutput
    #   resp.data.role_arn #=> String
    #   resp.data.default_log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   resp.data.disable_all_logs #=> Boolean
    #
    def get_v2_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetV2LoggingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetV2LoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetV2LoggingOptions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::NotConfiguredException, Errors::InternalException]),
        data_parser: Parsers::GetV2LoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetV2LoggingOptions,
        stubs: @stubs,
        params_class: Params::GetV2LoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_v2_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the active violations for a given Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListActiveViolations</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListActiveViolationsInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing whose active violations are listed.</p>
    #
    # @option params [String] :security_profile_name
    #   <p>The name of the Device Defender security profile for which violations are listed.</p>
    #
    # @option params [String] :behavior_criteria_type
    #   <p>
    #         The criteria for a behavior.
    #       </p>
    #
    # @option params [Boolean] :list_suppressed_alerts
    #   <p>
    #         A list of all suppressed alerts.
    #       </p>
    #
    # @option params [String] :verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListActiveViolationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_active_violations(
    #     thing_name: 'thingName',
    #     security_profile_name: 'securityProfileName',
    #     behavior_criteria_type: 'STATIC', # accepts ["STATIC", "STATISTICAL", "MACHINE_LEARNING"]
    #     list_suppressed_alerts: false,
    #     verification_state: 'FALSE_POSITIVE', # accepts ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActiveViolationsOutput
    #   resp.data.active_violations #=> Array<ActiveViolation>
    #   resp.data.active_violations[0] #=> Types::ActiveViolation
    #   resp.data.active_violations[0].violation_id #=> String
    #   resp.data.active_violations[0].thing_name #=> String
    #   resp.data.active_violations[0].security_profile_name #=> String
    #   resp.data.active_violations[0].behavior #=> Types::Behavior
    #   resp.data.active_violations[0].behavior.name #=> String
    #   resp.data.active_violations[0].behavior.metric #=> String
    #   resp.data.active_violations[0].behavior.metric_dimension #=> Types::MetricDimension
    #   resp.data.active_violations[0].behavior.metric_dimension.dimension_name #=> String
    #   resp.data.active_violations[0].behavior.metric_dimension.operator #=> String, one of ["IN", "NOT_IN"]
    #   resp.data.active_violations[0].behavior.criteria #=> Types::BehaviorCriteria
    #   resp.data.active_violations[0].behavior.criteria.comparison_operator #=> String, one of ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #   resp.data.active_violations[0].behavior.criteria.value #=> Types::MetricValue
    #   resp.data.active_violations[0].behavior.criteria.value.count #=> Integer
    #   resp.data.active_violations[0].behavior.criteria.value.cidrs #=> Array<String>
    #   resp.data.active_violations[0].behavior.criteria.value.cidrs[0] #=> String
    #   resp.data.active_violations[0].behavior.criteria.value.ports #=> Array<Integer>
    #   resp.data.active_violations[0].behavior.criteria.value.ports[0] #=> Integer
    #   resp.data.active_violations[0].behavior.criteria.value.number #=> Float
    #   resp.data.active_violations[0].behavior.criteria.value.numbers #=> Array<Float>
    #   resp.data.active_violations[0].behavior.criteria.value.numbers[0] #=> Float
    #   resp.data.active_violations[0].behavior.criteria.value.strings #=> Array<String>
    #   resp.data.active_violations[0].behavior.criteria.value.strings[0] #=> String
    #   resp.data.active_violations[0].behavior.criteria.duration_seconds #=> Integer
    #   resp.data.active_violations[0].behavior.criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.data.active_violations[0].behavior.criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.data.active_violations[0].behavior.criteria.statistical_threshold #=> Types::StatisticalThreshold
    #   resp.data.active_violations[0].behavior.criteria.statistical_threshold.statistic #=> String
    #   resp.data.active_violations[0].behavior.criteria.ml_detection_config #=> Types::MachineLearningDetectionConfig
    #   resp.data.active_violations[0].behavior.criteria.ml_detection_config.confidence_level #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.active_violations[0].behavior.suppress_alerts #=> Boolean
    #   resp.data.active_violations[0].last_violation_value #=> Types::MetricValue
    #   resp.data.active_violations[0].violation_event_additional_info #=> Types::ViolationEventAdditionalInfo
    #   resp.data.active_violations[0].violation_event_additional_info.confidence_level #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.active_violations[0].verification_state #=> String, one of ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"]
    #   resp.data.active_violations[0].verification_state_description #=> String
    #   resp.data.active_violations[0].last_violation_time #=> Time
    #   resp.data.active_violations[0].violation_start_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_active_violations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActiveViolationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActiveViolationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActiveViolations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListActiveViolations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActiveViolations,
        stubs: @stubs,
        params_class: Params::ListActiveViolationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_active_violations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the policies attached to the specified thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAttachedPolicies</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttachedPoliciesInput}.
    #
    # @option params [String] :target
    #   <p>The group or principal for which the policies will be listed. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #
    # @option params [Boolean] :recursive
    #   <p>When true, recursively list attached policies.</p>
    #
    # @option params [String] :marker
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListAttachedPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_policies(
    #     target: 'target', # required
    #     recursive: false,
    #     marker: 'marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttachedPoliciesOutput
    #   resp.data.policies #=> Array<Policy>
    #   resp.data.policies[0] #=> Types::Policy
    #   resp.data.policies[0].policy_name #=> String
    #   resp.data.policies[0].policy_arn #=> String
    #   resp.data.next_marker #=> String
    #
    def list_attached_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttachedPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttachedPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttachedPolicies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListAttachedPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttachedPolicies,
        stubs: @stubs,
        params_class: Params::ListAttachedPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attached_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the findings (results) of a Device Defender audit or of the audits
    #         performed during a specified time period. (Findings are retained for 90 days.)</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditFindings</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAuditFindingsInput}.
    #
    # @option params [String] :task_id
    #   <p>A filter to limit results to the audit with the specified ID. You must
    #               specify either the taskId or the startTime and endTime, but not both.</p>
    #
    # @option params [String] :check_name
    #   <p>A filter to limit results to the findings for the specified audit check.</p>
    #
    # @option params [ResourceIdentifier] :resource_identifier
    #   <p>Information identifying the noncompliant resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Time] :start_time
    #   <p>A filter to limit results to those found after the specified time. You must
    #               specify either the startTime and endTime or the taskId, but not both.</p>
    #
    # @option params [Time] :end_time
    #   <p>A filter to limit results to those found before the specified time. You must
    #               specify either the startTime and endTime or the taskId, but not both.</p>
    #
    # @option params [Boolean] :list_suppressed_findings
    #   <p>
    #         Boolean flag indicating whether only the suppressed findings or the unsuppressed findings should be listed. If this parameter isn't provided, the response will list both suppressed and unsuppressed findings.
    #       </p>
    #
    # @return [Types::ListAuditFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_findings(
    #     task_id: 'taskId',
    #     check_name: 'checkName',
    #     resource_identifier: {
    #       device_certificate_id: 'deviceCertificateId',
    #       ca_certificate_id: 'caCertificateId',
    #       cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #       client_id: 'clientId',
    #       policy_version_identifier: {
    #         policy_name: 'policyName',
    #         policy_version_id: 'policyVersionId'
    #       },
    #       account: 'account',
    #       iam_role_arn: 'iamRoleArn',
    #       role_alias_arn: 'roleAliasArn'
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     list_suppressed_findings: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAuditFindingsOutput
    #   resp.data.findings #=> Array<AuditFinding>
    #   resp.data.findings[0] #=> Types::AuditFinding
    #   resp.data.findings[0].finding_id #=> String
    #   resp.data.findings[0].task_id #=> String
    #   resp.data.findings[0].check_name #=> String
    #   resp.data.findings[0].task_start_time #=> Time
    #   resp.data.findings[0].finding_time #=> Time
    #   resp.data.findings[0].severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW"]
    #   resp.data.findings[0].non_compliant_resource #=> Types::NonCompliantResource
    #   resp.data.findings[0].non_compliant_resource.resource_type #=> String, one of ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE"]
    #   resp.data.findings[0].non_compliant_resource.resource_identifier #=> Types::ResourceIdentifier
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.device_certificate_id #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.ca_certificate_id #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.cognito_identity_pool_id #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.client_id #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.policy_version_identifier #=> Types::PolicyVersionIdentifier
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.account #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.iam_role_arn #=> String
    #   resp.data.findings[0].non_compliant_resource.resource_identifier.role_alias_arn #=> String
    #   resp.data.findings[0].non_compliant_resource.additional_info #=> Hash<String, String>
    #   resp.data.findings[0].non_compliant_resource.additional_info['key'] #=> String
    #   resp.data.findings[0].related_resources #=> Array<RelatedResource>
    #   resp.data.findings[0].related_resources[0] #=> Types::RelatedResource
    #   resp.data.findings[0].related_resources[0].resource_type #=> String, one of ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE"]
    #   resp.data.findings[0].related_resources[0].resource_identifier #=> Types::ResourceIdentifier
    #   resp.data.findings[0].related_resources[0].additional_info #=> Hash<String, String>
    #   resp.data.findings[0].reason_for_non_compliance #=> String
    #   resp.data.findings[0].reason_for_non_compliance_code #=> String
    #   resp.data.findings[0].is_suppressed #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_audit_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAuditFindingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAuditFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAuditFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAuditFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAuditFindings,
        stubs: @stubs,
        params_class: Params::ListAuditFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_audit_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of audit mitigation action tasks that were
    #       executed.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditMitigationActionsExecutions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAuditMitigationActionsExecutionsInput}.
    #
    # @option params [String] :task_id
    #   <p>Specify this filter to limit results to actions for a specific audit mitigation actions task.</p>
    #
    # @option params [String] :action_status
    #   <p>Specify this filter to limit results to those with a specific status.</p>
    #
    # @option params [String] :finding_id
    #   <p>Specify this filter to limit results to those that were applied to a specific audit finding.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::ListAuditMitigationActionsExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_mitigation_actions_executions(
    #     task_id: 'taskId', # required
    #     action_status: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED", "SKIPPED", "PENDING"]
    #     finding_id: 'findingId', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAuditMitigationActionsExecutionsOutput
    #   resp.data.actions_executions #=> Array<AuditMitigationActionExecutionMetadata>
    #   resp.data.actions_executions[0] #=> Types::AuditMitigationActionExecutionMetadata
    #   resp.data.actions_executions[0].task_id #=> String
    #   resp.data.actions_executions[0].finding_id #=> String
    #   resp.data.actions_executions[0].action_name #=> String
    #   resp.data.actions_executions[0].action_id #=> String
    #   resp.data.actions_executions[0].status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED", "SKIPPED", "PENDING"]
    #   resp.data.actions_executions[0].start_time #=> Time
    #   resp.data.actions_executions[0].end_time #=> Time
    #   resp.data.actions_executions[0].error_code #=> String
    #   resp.data.actions_executions[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_audit_mitigation_actions_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAuditMitigationActionsExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAuditMitigationActionsExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAuditMitigationActionsExecutions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAuditMitigationActionsExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAuditMitigationActionsExecutions,
        stubs: @stubs,
        params_class: Params::ListAuditMitigationActionsExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_audit_mitigation_actions_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of audit mitigation action tasks that match the specified filters.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditMitigationActionsTasks</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAuditMitigationActionsTasksInput}.
    #
    # @option params [String] :audit_task_id
    #   <p>Specify this filter to limit results to tasks that were applied to results for a specific audit.</p>
    #
    # @option params [String] :finding_id
    #   <p>Specify this filter to limit results to tasks that were applied to a specific audit finding.</p>
    #
    # @option params [String] :task_status
    #   <p>Specify this filter to limit results to tasks that are in a specific state.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Time] :start_time
    #   <p>Specify this filter to limit results to tasks that began on or after a specific date and time.</p>
    #
    # @option params [Time] :end_time
    #   <p>Specify this filter to limit results to tasks that were completed or canceled on or before a specific date and time.</p>
    #
    # @return [Types::ListAuditMitigationActionsTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_mitigation_actions_tasks(
    #     audit_task_id: 'auditTaskId',
    #     finding_id: 'findingId',
    #     task_status: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     start_time: Time.now, # required
    #     end_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAuditMitigationActionsTasksOutput
    #   resp.data.tasks #=> Array<AuditMitigationActionsTaskMetadata>
    #   resp.data.tasks[0] #=> Types::AuditMitigationActionsTaskMetadata
    #   resp.data.tasks[0].task_id #=> String
    #   resp.data.tasks[0].start_time #=> Time
    #   resp.data.tasks[0].task_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #   resp.data.next_token #=> String
    #
    def list_audit_mitigation_actions_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAuditMitigationActionsTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAuditMitigationActionsTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAuditMitigationActionsTasks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAuditMitigationActionsTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAuditMitigationActionsTasks,
        stubs: @stubs,
        params_class: Params::ListAuditMitigationActionsTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_audit_mitigation_actions_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists your Device Defender audit listings.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditSuppressions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAuditSuppressionsInput}.
    #
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #           to select which checks are enabled.)</p>
    #
    # @option params [ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>
    #         Determines whether suppressions are listed in ascending order by expiration date or not. If parameter isn't provided, <code>ascendingOrder=true</code>.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #
    # @return [Types::ListAuditSuppressionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_suppressions(
    #     check_name: 'checkName',
    #     resource_identifier: {
    #       device_certificate_id: 'deviceCertificateId',
    #       ca_certificate_id: 'caCertificateId',
    #       cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #       client_id: 'clientId',
    #       policy_version_identifier: {
    #         policy_name: 'policyName',
    #         policy_version_id: 'policyVersionId'
    #       },
    #       account: 'account',
    #       iam_role_arn: 'iamRoleArn',
    #       role_alias_arn: 'roleAliasArn'
    #     },
    #     ascending_order: false,
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAuditSuppressionsOutput
    #   resp.data.suppressions #=> Array<AuditSuppression>
    #   resp.data.suppressions[0] #=> Types::AuditSuppression
    #   resp.data.suppressions[0].check_name #=> String
    #   resp.data.suppressions[0].resource_identifier #=> Types::ResourceIdentifier
    #   resp.data.suppressions[0].resource_identifier.device_certificate_id #=> String
    #   resp.data.suppressions[0].resource_identifier.ca_certificate_id #=> String
    #   resp.data.suppressions[0].resource_identifier.cognito_identity_pool_id #=> String
    #   resp.data.suppressions[0].resource_identifier.client_id #=> String
    #   resp.data.suppressions[0].resource_identifier.policy_version_identifier #=> Types::PolicyVersionIdentifier
    #   resp.data.suppressions[0].resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.data.suppressions[0].resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.data.suppressions[0].resource_identifier.account #=> String
    #   resp.data.suppressions[0].resource_identifier.iam_role_arn #=> String
    #   resp.data.suppressions[0].resource_identifier.role_alias_arn #=> String
    #   resp.data.suppressions[0].expiration_date #=> Time
    #   resp.data.suppressions[0].suppress_indefinitely #=> Boolean
    #   resp.data.suppressions[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_audit_suppressions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAuditSuppressionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAuditSuppressionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAuditSuppressions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAuditSuppressions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAuditSuppressions,
        stubs: @stubs,
        params_class: Params::ListAuditSuppressionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_audit_suppressions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Device Defender audits that have been performed during a given
    #           time period.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditTasks</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAuditTasksInput}.
    #
    # @option params [Time] :start_time
    #   <p>The beginning of the time period. Audit information is retained for a
    #                 limited time (90 days). Requesting a start time prior to what is retained
    #                 results in an "InvalidRequestException".</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time period.</p>
    #
    # @option params [String] :task_type
    #   <p>A filter to limit the output to the specified type of audit: can be one of
    #               "ON_DEMAND_AUDIT_TASK" or "SCHEDULED__AUDIT_TASK".</p>
    #
    # @option params [String] :task_status
    #   <p>A filter to limit the output to audits with the specified completion
    #               status: can be one of "IN_PROGRESS", "COMPLETED", "FAILED", or "CANCELED".</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @return [Types::ListAuditTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_tasks(
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     task_type: 'ON_DEMAND_AUDIT_TASK', # accepts ["ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"]
    #     task_status: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAuditTasksOutput
    #   resp.data.tasks #=> Array<AuditTaskMetadata>
    #   resp.data.tasks[0] #=> Types::AuditTaskMetadata
    #   resp.data.tasks[0].task_id #=> String
    #   resp.data.tasks[0].task_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #   resp.data.tasks[0].task_type #=> String, one of ["ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"]
    #   resp.data.next_token #=> String
    #
    def list_audit_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAuditTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAuditTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAuditTasks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAuditTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAuditTasks,
        stubs: @stubs,
        params_class: Params::ListAuditTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_audit_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the authorizers registered in your account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuthorizers</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAuthorizersInput}.
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :marker
    #   <p>A marker used to get the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Return the list of authorizers in ascending alphabetical order.</p>
    #
    # @option params [String] :status
    #   <p>The status of the list authorizers request.</p>
    #
    # @return [Types::ListAuthorizersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_authorizers(
    #     page_size: 1,
    #     marker: 'marker',
    #     ascending_order: false,
    #     status: 'ACTIVE' # accepts ["ACTIVE", "INACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAuthorizersOutput
    #   resp.data.authorizers #=> Array<AuthorizerSummary>
    #   resp.data.authorizers[0] #=> Types::AuthorizerSummary
    #   resp.data.authorizers[0].authorizer_name #=> String
    #   resp.data.authorizers[0].authorizer_arn #=> String
    #   resp.data.next_marker #=> String
    #
    def list_authorizers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAuthorizersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAuthorizersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAuthorizers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListAuthorizers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAuthorizers,
        stubs: @stubs,
        params_class: Params::ListAuthorizersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_authorizers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the billing groups you have created.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListBillingGroups</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBillingGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    #
    # @option params [String] :name_prefix_filter
    #   <p>Limit the results to billing groups whose names have the given prefix.</p>
    #
    # @return [Types::ListBillingGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_groups(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name_prefix_filter: 'namePrefixFilter'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBillingGroupsOutput
    #   resp.data.billing_groups #=> Array<GroupNameAndArn>
    #   resp.data.billing_groups[0] #=> Types::GroupNameAndArn
    #   resp.data.billing_groups[0].group_name #=> String
    #   resp.data.billing_groups[0].group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_billing_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBillingGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBillingGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBillingGroups
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListBillingGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBillingGroups,
        stubs: @stubs,
        params_class: Params::ListBillingGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_billing_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the CA certificates registered for your Amazon Web Services account.</p>
    #          <p>The results are paginated with a default page size of 25. You can use the returned
    #          marker to retrieve additional results.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCACertificates</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCACertificatesInput}.
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Determines the order of the results.</p>
    #
    # @return [Types::ListCACertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ca_certificates(
    #     page_size: 1,
    #     marker: 'marker',
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCACertificatesOutput
    #   resp.data.certificates #=> Array<CACertificate>
    #   resp.data.certificates[0] #=> Types::CACertificate
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.certificates[0].certificate_id #=> String
    #   resp.data.certificates[0].status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.certificates[0].creation_date #=> Time
    #   resp.data.next_marker #=> String
    #
    def list_ca_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCACertificatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCACertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCACertificates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListCACertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCACertificates,
        stubs: @stubs,
        params_class: Params::ListCACertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ca_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the certificates registered in your Amazon Web Services account.</p>
    #          <p>The results are paginated with a default page size of 25. You can use the returned
    #          marker to retrieve additional results.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCertificates</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCertificatesInput}.
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    #
    # @return [Types::ListCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates(
    #     page_size: 1,
    #     marker: 'marker',
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCertificatesOutput
    #   resp.data.certificates #=> Array<Certificate>
    #   resp.data.certificates[0] #=> Types::Certificate
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.certificates[0].certificate_id #=> String
    #   resp.data.certificates[0].status #=> String, one of ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   resp.data.certificates[0].certificate_mode #=> String, one of ["DEFAULT", "SNI_ONLY"]
    #   resp.data.certificates[0].creation_date #=> Time
    #   resp.data.next_marker #=> String
    #
    def list_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCertificatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCertificates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCertificates,
        stubs: @stubs,
        params_class: Params::ListCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the device certificates signed by the specified CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCertificatesByCA</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCertificatesByCAInput}.
    #
    # @option params [String] :ca_certificate_id
    #   <p>The ID of the CA certificate. This operation will list all registered device
    #            certificate that were signed by this CA certificate.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    #
    # @return [Types::ListCertificatesByCAOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates_by_ca(
    #     ca_certificate_id: 'caCertificateId', # required
    #     page_size: 1,
    #     marker: 'marker',
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCertificatesByCAOutput
    #   resp.data.certificates #=> Array<Certificate>
    #   resp.data.certificates[0] #=> Types::Certificate
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.certificates[0].certificate_id #=> String
    #   resp.data.certificates[0].status #=> String, one of ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   resp.data.certificates[0].certificate_mode #=> String, one of ["DEFAULT", "SNI_ONLY"]
    #   resp.data.certificates[0].creation_date #=> Time
    #   resp.data.next_marker #=> String
    #
    def list_certificates_by_ca(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCertificatesByCAInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCertificatesByCAInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCertificatesByCA
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListCertificatesByCA
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCertificatesByCA,
        stubs: @stubs,
        params_class: Params::ListCertificatesByCAOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_certificates_by_ca
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists your Device Defender detect custom metrics.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCustomMetrics</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomMetricsInput}.
    #
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #
    # @return [Types::ListCustomMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_metrics(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomMetricsOutput
    #   resp.data.metric_names #=> Array<String>
    #   resp.data.metric_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_custom_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomMetricsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomMetrics
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListCustomMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomMetrics,
        stubs: @stubs,
        params_class: Params::ListCustomMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists mitigation actions executions for a Device Defender ML Detect Security Profile.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDetectMitigationActionsExecutions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDetectMitigationActionsExecutionsInput}.
    #
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #
    # @option params [String] :violation_id
    #   <p>
    #         The unique identifier of the violation.
    #       </p>
    #
    # @option params [String] :thing_name
    #   <p>
    #         The name of the thing whose mitigation actions are listed.
    #       </p>
    #
    # @option params [Time] :start_time
    #   <p>
    #         A filter to limit results to those found after the specified time. You must
    #         specify either the startTime and endTime or the taskId, but not both.
    #       </p>
    #
    # @option params [Time] :end_time
    #   <p>
    #         The end of the time period for which ML Detect mitigation actions executions are returned.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #
    # @return [Types::ListDetectMitigationActionsExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detect_mitigation_actions_executions(
    #     task_id: 'taskId',
    #     violation_id: 'violationId',
    #     thing_name: 'thingName',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDetectMitigationActionsExecutionsOutput
    #   resp.data.actions_executions #=> Array<DetectMitigationActionExecution>
    #   resp.data.actions_executions[0] #=> Types::DetectMitigationActionExecution
    #   resp.data.actions_executions[0].task_id #=> String
    #   resp.data.actions_executions[0].violation_id #=> String
    #   resp.data.actions_executions[0].action_name #=> String
    #   resp.data.actions_executions[0].thing_name #=> String
    #   resp.data.actions_executions[0].execution_start_date #=> Time
    #   resp.data.actions_executions[0].execution_end_date #=> Time
    #   resp.data.actions_executions[0].status #=> String, one of ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"]
    #   resp.data.actions_executions[0].error_code #=> String
    #   resp.data.actions_executions[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_detect_mitigation_actions_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDetectMitigationActionsExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDetectMitigationActionsExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDetectMitigationActionsExecutions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDetectMitigationActionsExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDetectMitigationActionsExecutions,
        stubs: @stubs,
        params_class: Params::ListDetectMitigationActionsExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_detect_mitigation_actions_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       List of Device Defender ML Detect mitigation actions tasks.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDetectMitigationActionsTasks</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDetectMitigationActionsTasksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #
    # @option params [Time] :start_time
    #   <p>
    #         A filter to limit results to those found after the specified time. You must
    #         specify either the startTime and endTime or the taskId, but not both.
    #       </p>
    #
    # @option params [Time] :end_time
    #   <p>
    #         The end of the time period for which ML Detect mitigation actions tasks are returned.
    #       </p>
    #
    # @return [Types::ListDetectMitigationActionsTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detect_mitigation_actions_tasks(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     start_time: Time.now, # required
    #     end_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDetectMitigationActionsTasksOutput
    #   resp.data.tasks #=> Array<DetectMitigationActionsTaskSummary>
    #   resp.data.tasks[0] #=> Types::DetectMitigationActionsTaskSummary
    #   resp.data.tasks[0].task_id #=> String
    #   resp.data.tasks[0].task_status #=> String, one of ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "CANCELED"]
    #   resp.data.tasks[0].task_start_time #=> Time
    #   resp.data.tasks[0].task_end_time #=> Time
    #   resp.data.tasks[0].target #=> Types::DetectMitigationActionsTaskTarget
    #   resp.data.tasks[0].target.violation_ids #=> Array<String>
    #   resp.data.tasks[0].target.violation_ids[0] #=> String
    #   resp.data.tasks[0].target.security_profile_name #=> String
    #   resp.data.tasks[0].target.behavior_name #=> String
    #   resp.data.tasks[0].violation_event_occurrence_range #=> Types::ViolationEventOccurrenceRange
    #   resp.data.tasks[0].violation_event_occurrence_range.start_time #=> Time
    #   resp.data.tasks[0].violation_event_occurrence_range.end_time #=> Time
    #   resp.data.tasks[0].only_active_violations_included #=> Boolean
    #   resp.data.tasks[0].suppressed_alerts_included #=> Boolean
    #   resp.data.tasks[0].actions_definition #=> Array<MitigationAction>
    #   resp.data.tasks[0].actions_definition[0] #=> Types::MitigationAction
    #   resp.data.tasks[0].actions_definition[0].name #=> String
    #   resp.data.tasks[0].actions_definition[0].id #=> String
    #   resp.data.tasks[0].actions_definition[0].role_arn #=> String
    #   resp.data.tasks[0].actions_definition[0].action_params #=> Types::MitigationActionParams
    #   resp.data.tasks[0].actions_definition[0].action_params.update_device_certificate_params #=> Types::UpdateDeviceCertificateParams
    #   resp.data.tasks[0].actions_definition[0].action_params.update_device_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.tasks[0].actions_definition[0].action_params.update_ca_certificate_params #=> Types::UpdateCACertificateParams
    #   resp.data.tasks[0].actions_definition[0].action_params.update_ca_certificate_params.action #=> String, one of ["DEACTIVATE"]
    #   resp.data.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params #=> Types::AddThingsToThingGroupParams
    #   resp.data.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names #=> Array<String>
    #   resp.data.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.data.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.data.tasks[0].actions_definition[0].action_params.replace_default_policy_version_params #=> Types::ReplaceDefaultPolicyVersionParams
    #   resp.data.tasks[0].actions_definition[0].action_params.replace_default_policy_version_params.template_name #=> String, one of ["BLANK_POLICY"]
    #   resp.data.tasks[0].actions_definition[0].action_params.enable_io_t_logging_params #=> Types::EnableIoTLoggingParams
    #   resp.data.tasks[0].actions_definition[0].action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.data.tasks[0].actions_definition[0].action_params.enable_io_t_logging_params.log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   resp.data.tasks[0].actions_definition[0].action_params.publish_finding_to_sns_params #=> Types::PublishFindingToSnsParams
    #   resp.data.tasks[0].actions_definition[0].action_params.publish_finding_to_sns_params.topic_arn #=> String
    #   resp.data.tasks[0].task_statistics #=> Types::DetectMitigationActionsTaskStatistics
    #   resp.data.tasks[0].task_statistics.actions_executed #=> Integer
    #   resp.data.tasks[0].task_statistics.actions_skipped #=> Integer
    #   resp.data.tasks[0].task_statistics.actions_failed #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_detect_mitigation_actions_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDetectMitigationActionsTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDetectMitigationActionsTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDetectMitigationActionsTasks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDetectMitigationActionsTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDetectMitigationActionsTasks,
        stubs: @stubs,
        params_class: Params::ListDetectMitigationActionsTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_detect_mitigation_actions_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the set of dimensions that are defined for your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDimensions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDimensionsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve at one time.</p>
    #
    # @return [Types::ListDimensionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dimensions(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDimensionsOutput
    #   resp.data.dimension_names #=> Array<String>
    #   resp.data.dimension_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_dimensions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDimensionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDimensionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDimensions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDimensions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDimensions,
        stubs: @stubs,
        params_class: Params::ListDimensionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dimensions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of domain configurations for the user. This list is sorted
    #          alphabetically by domain configuration name.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDomainConfigurations</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainConfigurationsInput}.
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [String] :service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #
    # @return [Types::ListDomainConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_configurations(
    #     marker: 'marker',
    #     page_size: 1,
    #     service_type: 'DATA' # accepts ["DATA", "CREDENTIAL_PROVIDER", "JOBS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainConfigurationsOutput
    #   resp.data.domain_configurations #=> Array<DomainConfigurationSummary>
    #   resp.data.domain_configurations[0] #=> Types::DomainConfigurationSummary
    #   resp.data.domain_configurations[0].domain_configuration_name #=> String
    #   resp.data.domain_configurations[0].domain_configuration_arn #=> String
    #   resp.data.domain_configurations[0].service_type #=> String, one of ["DATA", "CREDENTIAL_PROVIDER", "JOBS"]
    #   resp.data.next_marker #=> String
    #
    def list_domain_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainConfigurations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListDomainConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainConfigurations,
        stubs: @stubs,
        params_class: Params::ListDomainConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domain_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all your fleet metrics. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListFleetMetrics</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFleetMetricsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response;
    #          otherwise <code>null</code> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListFleetMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleet_metrics(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFleetMetricsOutput
    #   resp.data.fleet_metrics #=> Array<FleetMetricNameAndArn>
    #   resp.data.fleet_metrics[0] #=> Types::FleetMetricNameAndArn
    #   resp.data.fleet_metrics[0].metric_name #=> String
    #   resp.data.fleet_metrics[0].metric_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_fleet_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFleetMetricsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFleetMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFleetMetrics
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListFleetMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFleetMetrics,
        stubs: @stubs,
        params_class: Params::ListFleetMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fleet_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the search indices.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListIndices</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIndicesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListIndicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIndicesOutput
    #   resp.data.index_names #=> Array<String>
    #   resp.data.index_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_indices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIndicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIndicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIndices
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListIndices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIndices,
        stubs: @stubs,
        params_class: Params::ListIndicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_indices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the job executions for a job.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobExecutionsForJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobExecutionsForJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @option params [String] :status
    #   <p>The status of the job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @return [Types::ListJobExecutionsForJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_executions_for_job(
    #     job_id: 'jobId', # required
    #     status: 'QUEUED', # accepts ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobExecutionsForJobOutput
    #   resp.data.execution_summaries #=> Array<JobExecutionSummaryForJob>
    #   resp.data.execution_summaries[0] #=> Types::JobExecutionSummaryForJob
    #   resp.data.execution_summaries[0].thing_arn #=> String
    #   resp.data.execution_summaries[0].job_execution_summary #=> Types::JobExecutionSummary
    #   resp.data.execution_summaries[0].job_execution_summary.status #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #   resp.data.execution_summaries[0].job_execution_summary.queued_at #=> Time
    #   resp.data.execution_summaries[0].job_execution_summary.started_at #=> Time
    #   resp.data.execution_summaries[0].job_execution_summary.last_updated_at #=> Time
    #   resp.data.execution_summaries[0].job_execution_summary.execution_number #=> Integer
    #   resp.data.execution_summaries[0].job_execution_summary.retry_attempt #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_job_executions_for_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobExecutionsForJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobExecutionsForJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobExecutionsForJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListJobExecutionsForJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobExecutionsForJob,
        stubs: @stubs,
        params_class: Params::ListJobExecutionsForJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_job_executions_for_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the job executions for the specified thing.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobExecutionsForThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobExecutionsForThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The thing name.</p>
    #
    # @option params [String] :status
    #   <p>An optional filter that lets you search for jobs that have the specified status.</p>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    # @return [Types::ListJobExecutionsForThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_executions_for_thing(
    #     thing_name: 'thingName', # required
    #     status: 'QUEUED', # accepts ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #     namespace_id: 'namespaceId',
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     job_id: 'jobId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobExecutionsForThingOutput
    #   resp.data.execution_summaries #=> Array<JobExecutionSummaryForThing>
    #   resp.data.execution_summaries[0] #=> Types::JobExecutionSummaryForThing
    #   resp.data.execution_summaries[0].job_id #=> String
    #   resp.data.execution_summaries[0].job_execution_summary #=> Types::JobExecutionSummary
    #   resp.data.execution_summaries[0].job_execution_summary.status #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #   resp.data.execution_summaries[0].job_execution_summary.queued_at #=> Time
    #   resp.data.execution_summaries[0].job_execution_summary.started_at #=> Time
    #   resp.data.execution_summaries[0].job_execution_summary.last_updated_at #=> Time
    #   resp.data.execution_summaries[0].job_execution_summary.execution_number #=> Integer
    #   resp.data.execution_summaries[0].job_execution_summary.retry_attempt #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_job_executions_for_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobExecutionsForThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobExecutionsForThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobExecutionsForThing
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListJobExecutionsForThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobExecutionsForThing,
        stubs: @stubs,
        params_class: Params::ListJobExecutionsForThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_job_executions_for_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of job templates.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobTemplates</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobTemplatesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the list.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to return the next set of results in the list.</p>
    #
    # @return [Types::ListJobTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_templates(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobTemplatesOutput
    #   resp.data.job_templates #=> Array<JobTemplateSummary>
    #   resp.data.job_templates[0] #=> Types::JobTemplateSummary
    #   resp.data.job_templates[0].job_template_arn #=> String
    #   resp.data.job_templates[0].job_template_id #=> String
    #   resp.data.job_templates[0].description #=> String
    #   resp.data.job_templates[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_job_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobTemplates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListJobTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobTemplates,
        stubs: @stubs,
        params_class: Params::ListJobTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_job_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists jobs.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobs</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :status
    #   <p>An optional filter that lets you search for jobs that have the specified status.</p>
    #
    # @option params [String] :target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things
    #               specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing
    #               when a change is detected in a target. For example, a job will run on a thing when the thing is added to a
    #               target group, even after the job was completed by all things originally in the group. </p>
    #           <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic thing group targets.
    #                   By using continuous jobs, devices that join the group receive the job execution even after the job has
    #                   been created.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [String] :thing_group_name
    #   <p>A filter that limits the returned jobs to those for the specified group.</p>
    #
    # @option params [String] :thing_group_id
    #   <p>A filter that limits the returned jobs to those for the specified group.</p>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     status: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS"]
    #     target_selection: 'CONTINUOUS', # accepts ["CONTINUOUS", "SNAPSHOT"]
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     thing_group_name: 'thingGroupName',
    #     thing_group_id: 'thingGroupId',
    #     namespace_id: 'namespaceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.jobs #=> Array<JobSummary>
    #   resp.data.jobs[0] #=> Types::JobSummary
    #   resp.data.jobs[0].job_arn #=> String
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].thing_group_id #=> String
    #   resp.data.jobs[0].target_selection #=> String, one of ["CONTINUOUS", "SNAPSHOT"]
    #   resp.data.jobs[0].status #=> String, one of ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS"]
    #   resp.data.jobs[0].created_at #=> Time
    #   resp.data.jobs[0].last_updated_at #=> Time
    #   resp.data.jobs[0].completed_at #=> Time
    #   resp.data.jobs[0].is_concurrent #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of managed job templates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListManagedJobTemplatesInput}.
    #
    # @option params [String] :template_name
    #   <p>An optional parameter for template name. If specified, only the versions of the
    #               managed job templates that have the specified template name will be returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of entries that can be returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @return [Types::ListManagedJobTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_job_templates(
    #     template_name: 'templateName',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListManagedJobTemplatesOutput
    #   resp.data.managed_job_templates #=> Array<ManagedJobTemplateSummary>
    #   resp.data.managed_job_templates[0] #=> Types::ManagedJobTemplateSummary
    #   resp.data.managed_job_templates[0].template_arn #=> String
    #   resp.data.managed_job_templates[0].template_name #=> String
    #   resp.data.managed_job_templates[0].description #=> String
    #   resp.data.managed_job_templates[0].environments #=> Array<String>
    #   resp.data.managed_job_templates[0].environments[0] #=> String
    #   resp.data.managed_job_templates[0].template_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_managed_job_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedJobTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedJobTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedJobTemplates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListManagedJobTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListManagedJobTemplates,
        stubs: @stubs,
        params_class: Params::ListManagedJobTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_managed_job_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the values reported for an IoT Device Defender metric (device-side metric, cloud-side metric, or custom metric)
    #       by the given thing during the specified time period.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMetricValuesInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing for which security profile metric values are returned.</p>
    #
    # @option params [String] :metric_name
    #   <p>The name of the security profile metric for which values are returned.</p>
    #
    # @option params [String] :dimension_name
    #   <p>The dimension name.</p>
    #
    # @option params [String] :dimension_value_operator
    #   <p>The dimension value operator.</p>
    #
    # @option params [Time] :start_time
    #   <p>The start of the time period for which metric values are returned.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time period for which metric values are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::ListMetricValuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metric_values(
    #     thing_name: 'thingName', # required
    #     metric_name: 'metricName', # required
    #     dimension_name: 'dimensionName',
    #     dimension_value_operator: 'IN', # accepts ["IN", "NOT_IN"]
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMetricValuesOutput
    #   resp.data.metric_datum_list #=> Array<MetricDatum>
    #   resp.data.metric_datum_list[0] #=> Types::MetricDatum
    #   resp.data.metric_datum_list[0].timestamp #=> Time
    #   resp.data.metric_datum_list[0].value #=> Types::MetricValue
    #   resp.data.metric_datum_list[0].value.count #=> Integer
    #   resp.data.metric_datum_list[0].value.cidrs #=> Array<String>
    #   resp.data.metric_datum_list[0].value.cidrs[0] #=> String
    #   resp.data.metric_datum_list[0].value.ports #=> Array<Integer>
    #   resp.data.metric_datum_list[0].value.ports[0] #=> Integer
    #   resp.data.metric_datum_list[0].value.number #=> Float
    #   resp.data.metric_datum_list[0].value.numbers #=> Array<Float>
    #   resp.data.metric_datum_list[0].value.numbers[0] #=> Float
    #   resp.data.metric_datum_list[0].value.strings #=> Array<String>
    #   resp.data.metric_datum_list[0].value.strings[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_metric_values(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMetricValuesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMetricValuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMetricValues
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListMetricValues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMetricValues,
        stubs: @stubs,
        params_class: Params::ListMetricValuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_metric_values
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of all mitigation actions that match the specified filter criteria.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListMitigationActions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMitigationActionsInput}.
    #
    # @option params [String] :action_type
    #   <p>Specify a value to limit the result to mitigation actions with a specific action type.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::ListMitigationActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mitigation_actions(
    #     action_type: 'UPDATE_DEVICE_CERTIFICATE', # accepts ["UPDATE_DEVICE_CERTIFICATE", "UPDATE_CA_CERTIFICATE", "ADD_THINGS_TO_THING_GROUP", "REPLACE_DEFAULT_POLICY_VERSION", "ENABLE_IOT_LOGGING", "PUBLISH_FINDING_TO_SNS"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMitigationActionsOutput
    #   resp.data.action_identifiers #=> Array<MitigationActionIdentifier>
    #   resp.data.action_identifiers[0] #=> Types::MitigationActionIdentifier
    #   resp.data.action_identifiers[0].action_name #=> String
    #   resp.data.action_identifiers[0].action_arn #=> String
    #   resp.data.action_identifiers[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_mitigation_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMitigationActionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMitigationActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMitigationActions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListMitigationActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMitigationActions,
        stubs: @stubs,
        params_class: Params::ListMitigationActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mitigation_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists OTA updates.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListOTAUpdates</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOTAUpdatesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used to retrieve the next set of results.</p>
    #
    # @option params [String] :ota_update_status
    #   <p>The OTA update job status.</p>
    #
    # @return [Types::ListOTAUpdatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ota_updates(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     ota_update_status: 'CREATE_PENDING' # accepts ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOTAUpdatesOutput
    #   resp.data.ota_updates #=> Array<OTAUpdateSummary>
    #   resp.data.ota_updates[0] #=> Types::OTAUpdateSummary
    #   resp.data.ota_updates[0].ota_update_id #=> String
    #   resp.data.ota_updates[0].ota_update_arn #=> String
    #   resp.data.ota_updates[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_ota_updates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOTAUpdatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOTAUpdatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOTAUpdates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListOTAUpdates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOTAUpdates,
        stubs: @stubs,
        params_class: Params::ListOTAUpdatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ota_updates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists certificates that are being transferred but not yet accepted.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListOutgoingCertificates</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOutgoingCertificatesInput}.
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    #
    # @return [Types::ListOutgoingCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outgoing_certificates(
    #     page_size: 1,
    #     marker: 'marker',
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOutgoingCertificatesOutput
    #   resp.data.outgoing_certificates #=> Array<OutgoingCertificate>
    #   resp.data.outgoing_certificates[0] #=> Types::OutgoingCertificate
    #   resp.data.outgoing_certificates[0].certificate_arn #=> String
    #   resp.data.outgoing_certificates[0].certificate_id #=> String
    #   resp.data.outgoing_certificates[0].transferred_to #=> String
    #   resp.data.outgoing_certificates[0].transfer_date #=> Time
    #   resp.data.outgoing_certificates[0].transfer_message #=> String
    #   resp.data.outgoing_certificates[0].creation_date #=> Time
    #   resp.data.next_marker #=> String
    #
    def list_outgoing_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOutgoingCertificatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOutgoingCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOutgoingCertificates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListOutgoingCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOutgoingCertificates,
        stubs: @stubs,
        params_class: Params::ListOutgoingCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_outgoing_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your policies.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPolicies</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPoliciesInput}.
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If true, the results are returned in ascending
    #            creation order.</p>
    #
    # @return [Types::ListPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies(
    #     marker: 'marker',
    #     page_size: 1,
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoliciesOutput
    #   resp.data.policies #=> Array<Policy>
    #   resp.data.policies[0] #=> Types::Policy
    #   resp.data.policies[0].policy_name #=> String
    #   resp.data.policies[0].policy_arn #=> String
    #   resp.data.next_marker #=> String
    #
    def list_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicies,
        stubs: @stubs,
        params_class: Params::ListPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the principals associated with the specified policy.</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated. Please use <a>ListTargetsForPolicy</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPolicyPrincipals</a> action.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::ListPolicyPrincipalsInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If true, the results are returned in ascending
    #            creation order.</p>
    #
    # @return [Types::ListPolicyPrincipalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_principals(
    #     policy_name: 'policyName', # required
    #     marker: 'marker',
    #     page_size: 1,
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPolicyPrincipalsOutput
    #   resp.data.principals #=> Array<String>
    #   resp.data.principals[0] #=> String
    #   resp.data.next_marker #=> String
    #
    def list_policy_principals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPolicyPrincipalsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPolicyPrincipalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicyPrincipals
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListPolicyPrincipals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicyPrincipals,
        stubs: @stubs,
        params_class: Params::ListPolicyPrincipalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policy_principals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the versions of the specified policy and identifies the default
    #          version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPolicyVersions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPolicyVersionsInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @return [Types::ListPolicyVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_versions(
    #     policy_name: 'policyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPolicyVersionsOutput
    #   resp.data.policy_versions #=> Array<PolicyVersion>
    #   resp.data.policy_versions[0] #=> Types::PolicyVersion
    #   resp.data.policy_versions[0].version_id #=> String
    #   resp.data.policy_versions[0].is_default_version #=> Boolean
    #   resp.data.policy_versions[0].create_date #=> Time
    #
    def list_policy_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPolicyVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPolicyVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicyVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListPolicyVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicyVersions,
        stubs: @stubs,
        params_class: Params::ListPolicyVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policy_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the policies attached to the specified principal. If you use an Cognito
    #          identity, the ID must be in <a href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated. Please use <a>ListAttachedPolicies</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPrincipalPolicies</a> action.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::ListPrincipalPoliciesInput}.
    #
    # @option params [String] :principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If true, results are returned in ascending creation
    #            order.</p>
    #
    # @return [Types::ListPrincipalPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principal_policies(
    #     principal: 'principal', # required
    #     marker: 'marker',
    #     page_size: 1,
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPrincipalPoliciesOutput
    #   resp.data.policies #=> Array<Policy>
    #   resp.data.policies[0] #=> Types::Policy
    #   resp.data.policies[0].policy_name #=> String
    #   resp.data.policies[0].policy_arn #=> String
    #   resp.data.next_marker #=> String
    #
    def list_principal_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPrincipalPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPrincipalPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrincipalPolicies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListPrincipalPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrincipalPolicies,
        stubs: @stubs,
        params_class: Params::ListPrincipalPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_principal_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the things associated with the specified principal. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities. </p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPrincipalThings</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPrincipalThingsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :principal
    #   <p>The principal.</p>
    #
    # @return [Types::ListPrincipalThingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principal_things(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     principal: 'principal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPrincipalThingsOutput
    #   resp.data.things #=> Array<String>
    #   resp.data.things[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_principal_things(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPrincipalThingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPrincipalThingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrincipalThings
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListPrincipalThings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrincipalThings,
        stubs: @stubs,
        params_class: Params::ListPrincipalThingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_principal_things
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of fleet provisioning template versions.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListProvisioningTemplateVersions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisioningTemplateVersionsInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provisioning template.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results.</p>
    #
    # @return [Types::ListProvisioningTemplateVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_template_versions(
    #     template_name: 'templateName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProvisioningTemplateVersionsOutput
    #   resp.data.versions #=> Array<ProvisioningTemplateVersionSummary>
    #   resp.data.versions[0] #=> Types::ProvisioningTemplateVersionSummary
    #   resp.data.versions[0].version_id #=> Integer
    #   resp.data.versions[0].creation_date #=> Time
    #   resp.data.versions[0].is_default_version #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_provisioning_template_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisioningTemplateVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisioningTemplateVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisioningTemplateVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListProvisioningTemplateVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisioningTemplateVersions,
        stubs: @stubs,
        params_class: Params::ListProvisioningTemplateVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioning_template_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the fleet provisioning templates in your Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListProvisioningTemplates</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisioningTemplatesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results.</p>
    #
    # @return [Types::ListProvisioningTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_templates(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProvisioningTemplatesOutput
    #   resp.data.templates #=> Array<ProvisioningTemplateSummary>
    #   resp.data.templates[0] #=> Types::ProvisioningTemplateSummary
    #   resp.data.templates[0].template_arn #=> String
    #   resp.data.templates[0].template_name #=> String
    #   resp.data.templates[0].description #=> String
    #   resp.data.templates[0].creation_date #=> Time
    #   resp.data.templates[0].last_modified_date #=> Time
    #   resp.data.templates[0].enabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_provisioning_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisioningTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisioningTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisioningTemplates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListProvisioningTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisioningTemplates,
        stubs: @stubs,
        params_class: Params::ListProvisioningTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioning_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the role aliases registered in your account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListRoleAliases</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoleAliasesInput}.
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :marker
    #   <p>A marker used to get the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Return the list of role aliases in ascending alphabetical order.</p>
    #
    # @return [Types::ListRoleAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_aliases(
    #     page_size: 1,
    #     marker: 'marker',
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoleAliasesOutput
    #   resp.data.role_aliases #=> Array<String>
    #   resp.data.role_aliases[0] #=> String
    #   resp.data.next_marker #=> String
    #
    def list_role_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoleAliasesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoleAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoleAliases
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListRoleAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoleAliases,
        stubs: @stubs,
        params_class: Params::ListRoleAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_role_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of your scheduled audits.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListScheduledAudits</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListScheduledAuditsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #
    # @return [Types::ListScheduledAuditsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduled_audits(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListScheduledAuditsOutput
    #   resp.data.scheduled_audits #=> Array<ScheduledAuditMetadata>
    #   resp.data.scheduled_audits[0] #=> Types::ScheduledAuditMetadata
    #   resp.data.scheduled_audits[0].scheduled_audit_name #=> String
    #   resp.data.scheduled_audits[0].scheduled_audit_arn #=> String
    #   resp.data.scheduled_audits[0].frequency #=> String, one of ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"]
    #   resp.data.scheduled_audits[0].day_of_month #=> String
    #   resp.data.scheduled_audits[0].day_of_week #=> String, one of ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    #   resp.data.next_token #=> String
    #
    def list_scheduled_audits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListScheduledAuditsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListScheduledAuditsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListScheduledAudits
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListScheduledAudits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListScheduledAudits,
        stubs: @stubs,
        params_class: Params::ListScheduledAuditsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_scheduled_audits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Device Defender security profiles
    #       you've
    #       created. You can filter security profiles by dimension or custom metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSecurityProfiles</a> action.</p>
    #          <note>
    #             <p>
    #                <code>dimensionName</code> and <code>metricName</code> cannot be used in the same request.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :dimension_name
    #   <p>A filter to limit results to the security profiles that use the defined dimension.
    #         Cannot be used with <code>metricName</code>
    #            </p>
    #
    # @option params [String] :metric_name
    #   <p> The name of the custom metric.
    #         Cannot be used with <code>dimensionName</code>. </p>
    #
    # @return [Types::ListSecurityProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     dimension_name: 'dimensionName',
    #     metric_name: 'metricName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityProfilesOutput
    #   resp.data.security_profile_identifiers #=> Array<SecurityProfileIdentifier>
    #   resp.data.security_profile_identifiers[0] #=> Types::SecurityProfileIdentifier
    #   resp.data.security_profile_identifiers[0].name #=> String
    #   resp.data.security_profile_identifiers[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_security_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityProfilesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityProfiles
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListSecurityProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityProfiles,
        stubs: @stubs,
        params_class: Params::ListSecurityProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Device Defender security profiles attached to a target (thing group).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSecurityProfilesForTarget</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityProfilesForTargetInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [Boolean] :recursive
    #   <p>If true, return child groups too.</p>
    #
    # @option params [String] :security_profile_target_arn
    #   <p>The ARN of the target (thing group) whose attached security profiles you want to get.</p>
    #
    # @return [Types::ListSecurityProfilesForTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles_for_target(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     recursive: false,
    #     security_profile_target_arn: 'securityProfileTargetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityProfilesForTargetOutput
    #   resp.data.security_profile_target_mappings #=> Array<SecurityProfileTargetMapping>
    #   resp.data.security_profile_target_mappings[0] #=> Types::SecurityProfileTargetMapping
    #   resp.data.security_profile_target_mappings[0].security_profile_identifier #=> Types::SecurityProfileIdentifier
    #   resp.data.security_profile_target_mappings[0].security_profile_identifier.name #=> String
    #   resp.data.security_profile_target_mappings[0].security_profile_identifier.arn #=> String
    #   resp.data.security_profile_target_mappings[0].target #=> Types::SecurityProfileTarget
    #   resp.data.security_profile_target_mappings[0].target.arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_security_profiles_for_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityProfilesForTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityProfilesForTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityProfilesForTarget
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListSecurityProfilesForTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityProfilesForTarget,
        stubs: @stubs,
        params_class: Params::ListSecurityProfilesForTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_profiles_for_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the streams in your Amazon Web Services account.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListStreams</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used to get the next set of results.</p>
    #
    # @option params [Boolean] :ascending_order
    #   <p>Set to true to return the list of streams in ascending order.</p>
    #
    # @return [Types::ListStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     ascending_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamsOutput
    #   resp.data.streams #=> Array<StreamSummary>
    #   resp.data.streams[0] #=> Types::StreamSummary
    #   resp.data.streams[0].stream_id #=> String
    #   resp.data.streams[0].stream_arn #=> String
    #   resp.data.streams[0].stream_version #=> Integer
    #   resp.data.streams[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreams
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreams,
        stubs: @stubs,
        params_class: Params::ListStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTagsForResource</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>List targets for the specified policy.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTargetsForPolicy</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetsForPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @option params [String] :marker
    #   <p>A marker used to get the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListTargetsForPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_policy(
    #     policy_name: 'policyName', # required
    #     marker: 'marker',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetsForPolicyOutput
    #   resp.data.targets #=> Array<String>
    #   resp.data.targets[0] #=> String
    #   resp.data.next_marker #=> String
    #
    def list_targets_for_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetsForPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetsForPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargetsForPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListTargetsForPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargetsForPolicy,
        stubs: @stubs,
        params_class: Params::ListTargetsForPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_targets_for_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the targets (thing groups) associated with a given Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTargetsForSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetsForSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The security profile.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListTargetsForSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_security_profile(
    #     security_profile_name: 'securityProfileName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetsForSecurityProfileOutput
    #   resp.data.security_profile_targets #=> Array<SecurityProfileTarget>
    #   resp.data.security_profile_targets[0] #=> Types::SecurityProfileTarget
    #   resp.data.security_profile_targets[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_targets_for_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetsForSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetsForSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargetsForSecurityProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListTargetsForSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargetsForSecurityProfile,
        stubs: @stubs,
        params_class: Params::ListTargetsForSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_targets_for_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the thing groups in your account.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingGroups</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :parent_group
    #   <p>A filter that limits the results to those with the specified parent group.</p>
    #
    # @option params [String] :name_prefix_filter
    #   <p>A filter that limits the results to those with the specified name prefix.</p>
    #
    # @option params [Boolean] :recursive
    #   <p>If true, return child groups as well.</p>
    #
    # @return [Types::ListThingGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_groups(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     parent_group: 'parentGroup',
    #     name_prefix_filter: 'namePrefixFilter',
    #     recursive: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingGroupsOutput
    #   resp.data.thing_groups #=> Array<GroupNameAndArn>
    #   resp.data.thing_groups[0] #=> Types::GroupNameAndArn
    #   resp.data.thing_groups[0].group_name #=> String
    #   resp.data.thing_groups[0].group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_thing_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingGroups
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListThingGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingGroups,
        stubs: @stubs,
        params_class: Params::ListThingGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thing_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the thing groups to which the specified thing belongs.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingGroupsForThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingGroupsForThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The thing name.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListThingGroupsForThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_groups_for_thing(
    #     thing_name: 'thingName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingGroupsForThingOutput
    #   resp.data.thing_groups #=> Array<GroupNameAndArn>
    #   resp.data.thing_groups[0] #=> Types::GroupNameAndArn
    #   resp.data.thing_groups[0].group_name #=> String
    #   resp.data.thing_groups[0].group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_thing_groups_for_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingGroupsForThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingGroupsForThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingGroupsForThing
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListThingGroupsForThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingGroupsForThing,
        stubs: @stubs,
        params_class: Params::ListThingGroupsForThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thing_groups_for_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the principals associated with the specified thing. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingPrincipals</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingPrincipalsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @return [Types::ListThingPrincipalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_principals(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     thing_name: 'thingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingPrincipalsOutput
    #   resp.data.principals #=> Array<String>
    #   resp.data.principals[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_thing_principals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingPrincipalsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingPrincipalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingPrincipals
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListThingPrincipals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingPrincipals,
        stubs: @stubs,
        params_class: Params::ListThingPrincipalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thing_principals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Information about the thing registration tasks.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingRegistrationTaskReportsInput}.
    #
    # @option params [String] :task_id
    #   <p>The id of the task.</p>
    #
    # @option params [String] :report_type
    #   <p>The type of task report.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   		the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    #
    # @return [Types::ListThingRegistrationTaskReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_registration_task_reports(
    #     task_id: 'taskId', # required
    #     report_type: 'ERRORS', # required - accepts ["ERRORS", "RESULTS"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingRegistrationTaskReportsOutput
    #   resp.data.resource_links #=> Array<String>
    #   resp.data.resource_links[0] #=> String
    #   resp.data.report_type #=> String, one of ["ERRORS", "RESULTS"]
    #   resp.data.next_token #=> String
    #
    def list_thing_registration_task_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingRegistrationTaskReportsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingRegistrationTaskReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingRegistrationTaskReports
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListThingRegistrationTaskReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingRegistrationTaskReports,
        stubs: @stubs,
        params_class: Params::ListThingRegistrationTaskReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thing_registration_task_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List bulk thing provisioning tasks.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingRegistrationTasks</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingRegistrationTasksInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :status
    #   <p>The status of the bulk thing provisioning task.</p>
    #
    # @return [Types::ListThingRegistrationTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_registration_tasks(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     status: 'InProgress' # accepts ["InProgress", "Completed", "Failed", "Cancelled", "Cancelling"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingRegistrationTasksOutput
    #   resp.data.task_ids #=> Array<String>
    #   resp.data.task_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_thing_registration_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingRegistrationTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingRegistrationTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingRegistrationTasks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListThingRegistrationTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingRegistrationTasks,
        stubs: @stubs,
        params_class: Params::ListThingRegistrationTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thing_registration_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the existing thing types.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingTypes</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingTypesInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    #
    # @return [Types::ListThingTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_types(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     thing_type_name: 'thingTypeName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingTypesOutput
    #   resp.data.thing_types #=> Array<ThingTypeDefinition>
    #   resp.data.thing_types[0] #=> Types::ThingTypeDefinition
    #   resp.data.thing_types[0].thing_type_name #=> String
    #   resp.data.thing_types[0].thing_type_arn #=> String
    #   resp.data.thing_types[0].thing_type_properties #=> Types::ThingTypeProperties
    #   resp.data.thing_types[0].thing_type_properties.thing_type_description #=> String
    #   resp.data.thing_types[0].thing_type_properties.searchable_attributes #=> Array<String>
    #   resp.data.thing_types[0].thing_type_properties.searchable_attributes[0] #=> String
    #   resp.data.thing_types[0].thing_type_metadata #=> Types::ThingTypeMetadata
    #   resp.data.thing_types[0].thing_type_metadata.deprecated #=> Boolean
    #   resp.data.thing_types[0].thing_type_metadata.deprecation_date #=> Time
    #   resp.data.thing_types[0].thing_type_metadata.creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_thing_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingTypes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListThingTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingTypes,
        stubs: @stubs,
        params_class: Params::ListThingTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thing_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your things. Use the <b>attributeName</b> and
    # 				<b>attributeValue</b> parameters to filter your things.
    # 			For example, calling <code>ListThings</code> with attributeName=Color and
    # 			attributeValue=Red retrieves all things in the registry that contain an attribute
    # 				<b>Color</b> with the value <b>Red</b>. </p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThings</a> action.</p>
    # 		
    # 		       <note>
    # 			         <p>You will not be charged for calling this API if an <code>Access denied</code> error is returned. You will also not be charged if no attributes or pagination token was provided in request and no pagination token and no results were returned.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::ListThingsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The attribute name used to search for things.</p>
    #
    # @option params [String] :attribute_value
    #   <p>The attribute value used to search for things.</p>
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type used to search for things.</p>
    #
    # @option params [Boolean] :use_prefix_attribute_value
    #   <p>When <code>true</code>, the action returns the thing resources with attribute values
    #                        that start with the <code>attributeValue</code> provided.</p>
    #               <p>When <code>false</code>, or not present, the action returns only the thing
    #   			resources with attribute values that match the entire <code>attributeValue</code>
    #   			provided. </p>
    #
    # @return [Types::ListThingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     attribute_name: 'attributeName',
    #     attribute_value: 'attributeValue',
    #     thing_type_name: 'thingTypeName',
    #     use_prefix_attribute_value: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingsOutput
    #   resp.data.things #=> Array<ThingAttribute>
    #   resp.data.things[0] #=> Types::ThingAttribute
    #   resp.data.things[0].thing_name #=> String
    #   resp.data.things[0].thing_type_name #=> String
    #   resp.data.things[0].thing_arn #=> String
    #   resp.data.things[0].attributes #=> Hash<String, String>
    #   resp.data.things[0].attributes['key'] #=> String
    #   resp.data.things[0].version #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_things(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThings
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListThings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThings,
        stubs: @stubs,
        params_class: Params::ListThingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_things
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the things you have added to the given billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingsInBillingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingsInBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    #
    # @return [Types::ListThingsInBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things_in_billing_group(
    #     billing_group_name: 'billingGroupName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingsInBillingGroupOutput
    #   resp.data.things #=> Array<String>
    #   resp.data.things[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_things_in_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingsInBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingsInBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingsInBillingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListThingsInBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingsInBillingGroup,
        stubs: @stubs,
        params_class: Params::ListThingsInBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_things_in_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the things in the specified group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingsInThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThingsInThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The thing group name.</p>
    #
    # @option params [Boolean] :recursive
    #   <p>When true, list things in this thing group and in all child groups as
    #   			well.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListThingsInThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things_in_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     recursive: false,
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThingsInThingGroupOutput
    #   resp.data.things #=> Array<String>
    #   resp.data.things[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_things_in_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThingsInThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThingsInThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThingsInThingGroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListThingsInThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThingsInThingGroup,
        stubs: @stubs,
        params_class: Params::ListThingsInThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_things_in_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the topic rule destinations in your Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTopicRuleDestinations</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTopicRuleDestinationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    #
    # @return [Types::ListTopicRuleDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_rule_destinations(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTopicRuleDestinationsOutput
    #   resp.data.destination_summaries #=> Array<TopicRuleDestinationSummary>
    #   resp.data.destination_summaries[0] #=> Types::TopicRuleDestinationSummary
    #   resp.data.destination_summaries[0].arn #=> String
    #   resp.data.destination_summaries[0].status #=> String, one of ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"]
    #   resp.data.destination_summaries[0].created_at #=> Time
    #   resp.data.destination_summaries[0].last_updated_at #=> Time
    #   resp.data.destination_summaries[0].status_reason #=> String
    #   resp.data.destination_summaries[0].http_url_summary #=> Types::HttpUrlDestinationSummary
    #   resp.data.destination_summaries[0].http_url_summary.confirmation_url #=> String
    #   resp.data.destination_summaries[0].vpc_destination_summary #=> Types::VpcDestinationSummary
    #   resp.data.destination_summaries[0].vpc_destination_summary.subnet_ids #=> Array<String>
    #   resp.data.destination_summaries[0].vpc_destination_summary.subnet_ids[0] #=> String
    #   resp.data.destination_summaries[0].vpc_destination_summary.security_groups #=> Array<String>
    #   resp.data.destination_summaries[0].vpc_destination_summary.security_groups[0] #=> String
    #   resp.data.destination_summaries[0].vpc_destination_summary.vpc_id #=> String
    #   resp.data.destination_summaries[0].vpc_destination_summary.role_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_topic_rule_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTopicRuleDestinationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTopicRuleDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTopicRuleDestinations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListTopicRuleDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTopicRuleDestinations,
        stubs: @stubs,
        params_class: Params::ListTopicRuleDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_topic_rule_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the rules for the specific topic.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTopicRules</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTopicRulesInput}.
    #
    # @option params [String] :topic
    #   <p>The topic.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    #
    # @option params [Boolean] :rule_disabled
    #   <p>Specifies whether the rule is disabled.</p>
    #
    # @return [Types::ListTopicRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_rules(
    #     topic: 'topic',
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     rule_disabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTopicRulesOutput
    #   resp.data.rules #=> Array<TopicRuleListItem>
    #   resp.data.rules[0] #=> Types::TopicRuleListItem
    #   resp.data.rules[0].rule_arn #=> String
    #   resp.data.rules[0].rule_name #=> String
    #   resp.data.rules[0].topic_pattern #=> String
    #   resp.data.rules[0].created_at #=> Time
    #   resp.data.rules[0].rule_disabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_topic_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTopicRulesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTopicRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTopicRules
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException]),
        data_parser: Parsers::ListTopicRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTopicRules,
        stubs: @stubs,
        params_class: Params::ListTopicRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_topic_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists logging levels.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListV2LoggingLevels</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListV2LoggingLevelsInput}.
    #
    # @option params [String] :target_type
    #   <p>The type of resource for which you are configuring logging. Must be
    #               <code>THING_Group</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListV2LoggingLevelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_v2_logging_levels(
    #     target_type: 'DEFAULT', # accepts ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListV2LoggingLevelsOutput
    #   resp.data.log_target_configurations #=> Array<LogTargetConfiguration>
    #   resp.data.log_target_configurations[0] #=> Types::LogTargetConfiguration
    #   resp.data.log_target_configurations[0].log_target #=> Types::LogTarget
    #   resp.data.log_target_configurations[0].log_target.target_type #=> String, one of ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"]
    #   resp.data.log_target_configurations[0].log_target.target_name #=> String
    #   resp.data.log_target_configurations[0].log_level #=> String, one of ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   resp.data.next_token #=> String
    #
    def list_v2_logging_levels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListV2LoggingLevelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListV2LoggingLevelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListV2LoggingLevels
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::NotConfiguredException, Errors::InternalException]),
        data_parser: Parsers::ListV2LoggingLevels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListV2LoggingLevels,
        stubs: @stubs,
        params_class: Params::ListV2LoggingLevelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_v2_logging_levels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Device Defender security profile violations discovered during the given time period.
    #       You can use filters to limit the results to those alerts issued for a particular security profile,
    #       behavior, or thing (device).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListViolationEvents</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListViolationEventsInput}.
    #
    # @option params [Time] :start_time
    #   <p>The start time for the alerts to be listed.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end time for the alerts to be listed.</p>
    #
    # @option params [String] :thing_name
    #   <p>A filter to limit results to those alerts caused by the specified thing.</p>
    #
    # @option params [String] :security_profile_name
    #   <p>A filter to limit results to those alerts generated by the specified security profile.</p>
    #
    # @option params [String] :behavior_criteria_type
    #   <p>
    #         The criteria for a behavior.
    #       </p>
    #
    # @option params [Boolean] :list_suppressed_alerts
    #   <p>
    #         A list of all suppressed alerts.
    #       </p>
    #
    # @option params [String] :verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListViolationEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_violation_events(
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     thing_name: 'thingName',
    #     security_profile_name: 'securityProfileName',
    #     behavior_criteria_type: 'STATIC', # accepts ["STATIC", "STATISTICAL", "MACHINE_LEARNING"]
    #     list_suppressed_alerts: false,
    #     verification_state: 'FALSE_POSITIVE', # accepts ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListViolationEventsOutput
    #   resp.data.violation_events #=> Array<ViolationEvent>
    #   resp.data.violation_events[0] #=> Types::ViolationEvent
    #   resp.data.violation_events[0].violation_id #=> String
    #   resp.data.violation_events[0].thing_name #=> String
    #   resp.data.violation_events[0].security_profile_name #=> String
    #   resp.data.violation_events[0].behavior #=> Types::Behavior
    #   resp.data.violation_events[0].behavior.name #=> String
    #   resp.data.violation_events[0].behavior.metric #=> String
    #   resp.data.violation_events[0].behavior.metric_dimension #=> Types::MetricDimension
    #   resp.data.violation_events[0].behavior.metric_dimension.dimension_name #=> String
    #   resp.data.violation_events[0].behavior.metric_dimension.operator #=> String, one of ["IN", "NOT_IN"]
    #   resp.data.violation_events[0].behavior.criteria #=> Types::BehaviorCriteria
    #   resp.data.violation_events[0].behavior.criteria.comparison_operator #=> String, one of ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #   resp.data.violation_events[0].behavior.criteria.value #=> Types::MetricValue
    #   resp.data.violation_events[0].behavior.criteria.value.count #=> Integer
    #   resp.data.violation_events[0].behavior.criteria.value.cidrs #=> Array<String>
    #   resp.data.violation_events[0].behavior.criteria.value.cidrs[0] #=> String
    #   resp.data.violation_events[0].behavior.criteria.value.ports #=> Array<Integer>
    #   resp.data.violation_events[0].behavior.criteria.value.ports[0] #=> Integer
    #   resp.data.violation_events[0].behavior.criteria.value.number #=> Float
    #   resp.data.violation_events[0].behavior.criteria.value.numbers #=> Array<Float>
    #   resp.data.violation_events[0].behavior.criteria.value.numbers[0] #=> Float
    #   resp.data.violation_events[0].behavior.criteria.value.strings #=> Array<String>
    #   resp.data.violation_events[0].behavior.criteria.value.strings[0] #=> String
    #   resp.data.violation_events[0].behavior.criteria.duration_seconds #=> Integer
    #   resp.data.violation_events[0].behavior.criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.data.violation_events[0].behavior.criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.data.violation_events[0].behavior.criteria.statistical_threshold #=> Types::StatisticalThreshold
    #   resp.data.violation_events[0].behavior.criteria.statistical_threshold.statistic #=> String
    #   resp.data.violation_events[0].behavior.criteria.ml_detection_config #=> Types::MachineLearningDetectionConfig
    #   resp.data.violation_events[0].behavior.criteria.ml_detection_config.confidence_level #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.violation_events[0].behavior.suppress_alerts #=> Boolean
    #   resp.data.violation_events[0].metric_value #=> Types::MetricValue
    #   resp.data.violation_events[0].violation_event_additional_info #=> Types::ViolationEventAdditionalInfo
    #   resp.data.violation_events[0].violation_event_additional_info.confidence_level #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.violation_events[0].violation_event_type #=> String, one of ["in-alarm", "alarm-cleared", "alarm-invalidated"]
    #   resp.data.violation_events[0].verification_state #=> String, one of ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"]
    #   resp.data.violation_events[0].verification_state_description #=> String
    #   resp.data.violation_events[0].violation_event_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_violation_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListViolationEventsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListViolationEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListViolationEvents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ListViolationEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListViolationEvents,
        stubs: @stubs,
        params_class: Params::ListViolationEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_violation_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set a verification state and provide a description of that verification state on a violation (detect alarm).</p>
    #
    # @param [Hash] params
    #   See {Types::PutVerificationStateOnViolationInput}.
    #
    # @option params [String] :violation_id
    #   <p>The violation ID.</p>
    #
    # @option params [String] :verification_state
    #   <p>The verification state of the violation.</p>
    #
    # @option params [String] :verification_state_description
    #   <p>The description of the verification state of the violation (detect alarm).</p>
    #
    # @return [Types::PutVerificationStateOnViolationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_verification_state_on_violation(
    #     violation_id: 'violationId', # required
    #     verification_state: 'FALSE_POSITIVE', # required - accepts ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"]
    #     verification_state_description: 'verificationStateDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVerificationStateOnViolationOutput
    #
    def put_verification_state_on_violation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVerificationStateOnViolationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVerificationStateOnViolationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVerificationStateOnViolation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::PutVerificationStateOnViolation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVerificationStateOnViolation,
        stubs: @stubs,
        params_class: Params::PutVerificationStateOnViolationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_verification_state_on_violation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a CA certificate with IoT. This CA certificate can then be used to sign
    #          device certificates, which can be then registered with IoT. You can register up to 10
    #          CA certificates per Amazon Web Services account that have the same subject field. This enables you to have
    #          up to 10 certificate authorities sign your device certificates. If you have more than one
    #          CA certificate registered, make sure you pass the CA certificate when you register your
    #          device certificates with the <a>RegisterCertificate</a> action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RegisterCACertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterCACertificateInput}.
    #
    # @option params [String] :ca_certificate
    #   <p>The CA certificate.</p>
    #
    # @option params [String] :verification_certificate
    #   <p>The private key verification certificate.</p>
    #
    # @option params [Boolean] :set_as_active
    #   <p>A boolean value that specifies if the CA certificate is set to active.</p>
    #            <p>Valid values: <code>ACTIVE | INACTIVE</code>
    #            </p>
    #
    # @option params [Boolean] :allow_auto_registration
    #   <p>Allows this CA certificate to be used for auto registration of device
    #            certificates.</p>
    #
    # @option params [RegistrationConfig] :registration_config
    #   <p>Information about the registration configuration.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the CA certificate.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #
    # @return [Types::RegisterCACertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_ca_certificate(
    #     ca_certificate: 'caCertificate', # required
    #     verification_certificate: 'verificationCertificate', # required
    #     set_as_active: false,
    #     allow_auto_registration: false,
    #     registration_config: {
    #       template_body: 'templateBody',
    #       role_arn: 'roleArn'
    #     },
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
    #   resp.data #=> Types::RegisterCACertificateOutput
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_id #=> String
    #
    def register_ca_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterCACertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterCACertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterCACertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::RegistrationCodeValidationException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::RegisterCACertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterCACertificate,
        stubs: @stubs,
        params_class: Params::RegisterCACertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_ca_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a device certificate with IoT. If you have more than one CA certificate
    #          that has the same subject field, you must specify the CA certificate that was used to sign
    #          the device certificate being registered.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RegisterCertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterCertificateInput}.
    #
    # @option params [String] :certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #
    # @option params [String] :ca_certificate_pem
    #   <p>The CA certificate used to sign the device certificate being registered.</p>
    #
    # @option params [Boolean] :set_as_active
    #   <p>A boolean value that specifies if the certificate is set to active.</p>
    #            <p>Valid values: <code>ACTIVE | INACTIVE</code>
    #            </p>
    #
    # @option params [String] :status
    #   <p>The status of the register certificate request. Valid values that you can use include
    #            <code>ACTIVE</code>, <code>INACTIVE</code>, and <code>REVOKED</code>.</p>
    #
    # @return [Types::RegisterCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate(
    #     certificate_pem: 'certificatePem', # required
    #     ca_certificate_pem: 'caCertificatePem',
    #     set_as_active: false,
    #     status: 'ACTIVE' # accepts ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterCertificateOutput
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_id #=> String
    #
    def register_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::CertificateStateException, Errors::ThrottlingException, Errors::CertificateConflictException, Errors::UnauthorizedException]),
        data_parser: Parsers::RegisterCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterCertificate,
        stubs: @stubs,
        params_class: Params::RegisterCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Register a certificate that does not have a certificate authority (CA).
    #          For supported certificates, consult <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms">
    #          Certificate signing algorithms supported by IoT</a>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::RegisterCertificateWithoutCAInput}.
    #
    # @option params [String] :certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #
    # @option params [String] :status
    #   <p>The status of the register certificate request.</p>
    #
    # @return [Types::RegisterCertificateWithoutCAOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate_without_ca(
    #     certificate_pem: 'certificatePem', # required
    #     status: 'ACTIVE' # accepts ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterCertificateWithoutCAOutput
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_id #=> String
    #
    def register_certificate_without_ca(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterCertificateWithoutCAInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterCertificateWithoutCAInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterCertificateWithoutCA
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::CertificateStateException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::RegisterCertificateWithoutCA
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterCertificateWithoutCA,
        stubs: @stubs,
        params_class: Params::RegisterCertificateWithoutCAOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_certificate_without_ca
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions a thing in the device registry. RegisterThing calls other IoT control
    #          plane APIs. These calls might exceed your account level <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot">
    #             IoT Throttling Limits</a> and cause throttle errors. Please contact <a href="https://console.aws.amazon.com/support/home">Amazon Web Services Customer Support</a> to raise
    #          your throttling limits if necessary.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RegisterThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterThingInput}.
    #
    # @option params [String] :template_body
    #   <p>The provisioning template. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-w-cert.html">Provisioning Devices That Have Device Certificates</a> for more information.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>The parameters for provisioning a thing. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning Templates</a> for more information.</p>
    #
    # @return [Types::RegisterThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_thing(
    #     template_body: 'templateBody', # required
    #     parameters: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterThingOutput
    #   resp.data.certificate_pem #=> String
    #   resp.data.resource_arns #=> Hash<String, String>
    #   resp.data.resource_arns['key'] #=> String
    #
    def register_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::ThrottlingException, Errors::ResourceRegistrationFailureException, Errors::UnauthorizedException]),
        data_parser: Parsers::RegisterThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterThing,
        stubs: @stubs,
        params_class: Params::RegisterThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects a pending certificate transfer. After IoT rejects a certificate transfer,
    #          the certificate status changes from <b>PENDING_TRANSFER</b> to
    #             <b>INACTIVE</b>.</p>
    #          <p>To check for pending certificate transfers, call <a>ListCertificates</a>
    #          to enumerate your certificates.</p>
    #          <p>This operation can only be called by the transfer destination. After it is called,
    #          the certificate will be returned to the source's account in the INACTIVE state.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RejectCertificateTransfer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectCertificateTransferInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @option params [String] :reject_reason
    #   <p>The reason the certificate transfer was rejected.</p>
    #
    # @return [Types::RejectCertificateTransferOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_certificate_transfer(
    #     certificate_id: 'certificateId', # required
    #     reject_reason: 'rejectReason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectCertificateTransferOutput
    #
    def reject_certificate_transfer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectCertificateTransferInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectCertificateTransferInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectCertificateTransfer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TransferAlreadyCompletedException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::RejectCertificateTransfer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectCertificateTransfer,
        stubs: @stubs,
        params_class: Params::RejectCertificateTransferOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_certificate_transfer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the given thing from the billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RemoveThingFromBillingGroup</a> action.</p>
    # 		       <note>
    #             <p>This call is asynchronous. It might take several seconds for the detachment to propagate.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RemoveThingFromBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #
    # @option params [String] :billing_group_arn
    #   <p>The ARN of the billing group.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to be removed from the billing group.</p>
    #
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to be removed from the billing group.</p>
    #
    # @return [Types::RemoveThingFromBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_thing_from_billing_group(
    #     billing_group_name: 'billingGroupName',
    #     billing_group_arn: 'billingGroupArn',
    #     thing_name: 'thingName',
    #     thing_arn: 'thingArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveThingFromBillingGroupOutput
    #
    def remove_thing_from_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveThingFromBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveThingFromBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveThingFromBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RemoveThingFromBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveThingFromBillingGroup,
        stubs: @stubs,
        params_class: Params::RemoveThingFromBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_thing_from_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove the specified thing from the specified group.</p>
    # 		       <p>You must specify either a <code>thingGroupArn</code> or a
    # 			<code>thingGroupName</code> to identify the thing group and
    # 			either a <code>thingArn</code> or a <code>thingName</code> to
    # 			identify the thing to remove from the thing group.
    # 		</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RemoveThingFromThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveThingFromThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The group name.</p>
    #
    # @option params [String] :thing_group_arn
    #   <p>The group ARN.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to remove from the group.</p>
    #
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to remove from the group.</p>
    #
    # @return [Types::RemoveThingFromThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_thing_from_thing_group(
    #     thing_group_name: 'thingGroupName',
    #     thing_group_arn: 'thingGroupArn',
    #     thing_name: 'thingName',
    #     thing_arn: 'thingArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveThingFromThingGroupOutput
    #
    def remove_thing_from_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveThingFromThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveThingFromThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveThingFromThingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RemoveThingFromThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveThingFromThingGroup,
        stubs: @stubs,
        params_class: Params::RemoveThingFromThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_thing_from_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the rule. You must specify all parameters for the new rule. Creating rules
    #          is an administrator-level action. Any user who has permission to create rules will be able
    #          to access data processed by the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ReplaceTopicRule</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ReplaceTopicRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    #
    # @option params [TopicRulePayload] :topic_rule_payload
    #   <p>The rule payload.</p>
    #
    # @return [Types::ReplaceTopicRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_topic_rule(
    #     rule_name: 'ruleName', # required
    #     topic_rule_payload: {
    #       sql: 'sql', # required
    #       description: 'description',
    #       actions: [
    #         {
    #           dynamo_db: {
    #             table_name: 'tableName', # required
    #             role_arn: 'roleArn', # required
    #             operation: 'operation',
    #             hash_key_field: 'hashKeyField', # required
    #             hash_key_value: 'hashKeyValue', # required
    #             hash_key_type: 'STRING', # accepts ["STRING", "NUMBER"]
    #             range_key_field: 'rangeKeyField',
    #             range_key_value: 'rangeKeyValue',
    #             range_key_type: 'STRING', # accepts ["STRING", "NUMBER"]
    #             payload_field: 'payloadField'
    #           },
    #           dynamo_d_bv2: {
    #             role_arn: 'roleArn', # required
    #             put_item: {
    #               table_name: 'tableName' # required
    #             } # required
    #           },
    #           lambda: {
    #             function_arn: 'functionArn' # required
    #           },
    #           sns: {
    #             target_arn: 'targetArn', # required
    #             role_arn: 'roleArn', # required
    #             message_format: 'RAW' # accepts ["RAW", "JSON"]
    #           },
    #           sqs: {
    #             role_arn: 'roleArn', # required
    #             queue_url: 'queueUrl', # required
    #             use_base64: false
    #           },
    #           kinesis: {
    #             role_arn: 'roleArn', # required
    #             stream_name: 'streamName', # required
    #             partition_key: 'partitionKey'
    #           },
    #           republish: {
    #             role_arn: 'roleArn', # required
    #             topic: 'topic', # required
    #             qos: 1
    #           },
    #           s3: {
    #             role_arn: 'roleArn', # required
    #             bucket_name: 'bucketName', # required
    #             key: 'key', # required
    #             canned_acl: 'private' # accepts ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #           },
    #           firehose: {
    #             role_arn: 'roleArn', # required
    #             delivery_stream_name: 'deliveryStreamName', # required
    #             separator: 'separator',
    #             batch_mode: false
    #           },
    #           cloudwatch_metric: {
    #             role_arn: 'roleArn', # required
    #             metric_namespace: 'metricNamespace', # required
    #             metric_name: 'metricName', # required
    #             metric_value: 'metricValue', # required
    #             metric_unit: 'metricUnit', # required
    #             metric_timestamp: 'metricTimestamp'
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: 'roleArn', # required
    #             alarm_name: 'alarmName', # required
    #             state_reason: 'stateReason', # required
    #             state_value: 'stateValue' # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: 'roleArn', # required
    #             log_group_name: 'logGroupName' # required
    #           },
    #           elasticsearch: {
    #             role_arn: 'roleArn', # required
    #             endpoint: 'endpoint', # required
    #             index: 'index', # required
    #             type: 'type', # required
    #             id: 'id' # required
    #           },
    #           salesforce: {
    #             token: 'token', # required
    #             url: 'url' # required
    #           },
    #           iot_analytics: {
    #             channel_arn: 'channelArn',
    #             channel_name: 'channelName',
    #             batch_mode: false,
    #             role_arn: 'roleArn'
    #           },
    #           iot_events: {
    #             input_name: 'inputName', # required
    #             message_id: 'messageId',
    #             batch_mode: false,
    #             role_arn: 'roleArn' # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [
    #               {
    #                 entry_id: 'entryId',
    #                 asset_id: 'assetId',
    #                 property_id: 'propertyId',
    #                 property_alias: 'propertyAlias',
    #                 property_values: [
    #                   {
    #                     value: {
    #                       # One of:
    #                       string_value: 'stringValue',
    #                       integer_value: 'integerValue',
    #                       double_value: 'doubleValue',
    #                       boolean_value: 'booleanValue'
    #                     }, # required
    #                     timestamp: {
    #                       time_in_seconds: 'timeInSeconds', # required
    #                       offset_in_nanos: 'offsetInNanos'
    #                     }, # required
    #                     quality: 'quality'
    #                   }
    #                 ] # required
    #               }
    #             ], # required
    #             role_arn: 'roleArn' # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: 'executionNamePrefix',
    #             state_machine_name: 'stateMachineName', # required
    #             role_arn: 'roleArn' # required
    #           },
    #           timestream: {
    #             role_arn: 'roleArn', # required
    #             database_name: 'databaseName', # required
    #             table_name: 'tableName', # required
    #             dimensions: [
    #               {
    #                 name: 'name', # required
    #                 value: 'value' # required
    #               }
    #             ], # required
    #             timestamp: {
    #               value: 'value', # required
    #               unit: 'unit' # required
    #             }
    #           },
    #           http: {
    #             url: 'url', # required
    #             confirmation_url: 'confirmationUrl',
    #             headers: [
    #               {
    #                 key: 'key', # required
    #                 value: 'value' # required
    #               }
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: 'signingRegion', # required
    #                 service_name: 'serviceName', # required
    #                 role_arn: 'roleArn' # required
    #               }
    #             }
    #           },
    #           kafka: {
    #             destination_arn: 'destinationArn', # required
    #             topic: 'topic', # required
    #             key: 'key',
    #             partition: 'partition',
    #             client_properties: {
    #               'key' => 'value'
    #             } # required
    #           },
    #           open_search: {
    #             role_arn: 'roleArn', # required
    #             endpoint: 'endpoint', # required
    #             index: 'index', # required
    #             type: 'type', # required
    #             id: 'id' # required
    #           }
    #         }
    #       ], # required
    #       rule_disabled: false,
    #       aws_iot_sql_version: 'awsIotSqlVersion',
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReplaceTopicRuleOutput
    #
    def replace_topic_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReplaceTopicRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReplaceTopicRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReplaceTopicRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::SqlParseException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::ReplaceTopicRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReplaceTopicRule,
        stubs: @stubs,
        params_class: Params::ReplaceTopicRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :replace_topic_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The query search index.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SearchIndex</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchIndexInput}.
    #
    # @option params [String] :index_name
    #   <p>The search index name.</p>
    #
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    #
    # @option params [String] :next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @option params [String] :query_version
    #   <p>The query version.</p>
    #
    # @return [Types::SearchIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_index(
    #     index_name: 'indexName',
    #     query_string: 'queryString', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     query_version: 'queryVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchIndexOutput
    #   resp.data.next_token #=> String
    #   resp.data.things #=> Array<ThingDocument>
    #   resp.data.things[0] #=> Types::ThingDocument
    #   resp.data.things[0].thing_name #=> String
    #   resp.data.things[0].thing_id #=> String
    #   resp.data.things[0].thing_type_name #=> String
    #   resp.data.things[0].thing_group_names #=> Array<String>
    #   resp.data.things[0].thing_group_names[0] #=> String
    #   resp.data.things[0].attributes #=> Hash<String, String>
    #   resp.data.things[0].attributes['key'] #=> String
    #   resp.data.things[0].shadow #=> String
    #   resp.data.things[0].device_defender #=> String
    #   resp.data.things[0].connectivity #=> Types::ThingConnectivity
    #   resp.data.things[0].connectivity.connected #=> Boolean
    #   resp.data.things[0].connectivity.timestamp #=> Integer
    #   resp.data.things[0].connectivity.disconnect_reason #=> String
    #   resp.data.thing_groups #=> Array<ThingGroupDocument>
    #   resp.data.thing_groups[0] #=> Types::ThingGroupDocument
    #   resp.data.thing_groups[0].thing_group_name #=> String
    #   resp.data.thing_groups[0].thing_group_id #=> String
    #   resp.data.thing_groups[0].thing_group_description #=> String
    #   resp.data.thing_groups[0].attributes #=> Hash<String, String>
    #   resp.data.thing_groups[0].parent_group_names #=> Array<String>
    #
    def search_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchIndexInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchIndex
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::SearchIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchIndex,
        stubs: @stubs,
        params_class: Params::SearchIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the default authorizer. This will be used if a websocket connection is made
    #          without specifying an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetDefaultAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::SetDefaultAuthorizerInput}.
    #
    # @option params [String] :authorizer_name
    #   <p>The authorizer name.</p>
    #
    # @return [Types::SetDefaultAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_authorizer(
    #     authorizer_name: 'authorizerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDefaultAuthorizerOutput
    #   resp.data.authorizer_name #=> String
    #   resp.data.authorizer_arn #=> String
    #
    def set_default_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDefaultAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDefaultAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDefaultAuthorizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::SetDefaultAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDefaultAuthorizer,
        stubs: @stubs,
        params_class: Params::SetDefaultAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_default_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the specified version of the specified policy as the policy's default
    #          (operative) version. This action affects all certificates to which the policy is attached.
    #          To list the principals the policy is attached to, use the <a>ListPrincipalPolicies</a>
    #          action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetDefaultPolicyVersion</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::SetDefaultPolicyVersionInput}.
    #
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    #
    # @option params [String] :policy_version_id
    #   <p>The policy version ID.</p>
    #
    # @return [Types::SetDefaultPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_policy_version(
    #     policy_name: 'policyName', # required
    #     policy_version_id: 'policyVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDefaultPolicyVersionOutput
    #
    def set_default_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDefaultPolicyVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDefaultPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDefaultPolicyVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::SetDefaultPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDefaultPolicyVersion,
        stubs: @stubs,
        params_class: Params::SetDefaultPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_default_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the logging options.</p>
    #          <p>NOTE: use of this command is not recommended. Use <code>SetV2LoggingOptions</code>
    #          instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetLoggingOptions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::SetLoggingOptionsInput}.
    #
    # @option params [LoggingOptionsPayload] :logging_options_payload
    #   <p>The logging options payload.</p>
    #
    # @return [Types::SetLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_logging_options(
    #     logging_options_payload: {
    #       role_arn: 'roleArn', # required
    #       log_level: 'DEBUG' # accepts ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetLoggingOptionsOutput
    #
    def set_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetLoggingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetLoggingOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException]),
        data_parser: Parsers::SetLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetLoggingOptions,
        stubs: @stubs,
        params_class: Params::SetLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the logging level.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetV2LoggingLevel</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::SetV2LoggingLevelInput}.
    #
    # @option params [LogTarget] :log_target
    #   <p>The log target.</p>
    #
    # @option params [String] :log_level
    #   <p>The log level.</p>
    #
    # @return [Types::SetV2LoggingLevelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_v2_logging_level(
    #     log_target: {
    #       target_type: 'DEFAULT', # required - accepts ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"]
    #       target_name: 'targetName'
    #     }, # required
    #     log_level: 'DEBUG' # required - accepts ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetV2LoggingLevelOutput
    #
    def set_v2_logging_level(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetV2LoggingLevelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetV2LoggingLevelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetV2LoggingLevel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::NotConfiguredException, Errors::InternalException]),
        data_parser: Parsers::SetV2LoggingLevel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetV2LoggingLevel,
        stubs: @stubs,
        params_class: Params::SetV2LoggingLevelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_v2_logging_level
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the logging options for the V2 logging service.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetV2LoggingOptions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::SetV2LoggingOptionsInput}.
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the role that allows IoT to write to Cloudwatch logs.</p>
    #
    # @option params [String] :default_log_level
    #   <p>The default logging level.</p>
    #
    # @option params [Boolean] :disable_all_logs
    #   <p>If true all logs are disabled. The default is false.</p>
    #
    # @return [Types::SetV2LoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_v2_logging_options(
    #     role_arn: 'roleArn',
    #     default_log_level: 'DEBUG', # accepts ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #     disable_all_logs: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetV2LoggingOptionsOutput
    #
    def set_v2_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetV2LoggingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetV2LoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetV2LoggingOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalException]),
        data_parser: Parsers::SetV2LoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetV2LoggingOptions,
        stubs: @stubs,
        params_class: Params::SetV2LoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_v2_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a task that applies a set of mitigation actions to the specified target.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartAuditMitigationActionsTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAuditMitigationActionsTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>A unique identifier for the task. You can use this identifier to check the status of the task or to cancel it.</p>
    #
    # @option params [AuditMitigationActionsTaskTarget] :target
    #   <p>Specifies the audit findings to which the mitigation actions are applied. You can apply
    #         them to a type of audit check, to all findings from an audit, or to a
    #         specific set of
    #         findings.</p>
    #
    # @option params [Hash<String, Array<String>>] :audit_check_to_actions_mapping
    #   <p>For an audit check, specifies which mitigation actions to apply. Those actions must be defined in your Amazon Web Services accounts.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each audit mitigation task must have a unique client request token. If you try to start a new task with the same token as a task that already exists, an exception occurs. If you omit this value, a unique client request token is generated automatically.</p>
    #
    # @return [Types::StartAuditMitigationActionsTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_audit_mitigation_actions_task(
    #     task_id: 'taskId', # required
    #     target: {
    #       audit_task_id: 'auditTaskId',
    #       finding_ids: [
    #         'member'
    #       ],
    #       audit_check_to_reason_code_filter: {
    #         'key' => [
    #           'member'
    #         ]
    #       }
    #     }, # required
    #     audit_check_to_actions_mapping: {
    #       'key' => [
    #         'member'
    #       ]
    #     }, # required
    #     client_request_token: 'clientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAuditMitigationActionsTaskOutput
    #   resp.data.task_id #=> String
    #
    def start_audit_mitigation_actions_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAuditMitigationActionsTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAuditMitigationActionsTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAuditMitigationActionsTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TaskAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::StartAuditMitigationActionsTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAuditMitigationActionsTask,
        stubs: @stubs,
        params_class: Params::StartAuditMitigationActionsTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_audit_mitigation_actions_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Starts a Device Defender ML Detect mitigation actions task.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartDetectMitigationActionsTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDetectMitigationActionsTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #
    # @option params [DetectMitigationActionsTaskTarget] :target
    #   <p>
    #         Specifies the ML Detect findings to which the mitigation actions are applied.
    #       </p>
    #
    # @option params [Array<String>] :actions
    #   <p>
    #         The actions to be performed when a device has unexpected behavior.
    #       </p>
    #
    # @option params [ViolationEventOccurrenceRange] :violation_event_occurrence_range
    #   <p>
    #         Specifies the time period of which violation events occurred between.
    #       </p>
    #
    # @option params [Boolean] :include_only_active_violations
    #   <p>
    #         Specifies to list only active violations.
    #       </p>
    #
    # @option params [Boolean] :include_suppressed_alerts
    #   <p>
    #         Specifies to include suppressed alerts.
    #       </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #         Each mitigation action task must have a unique client request token. If you try to create a new task with the same token as a task that already exists, an exception occurs. If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request.
    #       </p>
    #
    # @return [Types::StartDetectMitigationActionsTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_detect_mitigation_actions_task(
    #     task_id: 'taskId', # required
    #     target: {
    #       violation_ids: [
    #         'member'
    #       ],
    #       security_profile_name: 'securityProfileName',
    #       behavior_name: 'behaviorName'
    #     }, # required
    #     actions: [
    #       'member'
    #     ], # required
    #     violation_event_occurrence_range: {
    #       start_time: Time.now, # required
    #       end_time: Time.now # required
    #     },
    #     include_only_active_violations: false,
    #     include_suppressed_alerts: false,
    #     client_request_token: 'clientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDetectMitigationActionsTaskOutput
    #   resp.data.task_id #=> String
    #
    def start_detect_mitigation_actions_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDetectMitigationActionsTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDetectMitigationActionsTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDetectMitigationActionsTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TaskAlreadyExistsException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::StartDetectMitigationActionsTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDetectMitigationActionsTask,
        stubs: @stubs,
        params_class: Params::StartDetectMitigationActionsTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_detect_mitigation_actions_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an on-demand Device Defender audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartOnDemandAuditTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartOnDemandAuditTaskInput}.
    #
    # @option params [Array<String>] :target_check_names
    #   <p>Which checks are performed during the audit. The checks you specify must be enabled
    #               for your account or an exception occurs. Use <code>DescribeAccountAuditConfiguration</code>
    #               to see the list of all checks, including those that are enabled or
    #               <code>UpdateAccountAuditConfiguration</code> to select which checks are enabled.</p>
    #
    # @return [Types::StartOnDemandAuditTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_audit_task(
    #     target_check_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartOnDemandAuditTaskOutput
    #   resp.data.task_id #=> String
    #
    def start_on_demand_audit_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartOnDemandAuditTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartOnDemandAuditTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartOnDemandAuditTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::StartOnDemandAuditTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartOnDemandAuditTask,
        stubs: @stubs,
        params_class: Params::StartOnDemandAuditTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_on_demand_audit_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a bulk thing provisioning task.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartThingRegistrationTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartThingRegistrationTaskInput}.
    #
    # @option params [String] :template_body
    #   <p>The provisioning template.</p>
    #
    # @option params [String] :input_file_bucket
    #   <p>The S3 bucket that contains the input file.</p>
    #
    # @option params [String] :input_file_key
    #   <p>The name of input file within the S3 bucket. This file contains a newline delimited
    #   			JSON file. Each line contains the parameter values to provision one device
    #   			(thing).</p>
    #
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that grants permission the input file.</p>
    #
    # @return [Types::StartThingRegistrationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_thing_registration_task(
    #     template_body: 'templateBody', # required
    #     input_file_bucket: 'inputFileBucket', # required
    #     input_file_key: 'inputFileKey', # required
    #     role_arn: 'roleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartThingRegistrationTaskOutput
    #   resp.data.task_id #=> String
    #
    def start_thing_registration_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartThingRegistrationTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartThingRegistrationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartThingRegistrationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::StartThingRegistrationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartThingRegistrationTask,
        stubs: @stubs,
        params_class: Params::StartThingRegistrationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_thing_registration_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a bulk thing provisioning task.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StopThingRegistrationTask</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StopThingRegistrationTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The bulk thing provisioning task ID.</p>
    #
    # @return [Types::StopThingRegistrationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_thing_registration_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopThingRegistrationTaskOutput
    #
    def stop_thing_registration_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopThingRegistrationTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopThingRegistrationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopThingRegistrationTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::StopThingRegistrationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopThingRegistrationTask,
        stubs: @stubs,
        params_class: Params::StopThingRegistrationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_thing_registration_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata which can be
    # 			used to manage a resource.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TagResource</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
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
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Tests if a specified principal is authorized to perform an IoT action on a
    #          specified resource. Use this to test and debug the authorization behavior of devices that
    #          connect to the IoT device gateway.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TestAuthorization</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::TestAuthorizationInput}.
    #
    # @option params [String] :principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #
    # @option params [String] :cognito_identity_pool_id
    #   <p>The Cognito identity pool ID.</p>
    #
    # @option params [Array<AuthInfo>] :auth_infos
    #   <p>A list of authorization info objects. Simulating authorization will create a response
    #            for each <code>authInfo</code> object in the list.</p>
    #
    # @option params [String] :client_id
    #   <p>The MQTT client ID.</p>
    #
    # @option params [Array<String>] :policy_names_to_add
    #   <p>When testing custom authorization, the policies specified here are treated as if they
    #            are attached to the principal being authorized.</p>
    #
    # @option params [Array<String>] :policy_names_to_skip
    #   <p>When testing custom authorization, the policies specified here are treated as if they
    #            are not attached to the principal being authorized.</p>
    #
    # @return [Types::TestAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_authorization(
    #     principal: 'principal',
    #     cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #     auth_infos: [
    #       {
    #         action_type: 'PUBLISH', # accepts ["PUBLISH", "SUBSCRIBE", "RECEIVE", "CONNECT"]
    #         resources: [
    #           'member'
    #         ] # required
    #       }
    #     ], # required
    #     client_id: 'clientId',
    #     policy_names_to_add: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestAuthorizationOutput
    #   resp.data.auth_results #=> Array<AuthResult>
    #   resp.data.auth_results[0] #=> Types::AuthResult
    #   resp.data.auth_results[0].auth_info #=> Types::AuthInfo
    #   resp.data.auth_results[0].auth_info.action_type #=> String, one of ["PUBLISH", "SUBSCRIBE", "RECEIVE", "CONNECT"]
    #   resp.data.auth_results[0].auth_info.resources #=> Array<String>
    #   resp.data.auth_results[0].auth_info.resources[0] #=> String
    #   resp.data.auth_results[0].allowed #=> Types::Allowed
    #   resp.data.auth_results[0].allowed.policies #=> Array<Policy>
    #   resp.data.auth_results[0].allowed.policies[0] #=> Types::Policy
    #   resp.data.auth_results[0].allowed.policies[0].policy_name #=> String
    #   resp.data.auth_results[0].allowed.policies[0].policy_arn #=> String
    #   resp.data.auth_results[0].denied #=> Types::Denied
    #   resp.data.auth_results[0].denied.implicit_deny #=> Types::ImplicitDeny
    #   resp.data.auth_results[0].denied.implicit_deny.policies #=> Array<Policy>
    #   resp.data.auth_results[0].denied.explicit_deny #=> Types::ExplicitDeny
    #   resp.data.auth_results[0].denied.explicit_deny.policies #=> Array<Policy>
    #   resp.data.auth_results[0].auth_decision #=> String, one of ["ALLOWED", "EXPLICIT_DENY", "IMPLICIT_DENY"]
    #   resp.data.auth_results[0].missing_context_values #=> Array<String>
    #   resp.data.auth_results[0].missing_context_values[0] #=> String
    #
    def test_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestAuthorizationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::TestAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestAuthorization,
        stubs: @stubs,
        params_class: Params::TestAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tests a custom authorization behavior by invoking a specified custom authorizer. Use
    #          this to test and debug the custom authorization behavior of devices that connect to the IoT
    #          device gateway.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TestInvokeAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::TestInvokeAuthorizerInput}.
    #
    # @option params [String] :authorizer_name
    #   <p>The custom authorizer name.</p>
    #
    # @option params [String] :token
    #   <p>The token returned by your custom authentication service.</p>
    #
    # @option params [String] :token_signature
    #   <p>The signature made with the token and your custom authentication service's private
    #            key. This value must be Base-64-encoded.</p>
    #
    # @option params [HttpContext] :http_context
    #   <p>Specifies a test HTTP authorization request.</p>
    #
    # @option params [MqttContext] :mqtt_context
    #   <p>Specifies a test MQTT authorization request.</p>
    #
    # @option params [TlsContext] :tls_context
    #   <p>Specifies a test TLS authorization request.</p>
    #
    # @return [Types::TestInvokeAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_authorizer(
    #     authorizer_name: 'authorizerName', # required
    #     token: 'token',
    #     token_signature: 'tokenSignature',
    #     http_context: {
    #       headers: {
    #         'key' => 'value'
    #       },
    #       query_string: 'queryString'
    #     },
    #     mqtt_context: {
    #       username: 'username',
    #       password: 'password',
    #       client_id: 'clientId'
    #     },
    #     tls_context: {
    #       server_name: 'serverName'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestInvokeAuthorizerOutput
    #   resp.data.is_authenticated #=> Boolean
    #   resp.data.principal_id #=> String
    #   resp.data.policy_documents #=> Array<String>
    #   resp.data.policy_documents[0] #=> String
    #   resp.data.refresh_after_in_seconds #=> Integer
    #   resp.data.disconnect_after_in_seconds #=> Integer
    #
    def test_invoke_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestInvokeAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestInvokeAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestInvokeAuthorizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InvalidResponseException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::TestInvokeAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestInvokeAuthorizer,
        stubs: @stubs,
        params_class: Params::TestInvokeAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_invoke_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transfers the specified certificate to the specified Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TransferCertificate</a> action.</p>
    #
    #          <p>You can cancel the transfer until it is acknowledged by the recipient.</p>
    #          <p>No notification is sent to the transfer destination's account. It is up to the caller
    #          to notify the transfer target.</p>
    #          <p>The certificate being transferred must not be in the ACTIVE state. You can use the
    #          <a>UpdateCertificate</a> action to deactivate it.</p>
    #          <p>The certificate must not have any policies attached to it. You can use the
    #          <a>DetachPolicy</a> action to detach them.</p>
    #
    # @param [Hash] params
    #   See {Types::TransferCertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @option params [String] :target_aws_account
    #   <p>The Amazon Web Services account.</p>
    #
    # @option params [String] :transfer_message
    #   <p>The transfer message.</p>
    #
    # @return [Types::TransferCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_certificate(
    #     certificate_id: 'certificateId', # required
    #     target_aws_account: 'targetAwsAccount', # required
    #     transfer_message: 'transferMessage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TransferCertificateOutput
    #   resp.data.transferred_certificate_arn #=> String
    #
    def transfer_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransferCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransferCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransferCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::CertificateStateException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::TransferConflictException, Errors::UnauthorizedException]),
        data_parser: Parsers::TransferCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TransferCertificate,
        stubs: @stubs,
        params_class: Params::TransferCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :transfer_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the given tags (metadata) from the resource.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UntagResource</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Configures or reconfigures the Device Defender audit settings for this account.
    #           Settings include how audit notifications are sent and which audit checks are
    #           enabled or disabled.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateAccountAuditConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountAuditConfigurationInput}.
    #
    # @option params [String] :role_arn
    #   <p>The Amazon
    #         Resource Name
    #         (ARN)
    #         of the role that grants permission
    #         to
    #         IoT to access information about your devices, policies,
    #         certificates,
    #         and other items as required when performing an audit.</p>
    #
    # @option params [Hash<String, AuditNotificationTarget>] :audit_notification_target_configurations
    #   <p>Information about the targets to which audit notifications are sent.</p>
    #
    # @option params [Hash<String, AuditCheckConfiguration>] :audit_check_configurations
    #   <p>Specifies which audit checks are enabled and disabled for this account. Use
    #               <code>DescribeAccountAuditConfiguration</code> to see the list of all checks, including those
    #               that are currently enabled.</p>
    #             <p>Some data collection might start immediately when certain checks are enabled.
    #               When a check is disabled, any data collected so far in relation to the check is deleted.</p>
    #             <p>You
    #         cannot
    #         disable a check if
    #         it's
    #         used by any scheduled audit. You must first delete the check from the scheduled audit or
    #         delete the scheduled audit itself.</p>
    #             <p>On the first call to <code>UpdateAccountAuditConfiguration</code>,
    #               this parameter is required and must specify at least one enabled check.</p>
    #
    # @return [Types::UpdateAccountAuditConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_audit_configuration(
    #     role_arn: 'roleArn',
    #     audit_notification_target_configurations: {
    #       'key' => {
    #         target_arn: 'targetArn',
    #         role_arn: 'roleArn',
    #         enabled: false
    #       }
    #     },
    #     audit_check_configurations: {
    #       'key' => {
    #         enabled: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountAuditConfigurationOutput
    #
    def update_account_audit_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountAuditConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountAuditConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountAuditConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateAccountAuditConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountAuditConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateAccountAuditConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_audit_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Updates a Device Defender audit suppression.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAuditSuppressionInput}.
    #
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #           to select which checks are enabled.)</p>
    #
    # @option params [ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #
    # @option params [Time] :expiration_date
    #   <p>
    #         The expiration date (epoch timestamp in seconds) that you want the suppression to adhere to.
    #       </p>
    #
    # @option params [Boolean] :suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    #
    # @return [Types::UpdateAuditSuppressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_audit_suppression(
    #     check_name: 'checkName', # required
    #     resource_identifier: {
    #       device_certificate_id: 'deviceCertificateId',
    #       ca_certificate_id: 'caCertificateId',
    #       cognito_identity_pool_id: 'cognitoIdentityPoolId',
    #       client_id: 'clientId',
    #       policy_version_identifier: {
    #         policy_name: 'policyName',
    #         policy_version_id: 'policyVersionId'
    #       },
    #       account: 'account',
    #       iam_role_arn: 'iamRoleArn',
    #       role_alias_arn: 'roleAliasArn'
    #     }, # required
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAuditSuppressionOutput
    #
    def update_audit_suppression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAuditSuppressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAuditSuppressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAuditSuppression
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateAuditSuppression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAuditSuppression,
        stubs: @stubs,
        params_class: Params::UpdateAuditSuppressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_audit_suppression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateAuthorizer</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAuthorizerInput}.
    #
    # @option params [String] :authorizer_name
    #   <p>The authorizer name.</p>
    #
    # @option params [String] :authorizer_function_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    #
    # @option params [String] :token_key_name
    #   <p>The key used to extract the token from the HTTP headers. </p>
    #
    # @option params [Hash<String, String>] :token_signing_public_keys
    #   <p>The public keys used to verify the token signature.</p>
    #
    # @option params [String] :status
    #   <p>The status of the update authorizer request.</p>
    #
    # @option params [Boolean] :enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for the time specified in <code>refreshAfterInSeconds</code>. The cached
    #   	  result is used while the device reuses the same HTTP connection.</p>
    #
    # @return [Types::UpdateAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer(
    #     authorizer_name: 'authorizerName', # required
    #     authorizer_function_arn: 'authorizerFunctionArn',
    #     token_key_name: 'tokenKeyName',
    #     token_signing_public_keys: {
    #       'key' => 'value'
    #     },
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     enable_caching_for_http: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAuthorizerOutput
    #   resp.data.authorizer_name #=> String
    #   resp.data.authorizer_arn #=> String
    #
    def update_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAuthorizerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAuthorizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAuthorizer,
        stubs: @stubs,
        params_class: Params::UpdateAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates information about the billing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateBillingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBillingGroupInput}.
    #
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #
    # @option params [BillingGroupProperties] :billing_group_properties
    #   <p>The properties of the billing group.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the billing group. If the version of the billing group does
    #   			not match the expected version specified in the request, the
    #   				<code>UpdateBillingGroup</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #
    # @return [Types::UpdateBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_billing_group(
    #     billing_group_name: 'billingGroupName', # required
    #     billing_group_properties: {
    #       billing_group_description: 'billingGroupDescription'
    #     }, # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBillingGroupOutput
    #   resp.data.version #=> Integer
    #
    def update_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBillingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBillingGroup,
        stubs: @stubs,
        params_class: Params::UpdateBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a registered CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCACertificate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCACertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The CA certificate identifier.</p>
    #
    # @option params [String] :new_status
    #   <p>The updated status of the CA certificate.</p>
    #            <p>
    #               <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
    #            should not be used.</p>
    #
    # @option params [String] :new_auto_registration_status
    #   <p>The new value for the auto registration status. Valid values are: "ENABLE" or
    #            "DISABLE".</p>
    #
    # @option params [RegistrationConfig] :registration_config
    #   <p>Information about the registration configuration.</p>
    #
    # @option params [Boolean] :remove_auto_registration
    #   <p>If true, removes auto registration.</p>
    #
    # @return [Types::UpdateCACertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ca_certificate(
    #     certificate_id: 'certificateId', # required
    #     new_status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     new_auto_registration_status: 'ENABLE', # accepts ["ENABLE", "DISABLE"]
    #     registration_config: {
    #       template_body: 'templateBody',
    #       role_arn: 'roleArn'
    #     },
    #     remove_auto_registration: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCACertificateOutput
    #
    def update_ca_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCACertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCACertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCACertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateCACertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCACertificate,
        stubs: @stubs,
        params_class: Params::UpdateCACertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ca_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of the specified certificate. This operation is
    #          idempotent.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCertificate</a> action.</p>
    #
    #          <p>Certificates must be in the ACTIVE state to authenticate devices that use
    #          a certificate to connect to IoT.</p>
    #          <p>Within a few minutes of updating a certificate from the ACTIVE state to any other
    #          state, IoT disconnects all devices that used that certificate to connect. Devices cannot
    #          use a certificate that is not in the ACTIVE state to reconnect.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCertificateInput}.
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #
    # @option params [String] :new_status
    #   <p>The new status.</p>
    #            <p>
    #               <b>Note:</b> Setting the status to PENDING_TRANSFER  or PENDING_ACTIVATION will result
    #            in an exception being thrown. PENDING_TRANSFER and PENDING_ACTIVATION are statuses used internally by IoT. They
    #            are not intended for developer use.</p>
    #            <p>
    #               <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
    #            should not be used.</p>
    #
    # @return [Types::UpdateCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate(
    #     certificate_id: 'certificateId', # required
    #     new_status: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCertificateOutput
    #
    def update_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCertificate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::CertificateStateException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCertificate,
        stubs: @stubs,
        params_class: Params::UpdateCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a
    #       Device Defender detect custom metric. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCustomMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCustomMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p> The name of the custom metric.
    #         Cannot be updated. </p>
    #
    # @option params [String] :display_name
    #   <p>
    #         Field
    #         represents a friendly name in the console for the custom metric,
    #         it
    #         doesn't have to be unique. Don't use this name as the metric identifier in
    #         the device metric report.
    #         Can
    #         be updated. </p>
    #
    # @return [Types::UpdateCustomMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_metric(
    #     metric_name: 'metricName', # required
    #     display_name: 'displayName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCustomMetricOutput
    #   resp.data.metric_name #=> String
    #   resp.data.metric_arn #=> String
    #   resp.data.metric_type #=> String, one of ["string-list", "ip-address-list", "number-list", "number"]
    #   resp.data.display_name #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def update_custom_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCustomMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCustomMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCustomMetric
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateCustomMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCustomMetric,
        stubs: @stubs,
        params_class: Params::UpdateCustomMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_custom_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the definition for a dimension. You
    #       cannot
    #       change the type of a dimension after
    #       it is created (you can delete it and
    #       recreate
    #       it).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateDimension</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDimensionInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>
    #
    # @option params [Array<String>] :string_values
    #   <p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").</p>
    #
    # @return [Types::UpdateDimensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dimension(
    #     name: 'name', # required
    #     string_values: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDimensionOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.type #=> String, one of ["TOPIC_FILTER"]
    #   resp.data.string_values #=> Array<String>
    #   resp.data.string_values[0] #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def update_dimension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDimensionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDimensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDimension
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDimension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDimension,
        stubs: @stubs,
        params_class: Params::UpdateDimensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dimension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates values stored in the domain configuration. Domain configurations for default
    #          endpoints can't be updated.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateDomainConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainConfigurationInput}.
    #
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration to be updated.</p>
    #
    # @option params [AuthorizerConfig] :authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    #
    # @option params [String] :domain_configuration_status
    #   <p>The status to which the domain configuration should be updated.</p>
    #
    # @option params [Boolean] :remove_authorizer_config
    #   <p>Removes the authorization configuration from a domain.</p>
    #
    # @return [Types::UpdateDomainConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_configuration(
    #     domain_configuration_name: 'domainConfigurationName', # required
    #     authorizer_config: {
    #       default_authorizer_name: 'defaultAuthorizerName',
    #       allow_authorizer_override: false
    #     },
    #     domain_configuration_status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     remove_authorizer_config: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainConfigurationOutput
    #   resp.data.domain_configuration_name #=> String
    #   resp.data.domain_configuration_arn #=> String
    #
    def update_domain_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateDomainConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateDomainConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a dynamic thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateDynamicThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDynamicThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The name of the dynamic thing group to update.</p>
    #
    # @option params [ThingGroupProperties] :thing_group_properties
    #   <p>The dynamic thing group properties to update.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the dynamic thing group to update.</p>
    #
    # @option params [String] :index_name
    #   <p>The dynamic thing group index to update.</p>
    #   		       <note>
    #   			         <p>Currently one index is supported: <code>AWS_Things</code>.</p>
    #   		       </note>
    #
    # @option params [String] :query_string
    #   <p>The dynamic thing group search query string to update.</p>
    #
    # @option params [String] :query_version
    #   <p>The dynamic thing group query version to update.</p>
    #   		       <note>
    #   			         <p>Currently one query version is supported: "2017-09-30". If not specified, the
    #   				query version defaults to this value.</p>
    #   		       </note>
    #
    # @return [Types::UpdateDynamicThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dynamic_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     thing_group_properties: {
    #       thing_group_description: 'thingGroupDescription',
    #       attribute_payload: {
    #         attributes: {
    #           'key' => 'value'
    #         },
    #         merge: false
    #       }
    #     }, # required
    #     expected_version: 1,
    #     index_name: 'indexName',
    #     query_string: 'queryString',
    #     query_version: 'queryVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDynamicThingGroupOutput
    #   resp.data.version #=> Integer
    #
    def update_dynamic_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDynamicThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDynamicThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDynamicThingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDynamicThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDynamicThingGroup,
        stubs: @stubs,
        params_class: Params::UpdateDynamicThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dynamic_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the event configurations.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateEventConfigurations</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventConfigurationsInput}.
    #
    # @option params [Hash<String, Configuration>] :event_configurations
    #   <p>The new event configuration values.</p>
    #
    # @return [Types::UpdateEventConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_configurations(
    #     event_configurations: {
    #       'key' => {
    #         enabled: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventConfigurationsOutput
    #
    def update_event_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateEventConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventConfigurations,
        stubs: @stubs,
        params_class: Params::UpdateEventConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the data for a fleet metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateFleetMetric</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFleetMetricInput}.
    #
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to update.</p>
    #
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    #
    # @option params [AggregationType] :aggregation_type
    #   <p>The type of the aggregation query.</p>
    #
    # @option params [Integer] :period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    #
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    #
    # @option params [String] :description
    #   <p>The description of the fleet metric.</p>
    #
    # @option params [String] :query_version
    #   <p>The version of the query.</p>
    #
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    #
    # @option params [String] :unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the fleet metric record in the registry.</p>
    #
    # @return [Types::UpdateFleetMetricOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_metric(
    #     metric_name: 'metricName', # required
    #     query_string: 'queryString',
    #     aggregation_type: {
    #       name: 'Statistics', # required - accepts ["Statistics", "Percentiles", "Cardinality"]
    #       values: [
    #         'member'
    #       ]
    #     },
    #     period: 1,
    #     aggregation_field: 'aggregationField',
    #     description: 'description',
    #     query_version: 'queryVersion',
    #     index_name: 'indexName', # required
    #     unit: 'Seconds', # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFleetMetricOutput
    #
    def update_fleet_metric(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFleetMetricInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFleetMetricInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFleetMetric
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidQueryException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::IndexNotReadyException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidAggregationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateFleetMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFleetMetric,
        stubs: @stubs,
        params_class: Params::UpdateFleetMetricOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fleet_metric
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the search configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateIndexingConfiguration</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIndexingConfigurationInput}.
    #
    # @option params [ThingIndexingConfiguration] :thing_indexing_configuration
    #   <p>Thing indexing configuration.</p>
    #
    # @option params [ThingGroupIndexingConfiguration] :thing_group_indexing_configuration
    #   <p>Thing group indexing configuration.</p>
    #
    # @return [Types::UpdateIndexingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_indexing_configuration(
    #     thing_indexing_configuration: {
    #       thing_indexing_mode: 'OFF', # required - accepts ["OFF", "REGISTRY", "REGISTRY_AND_SHADOW"]
    #       thing_connectivity_indexing_mode: 'OFF', # accepts ["OFF", "STATUS"]
    #       device_defender_indexing_mode: 'OFF', # accepts ["OFF", "VIOLATIONS"]
    #       named_shadow_indexing_mode: 'OFF', # accepts ["OFF", "ON"]
    #       managed_fields: [
    #         {
    #           name: 'name',
    #           type: 'Number' # accepts ["Number", "String", "Boolean"]
    #         }
    #       ],
    #     },
    #     thing_group_indexing_configuration: {
    #       thing_group_indexing_mode: 'OFF', # required - accepts ["OFF", "ON"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIndexingConfigurationOutput
    #
    def update_indexing_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIndexingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIndexingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIndexingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateIndexingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIndexingConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateIndexingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_indexing_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates supported fields of the specified job.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateJob</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job to be updated.</p>
    #
    # @option params [String] :description
    #   <p>A short text description of the job.</p>
    #
    # @option params [PresignedUrlConfig] :presigned_url_config
    #   <p>Configuration information for pre-signed S3 URLs.</p>
    #
    # @option params [JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of the job.</p>
    #
    # @option params [AbortConfig] :abort_config
    #   <p>Allows you to create criteria to abort a job.</p>
    #
    # @option params [TimeoutConfig] :timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. The timer is started when the job execution status is set to <code>IN_PROGRESS</code>.
    #               If the job execution status is not set to another terminal state before the time expires, it will be automatically set to <code>TIMED_OUT</code>. </p>
    #
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #           <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to MQTT topics that
    #               contain the value in the following format.</p>
    #           <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #           <note>
    #               <p>The <code>namespaceId</code> feature is in public preview.</p>
    #            </note>
    #
    # @option params [JobExecutionsRetryConfig] :job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    #
    # @return [Types::UpdateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job(
    #     job_id: 'jobId', # required
    #     description: 'description',
    #     presigned_url_config: {
    #       role_arn: 'roleArn',
    #       expires_in_sec: 1
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: {
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         } # required
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #           action: 'CANCEL', # required - accepts ["CANCEL"]
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1 # required
    #         }
    #       ] # required
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     namespace_id: 'namespaceId',
    #     job_executions_retry_config: {
    #       criteria_list: [
    #         {
    #           failure_type: 'FAILED', # required - accepts ["FAILED", "TIMED_OUT", "ALL"]
    #           number_of_retries: 1 # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobOutput
    #
    def update_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJob,
        stubs: @stubs,
        params_class: Params::UpdateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the definition for the specified mitigation action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateMitigationAction</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMitigationActionInput}.
    #
    # @option params [String] :action_name
    #   <p>The friendly name for the mitigation action. You cannot change the name by using
    #           <code>UpdateMitigationAction</code>. Instead, you must delete and
    #         recreate the
    #         mitigation action with the new name.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that is used to apply the mitigation action.</p>
    #
    # @option params [MitigationActionParams] :action_params
    #   <p>Defines the type of action and the parameters for that action.</p>
    #
    # @return [Types::UpdateMitigationActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mitigation_action(
    #     action_name: 'actionName', # required
    #     role_arn: 'roleArn',
    #     action_params: {
    #       update_device_certificate_params: {
    #         action: 'DEACTIVATE' # required - accepts ["DEACTIVATE"]
    #       },
    #       update_ca_certificate_params: {
    #         action: 'DEACTIVATE' # required - accepts ["DEACTIVATE"]
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: [
    #           'member'
    #         ], # required
    #         override_dynamic_groups: false
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: 'BLANK_POLICY' # required - accepts ["BLANK_POLICY"]
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: 'roleArnForLogging', # required
    #         log_level: 'DEBUG' # required - accepts ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: 'topicArn' # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMitigationActionOutput
    #   resp.data.action_arn #=> String
    #   resp.data.action_id #=> String
    #
    def update_mitigation_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMitigationActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMitigationActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMitigationAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateMitigationAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMitigationAction,
        stubs: @stubs,
        params_class: Params::UpdateMitigationActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_mitigation_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a fleet provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateProvisioningTemplate</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProvisioningTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the fleet provisioning template.</p>
    #
    # @option params [String] :description
    #   <p>The description of the fleet provisioning template.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>True to enable the fleet provisioning template, otherwise false.</p>
    #
    # @option params [Integer] :default_version_id
    #   <p>The ID of the default provisioning template version.</p>
    #
    # @option params [String] :provisioning_role_arn
    #   <p>The ARN of the role associated with the provisioning template. This IoT role grants
    #            permission to provision a device.</p>
    #
    # @option params [ProvisioningHook] :pre_provisioning_hook
    #   <p>Updates the pre-provisioning hook template.</p>
    #
    # @option params [Boolean] :remove_pre_provisioning_hook
    #   <p>Removes pre-provisioning hook template.</p>
    #
    # @return [Types::UpdateProvisioningTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioning_template(
    #     template_name: 'templateName', # required
    #     description: 'description',
    #     enabled: false,
    #     default_version_id: 1,
    #     provisioning_role_arn: 'provisioningRoleArn',
    #     pre_provisioning_hook: {
    #       payload_version: 'payloadVersion',
    #       target_arn: 'targetArn' # required
    #     },
    #     remove_pre_provisioning_hook: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProvisioningTemplateOutput
    #
    def update_provisioning_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProvisioningTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProvisioningTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProvisioningTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ConflictingResourceUpdateException, Errors::ResourceNotFoundException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateProvisioningTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProvisioningTemplate,
        stubs: @stubs,
        params_class: Params::UpdateProvisioningTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_provisioning_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a role alias.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateRoleAlias</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoleAliasInput}.
    #
    # @option params [String] :role_alias
    #   <p>The role alias to update.</p>
    #
    # @option params [String] :role_arn
    #   <p>The role ARN.</p>
    #
    # @option params [Integer] :credential_duration_seconds
    #   <p>The number of seconds the credential will be valid.</p>
    #            <p>This value must be less than or equal to the maximum session duration of the IAM role
    #            that the role alias references.</p>
    #
    # @return [Types::UpdateRoleAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_role_alias(
    #     role_alias: 'roleAlias', # required
    #     role_arn: 'roleArn',
    #     credential_duration_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoleAliasOutput
    #   resp.data.role_alias #=> String
    #   resp.data.role_alias_arn #=> String
    #
    def update_role_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoleAliasInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoleAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoleAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateRoleAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoleAlias,
        stubs: @stubs,
        params_class: Params::UpdateRoleAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_role_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a scheduled audit, including which checks are performed and
    #           how often the audit takes place.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateScheduledAudit</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateScheduledAuditInput}.
    #
    # @option params [String] :frequency
    #   <p>How often the scheduled audit takes
    #         place,
    #         either <code>DAILY</code>,
    #         <code>WEEKLY</code>, <code>BIWEEKLY</code>, or <code>MONTHLY</code>. The start time of each audit is determined by the
    #         system.</p>
    #
    # @option params [String] :day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This
    #         can
    #         be <code>1</code> through <code>31</code> or <code>LAST</code>. This field is required if the <code>frequency</code> parameter is set to
    #               <code>MONTHLY</code>. If days 29-31 are specified, and the month does not have that many days, the audit
    #         takes place on the "LAST" day of the month.</p>
    #
    # @option params [String] :day_of_week
    #   <p>The day of the week on which the scheduled audit takes place.
    #         This
    #         can
    #         be one of <code>SUN</code>, <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the
    #               "frequency" parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>
    #
    # @option params [Array<String>] :target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be enabled
    #               for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code>
    #               to select which checks are enabled.)</p>
    #
    # @option params [String] :scheduled_audit_name
    #   <p>The name of the scheduled audit. (Max. 128 chars)</p>
    #
    # @return [Types::UpdateScheduledAuditOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduled_audit(
    #     frequency: 'DAILY', # accepts ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"]
    #     day_of_month: 'dayOfMonth',
    #     day_of_week: 'SUN', # accepts ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    #     target_check_names: [
    #       'member'
    #     ],
    #     scheduled_audit_name: 'scheduledAuditName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateScheduledAuditOutput
    #   resp.data.scheduled_audit_arn #=> String
    #
    def update_scheduled_audit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateScheduledAuditInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateScheduledAuditInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateScheduledAudit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateScheduledAudit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateScheduledAudit,
        stubs: @stubs,
        params_class: Params::UpdateScheduledAuditOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_scheduled_audit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateSecurityProfile</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile you want to update.</p>
    #
    # @option params [String] :security_profile_description
    #   <p>A description of the security profile.</p>
    #
    # @option params [Array<Behavior>] :behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #
    # @option params [Hash<String, AlertTarget>] :alert_targets
    #   <p>Where the alerts are sent. (Alerts are always sent to the console.)</p>
    #
    # @option params [Array<String>] :additional_metrics_to_retain
    #   <p>
    #               <i>Please use
    #             <a>UpdateSecurityProfileRequest$additionalMetricsToRetainV2</a>
    #           instead.</i>
    #            </p>
    #            <p>A list of metrics
    #        whose data is retained (stored). By default, data is retained for any metric
    #         used in the profile's <code>behaviors</code>, but
    #         it is
    #         also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #
    # @option params [Array<MetricToRetain>] :additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #
    # @option params [Boolean] :delete_behaviors
    #   <p>If true, delete all <code>behaviors</code> defined for this security profile.
    #           If any <code>behaviors</code> are defined in the current invocation, an exception occurs.</p>
    #
    # @option params [Boolean] :delete_alert_targets
    #   <p>If true, delete all <code>alertTargets</code> defined for this security profile.
    #           If any <code>alertTargets</code> are defined in the current invocation, an exception occurs.</p>
    #
    # @option params [Boolean] :delete_additional_metrics_to_retain
    #   <p>If true, delete all <code>additionalMetricsToRetain</code> defined for this
    #           security profile. If any <code>additionalMetricsToRetain</code> are defined in the current
    #           invocation, an exception occurs.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the security profile. A new version is generated whenever
    #           the security profile is updated. If you specify a value that is different from the actual
    #           version, a <code>VersionConflictException</code> is thrown.</p>
    #
    # @return [Types::UpdateSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_profile(
    #     security_profile_name: 'securityProfileName', # required
    #     security_profile_description: 'securityProfileDescription',
    #     behaviors: [
    #       {
    #         name: 'name', # required
    #         metric: 'metric',
    #         metric_dimension: {
    #           dimension_name: 'dimensionName', # required
    #           operator: 'IN' # accepts ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: 'less-than', # accepts ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #           value: {
    #             count: 1,
    #             cidrs: [
    #               'member'
    #             ],
    #             ports: [
    #               1
    #             ],
    #             number: 1.0,
    #             numbers: [
    #               1.0
    #             ],
    #             strings: [
    #               'member'
    #             ]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: 'statistic'
    #           },
    #           ml_detection_config: {
    #             confidence_level: 'LOW' # required - accepts ["LOW", "MEDIUM", "HIGH"]
    #           }
    #         },
    #         suppress_alerts: false
    #       }
    #     ],
    #     alert_targets: {
    #       'key' => {
    #         alert_target_arn: 'alertTargetArn', # required
    #         role_arn: 'roleArn' # required
    #       }
    #     },
    #     additional_metrics_to_retain: [
    #       'member'
    #     ],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: 'metric', # required
    #       }
    #     ],
    #     delete_behaviors: false,
    #     delete_alert_targets: false,
    #     delete_additional_metrics_to_retain: false,
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSecurityProfileOutput
    #   resp.data.security_profile_name #=> String
    #   resp.data.security_profile_arn #=> String
    #   resp.data.security_profile_description #=> String
    #   resp.data.behaviors #=> Array<Behavior>
    #   resp.data.behaviors[0] #=> Types::Behavior
    #   resp.data.behaviors[0].name #=> String
    #   resp.data.behaviors[0].metric #=> String
    #   resp.data.behaviors[0].metric_dimension #=> Types::MetricDimension
    #   resp.data.behaviors[0].metric_dimension.dimension_name #=> String
    #   resp.data.behaviors[0].metric_dimension.operator #=> String, one of ["IN", "NOT_IN"]
    #   resp.data.behaviors[0].criteria #=> Types::BehaviorCriteria
    #   resp.data.behaviors[0].criteria.comparison_operator #=> String, one of ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #   resp.data.behaviors[0].criteria.value #=> Types::MetricValue
    #   resp.data.behaviors[0].criteria.value.count #=> Integer
    #   resp.data.behaviors[0].criteria.value.cidrs #=> Array<String>
    #   resp.data.behaviors[0].criteria.value.cidrs[0] #=> String
    #   resp.data.behaviors[0].criteria.value.ports #=> Array<Integer>
    #   resp.data.behaviors[0].criteria.value.ports[0] #=> Integer
    #   resp.data.behaviors[0].criteria.value.number #=> Float
    #   resp.data.behaviors[0].criteria.value.numbers #=> Array<Float>
    #   resp.data.behaviors[0].criteria.value.numbers[0] #=> Float
    #   resp.data.behaviors[0].criteria.value.strings #=> Array<String>
    #   resp.data.behaviors[0].criteria.value.strings[0] #=> String
    #   resp.data.behaviors[0].criteria.duration_seconds #=> Integer
    #   resp.data.behaviors[0].criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.data.behaviors[0].criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.data.behaviors[0].criteria.statistical_threshold #=> Types::StatisticalThreshold
    #   resp.data.behaviors[0].criteria.statistical_threshold.statistic #=> String
    #   resp.data.behaviors[0].criteria.ml_detection_config #=> Types::MachineLearningDetectionConfig
    #   resp.data.behaviors[0].criteria.ml_detection_config.confidence_level #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.behaviors[0].suppress_alerts #=> Boolean
    #   resp.data.alert_targets #=> Hash<String, AlertTarget>
    #   resp.data.alert_targets['key'] #=> Types::AlertTarget
    #   resp.data.alert_targets['key'].alert_target_arn #=> String
    #   resp.data.alert_targets['key'].role_arn #=> String
    #   resp.data.additional_metrics_to_retain #=> Array<String>
    #   resp.data.additional_metrics_to_retain[0] #=> String
    #   resp.data.additional_metrics_to_retain_v2 #=> Array<MetricToRetain>
    #   resp.data.additional_metrics_to_retain_v2[0] #=> Types::MetricToRetain
    #   resp.data.additional_metrics_to_retain_v2[0].metric #=> String
    #   resp.data.additional_metrics_to_retain_v2[0].metric_dimension #=> Types::MetricDimension
    #   resp.data.version #=> Integer
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def update_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSecurityProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSecurityProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSecurityProfile,
        stubs: @stubs,
        params_class: Params::UpdateSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing stream. The stream version will be incremented by one.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateStream</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStreamInput}.
    #
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    #
    # @option params [String] :description
    #   <p>The description of the stream.</p>
    #
    # @option params [Array<StreamFile>] :files
    #   <p>The files associated with the stream.</p>
    #
    # @option params [String] :role_arn
    #   <p>An IAM role that allows the IoT service principal assumes to access your S3 files.</p>
    #
    # @return [Types::UpdateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream(
    #     stream_id: 'streamId', # required
    #     description: 'description',
    #     files: [
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: 'bucket',
    #           key: 'key',
    #           version: 'version'
    #         }
    #       }
    #     ],
    #     role_arn: 'roleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStreamOutput
    #   resp.data.stream_id #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.stream_version #=> Integer
    #
    def update_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStream,
        stubs: @stubs,
        params_class: Params::UpdateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the data for a thing.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to update.</p>
    #   		       <p>You can't change a thing's name. To change a thing's name, you must create a
    #   			new thing, give it the new name, and then delete the old thing.</p>
    #
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    #
    # @option params [AttributePayload] :attribute_payload
    #   <p>A list of thing attributes, a JSON string containing name-value pairs. For
    #   			example:</p>
    #   		       <p>
    #   			         <code>{\"attributes\":{\"name1\":\"value2\"}}</code>
    #   		       </p>
    #   		       <p>This data is used to add new attributes or update existing attributes.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing record in the registry. If the version of the
    #   			record in the registry does not match the expected version specified in the request, the
    #   				<code>UpdateThing</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #
    # @option params [Boolean] :remove_thing_type
    #   <p>Remove a thing type association. If <b>true</b>, the
    #   			association is removed.</p>
    #
    # @return [Types::UpdateThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing(
    #     thing_name: 'thingName', # required
    #     thing_type_name: 'thingTypeName',
    #     attribute_payload: {
    #       attributes: {
    #         'key' => 'value'
    #       },
    #       merge: false
    #     },
    #     expected_version: 1,
    #     remove_thing_type: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThingOutput
    #
    def update_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThing,
        stubs: @stubs,
        params_class: Params::UpdateThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a thing group.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingGroup</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThingGroupInput}.
    #
    # @option params [String] :thing_group_name
    #   <p>The thing group to update.</p>
    #
    # @option params [ThingGroupProperties] :thing_group_properties
    #   <p>The thing group properties.</p>
    #
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing group. If this does not match the version of the
    #   			thing group being updated, the update will fail.</p>
    #
    # @return [Types::UpdateThingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_group(
    #     thing_group_name: 'thingGroupName', # required
    #     thing_group_properties: {
    #       thing_group_description: 'thingGroupDescription',
    #       attribute_payload: {
    #         attributes: {
    #           'key' => 'value'
    #         },
    #         merge: false
    #       }
    #     }, # required
    #     expected_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThingGroupOutput
    #   resp.data.version #=> Integer
    #
    def update_thing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::VersionConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateThingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThingGroup,
        stubs: @stubs,
        params_class: Params::UpdateThingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_thing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the groups to which the thing belongs.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingGroupsForThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThingGroupsForThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The thing whose group memberships will be updated.</p>
    #
    # @option params [Array<String>] :thing_groups_to_add
    #   <p>The groups to which the thing will be added.</p>
    #
    # @option params [Array<String>] :thing_groups_to_remove
    #   <p>The groups from which the thing will be removed.</p>
    #
    # @option params [Boolean] :override_dynamic_groups
    #   <p>Override dynamic thing groups with static thing groups when 10-group limit is
    #   			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
    #   			dynamic thing groups, adding a thing to a static group removes the thing from the last
    #   			dynamic group.</p>
    #
    # @return [Types::UpdateThingGroupsForThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_groups_for_thing(
    #     thing_name: 'thingName',
    #     thing_groups_to_add: [
    #       'member'
    #     ],
    #     override_dynamic_groups: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThingGroupsForThingOutput
    #
    def update_thing_groups_for_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThingGroupsForThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThingGroupsForThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThingGroupsForThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateThingGroupsForThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThingGroupsForThing,
        stubs: @stubs,
        params_class: Params::UpdateThingGroupsForThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_thing_groups_for_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a topic rule destination. You use this to change the status, endpoint URL, or
    #          confirmation URL of the destination.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateTopicRuleDestination</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTopicRuleDestinationInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the topic rule destination.</p>
    #
    # @option params [String] :status
    #   <p>The status of the topic rule destination. Valid values are:</p>
    #            <dl>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>A topic rule destination was created but has not been confirmed. You can set
    #                        <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #               <dt>ENABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is allowed. You can
    #                     set <code>status</code> to <code>DISABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>DISABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is not allowed. You
    #                     can set <code>status</code> to <code>ENABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>ERROR</dt>
    #               <dd>
    #                  <p>Confirmation could not be completed, for example if the confirmation timed out.
    #                     You can call <code>GetTopicRuleDestination</code> for details about the error. You
    #                     can set <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #            </dl>
    #
    # @return [Types::UpdateTopicRuleDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic_rule_destination(
    #     arn: 'arn', # required
    #     status: 'ENABLED' # required - accepts ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTopicRuleDestinationOutput
    #
    def update_topic_rule_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTopicRuleDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTopicRuleDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTopicRuleDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ConflictingResourceUpdateException, Errors::InternalException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateTopicRuleDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTopicRuleDestination,
        stubs: @stubs,
        params_class: Params::UpdateTopicRuleDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_topic_rule_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Validates a Device Defender security profile behaviors specification.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ValidateSecurityProfileBehaviors</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ValidateSecurityProfileBehaviorsInput}.
    #
    # @option params [Array<Behavior>] :behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #
    # @return [Types::ValidateSecurityProfileBehaviorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_security_profile_behaviors(
    #     behaviors: [
    #       {
    #         name: 'name', # required
    #         metric: 'metric',
    #         metric_dimension: {
    #           dimension_name: 'dimensionName', # required
    #           operator: 'IN' # accepts ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: 'less-than', # accepts ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"]
    #           value: {
    #             count: 1,
    #             cidrs: [
    #               'member'
    #             ],
    #             ports: [
    #               1
    #             ],
    #             number: 1.0,
    #             numbers: [
    #               1.0
    #             ],
    #             strings: [
    #               'member'
    #             ]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: 'statistic'
    #           },
    #           ml_detection_config: {
    #             confidence_level: 'LOW' # required - accepts ["LOW", "MEDIUM", "HIGH"]
    #           }
    #         },
    #         suppress_alerts: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateSecurityProfileBehaviorsOutput
    #   resp.data.valid #=> Boolean
    #   resp.data.validation_errors #=> Array<ValidationError>
    #   resp.data.validation_errors[0] #=> Types::ValidationError
    #   resp.data.validation_errors[0].error_message #=> String
    #
    def validate_security_profile_behaviors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateSecurityProfileBehaviorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateSecurityProfileBehaviorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateSecurityProfileBehaviors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ThrottlingException]),
        data_parser: Parsers::ValidateSecurityProfileBehaviors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateSecurityProfileBehaviors,
        stubs: @stubs,
        params_class: Params::ValidateSecurityProfileBehaviorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_security_profile_behaviors
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