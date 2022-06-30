# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Account
  # An API client for Account
  # See {#initialize} for a full list of supported configuration options
  # <p>Operations for Amazon Web Services Account Management</p>
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
    def initialize(config = AWS::SDK::Account::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the specified alternate contact from an Amazon Web Services account.</p>
    #         <p>For complete details about how to use the alternate contact operations, see <a href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html">Access or
    #                 updating the alternate contacts</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAlternateContactInput}.
    #
    # @option params [String] :alternate_contact_type
    #   <p>Specifies which of the alternate contacts to delete. </p>
    #
    # @option params [String] :account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that
    #           you want to access or modify with this operation.</p>
    #            <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the
    #           identity used to call the operation.</p>
    #            <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and
    #           the specified account ID must be a member account in the same organization. The
    #           organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features
    #           enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the
    #           Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account
    #           assigned.</p>
    #            <note>
    #               <p>The management account can't specify its own <code>AccountId</code>; it must call
    #               the operation in standalone context by not including the <code>AccountId</code>
    #               parameter.</p>
    #            </note>
    #            <p>To call this operation on an account that is not a member of an organization, then
    #           don't specify this parameter, and call the operation using an identity belonging to
    #           the account whose contacts you wish to retrieve or modify.</p>
    #
    # @return [Types::DeleteAlternateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alternate_contact(
    #     alternate_contact_type: 'BILLING', # required - accepts ["BILLING", "OPERATIONS", "SECURITY"]
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAlternateContactOutput
    #
    def delete_alternate_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAlternateContactInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAlternateContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlternateContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteAlternateContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlternateContact,
        stubs: @stubs,
        params_class: Params::DeleteAlternateContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alternate_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified alternate contact attached to an Amazon Web Services account.</p>
    #         <p>For complete details about how to use the alternate contact operations, see <a href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html">Access or
    #             updating the alternate contacts</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAlternateContactInput}.
    #
    # @option params [String] :alternate_contact_type
    #   <p>Specifies which alternate contact you want to retrieve.</p>
    #
    # @option params [String] :account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that
    #           you want to access or modify with this operation.</p>
    #            <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the
    #           identity used to call the operation.</p>
    #            <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and
    #           the specified account ID must be a member account in the same organization. The
    #           organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features
    #           enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the
    #           Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account
    #           assigned.</p>
    #            <note>
    #               <p>The management account can't specify its own <code>AccountId</code>; it must call
    #               the operation in standalone context by not including the <code>AccountId</code>
    #               parameter.</p>
    #            </note>
    #            <p>To call this operation on an account that is not a member of an organization, then
    #           don't specify this parameter, and call the operation using an identity belonging to
    #           the account whose contacts you wish to retrieve or modify.</p>
    #
    # @return [Types::GetAlternateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alternate_contact(
    #     alternate_contact_type: 'BILLING', # required - accepts ["BILLING", "OPERATIONS", "SECURITY"]
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAlternateContactOutput
    #   resp.data.alternate_contact #=> Types::AlternateContact
    #   resp.data.alternate_contact.name #=> String
    #   resp.data.alternate_contact.title #=> String
    #   resp.data.alternate_contact.email_address #=> String
    #   resp.data.alternate_contact.phone_number #=> String
    #   resp.data.alternate_contact.alternate_contact_type #=> String, one of ["BILLING", "OPERATIONS", "SECURITY"]
    #
    def get_alternate_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAlternateContactInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAlternateContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAlternateContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetAlternateContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAlternateContact,
        stubs: @stubs,
        params_class: Params::GetAlternateContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_alternate_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the specified alternate contact attached to an Amazon Web Services account.</p>
    #         <p>For complete details about how to use the alternate contact operations, see <a href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html">Access or
    #             updating the alternate contacts</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAlternateContactInput}.
    #
    # @option params [String] :name
    #   <p>Specifies a name for the alternate contact.</p>
    #
    # @option params [String] :title
    #   <p>Specifies a title for the alternate contact.</p>
    #
    # @option params [String] :email_address
    #   <p>Specifies an email address for the alternate contact. </p>
    #
    # @option params [String] :phone_number
    #   <p>Specifies a phone number for the alternate contact.</p>
    #
    # @option params [String] :alternate_contact_type
    #   <p>Specifies which alternate contact you want to create or update.</p>
    #
    # @option params [String] :account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that
    #           you want to access or modify with this operation.</p>
    #            <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the
    #           identity used to call the operation.</p>
    #            <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's management account</a> or a delegated administrator account, and
    #           the specified account ID must be a member account in the same organization. The
    #           organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features
    #           enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the
    #           Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account
    #           assigned.</p>
    #            <note>
    #               <p>The management account can't specify its own <code>AccountId</code>; it must call
    #               the operation in standalone context by not including the <code>AccountId</code>
    #               parameter.</p>
    #            </note>
    #            <p>To call this operation on an account that is not a member of an organization, then
    #           don't specify this parameter, and call the operation using an identity belonging to
    #           the account whose contacts you wish to retrieve or modify.</p>
    #
    # @return [Types::PutAlternateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_alternate_contact(
    #     name: 'Name', # required
    #     title: 'Title', # required
    #     email_address: 'EmailAddress', # required
    #     phone_number: 'PhoneNumber', # required
    #     alternate_contact_type: 'BILLING', # required - accepts ["BILLING", "OPERATIONS", "SECURITY"]
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAlternateContactOutput
    #
    def put_alternate_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAlternateContactInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAlternateContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAlternateContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutAlternateContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAlternateContact,
        stubs: @stubs,
        params_class: Params::PutAlternateContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_alternate_contact
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
