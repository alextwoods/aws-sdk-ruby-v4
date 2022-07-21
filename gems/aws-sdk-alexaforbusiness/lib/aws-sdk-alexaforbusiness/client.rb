# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AlexaForBusiness
  # An API client for AlexaForBusiness
  # See {#initialize} for a full list of supported configuration options
  # <p>Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools
  #          to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your
  #          own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations.
  #          You can also make these available as private skills for your organization. Alexa for Business makes it
  #          efficient to voice-enable your products and services, thus providing context-aware voice
  #          experiences for your customers. Device makers building with the Alexa Voice Service (AVS)
  #          can create fully integrated solutions, register their products with Alexa for Business, and manage them
  #          as shared devices in their organization. </p>
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
    def initialize(config = AWS::SDK::AlexaForBusiness::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a skill with the organization under the customer's AWS account. If a skill
    #          is private, the user implicitly accepts access to this skill during enablement.</p>
    #
    # @param [Hash] params
    #   See {Types::ApproveSkillInput}.
    #
    # @option params [String] :skill_id
    #   <p>The unique identifier of the skill.</p>
    #
    # @return [Types::ApproveSkillOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_skill(
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApproveSkillOutput
    #
    def approve_skill(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApproveSkillInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApproveSkillInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApproveSkill
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException, Errors::LimitExceededException]),
        data_parser: Parsers::ApproveSkill
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApproveSkill,
        stubs: @stubs,
        params_class: Params::ApproveSkillOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :approve_skill
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a contact with a given address book.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateContactWithAddressBookInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The ARN of the contact to associate with an address book.</p>
    #
    # @option params [String] :address_book_arn
    #   <p>The ARN of the address book with which to associate the contact.</p>
    #
    # @return [Types::AssociateContactWithAddressBookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_contact_with_address_book(
    #     contact_arn: 'ContactArn', # required
    #     address_book_arn: 'AddressBookArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateContactWithAddressBookOutput
    #
    def associate_contact_with_address_book(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateContactWithAddressBookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateContactWithAddressBookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateContactWithAddressBook
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::AssociateContactWithAddressBook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateContactWithAddressBook,
        stubs: @stubs,
        params_class: Params::AssociateContactWithAddressBookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_contact_with_address_book
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a device with the specified network profile.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDeviceWithNetworkProfileInput}.
    #
    # @option params [String] :device_arn
    #   <p>The device ARN.</p>
    #
    # @option params [String] :network_profile_arn
    #   <p>The ARN of the network profile to associate with a device.</p>
    #
    # @return [Types::AssociateDeviceWithNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_network_profile(
    #     device_arn: 'DeviceArn', # required
    #     network_profile_arn: 'NetworkProfileArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDeviceWithNetworkProfileOutput
    #
    def associate_device_with_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDeviceWithNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDeviceWithNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDeviceWithNetworkProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::DeviceNotRegisteredException, Errors::NotFoundException]),
        data_parser: Parsers::AssociateDeviceWithNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDeviceWithNetworkProfile,
        stubs: @stubs,
        params_class: Params::AssociateDeviceWithNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_device_with_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a device with a given room. This applies all the settings from the room
    #          profile to the device, and all the skills in any skill groups added to that room. This
    #          operation requires the device to be online, or else a manual sync is required. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDeviceWithRoomInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device to associate to a room. Required.</p>
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room with which to associate the device. Required.</p>
    #
    # @return [Types::AssociateDeviceWithRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_room(
    #     device_arn: 'DeviceArn',
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDeviceWithRoomOutput
    #
    def associate_device_with_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDeviceWithRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDeviceWithRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDeviceWithRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::DeviceNotRegisteredException, Errors::LimitExceededException]),
        data_parser: Parsers::AssociateDeviceWithRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDeviceWithRoom,
        stubs: @stubs,
        params_class: Params::AssociateDeviceWithRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_device_with_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a skill group with a given room. This enables all skills in the associated
    #          skill group on all devices in the room.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateSkillGroupWithRoomInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group to associate with a room. Required.</p>
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room with which to associate the skill group. Required.</p>
    #
    # @return [Types::AssociateSkillGroupWithRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_group_with_room(
    #     skill_group_arn: 'SkillGroupArn',
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSkillGroupWithRoomOutput
    #
    def associate_skill_group_with_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSkillGroupWithRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSkillGroupWithRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSkillGroupWithRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException]),
        data_parser: Parsers::AssociateSkillGroupWithRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSkillGroupWithRoom,
        stubs: @stubs,
        params_class: Params::AssociateSkillGroupWithRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_skill_group_with_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a skill with a skill group.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateSkillWithSkillGroupInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group to associate the skill to. Required.</p>
    #
    # @option params [String] :skill_id
    #   <p>The unique identifier of the skill.</p>
    #
    # @return [Types::AssociateSkillWithSkillGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_with_skill_group(
    #     skill_group_arn: 'SkillGroupArn',
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSkillWithSkillGroupOutput
    #
    def associate_skill_with_skill_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSkillWithSkillGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSkillWithSkillGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSkillWithSkillGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::SkillNotLinkedException, Errors::NotFoundException]),
        data_parser: Parsers::AssociateSkillWithSkillGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSkillWithSkillGroup,
        stubs: @stubs,
        params_class: Params::AssociateSkillWithSkillGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_skill_with_skill_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Makes a private skill available for enrolled users to enable on their devices.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateSkillWithUsersInput}.
    #
    # @option params [String] :skill_id
    #   <p>The private skill ID you want to make available to enrolled users.</p>
    #
    # @return [Types::AssociateSkillWithUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_with_users(
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSkillWithUsersOutput
    #
    def associate_skill_with_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSkillWithUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSkillWithUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSkillWithUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::AssociateSkillWithUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSkillWithUsers,
        stubs: @stubs,
        params_class: Params::AssociateSkillWithUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_skill_with_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an address book with the specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAddressBookInput}.
    #
    # @option params [String] :name
    #   <p>The name of the address book.</p>
    #
    # @option params [String] :description
    #   <p>The description of the address book.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, user-specified identifier for the request that ensures
    #            idempotency.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    # @return [Types::CreateAddressBookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address_book(
    #     name: 'Name', # required
    #     description: 'Description',
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAddressBookOutput
    #   resp.data.address_book_arn #=> String
    #
    def create_address_book(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAddressBookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAddressBookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAddressBook
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateAddressBook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAddressBook,
        stubs: @stubs,
        params_class: Params::CreateAddressBookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_address_book
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a recurring schedule for usage reports to deliver to the specified S3
    #          location with a specified daily or weekly interval.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBusinessReportScheduleInput}.
    #
    # @option params [String] :schedule_name
    #   <p>The name identifier of the schedule.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The S3 bucket name of the output reports. If this isn't specified, the report can be
    #            retrieved from a download link by calling ListBusinessReportSchedule. </p>
    #
    # @option params [String] :s3_key_prefix
    #   <p>The S3 key where the report is delivered.</p>
    #
    # @option params [String] :format
    #   <p>The format of the generated report (individual CSV files or zipped files of
    #            individual files).</p>
    #
    # @option params [BusinessReportContentRange] :content_range
    #   <p>The content range of the reports.</p>
    #
    # @option params [BusinessReportRecurrence] :recurrence
    #   <p>The recurrence of the reports. If this isn't specified, the report will only be
    #            delivered one time when the API is called. </p>
    #
    # @option params [String] :client_request_token
    #   <p>The client request token.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the business report schedule.</p>
    #
    # @return [Types::CreateBusinessReportScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_business_report_schedule(
    #     schedule_name: 'ScheduleName',
    #     s3_bucket_name: 'S3BucketName',
    #     s3_key_prefix: 'S3KeyPrefix',
    #     format: 'CSV', # required - accepts ["CSV", "CSV_ZIP"]
    #     content_range: {
    #       interval: 'ONE_DAY' # required - accepts ["ONE_DAY", "ONE_WEEK", "THIRTY_DAYS"]
    #     }, # required
    #     recurrence: {
    #       start_date: 'StartDate'
    #     },
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBusinessReportScheduleOutput
    #   resp.data.schedule_arn #=> String
    #
    def create_business_report_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBusinessReportScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBusinessReportScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBusinessReportSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException]),
        data_parser: Parsers::CreateBusinessReportSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBusinessReportSchedule,
        stubs: @stubs,
        params_class: Params::CreateBusinessReportScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_business_report_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new conference provider under the user's AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConferenceProviderInput}.
    #
    # @option params [String] :conference_provider_name
    #   <p>The name of the conference provider.</p>
    #
    # @option params [String] :conference_provider_type
    #   <p>Represents a type within a list of predefined types.</p>
    #
    # @option params [IPDialIn] :ip_dial_in
    #   <p>The IP endpoint and protocol for calling.</p>
    #
    # @option params [PSTNDialIn] :pstn_dial_in
    #   <p>The information for PSTN conferencing.</p>
    #
    # @option params [MeetingSetting] :meeting_setting
    #   <p>The meeting settings for the conference provider.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The request token of the client.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    # @return [Types::CreateConferenceProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_conference_provider(
    #     conference_provider_name: 'ConferenceProviderName', # required
    #     conference_provider_type: 'CHIME', # required - accepts ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #     ip_dial_in: {
    #       endpoint: 'Endpoint', # required
    #       comms_protocol: 'SIP' # required - accepts ["SIP", "SIPS", "H323"]
    #     },
    #     pstn_dial_in: {
    #       country_code: 'CountryCode', # required
    #       phone_number: 'PhoneNumber', # required
    #       one_click_id_delay: 'OneClickIdDelay', # required
    #       one_click_pin_delay: 'OneClickPinDelay' # required
    #     },
    #     meeting_setting: {
    #       require_pin: 'YES' # required - accepts ["YES", "NO", "OPTIONAL"]
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConferenceProviderOutput
    #   resp.data.conference_provider_arn #=> String
    #
    def create_conference_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConferenceProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConferenceProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConferenceProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException]),
        data_parser: Parsers::CreateConferenceProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConferenceProvider,
        stubs: @stubs,
        params_class: Params::CreateConferenceProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_conference_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a contact with the specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactInput}.
    #
    # @option params [String] :display_name
    #   <p>The name of the contact to display on the console.</p>
    #
    # @option params [String] :first_name
    #   <p>The first name of the contact that is used to call the contact on the
    #            device.</p>
    #
    # @option params [String] :last_name
    #   <p>The last name of the contact that is used to call the contact on the
    #            device.</p>
    #
    # @option params [String] :phone_number
    #   <p>The phone number of the contact in E.164 format. The phone number type defaults to
    #            WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers,
    #            which lets you specify the phone number type and multiple numbers.</p>
    #
    # @option params [Array<PhoneNumber>] :phone_numbers
    #   <p>The list of phone numbers for the contact.</p>
    #
    # @option params [Array<SipAddress>] :sip_addresses
    #   <p>The list of SIP addresses for the contact.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures
    #            idempotency.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    # @return [Types::CreateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact(
    #     display_name: 'DisplayName',
    #     first_name: 'FirstName', # required
    #     last_name: 'LastName',
    #     phone_number: 'PhoneNumber',
    #     phone_numbers: [
    #       {
    #         number: 'Number', # required
    #         type: 'MOBILE' # required - accepts ["MOBILE", "WORK", "HOME"]
    #       }
    #     ],
    #     sip_addresses: [
    #       {
    #         uri: 'Uri', # required
    #         type: 'WORK' # required - accepts ["WORK"]
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
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

    # <p>Creates a gateway group with the specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGatewayGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the gateway group.</p>
    #
    # @option params [String] :description
    #   <p>The description of the gateway group.</p>
    #
    # @option params [String] :client_request_token
    #   <p> A unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    # @return [Types::CreateGatewayGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_group(
    #     name: 'Name', # required
    #     description: 'Description',
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGatewayGroupOutput
    #   resp.data.gateway_group_arn #=> String
    #
    def create_gateway_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGatewayGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGatewayGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGatewayGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateGatewayGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGatewayGroup,
        stubs: @stubs,
        params_class: Params::CreateGatewayGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_gateway_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a network profile with the specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNetworkProfileInput}.
    #
    # @option params [String] :network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    # @option params [String] :description
    #   <p>Detailed information about a device's network profile.</p>
    #
    # @option params [String] :ssid
    #   <p>The SSID of the Wi-Fi network.</p>
    #
    # @option params [String] :security_type
    #   <p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
    #            WEP, or OPEN.</p>
    #
    # @option params [String] :eap_method
    #   <p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
    #            supported.</p>
    #
    # @option params [String] :current_password
    #   <p>The current password of the Wi-Fi network.</p>
    #
    # @option params [String] :next_password
    #   <p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
    #            transmitted to the device and is used when the password of the network changes to
    #            NextPassword. </p>
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
    #            (ACM). This is used to issue certificates to the devices. </p>
    #
    # @option params [Array<String>] :trust_anchors
    #   <p>The root certificates of your authentication server that is installed on your devices
    #            and used to trust your authentication server during EAP negotiation. </p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags. </p>
    #
    # @return [Types::CreateNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_profile(
    #     network_profile_name: 'NetworkProfileName', # required
    #     description: 'Description',
    #     ssid: 'Ssid', # required
    #     security_type: 'OPEN', # required - accepts ["OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"]
    #     eap_method: 'EAP_TLS', # accepts ["EAP_TLS"]
    #     current_password: 'CurrentPassword',
    #     next_password: 'NextPassword',
    #     certificate_authority_arn: 'CertificateAuthorityArn',
    #     trust_anchors: [
    #       'member'
    #     ],
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNetworkProfileOutput
    #   resp.data.network_profile_arn #=> String
    #
    def create_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNetworkProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ConcurrentModificationException, Errors::InvalidServiceLinkedRoleStateException, Errors::InvalidCertificateAuthorityException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNetworkProfile,
        stubs: @stubs,
        params_class: Params::CreateNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new room profile with the specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProfileInput}.
    #
    # @option params [String] :profile_name
    #   <p>The name of a room profile.</p>
    #
    # @option params [String] :timezone
    #   <p>The time zone used by a room profile.</p>
    #
    # @option params [String] :address
    #   <p>The valid address for the room.</p>
    #
    # @option params [String] :distance_unit
    #   <p>The distance unit to be used by devices in the profile.</p>
    #
    # @option params [String] :temperature_unit
    #   <p>The temperature unit to be used by devices in the profile.</p>
    #
    # @option params [String] :wake_word
    #   <p>A wake word for Alexa, Echo, Amazon, or a computer.</p>
    #
    # @option params [String] :locale
    #   <p>The locale of the room profile. (This is currently only available to a limited preview audience.)</p>
    #
    # @option params [String] :client_request_token
    #   <p>The user-specified token that is used during the creation of a profile.</p>
    #
    # @option params [Boolean] :setup_mode_disabled
    #   <p>Whether room profile setup is enabled.</p>
    #
    # @option params [Integer] :max_volume_limit
    #   <p>The maximum volume limit for a room profile.</p>
    #
    # @option params [Boolean] :pstn_enabled
    #   <p>Whether PSTN calling is enabled.</p>
    #
    # @option params [Boolean] :data_retention_opt_in
    #   <p>Whether data retention of the profile is enabled.</p>
    #
    # @option params [CreateMeetingRoomConfiguration] :meeting_room_configuration
    #   <p>The meeting room settings of a room profile.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the profile.</p>
    #
    # @return [Types::CreateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile(
    #     profile_name: 'ProfileName', # required
    #     timezone: 'Timezone', # required
    #     address: 'Address', # required
    #     distance_unit: 'METRIC', # required - accepts ["METRIC", "IMPERIAL"]
    #     temperature_unit: 'FAHRENHEIT', # required - accepts ["FAHRENHEIT", "CELSIUS"]
    #     wake_word: 'ALEXA', # required - accepts ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #     locale: 'Locale',
    #     client_request_token: 'ClientRequestToken',
    #     setup_mode_disabled: false,
    #     max_volume_limit: 1,
    #     pstn_enabled: false,
    #     data_retention_opt_in: false,
    #     meeting_room_configuration: {
    #       room_utilization_metrics_enabled: false,
    #       end_of_meeting_reminder: {
    #         reminder_at_minutes: [
    #           1
    #         ], # required
    #         reminder_type: 'ANNOUNCEMENT_TIME_CHECK', # required - accepts ["ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"]
    #         enabled: false # required
    #       },
    #       instant_booking: {
    #         duration_in_minutes: 1, # required
    #         enabled: false # required
    #       },
    #       require_check_in: {
    #         release_after_minutes: 1, # required
    #         enabled: false # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProfileOutput
    #   resp.data.profile_arn #=> String
    #
    def create_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ConcurrentModificationException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProfile,
        stubs: @stubs,
        params_class: Params::CreateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a room with the specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoomInput}.
    #
    # @option params [String] :room_name
    #   <p>The name for the room.</p>
    #
    # @option params [String] :description
    #   <p>The description for the room.</p>
    #
    # @option params [String] :profile_arn
    #   <p>The profile ARN for the room. This is required.</p>
    #
    # @option params [String] :provider_calendar_id
    #   <p>The calendar ARN for the room.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures idempotency.
    #         </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the room.</p>
    #
    # @return [Types::CreateRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room(
    #     room_name: 'RoomName', # required
    #     description: 'Description',
    #     profile_arn: 'ProfileArn',
    #     provider_calendar_id: 'ProviderCalendarId',
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRoomOutput
    #   resp.data.room_arn #=> String
    #
    def create_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoom,
        stubs: @stubs,
        params_class: Params::CreateRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a skill group with a specified name and description.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSkillGroupInput}.
    #
    # @option params [String] :skill_group_name
    #   <p>The name for the skill group.</p>
    #
    # @option params [String] :description
    #   <p>The description for the skill group.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures idempotency.
    #         </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the skill group.</p>
    #
    # @return [Types::CreateSkillGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_skill_group(
    #     skill_group_name: 'SkillGroupName', # required
    #     description: 'Description',
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSkillGroupOutput
    #   resp.data.skill_group_arn #=> String
    #
    def create_skill_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSkillGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSkillGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSkillGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ConcurrentModificationException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateSkillGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSkillGroup,
        stubs: @stubs,
        params_class: Params::CreateSkillGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_skill_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The ARN for the user.</p>
    #
    # @option params [String] :first_name
    #   <p>The first name for the user.</p>
    #
    # @option params [String] :last_name
    #   <p>The last name for the user.</p>
    #
    # @option params [String] :email
    #   <p>The email address for the user.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures idempotency.
    #         </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the user.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     user_id: 'UserId', # required
    #     first_name: 'FirstName',
    #     last_name: 'LastName',
    #     email: 'Email',
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user_arn #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an address book by the address book ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAddressBookInput}.
    #
    # @option params [String] :address_book_arn
    #   <p>The ARN of the address book to delete.</p>
    #
    # @return [Types::DeleteAddressBookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_address_book(
    #     address_book_arn: 'AddressBookArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAddressBookOutput
    #
    def delete_address_book(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAddressBookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAddressBookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAddressBook
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteAddressBook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAddressBook,
        stubs: @stubs,
        params_class: Params::DeleteAddressBookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_address_book
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the recurring report delivery schedule with the specified schedule
    #          ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBusinessReportScheduleInput}.
    #
    # @option params [String] :schedule_arn
    #   <p>The ARN of the business report schedule.</p>
    #
    # @return [Types::DeleteBusinessReportScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_business_report_schedule(
    #     schedule_arn: 'ScheduleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBusinessReportScheduleOutput
    #
    def delete_business_report_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBusinessReportScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBusinessReportScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBusinessReportSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteBusinessReportSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBusinessReportSchedule,
        stubs: @stubs,
        params_class: Params::DeleteBusinessReportScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_business_report_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a conference provider.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConferenceProviderInput}.
    #
    # @option params [String] :conference_provider_arn
    #   <p>The ARN of the conference provider.</p>
    #
    # @return [Types::DeleteConferenceProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conference_provider(
    #     conference_provider_arn: 'ConferenceProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConferenceProviderOutput
    #
    def delete_conference_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConferenceProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConferenceProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConferenceProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::DeleteConferenceProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConferenceProvider,
        stubs: @stubs,
        params_class: Params::DeleteConferenceProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_conference_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a contact by the contact ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The ARN of the contact to delete.</p>
    #
    # @return [Types::DeleteContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact(
    #     contact_arn: 'ContactArn' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
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

    # <p>Removes a device from Alexa For Business.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeviceInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device for which to request details.</p>
    #
    # @return [Types::DeleteDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device(
    #     device_arn: 'DeviceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeviceOutput
    #
    def delete_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidCertificateAuthorityException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDevice,
        stubs: @stubs,
        params_class: Params::DeleteDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>When this action is called for a specified shared device, it allows authorized users to
    #          delete the device's entire previous history of voice input data and associated response
    #          data. This action can be called once every 24 hours for a specific shared device.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeviceUsageDataInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device.</p>
    #
    # @option params [String] :device_usage_type
    #   <p>The type of usage data to delete.</p>
    #
    # @return [Types::DeleteDeviceUsageDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_usage_data(
    #     device_arn: 'DeviceArn', # required
    #     device_usage_type: 'VOICE' # required - accepts ["VOICE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeviceUsageDataOutput
    #
    def delete_device_usage_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeviceUsageDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeviceUsageDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeviceUsageData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeviceNotRegisteredException, Errors::NotFoundException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteDeviceUsageData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeviceUsageData,
        stubs: @stubs,
        params_class: Params::DeleteDeviceUsageDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device_usage_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a gateway group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGatewayGroupInput}.
    #
    # @option params [String] :gateway_group_arn
    #   <p>The ARN of the gateway group to delete.</p>
    #
    # @return [Types::DeleteGatewayGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_group(
    #     gateway_group_arn: 'GatewayGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGatewayGroupOutput
    #
    def delete_gateway_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGatewayGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGatewayGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGatewayGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAssociatedException]),
        data_parser: Parsers::DeleteGatewayGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGatewayGroup,
        stubs: @stubs,
        params_class: Params::DeleteGatewayGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gateway_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a network profile by the network profile ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNetworkProfileInput}.
    #
    # @option params [String] :network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    # @return [Types::DeleteNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_profile(
    #     network_profile_arn: 'NetworkProfileArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNetworkProfileOutput
    #
    def delete_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNetworkProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNetworkProfile,
        stubs: @stubs,
        params_class: Params::DeleteNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a room profile by the profile ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProfileInput}.
    #
    # @option params [String] :profile_arn
    #   <p>The ARN of the room profile to delete. Required.</p>
    #
    # @return [Types::DeleteProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile(
    #     profile_arn: 'ProfileArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProfileOutput
    #
    def delete_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProfile,
        stubs: @stubs,
        params_class: Params::DeleteProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a room by the room ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoomInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room to delete. Required.</p>
    #
    # @return [Types::DeleteRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room(
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoomOutput
    #
    def delete_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoom,
        stubs: @stubs,
        params_class: Params::DeleteRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes room skill parameter details by room, skill, and parameter key ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoomSkillParameterInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room from which to remove the room skill parameter details.</p>
    #
    # @option params [String] :skill_id
    #   <p>The ID of the skill from which to remove the room skill parameter details.</p>
    #
    # @option params [String] :parameter_key
    #   <p>The room skill parameter key for which to remove details.</p>
    #
    # @return [Types::DeleteRoomSkillParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room_skill_parameter(
    #     room_arn: 'RoomArn',
    #     skill_id: 'SkillId', # required
    #     parameter_key: 'ParameterKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoomSkillParameterOutput
    #
    def delete_room_skill_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoomSkillParameterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoomSkillParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoomSkillParameter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteRoomSkillParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoomSkillParameter,
        stubs: @stubs,
        params_class: Params::DeleteRoomSkillParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_room_skill_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Unlinks a third-party account from a skill.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSkillAuthorizationInput}.
    #
    # @option params [String] :skill_id
    #   <p>The unique identifier of a skill.</p>
    #
    # @option params [String] :room_arn
    #   <p>The room that the skill is authorized for.</p>
    #
    # @return [Types::DeleteSkillAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_skill_authorization(
    #     skill_id: 'SkillId', # required
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSkillAuthorizationOutput
    #
    def delete_skill_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSkillAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSkillAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSkillAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteSkillAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSkillAuthorization,
        stubs: @stubs,
        params_class: Params::DeleteSkillAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_skill_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a skill group by skill group ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSkillGroupInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group to delete. Required.</p>
    #
    # @return [Types::DeleteSkillGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_skill_group(
    #     skill_group_arn: 'SkillGroupArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSkillGroupOutput
    #
    def delete_skill_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSkillGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSkillGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSkillGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteSkillGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSkillGroup,
        stubs: @stubs,
        params_class: Params::DeleteSkillGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_skill_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified user by user ARN and enrollment ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :user_arn
    #   <p>The ARN of the user to delete in the organization. Required.</p>
    #
    # @option params [String] :enrollment_id
    #   <p>The ARN of the user's enrollment in the organization. Required.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     user_arn: 'UserArn',
    #     enrollment_id: 'EnrollmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a contact from a given address book.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateContactFromAddressBookInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The ARN of the contact to disassociate from an address book.</p>
    #
    # @option params [String] :address_book_arn
    #   <p>The ARN of the address from which to disassociate the contact.</p>
    #
    # @return [Types::DisassociateContactFromAddressBookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_contact_from_address_book(
    #     contact_arn: 'ContactArn', # required
    #     address_book_arn: 'AddressBookArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateContactFromAddressBookOutput
    #
    def disassociate_contact_from_address_book(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateContactFromAddressBookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateContactFromAddressBookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateContactFromAddressBook
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DisassociateContactFromAddressBook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateContactFromAddressBook,
        stubs: @stubs,
        params_class: Params::DisassociateContactFromAddressBookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_contact_from_address_book
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a device from its current room. The device continues to be connected to
    #          the Wi-Fi network and is still registered to the account. The device settings and skills
    #          are removed from the room.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDeviceFromRoomInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device to disassociate from a room. Required.</p>
    #
    # @return [Types::DisassociateDeviceFromRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_device_from_room(
    #     device_arn: 'DeviceArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDeviceFromRoomOutput
    #
    def disassociate_device_from_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDeviceFromRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDeviceFromRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDeviceFromRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::DeviceNotRegisteredException]),
        data_parser: Parsers::DisassociateDeviceFromRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDeviceFromRoom,
        stubs: @stubs,
        params_class: Params::DisassociateDeviceFromRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_device_from_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a skill from a skill group.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateSkillFromSkillGroupInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The unique identifier of a skill. Required.</p>
    #
    # @option params [String] :skill_id
    #   <p>The ARN of a skill group to associate to a skill.</p>
    #
    # @return [Types::DisassociateSkillFromSkillGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_from_skill_group(
    #     skill_group_arn: 'SkillGroupArn',
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateSkillFromSkillGroupOutput
    #
    def disassociate_skill_from_skill_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateSkillFromSkillGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateSkillFromSkillGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateSkillFromSkillGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DisassociateSkillFromSkillGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateSkillFromSkillGroup,
        stubs: @stubs,
        params_class: Params::DisassociateSkillFromSkillGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_skill_from_skill_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Makes a private skill unavailable for enrolled users and prevents them from enabling it
    #          on their devices.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateSkillFromUsersInput}.
    #
    # @option params [String] :skill_id
    #   <p> The private skill ID you want to make unavailable for enrolled users.</p>
    #
    # @return [Types::DisassociateSkillFromUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_from_users(
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateSkillFromUsersOutput
    #
    def disassociate_skill_from_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateSkillFromUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateSkillFromUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateSkillFromUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::DisassociateSkillFromUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateSkillFromUsers,
        stubs: @stubs,
        params_class: Params::DisassociateSkillFromUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_skill_from_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a skill group from a specified room. This disables all skills in the
    #          skill group on all devices in the room.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateSkillGroupFromRoomInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group to disassociate from a room. Required.</p>
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room from which the skill group is to be disassociated.
    #            Required.</p>
    #
    # @return [Types::DisassociateSkillGroupFromRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_group_from_room(
    #     skill_group_arn: 'SkillGroupArn',
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateSkillGroupFromRoomOutput
    #
    def disassociate_skill_group_from_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateSkillGroupFromRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateSkillGroupFromRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateSkillGroupFromRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException]),
        data_parser: Parsers::DisassociateSkillGroupFromRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateSkillGroupFromRoom,
        stubs: @stubs,
        params_class: Params::DisassociateSkillGroupFromRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_skill_group_from_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Forgets smart home appliances associated to a room.</p>
    #
    # @param [Hash] params
    #   See {Types::ForgetSmartHomeAppliancesInput}.
    #
    # @option params [String] :room_arn
    #   <p>The room that the appliances are associated with.</p>
    #
    # @return [Types::ForgetSmartHomeAppliancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forget_smart_home_appliances(
    #     room_arn: 'RoomArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ForgetSmartHomeAppliancesOutput
    #
    def forget_smart_home_appliances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ForgetSmartHomeAppliancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ForgetSmartHomeAppliancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ForgetSmartHomeAppliances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::ForgetSmartHomeAppliances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ForgetSmartHomeAppliances,
        stubs: @stubs,
        params_class: Params::ForgetSmartHomeAppliancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :forget_smart_home_appliances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets address the book details by the address book ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAddressBookInput}.
    #
    # @option params [String] :address_book_arn
    #   <p>The ARN of the address book for which to request details.</p>
    #
    # @return [Types::GetAddressBookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_address_book(
    #     address_book_arn: 'AddressBookArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAddressBookOutput
    #   resp.data.address_book #=> Types::AddressBook
    #   resp.data.address_book.address_book_arn #=> String
    #   resp.data.address_book.name #=> String
    #   resp.data.address_book.description #=> String
    #
    def get_address_book(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAddressBookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAddressBookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAddressBook
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetAddressBook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAddressBook,
        stubs: @stubs,
        params_class: Params::GetAddressBookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_address_book
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the existing conference preferences.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConferencePreferenceInput}.
    #
    # @return [Types::GetConferencePreferenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conference_preference()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConferencePreferenceOutput
    #   resp.data.preference #=> Types::ConferencePreference
    #   resp.data.preference.default_conference_provider_arn #=> String
    #
    def get_conference_preference(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConferencePreferenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConferencePreferenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConferencePreference
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetConferencePreference
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConferencePreference,
        stubs: @stubs,
        params_class: Params::GetConferencePreferenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_conference_preference
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a specific conference provider.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConferenceProviderInput}.
    #
    # @option params [String] :conference_provider_arn
    #   <p>The ARN of the newly created conference provider.</p>
    #
    # @return [Types::GetConferenceProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conference_provider(
    #     conference_provider_arn: 'ConferenceProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConferenceProviderOutput
    #   resp.data.conference_provider #=> Types::ConferenceProvider
    #   resp.data.conference_provider.arn #=> String
    #   resp.data.conference_provider.name #=> String
    #   resp.data.conference_provider.type #=> String, one of ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #   resp.data.conference_provider.ip_dial_in #=> Types::IPDialIn
    #   resp.data.conference_provider.ip_dial_in.endpoint #=> String
    #   resp.data.conference_provider.ip_dial_in.comms_protocol #=> String, one of ["SIP", "SIPS", "H323"]
    #   resp.data.conference_provider.pstn_dial_in #=> Types::PSTNDialIn
    #   resp.data.conference_provider.pstn_dial_in.country_code #=> String
    #   resp.data.conference_provider.pstn_dial_in.phone_number #=> String
    #   resp.data.conference_provider.pstn_dial_in.one_click_id_delay #=> String
    #   resp.data.conference_provider.pstn_dial_in.one_click_pin_delay #=> String
    #   resp.data.conference_provider.meeting_setting #=> Types::MeetingSetting
    #   resp.data.conference_provider.meeting_setting.require_pin #=> String, one of ["YES", "NO", "OPTIONAL"]
    #
    def get_conference_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConferenceProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConferenceProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConferenceProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetConferenceProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConferenceProvider,
        stubs: @stubs,
        params_class: Params::GetConferenceProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_conference_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the contact details by the contact ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The ARN of the contact for which to request details.</p>
    #
    # @return [Types::GetContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact(
    #     contact_arn: 'ContactArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactOutput
    #   resp.data.contact #=> Types::Contact
    #   resp.data.contact.contact_arn #=> String
    #   resp.data.contact.display_name #=> String
    #   resp.data.contact.first_name #=> String
    #   resp.data.contact.last_name #=> String
    #   resp.data.contact.phone_number #=> String
    #   resp.data.contact.phone_numbers #=> Array<PhoneNumber>
    #   resp.data.contact.phone_numbers[0] #=> Types::PhoneNumber
    #   resp.data.contact.phone_numbers[0].number #=> String
    #   resp.data.contact.phone_numbers[0].type #=> String, one of ["MOBILE", "WORK", "HOME"]
    #   resp.data.contact.sip_addresses #=> Array<SipAddress>
    #   resp.data.contact.sip_addresses[0] #=> Types::SipAddress
    #   resp.data.contact.sip_addresses[0].uri #=> String
    #   resp.data.contact.sip_addresses[0].type #=> String, one of ["WORK"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
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

    # <p>Gets the details of a device by device ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device for which to request details. Required.</p>
    #
    # @return [Types::GetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device(
    #     device_arn: 'DeviceArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceOutput
    #   resp.data.device #=> Types::Device
    #   resp.data.device.device_arn #=> String
    #   resp.data.device.device_serial_number #=> String
    #   resp.data.device.device_type #=> String
    #   resp.data.device.device_name #=> String
    #   resp.data.device.software_version #=> String
    #   resp.data.device.mac_address #=> String
    #   resp.data.device.room_arn #=> String
    #   resp.data.device.device_status #=> String, one of ["READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED", "FAILED"]
    #   resp.data.device.device_status_info #=> Types::DeviceStatusInfo
    #   resp.data.device.device_status_info.device_status_details #=> Array<DeviceStatusDetail>
    #   resp.data.device.device_status_info.device_status_details[0] #=> Types::DeviceStatusDetail
    #   resp.data.device.device_status_info.device_status_details[0].feature #=> String, one of ["BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS", "NETWORK_PROFILE", "SETTINGS", "ALL"]
    #   resp.data.device.device_status_info.device_status_details[0].code #=> String, one of ["DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE", "CREDENTIALS_ACCESS_FAILURE", "TLS_VERSION_MISMATCH", "ASSOCIATION_REJECTION", "AUTHENTICATION_FAILURE", "DHCP_FAILURE", "INTERNET_UNAVAILABLE", "DNS_FAILURE", "UNKNOWN_FAILURE", "CERTIFICATE_ISSUING_LIMIT_EXCEEDED", "INVALID_CERTIFICATE_AUTHORITY", "NETWORK_PROFILE_NOT_FOUND", "INVALID_PASSWORD_STATE", "PASSWORD_NOT_FOUND", "PASSWORD_MANAGER_ACCESS_DENIED", "CERTIFICATE_AUTHORITY_ACCESS_DENIED"]
    #   resp.data.device.device_status_info.connection_status #=> String, one of ["ONLINE", "OFFLINE"]
    #   resp.data.device.device_status_info.connection_status_updated_time #=> Time
    #   resp.data.device.network_profile_info #=> Types::DeviceNetworkProfileInfo
    #   resp.data.device.network_profile_info.network_profile_arn #=> String
    #   resp.data.device.network_profile_info.certificate_arn #=> String
    #   resp.data.device.network_profile_info.certificate_expiration_time #=> Time
    #
    def get_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevice,
        stubs: @stubs,
        params_class: Params::GetDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of a gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The ARN of the gateway to get.</p>
    #
    # @return [Types::GetGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway(
    #     gateway_arn: 'GatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGatewayOutput
    #   resp.data.gateway #=> Types::Gateway
    #   resp.data.gateway.arn #=> String
    #   resp.data.gateway.name #=> String
    #   resp.data.gateway.description #=> String
    #   resp.data.gateway.gateway_group_arn #=> String
    #   resp.data.gateway.software_version #=> String
    #
    def get_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGateway,
        stubs: @stubs,
        params_class: Params::GetGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of a gateway group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGatewayGroupInput}.
    #
    # @option params [String] :gateway_group_arn
    #   <p>The ARN of the gateway group to get.</p>
    #
    # @return [Types::GetGatewayGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_group(
    #     gateway_group_arn: 'GatewayGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGatewayGroupOutput
    #   resp.data.gateway_group #=> Types::GatewayGroup
    #   resp.data.gateway_group.arn #=> String
    #   resp.data.gateway_group.name #=> String
    #   resp.data.gateway_group.description #=> String
    #
    def get_gateway_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGatewayGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGatewayGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGatewayGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetGatewayGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGatewayGroup,
        stubs: @stubs,
        params_class: Params::GetGatewayGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_gateway_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the configured values for the user enrollment invitation email
    #          template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInvitationConfigurationInput}.
    #
    # @return [Types::GetInvitationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invitation_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInvitationConfigurationOutput
    #   resp.data.organization_name #=> String
    #   resp.data.contact_email #=> String
    #   resp.data.private_skill_ids #=> Array<String>
    #   resp.data.private_skill_ids[0] #=> String
    #
    def get_invitation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInvitationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInvitationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInvitationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetInvitationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInvitationConfiguration,
        stubs: @stubs,
        params_class: Params::GetInvitationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_invitation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the network profile details by the network profile ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkProfileInput}.
    #
    # @option params [String] :network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    # @return [Types::GetNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_profile(
    #     network_profile_arn: 'NetworkProfileArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkProfileOutput
    #   resp.data.network_profile #=> Types::NetworkProfile
    #   resp.data.network_profile.network_profile_arn #=> String
    #   resp.data.network_profile.network_profile_name #=> String
    #   resp.data.network_profile.description #=> String
    #   resp.data.network_profile.ssid #=> String
    #   resp.data.network_profile.security_type #=> String, one of ["OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"]
    #   resp.data.network_profile.eap_method #=> String, one of ["EAP_TLS"]
    #   resp.data.network_profile.current_password #=> String
    #   resp.data.network_profile.next_password #=> String
    #   resp.data.network_profile.certificate_authority_arn #=> String
    #   resp.data.network_profile.trust_anchors #=> Array<String>
    #   resp.data.network_profile.trust_anchors[0] #=> String
    #
    def get_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSecretsManagerResourceException, Errors::NotFoundException]),
        data_parser: Parsers::GetNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkProfile,
        stubs: @stubs,
        params_class: Params::GetNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of a room profile by profile ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProfileInput}.
    #
    # @option params [String] :profile_arn
    #   <p>The ARN of the room profile for which to request details. Required.</p>
    #
    # @return [Types::GetProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile(
    #     profile_arn: 'ProfileArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProfileOutput
    #   resp.data.profile #=> Types::Profile
    #   resp.data.profile.profile_arn #=> String
    #   resp.data.profile.profile_name #=> String
    #   resp.data.profile.is_default #=> Boolean
    #   resp.data.profile.address #=> String
    #   resp.data.profile.timezone #=> String
    #   resp.data.profile.distance_unit #=> String, one of ["METRIC", "IMPERIAL"]
    #   resp.data.profile.temperature_unit #=> String, one of ["FAHRENHEIT", "CELSIUS"]
    #   resp.data.profile.wake_word #=> String, one of ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #   resp.data.profile.locale #=> String
    #   resp.data.profile.setup_mode_disabled #=> Boolean
    #   resp.data.profile.max_volume_limit #=> Integer
    #   resp.data.profile.pstn_enabled #=> Boolean
    #   resp.data.profile.data_retention_opt_in #=> Boolean
    #   resp.data.profile.address_book_arn #=> String
    #   resp.data.profile.meeting_room_configuration #=> Types::MeetingRoomConfiguration
    #   resp.data.profile.meeting_room_configuration.room_utilization_metrics_enabled #=> Boolean
    #   resp.data.profile.meeting_room_configuration.end_of_meeting_reminder #=> Types::EndOfMeetingReminder
    #   resp.data.profile.meeting_room_configuration.end_of_meeting_reminder.reminder_at_minutes #=> Array<Integer>
    #   resp.data.profile.meeting_room_configuration.end_of_meeting_reminder.reminder_at_minutes[0] #=> Integer
    #   resp.data.profile.meeting_room_configuration.end_of_meeting_reminder.reminder_type #=> String, one of ["ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"]
    #   resp.data.profile.meeting_room_configuration.end_of_meeting_reminder.enabled #=> Boolean
    #   resp.data.profile.meeting_room_configuration.instant_booking #=> Types::InstantBooking
    #   resp.data.profile.meeting_room_configuration.instant_booking.duration_in_minutes #=> Integer
    #   resp.data.profile.meeting_room_configuration.instant_booking.enabled #=> Boolean
    #   resp.data.profile.meeting_room_configuration.require_check_in #=> Types::RequireCheckIn
    #   resp.data.profile.meeting_room_configuration.require_check_in.release_after_minutes #=> Integer
    #   resp.data.profile.meeting_room_configuration.require_check_in.enabled #=> Boolean
    #
    def get_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProfile,
        stubs: @stubs,
        params_class: Params::GetProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets room details by room ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRoomInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room for which to request details. Required.</p>
    #
    # @return [Types::GetRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room(
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoomOutput
    #   resp.data.room #=> Types::Room
    #   resp.data.room.room_arn #=> String
    #   resp.data.room.room_name #=> String
    #   resp.data.room.description #=> String
    #   resp.data.room.provider_calendar_id #=> String
    #   resp.data.room.profile_arn #=> String
    #
    def get_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRoom,
        stubs: @stubs,
        params_class: Params::GetRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets room skill parameter details by room, skill, and parameter key ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRoomSkillParameterInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room from which to get the room skill parameter details. </p>
    #
    # @option params [String] :skill_id
    #   <p>The ARN of the skill from which to get the room skill parameter details.
    #            Required.</p>
    #
    # @option params [String] :parameter_key
    #   <p>The room skill parameter key for which to get details. Required.</p>
    #
    # @return [Types::GetRoomSkillParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room_skill_parameter(
    #     room_arn: 'RoomArn',
    #     skill_id: 'SkillId', # required
    #     parameter_key: 'ParameterKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoomSkillParameterOutput
    #   resp.data.room_skill_parameter #=> Types::RoomSkillParameter
    #   resp.data.room_skill_parameter.parameter_key #=> String
    #   resp.data.room_skill_parameter.parameter_value #=> String
    #
    def get_room_skill_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoomSkillParameterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoomSkillParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoomSkillParameter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetRoomSkillParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRoomSkillParameter,
        stubs: @stubs,
        params_class: Params::GetRoomSkillParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_room_skill_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets skill group details by skill group ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSkillGroupInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group for which to get details. Required.</p>
    #
    # @return [Types::GetSkillGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_skill_group(
    #     skill_group_arn: 'SkillGroupArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSkillGroupOutput
    #   resp.data.skill_group #=> Types::SkillGroup
    #   resp.data.skill_group.skill_group_arn #=> String
    #   resp.data.skill_group.skill_group_name #=> String
    #   resp.data.skill_group.description #=> String
    #
    def get_skill_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSkillGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSkillGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSkillGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::GetSkillGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSkillGroup,
        stubs: @stubs,
        params_class: Params::GetSkillGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_skill_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBusinessReportSchedulesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token used to list the remaining schedules from the previous API call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of schedules listed in the call.</p>
    #
    # @return [Types::ListBusinessReportSchedulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_business_report_schedules(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBusinessReportSchedulesOutput
    #   resp.data.business_report_schedules #=> Array<BusinessReportSchedule>
    #   resp.data.business_report_schedules[0] #=> Types::BusinessReportSchedule
    #   resp.data.business_report_schedules[0].schedule_arn #=> String
    #   resp.data.business_report_schedules[0].schedule_name #=> String
    #   resp.data.business_report_schedules[0].s3_bucket_name #=> String
    #   resp.data.business_report_schedules[0].s3_key_prefix #=> String
    #   resp.data.business_report_schedules[0].format #=> String, one of ["CSV", "CSV_ZIP"]
    #   resp.data.business_report_schedules[0].content_range #=> Types::BusinessReportContentRange
    #   resp.data.business_report_schedules[0].content_range.interval #=> String, one of ["ONE_DAY", "ONE_WEEK", "THIRTY_DAYS"]
    #   resp.data.business_report_schedules[0].recurrence #=> Types::BusinessReportRecurrence
    #   resp.data.business_report_schedules[0].recurrence.start_date #=> String
    #   resp.data.business_report_schedules[0].last_business_report #=> Types::BusinessReport
    #   resp.data.business_report_schedules[0].last_business_report.status #=> String, one of ["RUNNING", "SUCCEEDED", "FAILED"]
    #   resp.data.business_report_schedules[0].last_business_report.failure_code #=> String, one of ["ACCESS_DENIED", "NO_SUCH_BUCKET", "INTERNAL_FAILURE"]
    #   resp.data.business_report_schedules[0].last_business_report.s3_location #=> Types::BusinessReportS3Location
    #   resp.data.business_report_schedules[0].last_business_report.s3_location.path #=> String
    #   resp.data.business_report_schedules[0].last_business_report.s3_location.bucket_name #=> String
    #   resp.data.business_report_schedules[0].last_business_report.delivery_time #=> Time
    #   resp.data.business_report_schedules[0].last_business_report.download_url #=> String
    #   resp.data.next_token #=> String
    #
    def list_business_report_schedules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBusinessReportSchedulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBusinessReportSchedulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBusinessReportSchedules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListBusinessReportSchedules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBusinessReportSchedules,
        stubs: @stubs,
        params_class: Params::ListBusinessReportSchedulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_business_report_schedules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists conference providers under a specific AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConferenceProvidersInput}.
    #
    # @option params [String] :next_token
    #   <p>The tokens used for pagination.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of conference providers to be returned, per paginated
    #            calls.</p>
    #
    # @return [Types::ListConferenceProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_conference_providers(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConferenceProvidersOutput
    #   resp.data.conference_providers #=> Array<ConferenceProvider>
    #   resp.data.conference_providers[0] #=> Types::ConferenceProvider
    #   resp.data.conference_providers[0].arn #=> String
    #   resp.data.conference_providers[0].name #=> String
    #   resp.data.conference_providers[0].type #=> String, one of ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #   resp.data.conference_providers[0].ip_dial_in #=> Types::IPDialIn
    #   resp.data.conference_providers[0].ip_dial_in.endpoint #=> String
    #   resp.data.conference_providers[0].ip_dial_in.comms_protocol #=> String, one of ["SIP", "SIPS", "H323"]
    #   resp.data.conference_providers[0].pstn_dial_in #=> Types::PSTNDialIn
    #   resp.data.conference_providers[0].pstn_dial_in.country_code #=> String
    #   resp.data.conference_providers[0].pstn_dial_in.phone_number #=> String
    #   resp.data.conference_providers[0].pstn_dial_in.one_click_id_delay #=> String
    #   resp.data.conference_providers[0].pstn_dial_in.one_click_pin_delay #=> String
    #   resp.data.conference_providers[0].meeting_setting #=> Types::MeetingSetting
    #   resp.data.conference_providers[0].meeting_setting.require_pin #=> String, one of ["YES", "NO", "OPTIONAL"]
    #   resp.data.next_token #=> String
    #
    def list_conference_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConferenceProvidersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConferenceProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConferenceProviders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListConferenceProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConferenceProviders,
        stubs: @stubs,
        params_class: Params::ListConferenceProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_conference_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the device event history, including device connection status, for up to 30
    #          days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeviceEventsInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of a device.</p>
    #
    # @option params [String] :event_type
    #   <p>The event type to filter device events. If EventType isn't specified, this returns a
    #            list of all device events in reverse chronological order. If EventType is specified, this
    #            returns a list of device events for that EventType in reverse chronological order.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response only includes
    #            results beyond the token, up to the value specified by MaxResults. When the end of results
    #            is reached, the response has a value of null.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. The default value is 50. If
    #            more results exist than the specified MaxResults value, a token is included in the response
    #            so that the remaining results can be retrieved. </p>
    #
    # @return [Types::ListDeviceEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_events(
    #     device_arn: 'DeviceArn', # required
    #     event_type: 'CONNECTION_STATUS', # accepts ["CONNECTION_STATUS", "DEVICE_STATUS"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceEventsOutput
    #   resp.data.device_events #=> Array<DeviceEvent>
    #   resp.data.device_events[0] #=> Types::DeviceEvent
    #   resp.data.device_events[0].type #=> String, one of ["CONNECTION_STATUS", "DEVICE_STATUS"]
    #   resp.data.device_events[0].value #=> String
    #   resp.data.device_events[0].timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_device_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::ListDeviceEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceEvents,
        stubs: @stubs,
        params_class: Params::ListDeviceEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of
    #          a specific gateway group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGatewayGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token used to paginate though multiple pages of gateway group summaries.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of gateway group summaries to return. The default is 50.</p>
    #
    # @return [Types::ListGatewayGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_groups(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGatewayGroupsOutput
    #   resp.data.gateway_groups #=> Array<GatewayGroupSummary>
    #   resp.data.gateway_groups[0] #=> Types::GatewayGroupSummary
    #   resp.data.gateway_groups[0].arn #=> String
    #   resp.data.gateway_groups[0].name #=> String
    #   resp.data.gateway_groups[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_gateway_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGatewayGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGatewayGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGatewayGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListGatewayGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGatewayGroups,
        stubs: @stubs,
        params_class: Params::ListGatewayGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_gateway_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific
    #          gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries
    #          of gateways that are associated with that gateway group ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGatewaysInput}.
    #
    # @option params [String] :gateway_group_arn
    #   <p>The gateway group ARN for which to list gateways.</p>
    #
    # @option params [String] :next_token
    #   <p>The token used to paginate though multiple pages of gateway summaries.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of gateway summaries to return. The default is 50.</p>
    #
    # @return [Types::ListGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways(
    #     gateway_group_arn: 'GatewayGroupArn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGatewaysOutput
    #   resp.data.gateways #=> Array<GatewaySummary>
    #   resp.data.gateways[0] #=> Types::GatewaySummary
    #   resp.data.gateways[0].arn #=> String
    #   resp.data.gateways[0].name #=> String
    #   resp.data.gateways[0].description #=> String
    #   resp.data.gateways[0].gateway_group_arn #=> String
    #   resp.data.gateways[0].software_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGatewaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGateways
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGateways,
        stubs: @stubs,
        params_class: Params::ListGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all enabled skills in a specific skill group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSkillsInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group for which to list enabled skills.</p>
    #
    # @option params [String] :enablement_type
    #   <p>Whether the skill is enabled under the user's account.</p>
    #
    # @option params [String] :skill_type
    #   <p>Whether the skill is publicly available or is a private skill.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    # @return [Types::ListSkillsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills(
    #     skill_group_arn: 'SkillGroupArn',
    #     enablement_type: 'ENABLED', # accepts ["ENABLED", "PENDING"]
    #     skill_type: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE", "ALL"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSkillsOutput
    #   resp.data.skill_summaries #=> Array<SkillSummary>
    #   resp.data.skill_summaries[0] #=> Types::SkillSummary
    #   resp.data.skill_summaries[0].skill_id #=> String
    #   resp.data.skill_summaries[0].skill_name #=> String
    #   resp.data.skill_summaries[0].supports_linking #=> Boolean
    #   resp.data.skill_summaries[0].enablement_type #=> String, one of ["ENABLED", "PENDING"]
    #   resp.data.skill_summaries[0].skill_type #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.next_token #=> String
    #
    def list_skills(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSkillsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSkillsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSkills
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListSkills
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSkills,
        stubs: @stubs,
        params_class: Params::ListSkillsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_skills
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all categories in the Alexa skill store.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSkillsStoreCategoriesInput}.
    #
    # @option params [String] :next_token
    #   <p>The tokens used for pagination.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of categories returned, per paginated calls.</p>
    #
    # @return [Types::ListSkillsStoreCategoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills_store_categories(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSkillsStoreCategoriesOutput
    #   resp.data.category_list #=> Array<Category>
    #   resp.data.category_list[0] #=> Types::Category
    #   resp.data.category_list[0].category_id #=> Integer
    #   resp.data.category_list[0].category_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_skills_store_categories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSkillsStoreCategoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSkillsStoreCategoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSkillsStoreCategories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListSkillsStoreCategories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSkillsStoreCategories,
        stubs: @stubs,
        params_class: Params::ListSkillsStoreCategoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_skills_store_categories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all skills in the Alexa skill store by category.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSkillsStoreSkillsByCategoryInput}.
    #
    # @option params [Integer] :category_id
    #   <p>The category ID for which the skills are being retrieved from the skill
    #            store.</p>
    #
    # @option params [String] :next_token
    #   <p>The tokens used for pagination.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of skills returned per paginated calls.</p>
    #
    # @return [Types::ListSkillsStoreSkillsByCategoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills_store_skills_by_category(
    #     category_id: 1, # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSkillsStoreSkillsByCategoryOutput
    #   resp.data.skills_store_skills #=> Array<SkillsStoreSkill>
    #   resp.data.skills_store_skills[0] #=> Types::SkillsStoreSkill
    #   resp.data.skills_store_skills[0].skill_id #=> String
    #   resp.data.skills_store_skills[0].skill_name #=> String
    #   resp.data.skills_store_skills[0].short_description #=> String
    #   resp.data.skills_store_skills[0].icon_url #=> String
    #   resp.data.skills_store_skills[0].sample_utterances #=> Array<String>
    #   resp.data.skills_store_skills[0].sample_utterances[0] #=> String
    #   resp.data.skills_store_skills[0].skill_details #=> Types::SkillDetails
    #   resp.data.skills_store_skills[0].skill_details.product_description #=> String
    #   resp.data.skills_store_skills[0].skill_details.invocation_phrase #=> String
    #   resp.data.skills_store_skills[0].skill_details.release_date #=> String
    #   resp.data.skills_store_skills[0].skill_details.end_user_license_agreement #=> String
    #   resp.data.skills_store_skills[0].skill_details.generic_keywords #=> Array<String>
    #   resp.data.skills_store_skills[0].skill_details.generic_keywords[0] #=> String
    #   resp.data.skills_store_skills[0].skill_details.bullet_points #=> Array<String>
    #   resp.data.skills_store_skills[0].skill_details.bullet_points[0] #=> String
    #   resp.data.skills_store_skills[0].skill_details.new_in_this_version_bullet_points #=> Array<String>
    #   resp.data.skills_store_skills[0].skill_details.new_in_this_version_bullet_points[0] #=> String
    #   resp.data.skills_store_skills[0].skill_details.skill_types #=> Array<String>
    #   resp.data.skills_store_skills[0].skill_details.skill_types[0] #=> String
    #   resp.data.skills_store_skills[0].skill_details.reviews #=> Hash<String, String>
    #   resp.data.skills_store_skills[0].skill_details.reviews['key'] #=> String
    #   resp.data.skills_store_skills[0].skill_details.developer_info #=> Types::DeveloperInfo
    #   resp.data.skills_store_skills[0].skill_details.developer_info.developer_name #=> String
    #   resp.data.skills_store_skills[0].skill_details.developer_info.privacy_policy #=> String
    #   resp.data.skills_store_skills[0].skill_details.developer_info.email #=> String
    #   resp.data.skills_store_skills[0].skill_details.developer_info.url #=> String
    #   resp.data.skills_store_skills[0].supports_linking #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_skills_store_skills_by_category(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSkillsStoreSkillsByCategoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSkillsStoreSkillsByCategoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSkillsStoreSkillsByCategory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListSkillsStoreSkillsByCategory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSkillsStoreSkillsByCategory,
        stubs: @stubs,
        params_class: Params::ListSkillsStoreSkillsByCategoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_skills_store_skills_by_category
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the smart home appliances associated with a room.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSmartHomeAppliancesInput}.
    #
    # @option params [String] :room_arn
    #   <p>The room that the appliances are associated with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of appliances to be returned, per paginated calls.</p>
    #
    # @option params [String] :next_token
    #   <p>The tokens used for pagination.</p>
    #
    # @return [Types::ListSmartHomeAppliancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_smart_home_appliances(
    #     room_arn: 'RoomArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSmartHomeAppliancesOutput
    #   resp.data.smart_home_appliances #=> Array<SmartHomeAppliance>
    #   resp.data.smart_home_appliances[0] #=> Types::SmartHomeAppliance
    #   resp.data.smart_home_appliances[0].friendly_name #=> String
    #   resp.data.smart_home_appliances[0].description #=> String
    #   resp.data.smart_home_appliances[0].manufacturer_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_smart_home_appliances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSmartHomeAppliancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSmartHomeAppliancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSmartHomeAppliances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::ListSmartHomeAppliances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSmartHomeAppliances,
        stubs: @stubs,
        params_class: Params::ListSmartHomeAppliancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_smart_home_appliances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the specified resource for which to list tags.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     arn: 'Arn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::ListTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTags,
        stubs: @stubs,
        params_class: Params::ListTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the conference preferences on a specific conference provider at the account
    #          level.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConferencePreferenceInput}.
    #
    # @option params [ConferencePreference] :conference_preference
    #   <p>The conference preference of a specific conference provider.</p>
    #
    # @return [Types::PutConferencePreferenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_conference_preference(
    #     conference_preference: {
    #       default_conference_provider_arn: 'DefaultConferenceProviderArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConferencePreferenceOutput
    #
    def put_conference_preference(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConferencePreferenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConferencePreferenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConferencePreference
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::PutConferencePreference
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConferencePreference,
        stubs: @stubs,
        params_class: Params::PutConferencePreferenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_conference_preference
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures the email template for the user enrollment invitation with the specified
    #          attributes.</p>
    #
    # @param [Hash] params
    #   See {Types::PutInvitationConfigurationInput}.
    #
    # @option params [String] :organization_name
    #   <p>The name of the organization sending the enrollment invite to a user.</p>
    #
    # @option params [String] :contact_email
    #   <p>The email ID of the organization or individual contact that the enrolled user can use.
    #         </p>
    #
    # @option params [Array<String>] :private_skill_ids
    #   <p>The list of private skill IDs that you want to recommend to the user to enable in the
    #            invitation.</p>
    #
    # @return [Types::PutInvitationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_invitation_configuration(
    #     organization_name: 'OrganizationName', # required
    #     contact_email: 'ContactEmail',
    #     private_skill_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutInvitationConfigurationOutput
    #
    def put_invitation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutInvitationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutInvitationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutInvitationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::PutInvitationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutInvitationConfiguration,
        stubs: @stubs,
        params_class: Params::PutInvitationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_invitation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates room skill parameter details by room, skill, and parameter key ID. Not all
    #          skills have a room skill parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRoomSkillParameterInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room associated with the room skill parameter. Required.</p>
    #
    # @option params [String] :skill_id
    #   <p>The ARN of the skill associated with the room skill parameter. Required.</p>
    #
    # @option params [RoomSkillParameter] :room_skill_parameter
    #   <p>The updated room skill parameter. Required.</p>
    #
    # @return [Types::PutRoomSkillParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_room_skill_parameter(
    #     room_arn: 'RoomArn',
    #     skill_id: 'SkillId', # required
    #     room_skill_parameter: {
    #       parameter_key: 'ParameterKey', # required
    #       parameter_value: 'ParameterValue' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRoomSkillParameterOutput
    #
    def put_room_skill_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRoomSkillParameterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRoomSkillParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRoomSkillParameter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException]),
        data_parser: Parsers::PutRoomSkillParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRoomSkillParameter,
        stubs: @stubs,
        params_class: Params::PutRoomSkillParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_room_skill_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Links a user's account to a third-party skill provider. If this API operation is
    #          called by an assumed IAM role, the skill being linked must be a private skill. Also, the
    #          skill must be owned by the AWS account that assumed the IAM role.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSkillAuthorizationInput}.
    #
    # @option params [Hash<String, String>] :authorization_result
    #   <p>The authorization result specific to OAUTH code grant output. "Code” must be
    #            populated in the AuthorizationResult map to establish the authorization.</p>
    #
    # @option params [String] :skill_id
    #   <p>The unique identifier of a skill.</p>
    #
    # @option params [String] :room_arn
    #   <p>The room that the skill is authorized for.</p>
    #
    # @return [Types::PutSkillAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_skill_authorization(
    #     authorization_result: {
    #       'key' => 'value'
    #     }, # required
    #     skill_id: 'SkillId', # required
    #     room_arn: 'RoomArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSkillAuthorizationOutput
    #
    def put_skill_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSkillAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSkillAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSkillAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::PutSkillAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSkillAuthorization,
        stubs: @stubs,
        params_class: Params::PutSkillAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_skill_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM)
    #          using Alexa Voice Service (AVS).</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterAVSDeviceInput}.
    #
    # @option params [String] :client_id
    #   <p>The client ID of the OEM used for code-based linking authorization on an AVS
    #            device.</p>
    #
    # @option params [String] :user_code
    #   <p>The code that is obtained after your AVS device has made a POST request to LWA as a
    #            part of the Device Authorization Request component of the OAuth code-based linking
    #            specification.</p>
    #
    # @option params [String] :product_id
    #   <p>The product ID used to identify your AVS device during authorization.</p>
    #
    # @option params [String] :device_serial_number
    #   <p>The key generated by the OEM that uniquely identifies a specified instance of your
    #            AVS device.</p>
    #
    # @option params [String] :amazon_id
    #   <p>The device type ID for your AVS device generated by Amazon when the OEM creates a new
    #            product on Amazon's Developer Console.</p>
    #
    # @option params [String] :room_arn
    #   <p>The Amazon Resource Name (ARN) of the room with which to associate your AVS device.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    # @return [Types::RegisterAVSDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_avs_device(
    #     client_id: 'ClientId', # required
    #     user_code: 'UserCode', # required
    #     product_id: 'ProductId', # required
    #     device_serial_number: 'DeviceSerialNumber',
    #     amazon_id: 'AmazonId', # required
    #     room_arn: 'RoomArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterAVSDeviceOutput
    #   resp.data.device_arn #=> String
    #
    def register_avs_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterAVSDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterAVSDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterAVSDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidDeviceException, Errors::NotFoundException, Errors::LimitExceededException]),
        data_parser: Parsers::RegisterAVSDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterAVSDevice,
        stubs: @stubs,
        params_class: Params::RegisterAVSDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_avs_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a skill from the organization under a user's AWS account. If the skill
    #          is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill
    #          that is rejected can be added later by calling the ApproveSkill API. </p>
    #
    # @param [Hash] params
    #   See {Types::RejectSkillInput}.
    #
    # @option params [String] :skill_id
    #   <p>The unique identifier of the skill.</p>
    #
    # @return [Types::RejectSkillOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_skill(
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectSkillOutput
    #
    def reject_skill(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectSkillInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectSkillInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectSkill
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::RejectSkill
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectSkill,
        stubs: @stubs,
        params_class: Params::RejectSkillOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_skill
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Determines the details for the room from which a skill request was invoked. This
    #          operation is used by skill developers.</p>
    #          <p>To query ResolveRoom from an Alexa skill, the skill ID needs to be authorized. When
    #          the skill is using an AWS Lambda function, the skill is automatically authorized when you
    #          publish your skill as a private skill to your AWS account. Skills that are hosted using a
    #          custom web service must be manually authorized. To get your skill authorized, contact AWS
    #          Support with your AWS account ID that queries the ResolveRoom API and skill ID. </p>
    #
    # @param [Hash] params
    #   See {Types::ResolveRoomInput}.
    #
    # @option params [String] :user_id
    #   <p>The ARN of the user. Required.</p>
    #
    # @option params [String] :skill_id
    #   <p>The ARN of the skill that was requested. Required.</p>
    #
    # @return [Types::ResolveRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_room(
    #     user_id: 'UserId', # required
    #     skill_id: 'SkillId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResolveRoomOutput
    #   resp.data.room_arn #=> String
    #   resp.data.room_name #=> String
    #   resp.data.room_skill_parameters #=> Array<RoomSkillParameter>
    #   resp.data.room_skill_parameters[0] #=> Types::RoomSkillParameter
    #   resp.data.room_skill_parameters[0].parameter_key #=> String
    #   resp.data.room_skill_parameters[0].parameter_value #=> String
    #
    def resolve_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResolveRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResolveRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResolveRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::ResolveRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResolveRoom,
        stubs: @stubs,
        params_class: Params::ResolveRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resolve_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes an invitation and invalidates the enrollment URL.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeInvitationInput}.
    #
    # @option params [String] :user_arn
    #   <p>The ARN of the user for whom to revoke an enrollment invitation. Required.</p>
    #
    # @option params [String] :enrollment_id
    #   <p>The ARN of the enrollment invitation to revoke. Required.</p>
    #
    # @return [Types::RevokeInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_invitation(
    #     user_arn: 'UserArn',
    #     enrollment_id: 'EnrollmentId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeInvitationOutput
    #
    def revoke_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeInvitation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::RevokeInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeInvitation,
        stubs: @stubs,
        params_class: Params::RevokeInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches address books and lists the ones that meet a set of filter and sort
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchAddressBooksInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of address books. The supported filter key
    #            is AddressBookName.</p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the specified set of address books. The supported
    #            sort key is AddressBookName.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response only includes
    #            results beyond the token, up to the value specified by MaxResults.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified MaxResults value, a token is included in the response so that the remaining
    #            results can be retrieved.</p>
    #
    # @return [Types::SearchAddressBooksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_address_books(
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchAddressBooksOutput
    #   resp.data.address_books #=> Array<AddressBookData>
    #   resp.data.address_books[0] #=> Types::AddressBookData
    #   resp.data.address_books[0].address_book_arn #=> String
    #   resp.data.address_books[0].name #=> String
    #   resp.data.address_books[0].description #=> String
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_address_books(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchAddressBooksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchAddressBooksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchAddressBooks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchAddressBooks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchAddressBooks,
        stubs: @stubs,
        params_class: Params::SearchAddressBooksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_address_books
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches contacts and lists the ones that meet a set of filter and sort
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchContactsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of address books. The supported filter
    #            keys are DisplayName, FirstName, LastName, and AddressBookArns.</p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the specified set of contacts. The supported sort
    #            keys are DisplayName, FirstName, and LastName.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response only includes
    #            results beyond the token, up to the value specified by MaxResults.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified MaxResults value, a token is included in the response so that the remaining
    #            results can be retrieved.</p>
    #
    # @return [Types::SearchContactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_contacts(
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchContactsOutput
    #   resp.data.contacts #=> Array<ContactData>
    #   resp.data.contacts[0] #=> Types::ContactData
    #   resp.data.contacts[0].contact_arn #=> String
    #   resp.data.contacts[0].display_name #=> String
    #   resp.data.contacts[0].first_name #=> String
    #   resp.data.contacts[0].last_name #=> String
    #   resp.data.contacts[0].phone_number #=> String
    #   resp.data.contacts[0].phone_numbers #=> Array<PhoneNumber>
    #   resp.data.contacts[0].phone_numbers[0] #=> Types::PhoneNumber
    #   resp.data.contacts[0].phone_numbers[0].number #=> String
    #   resp.data.contacts[0].phone_numbers[0].type #=> String, one of ["MOBILE", "WORK", "HOME"]
    #   resp.data.contacts[0].sip_addresses #=> Array<SipAddress>
    #   resp.data.contacts[0].sip_addresses[0] #=> Types::SipAddress
    #   resp.data.contacts[0].sip_addresses[0].uri #=> String
    #   resp.data.contacts[0].sip_addresses[0].type #=> String, one of ["WORK"]
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_contacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchContactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchContactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchContacts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchContacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchContacts,
        stubs: @stubs,
        params_class: Params::SearchContactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_contacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches devices and lists the ones that meet a set of filter criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchDevicesInput}.
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of devices. Supported filter keys are
    #            DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber,
    #            UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName,
    #            NetworkProfileArn, Feature, and FailureCode.</p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the specified set of devices. Supported sort keys
    #            are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus,
    #            NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.</p>
    #
    # @return [Types::SearchDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_devices(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchDevicesOutput
    #   resp.data.devices #=> Array<DeviceData>
    #   resp.data.devices[0] #=> Types::DeviceData
    #   resp.data.devices[0].device_arn #=> String
    #   resp.data.devices[0].device_serial_number #=> String
    #   resp.data.devices[0].device_type #=> String
    #   resp.data.devices[0].device_name #=> String
    #   resp.data.devices[0].software_version #=> String
    #   resp.data.devices[0].mac_address #=> String
    #   resp.data.devices[0].device_status #=> String, one of ["READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED", "FAILED"]
    #   resp.data.devices[0].network_profile_arn #=> String
    #   resp.data.devices[0].network_profile_name #=> String
    #   resp.data.devices[0].room_arn #=> String
    #   resp.data.devices[0].room_name #=> String
    #   resp.data.devices[0].device_status_info #=> Types::DeviceStatusInfo
    #   resp.data.devices[0].device_status_info.device_status_details #=> Array<DeviceStatusDetail>
    #   resp.data.devices[0].device_status_info.device_status_details[0] #=> Types::DeviceStatusDetail
    #   resp.data.devices[0].device_status_info.device_status_details[0].feature #=> String, one of ["BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS", "NETWORK_PROFILE", "SETTINGS", "ALL"]
    #   resp.data.devices[0].device_status_info.device_status_details[0].code #=> String, one of ["DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE", "CREDENTIALS_ACCESS_FAILURE", "TLS_VERSION_MISMATCH", "ASSOCIATION_REJECTION", "AUTHENTICATION_FAILURE", "DHCP_FAILURE", "INTERNET_UNAVAILABLE", "DNS_FAILURE", "UNKNOWN_FAILURE", "CERTIFICATE_ISSUING_LIMIT_EXCEEDED", "INVALID_CERTIFICATE_AUTHORITY", "NETWORK_PROFILE_NOT_FOUND", "INVALID_PASSWORD_STATE", "PASSWORD_NOT_FOUND", "PASSWORD_MANAGER_ACCESS_DENIED", "CERTIFICATE_AUTHORITY_ACCESS_DENIED"]
    #   resp.data.devices[0].device_status_info.connection_status #=> String, one of ["ONLINE", "OFFLINE"]
    #   resp.data.devices[0].device_status_info.connection_status_updated_time #=> Time
    #   resp.data.devices[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchDevices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchDevices,
        stubs: @stubs,
        params_class: Params::SearchDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches network profiles and lists the ones that meet a set of filter and sort
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchNetworkProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by MaxResults. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the
    #            specified MaxResults value, a token is included in the response so that the remaining
    #            results can be retrieved. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of network profiles. Valid filters are
    #            NetworkProfileName, Ssid, and SecurityType.</p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use to list the specified set of network profiles. Valid sort criteria
    #            includes NetworkProfileName, Ssid, and SecurityType.</p>
    #
    # @return [Types::SearchNetworkProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_network_profiles(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchNetworkProfilesOutput
    #   resp.data.network_profiles #=> Array<NetworkProfileData>
    #   resp.data.network_profiles[0] #=> Types::NetworkProfileData
    #   resp.data.network_profiles[0].network_profile_arn #=> String
    #   resp.data.network_profiles[0].network_profile_name #=> String
    #   resp.data.network_profiles[0].description #=> String
    #   resp.data.network_profiles[0].ssid #=> String
    #   resp.data.network_profiles[0].security_type #=> String, one of ["OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"]
    #   resp.data.network_profiles[0].eap_method #=> String, one of ["EAP_TLS"]
    #   resp.data.network_profiles[0].certificate_authority_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_network_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchNetworkProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchNetworkProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchNetworkProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchNetworkProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchNetworkProfiles,
        stubs: @stubs,
        params_class: Params::SearchNetworkProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_network_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches room profiles and lists the ones that meet a set of filter
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of room profiles. Supported filter keys
    #            are ProfileName and Address. Required. </p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the specified set of room profiles. Supported sort
    #            keys are ProfileName and Address.</p>
    #
    # @return [Types::SearchProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_profiles(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchProfilesOutput
    #   resp.data.profiles #=> Array<ProfileData>
    #   resp.data.profiles[0] #=> Types::ProfileData
    #   resp.data.profiles[0].profile_arn #=> String
    #   resp.data.profiles[0].profile_name #=> String
    #   resp.data.profiles[0].is_default #=> Boolean
    #   resp.data.profiles[0].address #=> String
    #   resp.data.profiles[0].timezone #=> String
    #   resp.data.profiles[0].distance_unit #=> String, one of ["METRIC", "IMPERIAL"]
    #   resp.data.profiles[0].temperature_unit #=> String, one of ["FAHRENHEIT", "CELSIUS"]
    #   resp.data.profiles[0].wake_word #=> String, one of ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #   resp.data.profiles[0].locale #=> String
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchProfiles,
        stubs: @stubs,
        params_class: Params::SearchProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches rooms and lists the ones that meet a set of filter and sort
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchRoomsInput}.
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of rooms. The supported filter keys are
    #            RoomName and ProfileName.</p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the specified set of rooms. The supported sort keys
    #            are RoomName and ProfileName.</p>
    #
    # @return [Types::SearchRoomsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_rooms(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchRoomsOutput
    #   resp.data.rooms #=> Array<RoomData>
    #   resp.data.rooms[0] #=> Types::RoomData
    #   resp.data.rooms[0].room_arn #=> String
    #   resp.data.rooms[0].room_name #=> String
    #   resp.data.rooms[0].description #=> String
    #   resp.data.rooms[0].provider_calendar_id #=> String
    #   resp.data.rooms[0].profile_arn #=> String
    #   resp.data.rooms[0].profile_name #=> String
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_rooms(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchRoomsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchRoomsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchRooms
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchRooms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchRooms,
        stubs: @stubs,
        params_class: Params::SearchRoomsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_rooms
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches skill groups and lists the ones that meet a set of filter and sort
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchSkillGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.
    #            Required.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use to list a specified set of skill groups. The supported filter key
    #            is SkillGroupName. </p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the specified set of skill groups. The supported
    #            sort key is SkillGroupName. </p>
    #
    # @return [Types::SearchSkillGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_skill_groups(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchSkillGroupsOutput
    #   resp.data.skill_groups #=> Array<SkillGroupData>
    #   resp.data.skill_groups[0] #=> Types::SkillGroupData
    #   resp.data.skill_groups[0].skill_group_arn #=> String
    #   resp.data.skill_groups[0].skill_group_name #=> String
    #   resp.data.skill_groups[0].description #=> String
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_skill_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchSkillGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchSkillGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchSkillGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchSkillGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchSkillGroups,
        stubs: @stubs,
        params_class: Params::SearchSkillGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_skill_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches users and lists the ones that meet a set of filter and sort
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchUsersInput}.
    #
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.
    #            Required.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved. Required.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to use for listing a specific set of users. Required. Supported filter
    #            keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>
    #
    # @option params [Array<Sort>] :sort_criteria
    #   <p>The sort order to use in listing the filtered set of users. Required. Supported sort
    #            keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>
    #
    # @return [Types::SearchUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_criteria: [
    #       {
    #         key: 'Key', # required
    #         value: 'ASC' # required - accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchUsersOutput
    #   resp.data.users #=> Array<UserData>
    #   resp.data.users[0] #=> Types::UserData
    #   resp.data.users[0].user_arn #=> String
    #   resp.data.users[0].first_name #=> String
    #   resp.data.users[0].last_name #=> String
    #   resp.data.users[0].email #=> String
    #   resp.data.users[0].enrollment_status #=> String, one of ["INITIALIZED", "PENDING", "REGISTERED", "DISASSOCIATING", "DEREGISTERING"]
    #   resp.data.users[0].enrollment_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #
    def search_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SearchUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchUsers,
        stubs: @stubs,
        params_class: Params::SearchUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that
    #          are identified by a search or filter. </p>
    #
    # @param [Hash] params
    #   See {Types::SendAnnouncementInput}.
    #
    # @option params [Array<Filter>] :room_filters
    #   <p>The filters to use to send an announcement to a specified list of rooms. The supported filter keys are RoomName, ProfileName, RoomArn, and ProfileArn. To send to all rooms, specify an empty RoomFilters list.</p>
    #
    # @option params [Content] :content
    #   <p>The announcement content. This can contain only one of the three possible announcement types (text, SSML or audio).</p>
    #
    # @option params [Integer] :time_to_live_in_seconds
    #   <p>The time to live for an announcement. Default is 300. If delivery doesn't occur within this time, the
    #            announcement is not delivered.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    # @return [Types::SendAnnouncementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_announcement(
    #     room_filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ], # required
    #     content: {
    #       text_list: [
    #         {
    #           locale: 'en-US', # required - accepts ["en-US"]
    #           value: 'Value' # required
    #         }
    #       ],
    #       ssml_list: [
    #         {
    #           locale: 'en-US', # required - accepts ["en-US"]
    #           value: 'Value' # required
    #         }
    #       ],
    #       audio_list: [
    #         {
    #           locale: 'en-US', # required - accepts ["en-US"]
    #           location: 'Location' # required
    #         }
    #       ]
    #     }, # required
    #     time_to_live_in_seconds: 1,
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendAnnouncementOutput
    #   resp.data.announcement_arn #=> String
    #
    def send_announcement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendAnnouncementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendAnnouncementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendAnnouncement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
        data_parser: Parsers::SendAnnouncement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendAnnouncement,
        stubs: @stubs,
        params_class: Params::SendAnnouncementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_announcement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an enrollment invitation email with a URL to a user. The URL is valid for 30
    #          days or until you call this operation again, whichever comes first. </p>
    #
    # @param [Hash] params
    #   See {Types::SendInvitationInput}.
    #
    # @option params [String] :user_arn
    #   <p>The ARN of the user to whom to send an invitation. Required.</p>
    #
    # @return [Types::SendInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_invitation(
    #     user_arn: 'UserArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendInvitationOutput
    #
    def send_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendInvitation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidUserStatusException, Errors::NotFoundException]),
        data_parser: Parsers::SendInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendInvitation,
        stubs: @stubs,
        params_class: Params::SendInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets a device and its account to the known default settings. This clears all
    #          information and settings set by previous users in the following ways:</p>
    #          <ul>
    #             <li>
    #                <p>Bluetooth - This unpairs all bluetooth devices paired with your echo
    #                device.</p>
    #             </li>
    #             <li>
    #                <p>Volume - This resets the echo device's volume to the default value.</p>
    #             </li>
    #             <li>
    #                <p>Notifications - This clears all notifications from your echo device.</p>
    #             </li>
    #             <li>
    #                <p>Lists - This clears all to-do items from your echo device.</p>
    #             </li>
    #             <li>
    #                <p>Settings - This internally syncs the room's profile (if the device is assigned to
    #                a room), contacts, address books, delegation access for account linking, and
    #                communications (if enabled on the room profile).</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::StartDeviceSyncInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room with which the device to sync is associated. Required.</p>
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device to sync. Required.</p>
    #
    # @option params [Array<String>] :features
    #   <p>Request structure to start the device sync. Required.</p>
    #
    # @return [Types::StartDeviceSyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_device_sync(
    #     room_arn: 'RoomArn',
    #     device_arn: 'DeviceArn',
    #     features: [
    #       'BLUETOOTH' # accepts ["BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS", "NETWORK_PROFILE", "SETTINGS", "ALL"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDeviceSyncOutput
    #
    def start_device_sync(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDeviceSyncInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDeviceSyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDeviceSync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeviceNotRegisteredException]),
        data_parser: Parsers::StartDeviceSync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDeviceSync,
        stubs: @stubs,
        params_class: Params::StartDeviceSyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_device_sync
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates the discovery of any smart home appliances associated with the
    #          room.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSmartHomeApplianceDiscoveryInput}.
    #
    # @option params [String] :room_arn
    #   <p>The room where smart home appliance discovery was initiated.</p>
    #
    # @return [Types::StartSmartHomeApplianceDiscoveryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_smart_home_appliance_discovery(
    #     room_arn: 'RoomArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSmartHomeApplianceDiscoveryOutput
    #
    def start_smart_home_appliance_discovery(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSmartHomeApplianceDiscoveryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSmartHomeApplianceDiscoveryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSmartHomeApplianceDiscovery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::StartSmartHomeApplianceDiscovery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSmartHomeApplianceDiscovery,
        stubs: @stubs,
        params_class: Params::StartSmartHomeApplianceDiscoveryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_smart_home_appliance_discovery
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds metadata tags to a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the resource to which to add metadata tags. Required. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags. Required.
    #         </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     arn: 'Arn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
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

    # <p>Removes metadata tags from a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the resource from which to remove metadata tags. Required. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tags to be removed from the specified resource. Do not provide system tags.
    #            Required. </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     arn: 'Arn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
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

    # <p>Updates address book details by the address book ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAddressBookInput}.
    #
    # @option params [String] :address_book_arn
    #   <p>The ARN of the room to update.</p>
    #
    # @option params [String] :name
    #   <p>The updated name of the room.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the room.</p>
    #
    # @return [Types::UpdateAddressBookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_address_book(
    #     address_book_arn: 'AddressBookArn', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAddressBookOutput
    #
    def update_address_book(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAddressBookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAddressBookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAddressBook
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NameInUseException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateAddressBook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAddressBook,
        stubs: @stubs,
        params_class: Params::UpdateAddressBookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_address_book
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of the report delivery schedule with the specified schedule
    #          ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBusinessReportScheduleInput}.
    #
    # @option params [String] :schedule_arn
    #   <p>The ARN of the business report schedule.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The S3 location of the output reports.</p>
    #
    # @option params [String] :s3_key_prefix
    #   <p>The S3 key where the report is delivered.</p>
    #
    # @option params [String] :format
    #   <p>The format of the generated report (individual CSV files or zipped files of
    #            individual files).</p>
    #
    # @option params [String] :schedule_name
    #   <p>The name identifier of the schedule.</p>
    #
    # @option params [BusinessReportRecurrence] :recurrence
    #   <p>The recurrence of the reports.</p>
    #
    # @return [Types::UpdateBusinessReportScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_business_report_schedule(
    #     schedule_arn: 'ScheduleArn', # required
    #     s3_bucket_name: 'S3BucketName',
    #     s3_key_prefix: 'S3KeyPrefix',
    #     format: 'CSV', # accepts ["CSV", "CSV_ZIP"]
    #     schedule_name: 'ScheduleName',
    #     recurrence: {
    #       start_date: 'StartDate'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBusinessReportScheduleOutput
    #
    def update_business_report_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBusinessReportScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBusinessReportScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBusinessReportSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateBusinessReportSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBusinessReportSchedule,
        stubs: @stubs,
        params_class: Params::UpdateBusinessReportScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_business_report_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing conference provider's settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConferenceProviderInput}.
    #
    # @option params [String] :conference_provider_arn
    #   <p>The ARN of the conference provider.</p>
    #
    # @option params [String] :conference_provider_type
    #   <p>The type of the conference provider.</p>
    #
    # @option params [IPDialIn] :ip_dial_in
    #   <p>The IP endpoint and protocol for calling.</p>
    #
    # @option params [PSTNDialIn] :pstn_dial_in
    #   <p>The information for PSTN conferencing.</p>
    #
    # @option params [MeetingSetting] :meeting_setting
    #   <p>The meeting settings for the conference provider.</p>
    #
    # @return [Types::UpdateConferenceProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_conference_provider(
    #     conference_provider_arn: 'ConferenceProviderArn', # required
    #     conference_provider_type: 'CHIME', # required - accepts ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #     ip_dial_in: {
    #       endpoint: 'Endpoint', # required
    #       comms_protocol: 'SIP' # required - accepts ["SIP", "SIPS", "H323"]
    #     },
    #     pstn_dial_in: {
    #       country_code: 'CountryCode', # required
    #       phone_number: 'PhoneNumber', # required
    #       one_click_id_delay: 'OneClickIdDelay', # required
    #       one_click_pin_delay: 'OneClickPinDelay' # required
    #     },
    #     meeting_setting: {
    #       require_pin: 'YES' # required - accepts ["YES", "NO", "OPTIONAL"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConferenceProviderOutput
    #
    def update_conference_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConferenceProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConferenceProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConferenceProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException]),
        data_parser: Parsers::UpdateConferenceProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConferenceProvider,
        stubs: @stubs,
        params_class: Params::UpdateConferenceProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_conference_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the contact details by the contact ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactInput}.
    #
    # @option params [String] :contact_arn
    #   <p>The ARN of the contact to update.</p>
    #
    # @option params [String] :display_name
    #   <p>The updated display name of the contact.</p>
    #
    # @option params [String] :first_name
    #   <p>The updated first name of the contact.</p>
    #
    # @option params [String] :last_name
    #   <p>The updated last name of the contact.</p>
    #
    # @option params [String] :phone_number
    #   <p>The updated phone number of the contact. The phone number type defaults to WORK. You
    #            can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers,
    #            which lets you specify the phone number type and multiple numbers.</p>
    #
    # @option params [Array<PhoneNumber>] :phone_numbers
    #   <p>The list of phone numbers for the contact.</p>
    #
    # @option params [Array<SipAddress>] :sip_addresses
    #   <p>The list of SIP addresses for the contact.</p>
    #
    # @return [Types::UpdateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact(
    #     contact_arn: 'ContactArn', # required
    #     display_name: 'DisplayName',
    #     first_name: 'FirstName',
    #     last_name: 'LastName',
    #     phone_number: 'PhoneNumber',
    #     phone_numbers: [
    #       {
    #         number: 'Number', # required
    #         type: 'MOBILE' # required - accepts ["MOBILE", "WORK", "HOME"]
    #       }
    #     ],
    #     sip_addresses: [
    #       {
    #         uri: 'Uri', # required
    #         type: 'WORK' # required - accepts ["WORK"]
    #       }
    #     ]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NotFoundException]),
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

    # <p>Updates the device name by device ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device to update. Required.</p>
    #
    # @option params [String] :device_name
    #   <p>The updated device name. Required.</p>
    #
    # @return [Types::UpdateDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device(
    #     device_arn: 'DeviceArn',
    #     device_name: 'DeviceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceOutput
    #
    def update_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::DeviceNotRegisteredException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDevice,
        stubs: @stubs,
        params_class: Params::UpdateDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of a gateway. If any optional field is not provided, the existing
    #          corresponding value is left unmodified.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The ARN of the gateway to update.</p>
    #
    # @option params [String] :name
    #   <p>The updated name of the gateway.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the gateway.</p>
    #
    # @option params [String] :software_version
    #   <p>The updated software version of the gateway. The gateway automatically updates its
    #            software version during normal operation.</p>
    #
    # @return [Types::UpdateGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway(
    #     gateway_arn: 'GatewayArn', # required
    #     name: 'Name',
    #     description: 'Description',
    #     software_version: 'SoftwareVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayOutput
    #
    def update_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameInUseException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGateway,
        stubs: @stubs,
        params_class: Params::UpdateGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of a gateway group. If any optional field is not provided, the
    #          existing corresponding value is left unmodified.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayGroupInput}.
    #
    # @option params [String] :gateway_group_arn
    #   <p>The ARN of the gateway group to update.</p>
    #
    # @option params [String] :name
    #   <p>The updated name of the gateway group.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the gateway group.</p>
    #
    # @return [Types::UpdateGatewayGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_group(
    #     gateway_group_arn: 'GatewayGroupArn', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayGroupOutput
    #
    def update_gateway_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewayGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameInUseException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateGatewayGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewayGroup,
        stubs: @stubs,
        params_class: Params::UpdateGatewayGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a network profile by the network profile ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNetworkProfileInput}.
    #
    # @option params [String] :network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    # @option params [String] :network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    # @option params [String] :description
    #   <p>Detailed information about a device's network profile.</p>
    #
    # @option params [String] :current_password
    #   <p>The current password of the Wi-Fi network.</p>
    #
    # @option params [String] :next_password
    #   <p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
    #            transmitted to the device and is used when the password of the network changes to
    #            NextPassword. </p>
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
    #            (ACM). This is used to issue certificates to the devices. </p>
    #
    # @option params [Array<String>] :trust_anchors
    #   <p>The root certificate(s) of your authentication server that will be installed on your
    #            devices and used to trust your authentication server during EAP negotiation. </p>
    #
    # @return [Types::UpdateNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_profile(
    #     network_profile_arn: 'NetworkProfileArn', # required
    #     network_profile_name: 'NetworkProfileName',
    #     description: 'Description',
    #     current_password: 'CurrentPassword',
    #     next_password: 'NextPassword',
    #     certificate_authority_arn: 'CertificateAuthorityArn',
    #     trust_anchors: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNetworkProfileOutput
    #
    def update_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNetworkProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NameInUseException, Errors::InvalidCertificateAuthorityException, Errors::InvalidSecretsManagerResourceException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNetworkProfile,
        stubs: @stubs,
        params_class: Params::UpdateNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing room profile by room profile ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProfileInput}.
    #
    # @option params [String] :profile_arn
    #   <p>The ARN of the room profile to update. Required.</p>
    #
    # @option params [String] :profile_name
    #   <p>The updated name for the room profile.</p>
    #
    # @option params [Boolean] :is_default
    #   <p>Sets the profile as default if selected. If this is missing, no update is done to the
    #            default status.</p>
    #
    # @option params [String] :timezone
    #   <p>The updated timezone for the room profile.</p>
    #
    # @option params [String] :address
    #   <p>The updated address for the room profile.</p>
    #
    # @option params [String] :distance_unit
    #   <p>The updated distance unit for the room profile.</p>
    #
    # @option params [String] :temperature_unit
    #   <p>The updated temperature unit for the room profile.</p>
    #
    # @option params [String] :wake_word
    #   <p>The updated wake word for the room profile.</p>
    #
    # @option params [String] :locale
    #   <p>The updated locale for the room profile. (This is currently only available to a limited preview audience.)</p>
    #
    # @option params [Boolean] :setup_mode_disabled
    #   <p>Whether the setup mode of the profile is enabled.</p>
    #
    # @option params [Integer] :max_volume_limit
    #   <p>The updated maximum volume limit for the room profile.</p>
    #
    # @option params [Boolean] :pstn_enabled
    #   <p>Whether the PSTN setting of the room profile is enabled.</p>
    #
    # @option params [Boolean] :data_retention_opt_in
    #   <p>Whether data retention of the profile is enabled.</p>
    #
    # @option params [UpdateMeetingRoomConfiguration] :meeting_room_configuration
    #   <p>The updated meeting room settings of a room profile.</p>
    #
    # @return [Types::UpdateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile(
    #     profile_arn: 'ProfileArn',
    #     profile_name: 'ProfileName',
    #     is_default: false,
    #     timezone: 'Timezone',
    #     address: 'Address',
    #     distance_unit: 'METRIC', # accepts ["METRIC", "IMPERIAL"]
    #     temperature_unit: 'FAHRENHEIT', # accepts ["FAHRENHEIT", "CELSIUS"]
    #     wake_word: 'ALEXA', # accepts ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #     locale: 'Locale',
    #     setup_mode_disabled: false,
    #     max_volume_limit: 1,
    #     pstn_enabled: false,
    #     data_retention_opt_in: false,
    #     meeting_room_configuration: {
    #       room_utilization_metrics_enabled: false,
    #       end_of_meeting_reminder: {
    #         reminder_at_minutes: [
    #           1
    #         ],
    #         reminder_type: 'ANNOUNCEMENT_TIME_CHECK', # accepts ["ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"]
    #         enabled: false
    #       },
    #       instant_booking: {
    #         duration_in_minutes: 1,
    #         enabled: false
    #       },
    #       require_check_in: {
    #         release_after_minutes: 1,
    #         enabled: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProfileOutput
    #
    def update_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NameInUseException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProfile,
        stubs: @stubs,
        params_class: Params::UpdateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates room details by room ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoomInput}.
    #
    # @option params [String] :room_arn
    #   <p>The ARN of the room to update. </p>
    #
    # @option params [String] :room_name
    #   <p>The updated name for the room.</p>
    #
    # @option params [String] :description
    #   <p>The updated description for the room.</p>
    #
    # @option params [String] :provider_calendar_id
    #   <p>The updated provider calendar ARN for the room.</p>
    #
    # @option params [String] :profile_arn
    #   <p>The updated profile ARN for the room.</p>
    #
    # @return [Types::UpdateRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room(
    #     room_arn: 'RoomArn',
    #     room_name: 'RoomName',
    #     description: 'Description',
    #     provider_calendar_id: 'ProviderCalendarId',
    #     profile_arn: 'ProfileArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoomOutput
    #
    def update_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoom
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameInUseException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoom,
        stubs: @stubs,
        params_class: Params::UpdateRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates skill group details by skill group ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSkillGroupInput}.
    #
    # @option params [String] :skill_group_arn
    #   <p>The ARN of the skill group to update. </p>
    #
    # @option params [String] :skill_group_name
    #   <p>The updated name for the skill group.</p>
    #
    # @option params [String] :description
    #   <p>The updated description for the skill group.</p>
    #
    # @return [Types::UpdateSkillGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_skill_group(
    #     skill_group_arn: 'SkillGroupArn',
    #     skill_group_name: 'SkillGroupName',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSkillGroupOutput
    #
    def update_skill_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSkillGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSkillGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSkillGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NameInUseException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSkillGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSkillGroup,
        stubs: @stubs,
        params_class: Params::UpdateSkillGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_skill_group
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
