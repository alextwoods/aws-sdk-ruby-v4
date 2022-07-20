# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Macie
  # An API client for MacieService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Macie Classic</fullname>
  #          <p>Amazon Macie Classic has been discontinued and is no longer available.</p>
  #
  #          <p>A new Amazon Macie is now available with significant design improvements and additional
  #       features, at a lower price and in most Amazon Web Services Regions. We encourage you to take advantage of the
  #       new and improved features, and benefit from the reduced cost. To learn about features and pricing for the new Macie, see <a href="http://aws.amazon.com/macie/">Amazon Macie</a>. To learn how to use the new Macie, see the <a href="https://docs.aws.amazon.com/macie/latest/user/what-is-macie.html">Amazon Macie User
  #         Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Macie::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>(Discontinued) Associates a specified Amazon Web Services account with Amazon Macie Classic as a member
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateMemberAccountInput}.
    #
    # @option params [String] :member_account_id
    #   <p>(Discontinued) The ID of the Amazon Web Services account that you want to associate with Amazon Macie
    #         Classic as a member account.</p>
    #
    # @return [Types::AssociateMemberAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_account(
    #     member_account_id: 'memberAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateMemberAccountOutput
    #
    def associate_member_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateMemberAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateMemberAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateMemberAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::LimitExceededException, Errors::InternalException]),
        data_parser: Parsers::AssociateMemberAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateMemberAccount,
        stubs: @stubs,
        params_class: Params::AssociateMemberAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_member_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Discontinued) Associates specified S3 resources with Amazon Macie Classic for
    #       monitoring and data classification. If <code>memberAccountId</code> isn't specified, the action associates
    #       specified S3 resources with Macie Classic for the current Macie Classic administrator account.
    #       If <code>memberAccountId</code> is specified, the action associates specified S3 resources with Macie
    #       Classic for the specified member account.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateS3ResourcesInput}.
    #
    # @option params [String] :member_account_id
    #   <p>(Discontinued) The ID of the Amazon Macie Classic member account whose resources you
    #         want to associate with Macie Classic.</p>
    #
    # @option params [Array<S3ResourceClassification>] :s3_resources
    #   <p>(Discontinued) The S3 resources that you want to associate with Amazon Macie Classic
    #         for monitoring and data classification.</p>
    #
    # @return [Types::AssociateS3ResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_s3_resources(
    #     member_account_id: 'memberAccountId',
    #     s3_resources: [
    #       {
    #         bucket_name: 'bucketName', # required
    #         prefix: 'prefix',
    #         classification_type: {
    #           one_time: 'FULL', # required - accepts ["FULL", "NONE"]
    #           continuous: 'FULL' # required - accepts ["FULL"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateS3ResourcesOutput
    #   resp.data.failed_s3_resources #=> Array<FailedS3Resource>
    #   resp.data.failed_s3_resources[0] #=> Types::FailedS3Resource
    #   resp.data.failed_s3_resources[0].failed_item #=> Types::S3Resource
    #   resp.data.failed_s3_resources[0].failed_item.bucket_name #=> String
    #   resp.data.failed_s3_resources[0].failed_item.prefix #=> String
    #   resp.data.failed_s3_resources[0].error_code #=> String
    #   resp.data.failed_s3_resources[0].error_message #=> String
    #
    def associate_s3_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateS3ResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateS3ResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateS3Resources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::InternalException]),
        data_parser: Parsers::AssociateS3Resources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateS3Resources,
        stubs: @stubs,
        params_class: Params::AssociateS3ResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_s3_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Discontinued) Removes the specified member account from Amazon Macie
    #       Classic.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMemberAccountInput}.
    #
    # @option params [String] :member_account_id
    #   <p>(Discontinued) The ID of the member account that you want to remove from Amazon Macie
    #         Classic.</p>
    #
    # @return [Types::DisassociateMemberAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_account(
    #     member_account_id: 'memberAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMemberAccountOutput
    #
    def disassociate_member_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMemberAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMemberAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMemberAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException]),
        data_parser: Parsers::DisassociateMemberAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMemberAccount,
        stubs: @stubs,
        params_class: Params::DisassociateMemberAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_member_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Discontinued) Removes specified S3 resources from being monitored by Amazon Macie
    #       Classic. If <code>memberAccountId</code> isn't specified, the action removes specified S3 resources from
    #       Macie Classic for the current Macie Classic administrator account. If <code>memberAccountId</code> is
    #       specified, the action removes specified S3 resources from Macie Classic for the specified
    #       member account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateS3ResourcesInput}.
    #
    # @option params [String] :member_account_id
    #   <p>(Discontinued) The ID of the Amazon Macie Classic member account whose resources you
    #         want to remove from being monitored by Macie Classic.</p>
    #
    # @option params [Array<S3Resource>] :associated_s3_resources
    #   <p>(Discontinued) The S3 resources (buckets or prefixes) that you want to remove from
    #         being monitored and classified by Amazon Macie Classic.</p>
    #
    # @return [Types::DisassociateS3ResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_s3_resources(
    #     member_account_id: 'memberAccountId',
    #     associated_s3_resources: [
    #       {
    #         bucket_name: 'bucketName', # required
    #         prefix: 'prefix'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateS3ResourcesOutput
    #   resp.data.failed_s3_resources #=> Array<FailedS3Resource>
    #   resp.data.failed_s3_resources[0] #=> Types::FailedS3Resource
    #   resp.data.failed_s3_resources[0].failed_item #=> Types::S3Resource
    #   resp.data.failed_s3_resources[0].failed_item.bucket_name #=> String
    #   resp.data.failed_s3_resources[0].failed_item.prefix #=> String
    #   resp.data.failed_s3_resources[0].error_code #=> String
    #   resp.data.failed_s3_resources[0].error_message #=> String
    #
    def disassociate_s3_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateS3ResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateS3ResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateS3Resources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::InternalException]),
        data_parser: Parsers::DisassociateS3Resources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateS3Resources,
        stubs: @stubs,
        params_class: Params::DisassociateS3ResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_s3_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Discontinued) Lists all Amazon Macie Classic member accounts for the current Macie
    #       Classic administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMemberAccountsInput}.
    #
    # @option params [String] :next_token
    #   <p>(Discontinued) Use this parameter when paginating results. Set the value of this
    #         parameter to null on your first call to the <code>ListMemberAccounts</code> action. Subsequent calls to the
    #         action fill <code>nextToken</code> in the request with the value of <code>nextToken</code> from the previous response to
    #         continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>(Discontinued) Use this parameter to indicate the maximum number of items that you want
    #         in the response. The default value is 250.</p>
    #
    # @return [Types::ListMemberAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_member_accounts(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMemberAccountsOutput
    #   resp.data.member_accounts #=> Array<MemberAccount>
    #   resp.data.member_accounts[0] #=> Types::MemberAccount
    #   resp.data.member_accounts[0].account_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_member_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMemberAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMemberAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMemberAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException]),
        data_parser: Parsers::ListMemberAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMemberAccounts,
        stubs: @stubs,
        params_class: Params::ListMemberAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_member_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Discontinued) Lists all the S3 resources associated with Amazon Macie Classic. If
    #       <code>memberAccountId</code> isn't specified, the action lists the S3 resources associated with Macie
    #       Classic for the current Macie Classic administrator account. If <code>memberAccountId</code> is specified,
    #       the action lists the S3 resources associated with Macie Classic for the specified member
    #       account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListS3ResourcesInput}.
    #
    # @option params [String] :member_account_id
    #   <p>(Discontinued) The Amazon Macie Classic member account ID whose associated S3 resources
    #         you want to list. </p>
    #
    # @option params [String] :next_token
    #   <p>(Discontinued) Use this parameter when paginating results. Set its value to null on
    #         your first call to the <code>ListS3Resources</code> action. Subsequent calls to the action fill <code>nextToken</code>
    #         in the request with the value of <code>nextToken</code> from the previous response to continue listing
    #         data. </p>
    #
    # @option params [Integer] :max_results
    #   <p>(Discontinued) Use this parameter to indicate the maximum number of items that you want
    #         in the response. The default value is 250. </p>
    #
    # @return [Types::ListS3ResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_s3_resources(
    #     member_account_id: 'memberAccountId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListS3ResourcesOutput
    #   resp.data.s3_resources #=> Array<S3ResourceClassification>
    #   resp.data.s3_resources[0] #=> Types::S3ResourceClassification
    #   resp.data.s3_resources[0].bucket_name #=> String
    #   resp.data.s3_resources[0].prefix #=> String
    #   resp.data.s3_resources[0].classification_type #=> Types::ClassificationType
    #   resp.data.s3_resources[0].classification_type.one_time #=> String, one of ["FULL", "NONE"]
    #   resp.data.s3_resources[0].classification_type.continuous #=> String, one of ["FULL"]
    #   resp.data.next_token #=> String
    #
    def list_s3_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListS3ResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListS3ResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListS3Resources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::InternalException]),
        data_parser: Parsers::ListS3Resources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListS3Resources,
        stubs: @stubs,
        params_class: Params::ListS3ResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_s3_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Discontinued) Updates the classification types for the specified S3 resources. If
    #       <code>memberAccountId</code> isn't specified, the action updates the classification types of the S3
    #       resources associated with Amazon Macie Classic for the current Macie Classic administrator
    #       account. If <code>memberAccountId</code> is specified, the action updates the classification types of the
    #       S3 resources associated with Macie Classic for the specified member account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateS3ResourcesInput}.
    #
    # @option params [String] :member_account_id
    #   <p>(Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account whose S3
    #         resources' classification types you want to update.</p>
    #
    # @option params [Array<S3ResourceClassificationUpdate>] :s3_resources_update
    #   <p>(Discontinued) The S3 resources whose classification types you want to
    #         update.</p>
    #
    # @return [Types::UpdateS3ResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_s3_resources(
    #     member_account_id: 'memberAccountId',
    #     s3_resources_update: [
    #       {
    #         bucket_name: 'bucketName', # required
    #         prefix: 'prefix',
    #         classification_type_update: {
    #           one_time: 'FULL', # accepts ["FULL", "NONE"]
    #           continuous: 'FULL' # accepts ["FULL"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateS3ResourcesOutput
    #   resp.data.failed_s3_resources #=> Array<FailedS3Resource>
    #   resp.data.failed_s3_resources[0] #=> Types::FailedS3Resource
    #   resp.data.failed_s3_resources[0].failed_item #=> Types::S3Resource
    #   resp.data.failed_s3_resources[0].failed_item.bucket_name #=> String
    #   resp.data.failed_s3_resources[0].failed_item.prefix #=> String
    #   resp.data.failed_s3_resources[0].error_code #=> String
    #   resp.data.failed_s3_resources[0].error_message #=> String
    #
    def update_s3_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateS3ResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateS3ResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateS3Resources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::InternalException]),
        data_parser: Parsers::UpdateS3Resources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateS3Resources,
        stubs: @stubs,
        params_class: Params::UpdateS3ResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_s3_resources
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
