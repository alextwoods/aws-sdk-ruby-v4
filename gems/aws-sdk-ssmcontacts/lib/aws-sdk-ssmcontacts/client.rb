# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SSMContacts
  # An API client for SSMContacts
  # See {#initialize} for a full list of supported configuration options
  # <p>Systems Manager Incident Manager is an incident management console designed to help users
  #          mitigate and recover from incidents affecting their Amazon Web Services-hosted applications.
  #          An incident is any unplanned interruption or reduction in quality of services. </p>
  #          <p>Incident Manager increases incident resolution by notifying responders of impact,
  #          highlighting relevant troubleshooting data, and providing collaboration tools to get
  #          services back up and running. To achieve the primary goal of reducing the
  #          time-to-resolution of critical incidents, Incident Manager automates response plans
  #          and enables responder team escalation. </p>
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
    def initialize(config = AWS::SDK::SSMContacts::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Used to acknowledge an engagement to a contact channel during an incident.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptPageInput}.
    #
    # @option params [String] :page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    #
    # @option params [String] :contact_channel_id
    #   <p>The ARN of the contact channel.</p>
    #
    # @option params [String] :accept_type
    #   <p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>
    #
    # @option params [String] :note
    #   <p>Information provided by the user when the user acknowledges the page.</p>
    #
    # @option params [String] :accept_code
    #   <p>The accept code is a 6-digit code used to acknowledge the page.</p>
    #
    # @option params [String] :accept_code_validation
    #   <p>An optional field that Incident Manager uses to <code>ENFORCE</code>
    #               <code>AcceptCode</code> validation when acknowledging an page. Acknowledgement can occur by
    #            replying to a page, or when entering the AcceptCode in the console. Enforcing AcceptCode
    #            validation causes Incident Manager to verify that the code entered by the user matches the
    #            code sent by Incident Manager with the page.</p>
    #            <p>Incident Manager can also <code>IGNORE</code>
    #               <code>AcceptCode</code> validation. Ignoring <code>AcceptCode</code> validation causes
    #            Incident Manager to accept any value entered for the <code>AcceptCode</code>.</p>
    #
    # @return [Types::AcceptPageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_page(
    #     page_id: 'PageId', # required
    #     contact_channel_id: 'ContactChannelId',
    #     accept_type: 'DELIVERED', # required - accepts ["DELIVERED", "READ"]
    #     note: 'Note',
    #     accept_code: 'AcceptCode', # required
    #     accept_code_validation: 'IGNORE' # accepts ["IGNORE", "ENFORCE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptPageOutput
    #
    def accept_page(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptPageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptPageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptPage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::AcceptPage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptPage,
        stubs: @stubs,
        params_class: Params::AcceptPageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_page
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Activates a contact's contact channel. Incident Manager can't engage a contact until the
    #          contact channel has been activated.</p>
    #
    # @param [Hash] params
    #   See {Types::ActivateContactChannelInput}.
    #
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    # @option params [String] :activation_code
    #   <p>The code sent to the contact channel when it was created in the contact. </p>
    #
    # @return [Types::ActivateContactChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_contact_channel(
    #     contact_channel_id: 'ContactChannelId', # required
    #     activation_code: 'ActivationCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivateContactChannelOutput
    #
    def activate_contact_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateContactChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateContactChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateContactChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ActivateContactChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateContactChannel,
        stubs: @stubs,
        params_class: Params::ActivateContactChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_contact_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Contacts are either the contacts that Incident Manager engages during an incident or the
    #          escalation plans that Incident Manager uses to engage contacts in phases during an
    #          incident. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactInput}.
    #
    # @option params [String] :alias
    #   <p>The short name to quickly identify a contact or escalation plan. The contact alias must
    #            be unique and identifiable. </p>
    #
    # @option params [String] :display_name
    #   <p>The full name of the contact or escalation plan.  </p>
    #
    # @option params [String] :type
    #   <p>To create an escalation plan use <code>ESCALATION</code>. To create a contact use
    #               <code>PERSONAL</code>.</p>
    #
    # @option params [Plan] :plan
    #   <p>A list of stages. A contact has an engagement plan with stages that contact specified
    #            contact channels. An escalation plan uses stages that contact specified contacts. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds a tag to the target. You can only tag resources created in the first Region of your
    #            replication set. </p>
    #
    # @option params [String] :idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #
    # @return [Types::CreateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact(
    #     alias: 'Alias', # required
    #     display_name: 'DisplayName',
    #     type: 'PERSONAL', # required - accepts ["PERSONAL", "ESCALATION"]
    #     plan: {
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: 'ContactChannelId', # required
    #                 retry_interval_in_minutes: 1
    #               },
    #               contact_target_info: {
    #                 contact_id: 'ContactId',
    #                 is_essential: false # required
    #               }
    #             }
    #           ] # required
    #         }
    #       ] # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContactOutput
    #   resp.data.contact_arn #=> String
    #
    def create_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContact,
        stubs: @stubs,
        params_class: Params::CreateContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A contact channel is the method that Incident Manager uses to engage your contact.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactChannelInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are adding the contact channel to.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact channel.</p>
    #
    # @option params [String] :type
    #   <p>Incident Manager supports three types of contact channels:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [ContactChannelAddress] :delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. The format
    #            is dependent on the type of the contact channel. The following are the expected
    #            formats:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>VOICE - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL - any standard email format</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :defer_activation
    #   <p>If you want to activate the channel at a later time, you can choose to defer activation.
    #            Incident Manager can't engage your contact channel until it has been activated.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #
    # @return [Types::CreateContactChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_channel(
    #     contact_id: 'ContactId', # required
    #     name: 'Name', # required
    #     type: 'SMS', # required - accepts ["SMS", "VOICE", "EMAIL"]
    #     delivery_address: {
    #       simple_address: 'SimpleAddress'
    #     }, # required
    #     defer_activation: false,
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContactChannelOutput
    #   resp.data.contact_channel_arn #=> String
    #
    def create_contact_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContactChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContactChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContactChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateContactChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContactChannel,
        stubs: @stubs,
        params_class: Params::CreateContactChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_contact_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>To no longer receive Incident Manager engagements to a contact channel, you can deactivate
    #          the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateContactChannelInput}.
    #
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you're deactivating.</p>
    #
    # @return [Types::DeactivateContactChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_contact_channel(
    #     contact_channel_id: 'ContactChannelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateContactChannelOutput
    #
    def deactivate_contact_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateContactChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateContactChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateContactChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeactivateContactChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateContactChannel,
        stubs: @stubs,
        params_class: Params::DeactivateContactChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_contact_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>To remove a contact from Incident Manager, you can delete the contact. Deleting a contact
    #          removes them from all escalation plans and related response plans. Deleting an escalation
    #          plan removes it from all related response plans. You will have to recreate the contact and
    #          its contact channels before you can use it again.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact that you're deleting.</p>
    #
    # @return [Types::DeleteContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact(
    #     contact_id: 'ContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContactOutput
    #
    def delete_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContact,
        stubs: @stubs,
        params_class: Params::DeleteContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>To no longer receive engagements on a contact channel, you can delete the channel from a
    #          contact. Deleting the contact channel removes it from the contact's engagement plan. If you
    #          delete the only contact channel for a contact, you won't be able to engage that contact
    #          during an incident.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactChannelInput}.
    #
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    # @return [Types::DeleteContactChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_channel(
    #     contact_channel_id: 'ContactChannelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContactChannelOutput
    #
    def delete_contact_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContactChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContactChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContactChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteContactChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContactChannel,
        stubs: @stubs,
        params_class: Params::DeleteContactChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_contact_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Incident Manager uses engagements to engage contacts and escalation plans during an incident.
    #          Use this command to describe the engagement that occurred during an incident.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEngagementInput}.
    #
    # @option params [String] :engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement you want the details of.</p>
    #
    # @return [Types::DescribeEngagementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engagement(
    #     engagement_id: 'EngagementId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEngagementOutput
    #   resp.data.contact_arn #=> String
    #   resp.data.engagement_arn #=> String
    #   resp.data.sender #=> String
    #   resp.data.subject #=> String
    #   resp.data.content #=> String
    #   resp.data.public_subject #=> String
    #   resp.data.public_content #=> String
    #   resp.data.incident_id #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.stop_time #=> Time
    #
    def describe_engagement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEngagementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEngagementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEngagement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeEngagement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEngagement,
        stubs: @stubs,
        params_class: Params::DescribeEngagementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_engagement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists details of the engagement to a contact channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePageInput}.
    #
    # @option params [String] :page_id
    #   <p>The ID of the engagement to a contact channel.</p>
    #
    # @return [Types::DescribePageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_page(
    #     page_id: 'PageId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePageOutput
    #   resp.data.page_arn #=> String
    #   resp.data.engagement_arn #=> String
    #   resp.data.contact_arn #=> String
    #   resp.data.sender #=> String
    #   resp.data.subject #=> String
    #   resp.data.content #=> String
    #   resp.data.public_subject #=> String
    #   resp.data.public_content #=> String
    #   resp.data.incident_id #=> String
    #   resp.data.sent_time #=> Time
    #   resp.data.read_time #=> Time
    #   resp.data.delivery_time #=> Time
    #
    def describe_page(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePage,
        stubs: @stubs,
        params_class: Params::DescribePageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_page
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified contact or escalation plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    # @return [Types::GetContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact(
    #     contact_id: 'ContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactOutput
    #   resp.data.contact_arn #=> String
    #   resp.data.alias #=> String
    #   resp.data.display_name #=> String
    #   resp.data.type #=> String, one of ["PERSONAL", "ESCALATION"]
    #   resp.data.plan #=> Types::Plan
    #   resp.data.plan.stages #=> Array<Stage>
    #   resp.data.plan.stages[0] #=> Types::Stage
    #   resp.data.plan.stages[0].duration_in_minutes #=> Integer
    #   resp.data.plan.stages[0].targets #=> Array<Target>
    #   resp.data.plan.stages[0].targets[0] #=> Types::Target
    #   resp.data.plan.stages[0].targets[0].channel_target_info #=> Types::ChannelTargetInfo
    #   resp.data.plan.stages[0].targets[0].channel_target_info.contact_channel_id #=> String
    #   resp.data.plan.stages[0].targets[0].channel_target_info.retry_interval_in_minutes #=> Integer
    #   resp.data.plan.stages[0].targets[0].contact_target_info #=> Types::ContactTargetInfo
    #   resp.data.plan.stages[0].targets[0].contact_target_info.contact_id #=> String
    #   resp.data.plan.stages[0].targets[0].contact_target_info.is_essential #=> Boolean
    #
    def get_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContact,
        stubs: @stubs,
        params_class: Params::GetContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List details about a specific contact channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactChannelInput}.
    #
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want information about.</p>
    #
    # @return [Types::GetContactChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_channel(
    #     contact_channel_id: 'ContactChannelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactChannelOutput
    #   resp.data.contact_arn #=> String
    #   resp.data.contact_channel_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["SMS", "VOICE", "EMAIL"]
    #   resp.data.delivery_address #=> Types::ContactChannelAddress
    #   resp.data.delivery_address.simple_address #=> String
    #   resp.data.activation_status #=> String, one of ["ACTIVATED", "NOT_ACTIVATED"]
    #
    def get_contact_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContactChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetContactChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContactChannel,
        stubs: @stubs,
        params_class: Params::GetContactChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_contact_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource policies attached to the specified contact or escalation
    #          plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactPolicyInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    # @return [Types::GetContactPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_policy(
    #     contact_arn: 'ContactArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactPolicyOutput
    #   resp.data.contact_arn #=> String
    #   resp.data.policy #=> String
    #
    def get_contact_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContactPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetContactPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContactPolicy,
        stubs: @stubs,
        params_class: Params::GetContactPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_contact_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all contact channels for the specified contact.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContactChannelsInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of contact channels per page.</p>
    #
    # @return [Types::ListContactChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_channels(
    #     contact_id: 'ContactId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactChannelsOutput
    #   resp.data.next_token #=> String
    #   resp.data.contact_channels #=> Array<ContactChannel>
    #   resp.data.contact_channels[0] #=> Types::ContactChannel
    #   resp.data.contact_channels[0].contact_channel_arn #=> String
    #   resp.data.contact_channels[0].contact_arn #=> String
    #   resp.data.contact_channels[0].name #=> String
    #   resp.data.contact_channels[0].type #=> String, one of ["SMS", "VOICE", "EMAIL"]
    #   resp.data.contact_channels[0].delivery_address #=> Types::ContactChannelAddress
    #   resp.data.contact_channels[0].delivery_address.simple_address #=> String
    #   resp.data.contact_channels[0].activation_status #=> String, one of ["ACTIVATED", "NOT_ACTIVATED"]
    #
    def list_contact_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContactChannels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListContactChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContactChannels,
        stubs: @stubs,
        params_class: Params::ListContactChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contact_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all contacts and escalation plans in Incident Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContactsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of contacts and escalation plans per page of results.</p>
    #
    # @option params [String] :alias_prefix
    #   <p>Used to list only contacts who's aliases start with the specified prefix.</p>
    #
    # @option params [String] :type
    #   <p>The type of contact. A contact is type <code>PERSONAL</code> and an escalation plan is
    #            type <code>ESCALATION</code>.</p>
    #
    # @return [Types::ListContactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contacts(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     alias_prefix: 'AliasPrefix',
    #     type: 'PERSONAL' # accepts ["PERSONAL", "ESCALATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactsOutput
    #   resp.data.next_token #=> String
    #   resp.data.contacts #=> Array<Contact>
    #   resp.data.contacts[0] #=> Types::Contact
    #   resp.data.contacts[0].contact_arn #=> String
    #   resp.data.contacts[0].alias #=> String
    #   resp.data.contacts[0].display_name #=> String
    #   resp.data.contacts[0].type #=> String, one of ["PERSONAL", "ESCALATION"]
    #
    def list_contacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContacts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListContacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContacts,
        stubs: @stubs,
        params_class: Params::ListContactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all engagements that have happened in an incident.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEngagementsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of engagements per page of results.</p>
    #
    # @option params [String] :incident_id
    #   <p>The Amazon Resource Name (ARN) of the incident you're listing engagements for.</p>
    #
    # @option params [TimeRange] :time_range_value
    #   <p>The time range to lists engagements for an incident.</p>
    #
    # @return [Types::ListEngagementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagements(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     incident_id: 'IncidentId',
    #     time_range_value: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEngagementsOutput
    #   resp.data.next_token #=> String
    #   resp.data.engagements #=> Array<Engagement>
    #   resp.data.engagements[0] #=> Types::Engagement
    #   resp.data.engagements[0].engagement_arn #=> String
    #   resp.data.engagements[0].contact_arn #=> String
    #   resp.data.engagements[0].sender #=> String
    #   resp.data.engagements[0].incident_id #=> String
    #   resp.data.engagements[0].start_time #=> Time
    #   resp.data.engagements[0].stop_time #=> Time
    #
    def list_engagements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEngagementsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEngagementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEngagements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListEngagements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEngagements,
        stubs: @stubs,
        params_class: Params::ListEngagementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_engagements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the engagements to contact channels that have been acknowledged. </p>
    #
    # @param [Hash] params
    #   See {Types::ListPageReceiptsInput}.
    #
    # @option params [String] :page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a specific contact channel.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of acknowledgements per page of results.</p>
    #
    # @return [Types::ListPageReceiptsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_page_receipts(
    #     page_id: 'PageId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPageReceiptsOutput
    #   resp.data.next_token #=> String
    #   resp.data.receipts #=> Array<Receipt>
    #   resp.data.receipts[0] #=> Types::Receipt
    #   resp.data.receipts[0].contact_channel_arn #=> String
    #   resp.data.receipts[0].receipt_type #=> String, one of ["DELIVERED", "ERROR", "READ", "SENT", "STOP"]
    #   resp.data.receipts[0].receipt_info #=> String
    #   resp.data.receipts[0].receipt_time #=> Time
    #
    def list_page_receipts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPageReceiptsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPageReceiptsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPageReceipts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPageReceipts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPageReceipts,
        stubs: @stubs,
        params_class: Params::ListPageReceiptsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_page_receipts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the engagements to a contact's contact channels.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPagesByContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are retrieving engagements for.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of engagements to contact channels to list per page of results. </p>
    #
    # @return [Types::ListPagesByContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pages_by_contact(
    #     contact_id: 'ContactId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPagesByContactOutput
    #   resp.data.next_token #=> String
    #   resp.data.pages #=> Array<Page>
    #   resp.data.pages[0] #=> Types::Page
    #   resp.data.pages[0].page_arn #=> String
    #   resp.data.pages[0].engagement_arn #=> String
    #   resp.data.pages[0].contact_arn #=> String
    #   resp.data.pages[0].sender #=> String
    #   resp.data.pages[0].incident_id #=> String
    #   resp.data.pages[0].sent_time #=> Time
    #   resp.data.pages[0].delivery_time #=> Time
    #   resp.data.pages[0].read_time #=> Time
    #
    def list_pages_by_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPagesByContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPagesByContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPagesByContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPagesByContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPagesByContact,
        stubs: @stubs,
        params_class: Params::ListPagesByContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pages_by_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the engagements to contact channels that occurred by engaging a contact.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPagesByEngagementInput}.
    #
    # @option params [String] :engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of engagements to contact channels to list per page of
    #            results.</p>
    #
    # @return [Types::ListPagesByEngagementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pages_by_engagement(
    #     engagement_id: 'EngagementId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPagesByEngagementOutput
    #   resp.data.next_token #=> String
    #   resp.data.pages #=> Array<Page>
    #   resp.data.pages[0] #=> Types::Page
    #   resp.data.pages[0].page_arn #=> String
    #   resp.data.pages[0].engagement_arn #=> String
    #   resp.data.pages[0].contact_arn #=> String
    #   resp.data.pages[0].sender #=> String
    #   resp.data.pages[0].incident_id #=> String
    #   resp.data.pages[0].sent_time #=> Time
    #   resp.data.pages[0].delivery_time #=> Time
    #   resp.data.pages[0].read_time #=> Time
    #
    def list_pages_by_engagement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPagesByEngagementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPagesByEngagementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPagesByEngagement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPagesByEngagement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPagesByEngagement,
        stubs: @stubs,
        params_class: Params::ListPagesByEngagementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pages_by_engagement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags of an escalation plan or contact.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Adds a resource policy to the specified contact or escalation plan. The resource policy
    #          is used to share the contact or escalation plan using Resource Access Manager (RAM). For more information about cross-account sharing, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html">Setting up
    #             cross-account functionality</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutContactPolicyInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    # @option params [String] :policy
    #   <p>Details of the resource policy.</p>
    #
    # @return [Types::PutContactPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_contact_policy(
    #     contact_arn: 'ContactArn', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutContactPolicyOutput
    #
    def put_contact_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutContactPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutContactPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutContactPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutContactPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutContactPolicy,
        stubs: @stubs,
        params_class: Params::PutContactPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_contact_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an activation code to a contact channel. The contact can use this code to activate
    #          the contact channel in the console or with the <code>ActivateChannel</code> operation.
    #          Incident Manager can't engage a contact channel until it has been activated.</p>
    #
    # @param [Hash] params
    #   See {Types::SendActivationCodeInput}.
    #
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    # @return [Types::SendActivationCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_activation_code(
    #     contact_channel_id: 'ContactChannelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendActivationCodeOutput
    #
    def send_activation_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendActivationCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendActivationCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendActivationCode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::SendActivationCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendActivationCode,
        stubs: @stubs,
        params_class: Params::SendActivationCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_activation_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an engagement to a contact or escalation plan. The engagement engages each
    #          contact specified in the incident.</p>
    #
    # @param [Hash] params
    #   See {Types::StartEngagementInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact being engaged.</p>
    #
    # @option params [String] :sender
    #   <p>The user that started the engagement.</p>
    #
    # @option params [String] :subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    #
    # @option params [String] :content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    #
    # @option params [String] :public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    # @option params [String] :public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    # @option params [String] :incident_id
    #   <p>The ARN of the incident that the engagement is part of.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #
    # @return [Types::StartEngagementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_engagement(
    #     contact_id: 'ContactId', # required
    #     sender: 'Sender', # required
    #     subject: 'Subject', # required
    #     content: 'Content', # required
    #     public_subject: 'PublicSubject',
    #     public_content: 'PublicContent',
    #     incident_id: 'IncidentId',
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartEngagementOutput
    #   resp.data.engagement_arn #=> String
    #
    def start_engagement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartEngagementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartEngagementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartEngagement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::StartEngagement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartEngagement,
        stubs: @stubs,
        params_class: Params::StartEngagementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_engagement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an engagement before it finishes the final stage of the escalation plan or
    #          engagement plan. Further contacts aren't engaged.</p>
    #
    # @param [Hash] params
    #   See {Types::StopEngagementInput}.
    #
    # @option params [String] :engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #
    # @option params [String] :reason
    #   <p>The reason that you're stopping the engagement. </p>
    #
    # @return [Types::StopEngagementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_engagement(
    #     engagement_id: 'EngagementId', # required
    #     reason: 'Reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopEngagementOutput
    #
    def stop_engagement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopEngagementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopEngagementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopEngagement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::StopEngagement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopEngagement,
        stubs: @stubs,
        params_class: Params::StopEngagementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_engagement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tags a contact or escalation plan. You can tag only contacts and escalation plans in the
    #          first region of your replication set. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you are adding to the contact or escalation plan.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Removes tags from the specified resource. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key of the tag that you want to remove.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Updates the contact or escalation plan specified. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan you're updating.</p>
    #
    # @option params [String] :display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #
    # @option params [Plan] :plan
    #   <p>A list of stages. A contact has an engagement plan with stages for specified contact
    #            channels. An escalation plan uses these stages to contact specified contacts. </p>
    #
    # @return [Types::UpdateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact(
    #     contact_id: 'ContactId', # required
    #     display_name: 'DisplayName',
    #     plan: {
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: 'ContactChannelId', # required
    #                 retry_interval_in_minutes: 1
    #               },
    #               contact_target_info: {
    #                 contact_id: 'ContactId',
    #                 is_essential: false # required
    #               }
    #             }
    #           ] # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactOutput
    #
    def update_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContact,
        stubs: @stubs,
        params_class: Params::UpdateContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a contact's contact channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactChannelInput}.
    #
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact channel.</p>
    #
    # @option params [ContactChannelAddress] :delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. </p>
    #
    # @return [Types::UpdateContactChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_channel(
    #     contact_channel_id: 'ContactChannelId', # required
    #     name: 'Name',
    #     delivery_address: {
    #       simple_address: 'SimpleAddress'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactChannelOutput
    #
    def update_contact_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::DataEncryptionException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateContactChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactChannel,
        stubs: @stubs,
        params_class: Params::UpdateContactChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_channel
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
