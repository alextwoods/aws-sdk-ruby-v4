# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudHSM
  # An API client for CloudHsmFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS CloudHSM Service</fullname>
  #          <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
  #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
  #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
  #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
  #          <p>
  #             <b>For information about the current version of AWS
  #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
  #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
  #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
  #       Reference</a>.</p>
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
    def initialize(config = AWS::SDK::CloudHSM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Adds or overwrites one or more tags for the specified AWS CloudHSM resource.</p>
    #          <p>Each tag consists of a key and a value. Tag keys must be unique to each
    #       resource.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>One or more tags.</p>
    #
    # @return [Types::AddTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsToResourceOutput
    #   resp.data.status #=> String
    #
    def add_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::AddTagsToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToResource,
        stubs: @stubs,
        params_class: Params::AddTagsToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Creates a high-availability partition group. A high-availability partition group is a
    #       group of partitions that spans multiple physical HSMs.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHapgInput}.
    #
    # @option params [String] :label
    #   <p>The label of the new high-availability partition group.</p>
    #
    # @return [Types::CreateHapgOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hapg(
    #     label: 'Label' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHapgOutput
    #   resp.data.hapg_arn #=> String
    #
    def create_hapg(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHapgInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHapgInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHapg
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateHapg
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHapg,
        stubs: @stubs,
        params_class: Params::CreateHapgOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hapg
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Creates an uninitialized HSM instance.</p>
    #          <p>There is an upfront fee charged for each HSM instance that you create with the
    #         <code>CreateHsm</code> operation. If you accidentally provision an HSM and want to request a
    #       refund, delete the instance using the <a>DeleteHsm</a> operation, go to the <a href="https://console.aws.amazon.com/support/home">AWS Support Center</a>, create a new case, and select
    #         <b>Account and Billing Support</b>.</p>
    #          <important>
    #             <p>It can take up to 20 minutes to create and provision an HSM. You can monitor the
    #         status of the HSM with the <a>DescribeHsm</a> operation. The HSM is ready to be
    #         initialized when the status changes to <code>RUNNING</code>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateHsmInput}.
    #
    # @option params [String] :subnet_id
    #   <p>The identifier of the subnet in your VPC in which to place the HSM.</p>
    #
    # @option params [String] :ssh_key
    #   <p>The SSH public key to install on the HSM.</p>
    #
    # @option params [String] :eni_ip
    #   <p>The IP address to assign to the HSM's ENI.</p>
    #            <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR
    #         range of the subnet.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your
    #         behalf.</p>
    #
    # @option params [String] :external_id
    #   <p>The external ID from <code>IamRoleArn</code>, if present.</p>
    #
    # @option params [String] :subscription_type
    #   <p>Specifies the type of subscription for the HSM.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PRODUCTION</b> - The HSM is being used in a production
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TRIAL</b> - The HSM is being used in a product
    #             trial.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :client_token
    #   <p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the
    #         same token will be ignored.</p>
    #
    # @option params [String] :syslog_ip
    #   <p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one
    #         syslog monitoring server.</p>
    #
    # @return [Types::CreateHsmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm(
    #     subnet_id: 'SubnetId', # required
    #     ssh_key: 'SshKey', # required
    #     eni_ip: 'EniIp',
    #     iam_role_arn: 'IamRoleArn', # required
    #     external_id: 'ExternalId',
    #     subscription_type: 'PRODUCTION', # required - accepts ["PRODUCTION"]
    #     client_token: 'ClientToken',
    #     syslog_ip: 'SyslogIp'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHsmOutput
    #   resp.data.hsm_arn #=> String
    #
    def create_hsm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHsmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHsmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHsm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateHsm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHsm,
        stubs: @stubs,
        params_class: Params::CreateHsmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hsm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Creates an HSM client.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLunaClientInput}.
    #
    # @option params [String] :label
    #   <p>The label for the client.</p>
    #
    # @option params [String] :certificate
    #   <p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used
    #         by this client.</p>
    #
    # @return [Types::CreateLunaClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_luna_client(
    #     label: 'Label',
    #     certificate: 'Certificate' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLunaClientOutput
    #   resp.data.client_arn #=> String
    #
    def create_luna_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLunaClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLunaClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLunaClient
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLunaClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLunaClient,
        stubs: @stubs,
        params_class: Params::CreateLunaClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_luna_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Deletes a high-availability partition group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHapgInput}.
    #
    # @option params [String] :hapg_arn
    #   <p>The ARN of the high-availability partition group to delete.</p>
    #
    # @return [Types::DeleteHapgOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hapg(
    #     hapg_arn: 'HapgArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHapgOutput
    #   resp.data.status #=> String
    #
    def delete_hapg(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHapgInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHapgInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHapg
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteHapg
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHapg,
        stubs: @stubs,
        params_class: Params::DeleteHapgOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hapg
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Deletes an HSM. After completion, this operation cannot be undone and your key material
    #       cannot be recovered.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHsmInput}.
    #
    # @option params [String] :hsm_arn
    #   <p>The ARN of the HSM to delete.</p>
    #
    # @return [Types::DeleteHsmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm(
    #     hsm_arn: 'HsmArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHsmOutput
    #   resp.data.status #=> String
    #
    def delete_hsm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHsmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHsmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHsm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteHsm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHsm,
        stubs: @stubs,
        params_class: Params::DeleteHsmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hsm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Deletes a client.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLunaClientInput}.
    #
    # @option params [String] :client_arn
    #   <p>The ARN of the client to delete.</p>
    #
    # @return [Types::DeleteLunaClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_luna_client(
    #     client_arn: 'ClientArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLunaClientOutput
    #   resp.data.status #=> String
    #
    def delete_luna_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLunaClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLunaClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLunaClient
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteLunaClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLunaClient,
        stubs: @stubs,
        params_class: Params::DeleteLunaClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_luna_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves information about a high-availability partition group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHapgInput}.
    #
    # @option params [String] :hapg_arn
    #   <p>The ARN of the high-availability partition group to describe.</p>
    #
    # @return [Types::DescribeHapgOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hapg(
    #     hapg_arn: 'HapgArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHapgOutput
    #   resp.data.hapg_arn #=> String
    #   resp.data.hapg_serial #=> String
    #   resp.data.hsms_last_action_failed #=> Array<String>
    #   resp.data.hsms_last_action_failed[0] #=> String
    #   resp.data.hsms_pending_deletion #=> Array<String>
    #   resp.data.hsms_pending_registration #=> Array<String>
    #   resp.data.label #=> String
    #   resp.data.last_modified_timestamp #=> String
    #   resp.data.partition_serial_list #=> Array<String>
    #   resp.data.partition_serial_list[0] #=> String
    #   resp.data.state #=> String, one of ["READY", "UPDATING", "DEGRADED"]
    #
    def describe_hapg(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHapgInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHapgInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHapg
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeHapg
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHapg,
        stubs: @stubs,
        params_class: Params::DescribeHapgOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hapg
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves information about an HSM. You can identify the HSM by its ARN or its serial
    #       number.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHsmInput}.
    #
    # @option params [String] :hsm_arn
    #   <p>The ARN of the HSM. Either the <code>HsmArn</code> or the <code>SerialNumber</code>
    #         parameter must be specified.</p>
    #
    # @option params [String] :hsm_serial_number
    #   <p>The serial number of the HSM. Either the <code>HsmArn</code> or the
    #           <code>HsmSerialNumber</code> parameter must be specified.</p>
    #
    # @return [Types::DescribeHsmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hsm(
    #     hsm_arn: 'HsmArn',
    #     hsm_serial_number: 'HsmSerialNumber'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHsmOutput
    #   resp.data.hsm_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "UPDATING", "SUSPENDED", "TERMINATING", "TERMINATED", "DEGRADED"]
    #   resp.data.status_details #=> String
    #   resp.data.availability_zone #=> String
    #   resp.data.eni_id #=> String
    #   resp.data.eni_ip #=> String
    #   resp.data.subscription_type #=> String, one of ["PRODUCTION"]
    #   resp.data.subscription_start_date #=> String
    #   resp.data.subscription_end_date #=> String
    #   resp.data.vpc_id #=> String
    #   resp.data.subnet_id #=> String
    #   resp.data.iam_role_arn #=> String
    #   resp.data.serial_number #=> String
    #   resp.data.vendor_name #=> String
    #   resp.data.hsm_type #=> String
    #   resp.data.software_version #=> String
    #   resp.data.ssh_public_key #=> String
    #   resp.data.ssh_key_last_updated #=> String
    #   resp.data.server_cert_uri #=> String
    #   resp.data.server_cert_last_updated #=> String
    #   resp.data.partitions #=> Array<String>
    #   resp.data.partitions[0] #=> String
    #
    def describe_hsm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHsmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHsmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHsm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeHsm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHsm,
        stubs: @stubs,
        params_class: Params::DescribeHsmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hsm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves information about an HSM client.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLunaClientInput}.
    #
    # @option params [String] :client_arn
    #   <p>The ARN of the client.</p>
    #
    # @option params [String] :certificate_fingerprint
    #   <p>The certificate fingerprint.</p>
    #
    # @return [Types::DescribeLunaClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_luna_client(
    #     client_arn: 'ClientArn',
    #     certificate_fingerprint: 'CertificateFingerprint'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLunaClientOutput
    #   resp.data.client_arn #=> String
    #   resp.data.certificate #=> String
    #   resp.data.certificate_fingerprint #=> String
    #   resp.data.last_modified_timestamp #=> String
    #   resp.data.label #=> String
    #
    def describe_luna_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLunaClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLunaClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLunaClient
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLunaClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLunaClient,
        stubs: @stubs,
        params_class: Params::DescribeLunaClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_luna_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Gets the configuration files necessary to connect to all high availability partition
    #       groups the client is associated with.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConfigInput}.
    #
    # @option params [String] :client_arn
    #   <p>The ARN of the client.</p>
    #
    # @option params [String] :client_version
    #   <p>The client version.</p>
    #
    # @option params [Array<String>] :hapg_list
    #   <p>A list of ARNs that identify the high-availability partition groups that are associated
    #         with the client.</p>
    #
    # @return [Types::GetConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_config(
    #     client_arn: 'ClientArn', # required
    #     client_version: '5.1', # required - accepts ["5.1", "5.3"]
    #     hapg_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigOutput
    #   resp.data.config_type #=> String
    #   resp.data.config_file #=> String
    #   resp.data.config_cred #=> String
    #
    def get_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfig,
        stubs: @stubs,
        params_class: Params::GetConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Lists the Availability Zones that have available AWS CloudHSM capacity.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableZonesInput}.
    #
    # @return [Types::ListAvailableZonesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_zones()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableZonesOutput
    #   resp.data.az_list #=> Array<String>
    #   resp.data.az_list[0] #=> String
    #
    def list_available_zones(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableZonesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableZonesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableZones
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListAvailableZones
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableZones,
        stubs: @stubs,
        params_class: Params::ListAvailableZonesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_zones
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Lists the high-availability partition groups for the account.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> member.
    #       If more results are available, the <code>NextToken</code> member of the response contains a
    #       token that you pass in the next call to <code>ListHapgs</code> to retrieve the next set of
    #       items.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHapgsInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListHapgs</code>. Pass
    #         null if this is the first call.</p>
    #
    # @return [Types::ListHapgsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hapgs(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHapgsOutput
    #   resp.data.hapg_list #=> Array<String>
    #   resp.data.hapg_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_hapgs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHapgsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHapgsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHapgs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListHapgs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHapgs,
        stubs: @stubs,
        params_class: Params::ListHapgsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hapgs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves the identifiers of all of the HSMs provisioned for the current
    #       customer.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> member.
    #       If more results are available, the <code>NextToken</code> member of the response contains a
    #       token that you pass in the next call to <code>ListHsms</code> to retrieve the next set of
    #       items.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHsmsInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListHsms</code>. Pass
    #         null if this is the first call.</p>
    #
    # @return [Types::ListHsmsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hsms(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHsmsOutput
    #   resp.data.hsm_list #=> Array<String>
    #   resp.data.hsm_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_hsms(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHsmsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHsmsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHsms
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListHsms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHsms,
        stubs: @stubs,
        params_class: Params::ListHsmsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hsms
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Lists all of the clients.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> member.
    #       If more results are available, the <code>NextToken</code> member of the response contains a
    #       token that you pass in the next call to <code>ListLunaClients</code> to retrieve the next set
    #       of items.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLunaClientsInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListLunaClients</code>.
    #         Pass null if this is the first call.</p>
    #
    # @return [Types::ListLunaClientsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_luna_clients(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLunaClientsOutput
    #   resp.data.client_list #=> Array<String>
    #   resp.data.client_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_luna_clients(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLunaClientsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLunaClientsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLunaClients
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListLunaClients
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLunaClients,
        stubs: @stubs,
        params_class: Params::ListLunaClientsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_luna_clients
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Returns a list of all tags for the specified AWS CloudHSM resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
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

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Modifies an existing high-availability partition group.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyHapgInput}.
    #
    # @option params [String] :hapg_arn
    #   <p>The ARN of the high-availability partition group to modify.</p>
    #
    # @option params [String] :label
    #   <p>The new label for the high-availability partition group.</p>
    #
    # @option params [Array<String>] :partition_serial_list
    #   <p>The list of partition serial numbers to make members of the high-availability partition
    #         group.</p>
    #
    # @return [Types::ModifyHapgOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_hapg(
    #     hapg_arn: 'HapgArn', # required
    #     label: 'Label',
    #     partition_serial_list: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyHapgOutput
    #   resp.data.hapg_arn #=> String
    #
    def modify_hapg(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyHapgInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyHapgInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyHapg
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ModifyHapg
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyHapg,
        stubs: @stubs,
        params_class: Params::ModifyHapgOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_hapg
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Modifies an HSM.</p>
    #          <important>
    #             <p>This operation can result in the HSM being offline for up to 15 minutes while the AWS
    #         CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure
    #         that your AWS CloudHSM service is configured for high availability, and consider executing this
    #         operation during a maintenance window.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::ModifyHsmInput}.
    #
    # @option params [String] :hsm_arn
    #   <p>The ARN of the HSM to modify.</p>
    #
    # @option params [String] :subnet_id
    #   <p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same
    #         Availability Zone as the current subnet.</p>
    #
    # @option params [String] :eni_ip
    #   <p>The new IP address for the elastic network interface (ENI) attached to the
    #         HSM.</p>
    #            <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP
    #         address will be randomly chosen from the CIDR range of the new subnet.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>The new IAM role ARN.</p>
    #
    # @option params [String] :external_id
    #   <p>The new external ID.</p>
    #
    # @option params [String] :syslog_ip
    #   <p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports
    #         one syslog monitoring server.</p>
    #
    # @return [Types::ModifyHsmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_hsm(
    #     hsm_arn: 'HsmArn', # required
    #     subnet_id: 'SubnetId',
    #     eni_ip: 'EniIp',
    #     iam_role_arn: 'IamRoleArn',
    #     external_id: 'ExternalId',
    #     syslog_ip: 'SyslogIp'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyHsmOutput
    #   resp.data.hsm_arn #=> String
    #
    def modify_hsm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyHsmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyHsmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyHsm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ModifyHsm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyHsm,
        stubs: @stubs,
        params_class: Params::ModifyHsmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_hsm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Modifies the certificate used by the client.</p>
    #          <p>This action can potentially start a workflow to install the new certificate on the
    #       client's HSMs.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyLunaClientInput}.
    #
    # @option params [String] :client_arn
    #   <p>The ARN of the client.</p>
    #
    # @option params [String] :certificate
    #   <p>The new certificate for the client.</p>
    #
    # @return [Types::ModifyLunaClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_luna_client(
    #     client_arn: 'ClientArn', # required
    #     certificate: 'Certificate' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyLunaClientOutput
    #   resp.data.client_arn #=> String
    #
    def modify_luna_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyLunaClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyLunaClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyLunaClient
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException]),
        data_parser: Parsers::ModifyLunaClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyLunaClient,
        stubs: @stubs,
        params_class: Params::ModifyLunaClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_luna_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Removes one or more tags from the specified AWS CloudHSM resource.</p>
    #          <p>To remove a tag, specify only the tag key to remove (not the value). To overwrite the
    #       value for an existing tag, use <a>AddTagsToResource</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
    #
    # @option params [Array<String>] :tag_key_list
    #   <p>The tag key or keys to remove.</p>
    #            <p>Specify only the tag key to remove (not the value). To overwrite the value for an
    #         existing tag, use <a>AddTagsToResource</a>.</p>
    #
    # @return [Types::RemoveTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_key_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromResourceOutput
    #   resp.data.status #=> String
    #
    def remove_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmServiceException, Errors::CloudHsmInternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::RemoveTagsFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromResource,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_resource
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
