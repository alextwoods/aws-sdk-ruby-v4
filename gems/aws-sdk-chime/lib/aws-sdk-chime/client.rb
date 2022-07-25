# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Chime
  # An API client for UCBuzzConsoleService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Chime API (application programming interface) is designed for developers to
  #             perform key tasks, such as creating and managing Amazon Chime accounts, users, and Voice
  #             Connectors. This guide provides detailed information about the Amazon Chime API,
  #             including operations, types, inputs and outputs, and error codes. It also includes API actions for use with the Amazon Chime SDK, which developers use to build their own communication applications. For more information about the
  #             Amazon Chime SDK, see <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">
  #                 Using the Amazon Chime SDK
  #             </a> in the <i>Amazon Chime Developer Guide</i>.</p>
  #          <p>You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the REST API to make API calls. We recommend using an AWS SDK or the
  #     AWS CLI. Each API operation includes links to information about using it with a language-specific AWS SDK or the AWS CLI.</p>
  #          <dl>
  #             <dt>Using an AWS SDK</dt>
  #             <dd>
  #                <p>
  # You don't need to write code to calculate a signature for request authentication. The SDK clients authenticate your requests by using access keys that you provide. For more information about AWS SDKs, see the
  # <a href="http://aws.amazon.com/developer/">AWS Developer Center</a>.
  # </p>
  #             </dd>
  #             <dt>Using the AWS CLI</dt>
  #             <dd>
  #                <p>Use your access keys with the AWS CLI to make API calls. For information about setting up the AWS CLI, see
  # <a href="https://docs.aws.amazon.com/cli/latest/userguide/installing.html">Installing the AWS Command Line Interface</a>
  # in the <i>AWS Command Line Interface User Guide</i>. For a list of available Amazon Chime commands, see the
  # <a href="https://docs.aws.amazon.com/cli/latest/reference/chime/index.html">Amazon Chime commands</a> in the
  #     <i>AWS CLI Command Reference</i>.
  # </p>
  #             </dd>
  #             <dt>Using REST APIs</dt>
  #             <dd>
  #                <p>If you use REST to make API calls, you must authenticate your request by providing a signature. Amazon Chime supports signature version 4. For more information, see
  # <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>
  # in the <i>Amazon Web Services General Reference</i>.</p>
  #
  #                <p>When making REST API calls, use the service name <code>chime</code> and REST endpoint <code>https://service.chime.aws.amazon.com</code>.</p>
  #             </dd>
  #          </dl>
  #
  #          <p>Administrative permissions are controlled using AWS Identity and Access Management (IAM). For more information, see
  # <a href="https://docs.aws.amazon.com/chime/latest/ag/security-iam.html">Identity and Access Management for Amazon Chime</a>
  # in the <i>Amazon Chime Administration Guide</i>.</p>
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
    def initialize(config = AWS::SDK::Chime::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a phone number with the specified Amazon Chime user.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePhoneNumberWithUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @option params [String] :e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #
    # @return [Types::AssociatePhoneNumberWithUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_with_user(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId', # required
    #     e164_phone_number: 'E164PhoneNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePhoneNumberWithUserOutput
    #
    def associate_phone_number_with_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePhoneNumberWithUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePhoneNumberWithUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePhoneNumberWithUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::AssociatePhoneNumberWithUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePhoneNumberWithUser,
        stubs: @stubs,
        params_class: Params::AssociatePhoneNumberWithUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_phone_number_with_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates phone numbers with the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePhoneNumbersWithVoiceConnectorInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    # @option params [Boolean] :force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>
    #
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_numbers_with_voice_connector(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     e164_phone_numbers: [
    #       'member'
    #     ], # required
    #     force_associate: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePhoneNumbersWithVoiceConnectorOutput
    #   resp.data.phone_number_errors #=> Array<PhoneNumberError>
    #   resp.data.phone_number_errors[0] #=> Types::PhoneNumberError
    #   resp.data.phone_number_errors[0].phone_number_id #=> String
    #   resp.data.phone_number_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.phone_number_errors[0].error_message #=> String
    #
    def associate_phone_numbers_with_voice_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePhoneNumbersWithVoiceConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePhoneNumbersWithVoiceConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePhoneNumbersWithVoiceConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::AssociatePhoneNumbersWithVoiceConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePhoneNumbersWithVoiceConnector,
        stubs: @stubs,
        params_class: Params::AssociatePhoneNumbersWithVoiceConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_phone_numbers_with_voice_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates phone numbers with the specified Amazon Chime Voice Connector group.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePhoneNumbersWithVoiceConnectorGroupInput}.
    #
    # @option params [String] :voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    # @option params [Boolean] :force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector Group and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>
    #
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_numbers_with_voice_connector_group(
    #     voice_connector_group_id: 'VoiceConnectorGroupId', # required
    #     e164_phone_numbers: [
    #       'member'
    #     ], # required
    #     force_associate: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePhoneNumbersWithVoiceConnectorGroupOutput
    #   resp.data.phone_number_errors #=> Array<PhoneNumberError>
    #   resp.data.phone_number_errors[0] #=> Types::PhoneNumberError
    #   resp.data.phone_number_errors[0].phone_number_id #=> String
    #   resp.data.phone_number_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.phone_number_errors[0].error_message #=> String
    #
    def associate_phone_numbers_with_voice_connector_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePhoneNumbersWithVoiceConnectorGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePhoneNumbersWithVoiceConnectorGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePhoneNumbersWithVoiceConnectorGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::AssociatePhoneNumbersWithVoiceConnectorGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePhoneNumbersWithVoiceConnectorGroup,
        stubs: @stubs,
        params_class: Params::AssociatePhoneNumbersWithVoiceConnectorGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_phone_numbers_with_voice_connector_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified sign-in delegate groups with the specified Amazon Chime account.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateSigninDelegateGroupsWithAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Array<SigninDelegateGroup>] :signin_delegate_groups
    #   <p>The sign-in delegate groups.</p>
    #
    # @return [Types::AssociateSigninDelegateGroupsWithAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_signin_delegate_groups_with_account(
    #     account_id: 'AccountId', # required
    #     signin_delegate_groups: [
    #       {
    #         group_name: 'GroupName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSigninDelegateGroupsWithAccountOutput
    #
    def associate_signin_delegate_groups_with_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSigninDelegateGroupsWithAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSigninDelegateGroupsWithAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSigninDelegateGroupsWithAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::AssociateSigninDelegateGroupsWithAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSigninDelegateGroupsWithAccount,
        stubs: @stubs,
        params_class: Params::AssociateSigninDelegateGroupsWithAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_signin_delegate_groups_with_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Creates up to 100 new attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [Array<CreateAttendeeRequestItem>] :attendees
    #   <p>The request containing the attendees to create.</p>
    #
    # @return [Types::BatchCreateAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendees: [
    #       {
    #         external_user_id: 'ExternalUserId', # required
    #         tags: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value' # required
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateAttendeeOutput
    #   resp.data.attendees #=> Array<Attendee>
    #   resp.data.attendees[0] #=> Types::Attendee
    #   resp.data.attendees[0].external_user_id #=> String
    #   resp.data.attendees[0].attendee_id #=> String
    #   resp.data.attendees[0].join_token #=> String
    #   resp.data.errors #=> Array<CreateAttendeeError>
    #   resp.data.errors[0] #=> Types::CreateAttendeeError
    #   resp.data.errors[0].external_user_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_create_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateAttendeeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateAttendee
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchCreateAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateAttendee,
        stubs: @stubs,
        params_class: Params::BatchCreateAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a specified number of users to a channel.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #
    # @option params [Array<String>] :member_arns
    #   <p>The ARNs of the members you want to add to the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::BatchCreateChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     type: 'DEFAULT', # accepts ["DEFAULT", "HIDDEN"]
    #     member_arns: [
    #       'member'
    #     ], # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateChannelMembershipOutput
    #   resp.data.batch_channel_memberships #=> Types::BatchChannelMemberships
    #   resp.data.batch_channel_memberships.invited_by #=> Types::Identity
    #   resp.data.batch_channel_memberships.invited_by.arn #=> String
    #   resp.data.batch_channel_memberships.invited_by.name #=> String
    #   resp.data.batch_channel_memberships.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.batch_channel_memberships.members #=> Array<Identity>
    #   resp.data.batch_channel_memberships.channel_arn #=> String
    #   resp.data.errors #=> Array<BatchCreateChannelMembershipError>
    #   resp.data.errors[0] #=> Types::BatchCreateChannelMembershipError
    #   resp.data.errors[0].member_arn #=> String
    #   resp.data.errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_create_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateChannelMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateChannelMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchCreateChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateChannelMembership,
        stubs: @stubs,
        params_class: Params::BatchCreateChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds up to 50 members to a chat room in an Amazon Chime Enterprise account. Members can be users or bots. The member role designates whether the member is a chat room administrator or a general chat room member.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateRoomMembershipInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [Array<MembershipItem>] :membership_item_list
    #   <p>The list of membership items.</p>
    #
    # @return [Types::BatchCreateRoomMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_room_membership(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     membership_item_list: [
    #       {
    #         member_id: 'MemberId',
    #         role: 'Administrator' # accepts ["Administrator", "Member"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateRoomMembershipOutput
    #   resp.data.errors #=> Array<MemberError>
    #   resp.data.errors[0] #=> Types::MemberError
    #   resp.data.errors[0].member_id #=> String
    #   resp.data.errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_create_room_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateRoomMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateRoomMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateRoomMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchCreateRoomMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateRoomMembership,
        stubs: @stubs,
        params_class: Params::BatchCreateRoomMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_room_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Moves phone numbers into the
    # <b>Deletion queue</b>. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted.
    # </p>
    #
    #          <p>
    # Phone numbers remain in the
    # <b>Deletion queue</b> for 7 days before they are deleted permanently.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeletePhoneNumberInput}.
    #
    # @option params [Array<String>] :phone_number_ids
    #   <p>List of phone number IDs.</p>
    #
    # @return [Types::BatchDeletePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_phone_number(
    #     phone_number_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeletePhoneNumberOutput
    #   resp.data.phone_number_errors #=> Array<PhoneNumberError>
    #   resp.data.phone_number_errors[0] #=> Types::PhoneNumberError
    #   resp.data.phone_number_errors[0].phone_number_id #=> String
    #   resp.data.phone_number_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.phone_number_errors[0].error_message #=> String
    #
    def batch_delete_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeletePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeletePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeletePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchDeletePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeletePhoneNumber,
        stubs: @stubs,
        params_class: Params::BatchDeletePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Suspends up to 50 users from a <code>Team</code> or <code>EnterpriseLWA</code> Amazon Chime
    #             account. For more information about different account types, see <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration
    #                 Guide</i>.</p>
    #
    #          <p>Users suspended from a <code>Team</code> account are disassociated from the account,but they
    #             can continue to use Amazon Chime as free users. To remove the suspension from suspended
    #                 <code>Team</code> account users, invite them to the <code>Team</code> account again.
    #             You can use the <a>InviteUsers</a> action to do so.</p>
    #
    #          <p>Users suspended from an <code>EnterpriseLWA</code> account are immediately signed out of
    #             Amazon Chime and can no longer sign in. To remove the suspension from suspended <code>EnterpriseLWA</code> account users, use the <a>BatchUnsuspendUser</a> action.</p>
    #
    #          <p>
    # To sign out users without suspending them, use the
    # <a>LogoutUser</a>
    # action.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::BatchSuspendUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Array<String>] :user_id_list
    #   <p>The request containing the user IDs to suspend.</p>
    #
    # @return [Types::BatchSuspendUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_suspend_user(
    #     account_id: 'AccountId', # required
    #     user_id_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchSuspendUserOutput
    #   resp.data.user_errors #=> Array<UserError>
    #   resp.data.user_errors[0] #=> Types::UserError
    #   resp.data.user_errors[0].user_id #=> String
    #   resp.data.user_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.user_errors[0].error_message #=> String
    #
    def batch_suspend_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchSuspendUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchSuspendUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchSuspendUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchSuspendUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchSuspendUser,
        stubs: @stubs,
        params_class: Params::BatchSuspendUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_suspend_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the suspension from up to 50 previously suspended users for the specified Amazon
    #             Chime <code>EnterpriseLWA</code> account. Only users on <code>EnterpriseLWA</code>
    #             accounts can be unsuspended using this action. For more information about different account types, see
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">
    #         Managing Your Amazon Chime Accounts
    #     </a> in the account types, in the <i>Amazon Chime Administration Guide</i>.
    # </p>
    #
    #          <p>
    # Previously suspended users who are unsuspended using this action are returned to
    # <code>Registered</code>
    # status. Users who are not previously suspended are ignored.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::BatchUnsuspendUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Array<String>] :user_id_list
    #   <p>The request containing the user IDs to unsuspend.</p>
    #
    # @return [Types::BatchUnsuspendUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_unsuspend_user(
    #     account_id: 'AccountId', # required
    #     user_id_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUnsuspendUserOutput
    #   resp.data.user_errors #=> Array<UserError>
    #   resp.data.user_errors[0] #=> Types::UserError
    #   resp.data.user_errors[0].user_id #=> String
    #   resp.data.user_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.user_errors[0].error_message #=> String
    #
    def batch_unsuspend_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUnsuspendUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUnsuspendUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUnsuspendUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchUnsuspendUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUnsuspendUser,
        stubs: @stubs,
        params_class: Params::BatchUnsuspendUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_unsuspend_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates phone number product types or calling names. You can update one attribute at a time for each <code>UpdatePhoneNumberRequestItem</code>. For example, you can update the product type or the calling name.</p>
    #          <p>For toll-free numbers, you cannot use the Amazon Chime Business Calling product type. For numbers outside the U.S., you must use the Amazon Chime SIP Media Application Dial-In product type.</p>
    #          <p>Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdatePhoneNumberInput}.
    #
    # @option params [Array<UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   <p>The request containing the phone number IDs and product types or calling names to update.</p>
    #
    # @return [Types::BatchUpdatePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_phone_number(
    #     update_phone_number_request_items: [
    #       {
    #         phone_number_id: 'PhoneNumberId', # required
    #         product_type: 'BusinessCalling', # accepts ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #         calling_name: 'CallingName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdatePhoneNumberOutput
    #   resp.data.phone_number_errors #=> Array<PhoneNumberError>
    #   resp.data.phone_number_errors[0] #=> Types::PhoneNumberError
    #   resp.data.phone_number_errors[0].phone_number_id #=> String
    #   resp.data.phone_number_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.phone_number_errors[0].error_message #=> String
    #
    def batch_update_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdatePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdatePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdatePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchUpdatePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdatePhoneNumber,
        stubs: @stubs,
        params_class: Params::BatchUpdatePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates user details within the <a>UpdateUserRequestItem</a> object for up to 20 users for the specified Amazon Chime account. Currently, only <code>LicenseType</code> updates are supported for this action.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Array<UpdateUserRequestItem>] :update_user_request_items
    #   <p>The request containing the user IDs and details to update.</p>
    #
    # @return [Types::BatchUpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_user(
    #     account_id: 'AccountId', # required
    #     update_user_request_items: [
    #       {
    #         user_id: 'UserId', # required
    #         license_type: 'Basic', # accepts ["Basic", "Plus", "Pro", "ProTrial"]
    #         user_type: 'PrivateUser', # accepts ["PrivateUser", "SharedDevice"]
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: 'AlexaForBusinessRoomArn'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateUserOutput
    #   resp.data.user_errors #=> Array<UserError>
    #   resp.data.user_errors[0] #=> Types::UserError
    #   resp.data.user_errors[0].user_id #=> String
    #   resp.data.user_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.user_errors[0].error_message #=> String
    #
    def batch_update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::BatchUpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateUser,
        stubs: @stubs,
        params_class: Params::BatchUpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Chime account under the administrator's AWS account. Only <code>Team</code>
    #             account types are currently supported for this action. For more information about different account types, see
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccountInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon Chime account.</p>
    #
    # @return [Types::CreateAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccountOutput
    #   resp.data.account #=> Types::Account
    #   resp.data.account.aws_account_id #=> String
    #   resp.data.account.account_id #=> String
    #   resp.data.account.name #=> String
    #   resp.data.account.account_type #=> String, one of ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"]
    #   resp.data.account.created_timestamp #=> Time
    #   resp.data.account.default_license #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.account.supported_licenses #=> Array<String>
    #   resp.data.account.supported_licenses[0] #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.account.account_status #=> String, one of ["Suspended", "Active"]
    #   resp.data.account.signin_delegate_groups #=> Array<SigninDelegateGroup>
    #   resp.data.account.signin_delegate_groups[0] #=> Types::SigninDelegateGroup
    #   resp.data.account.signin_delegate_groups[0].group_name #=> String
    #
    def create_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccount,
        stubs: @stubs,
        params_class: Params::CreateAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Chime SDK messaging <code>AppInstance</code> under an AWS account. Only SDK messaging customers use this API.
    # <code>CreateAppInstance</code> supports idempotency behavior as described in the AWS API Standard.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInstanceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The <code>ClientRequestToken</code> of the <code>AppInstance</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags assigned to the <code>AppInstance</code>.</p>
    #
    # @return [Types::CreateAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance(
    #     name: 'Name', # required
    #     metadata: 'Metadata',
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
    #   resp.data #=> Types::CreateAppInstanceOutput
    #   resp.data.app_instance_arn #=> String
    #
    def create_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppInstance,
        stubs: @stubs,
        params_class: Params::CreateAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Promotes an <code>AppInstanceUser</code> to an <code>AppInstanceAdmin</code>. The promoted user can perform the following actions.
    # </p>
    #
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ChannelModerator</code> actions across all channels in the <code>AppInstance</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteChannelMessage</code> actions.</p>
    #             </li>
    #          </ul>
    #
    #          <p>Only an <code>AppInstanceUser</code> can be promoted to an <code>AppInstanceAdmin</code> role.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInstanceAdminInput}.
    #
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the administrator of the current <code>AppInstance</code>.</p>
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::CreateAppInstanceAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_admin(
    #     app_instance_admin_arn: 'AppInstanceAdminArn', # required
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppInstanceAdminOutput
    #   resp.data.app_instance_admin #=> Types::Identity
    #   resp.data.app_instance_admin.arn #=> String
    #   resp.data.app_instance_admin.name #=> String
    #   resp.data.app_instance_arn #=> String
    #
    def create_app_instance_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInstanceAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInstanceAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppInstanceAdmin
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateAppInstanceAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppInstanceAdmin,
        stubs: @stubs,
        params_class: Params::CreateAppInstanceAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_instance_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user under an Amazon Chime <code>AppInstance</code>. The request consists of a unique <code>appInstanceUserId</code> and
    # <code>Name</code> for that user.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    #
    # @option params [String] :app_instance_user_id
    #   <p>The user ID of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :name
    #   <p>The user's name.</p>
    #
    # @option params [String] :metadata
    #   <p>The request's metadata. Limited to a 1KB string in UTF-8.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The token assigned to the user requesting an <code>AppInstance</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::CreateAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_user(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     app_instance_user_id: 'AppInstanceUserId', # required
    #     name: 'Name', # required
    #     metadata: 'Metadata',
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
    #   resp.data #=> Types::CreateAppInstanceUserOutput
    #   resp.data.app_instance_user_arn #=> String
    #
    def create_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppInstanceUser,
        stubs: @stubs,
        params_class: Params::CreateAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @return [Types::CreateAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_attendee(
    #     meeting_id: 'MeetingId', # required
    #     external_user_id: 'ExternalUserId', # required
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
    #   resp.data #=> Types::CreateAttendeeOutput
    #   resp.data.attendee #=> Types::Attendee
    #   resp.data.attendee.external_user_id #=> String
    #   resp.data.attendee.attendee_id #=> String
    #   resp.data.attendee.join_token #=> String
    #
    def create_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAttendeeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAttendee
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAttendee,
        stubs: @stubs,
        params_class: Params::CreateAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a bot for an Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBotInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :display_name
    #   <p>The bot display name.</p>
    #
    # @option params [String] :domain
    #   <p>The domain of the Amazon Chime Enterprise account.</p>
    #
    # @return [Types::CreateBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot(
    #     account_id: 'AccountId', # required
    #     display_name: 'DisplayName', # required
    #     domain: 'Domain'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBotOutput
    #   resp.data.bot #=> Types::Bot
    #   resp.data.bot.bot_id #=> String
    #   resp.data.bot.user_id #=> String
    #   resp.data.bot.display_name #=> String
    #   resp.data.bot.bot_type #=> String, one of ["ChatBot"]
    #   resp.data.bot.disabled #=> Boolean
    #   resp.data.bot.created_timestamp #=> Time
    #   resp.data.bot.updated_timestamp #=> Time
    #   resp.data.bot.bot_email #=> String
    #   resp.data.bot.security_token #=> String
    #
    def create_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBot,
        stubs: @stubs,
        params_class: Params::CreateBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a channel to which you can add users and send messages.</p>
    #
    #          <p>
    #             <b>Restriction</b>: You can't change a channel's
    #          privacy.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the channel request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    #
    # @option params [String] :mode
    #   <p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,
    #            moderators, and channel members can add themselves and other members to unrestricted
    #            channels. Only administrators and moderators can add members to restricted channels.</p>
    #
    # @option params [String] :privacy
    #   <p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private
    #            channels aren't discoverable by users outside the channel. Public channels are discoverable
    #            by anyone in the <code>AppInstance</code>.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The client token for the request. An <code>Idempotency</code> token.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the creation request.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     name: 'Name', # required
    #     mode: 'UNRESTRICTED', # accepts ["UNRESTRICTED", "RESTRICTED"]
    #     privacy: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE"]
    #     metadata: 'Metadata',
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelOutput
    #   resp.data.channel_arn #=> String
    #
    def create_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannel,
        stubs: @stubs,
        params_class: Params::CreateChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently bans a member from a channel. Moderators can't add banned members to a
    #          channel. To undo a ban, you first have to <code>DeleteChannelBan</code>, and then
    #             <code>CreateChannelMembership</code>. Bans are cleaned up when you delete users or
    #          channels.</p>
    #          <p>If you ban a user who is already part of a channel, that user is automatically kicked
    #          from the channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelBanInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the ban request.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the member being banned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelBanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_ban(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelBanOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.member #=> Types::Identity
    #   resp.data.member.arn #=> String
    #   resp.data.member.name #=> String
    #
    def create_channel_ban(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelBanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelBanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelBan
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateChannelBan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelBan,
        stubs: @stubs,
        params_class: Params::CreateChannelBanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_ban
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a user to a channel. The <code>InvitedBy</code> response field is derived from the
    #          request header. A channel member can:</p>
    #
    #          <ul>
    #             <li>
    #                <p>List messages</p>
    #             </li>
    #             <li>
    #                <p>Send messages</p>
    #             </li>
    #             <li>
    #                <p>Receive messages</p>
    #             </li>
    #             <li>
    #                <p>Edit their own messages</p>
    #             </li>
    #             <li>
    #                <p>Leave the channel</p>
    #             </li>
    #          </ul>
    #
    #          <p>Privacy settings impact this action as follows:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Public Channels: You do not need to be a member to list messages, but you must be
    #                a member to send messages.</p>
    #             </li>
    #             <li>
    #                <p>Private Channels: You must be a member to list or send messages.</p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the member you want to add to the channel.</p>
    #
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     type: 'DEFAULT', # required - accepts ["DEFAULT", "HIDDEN"]
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelMembershipOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.member #=> Types::Identity
    #   resp.data.member.arn #=> String
    #   resp.data.member.name #=> String
    #
    def create_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelMembership,
        stubs: @stubs,
        params_class: Params::CreateChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new <code>ChannelModerator</code>. A channel moderator can:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Add and remove other members of the channel.</p>
    #             </li>
    #             <li>
    #                <p>Add and remove other moderators of the channel.</p>
    #             </li>
    #             <li>
    #                <p>Add and remove user bans for the channel.</p>
    #             </li>
    #             <li>
    #                <p>Redact messages in the channel.</p>
    #             </li>
    #             <li>
    #                <p>List messages in the channel.</p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelModeratorInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_moderator_arn
    #   <p>The ARN of the moderator.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelModeratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_moderator(
    #     channel_arn: 'ChannelArn', # required
    #     channel_moderator_arn: 'ChannelModeratorArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelModeratorOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.channel_moderator #=> Types::Identity
    #   resp.data.channel_moderator.arn #=> String
    #   resp.data.channel_moderator.name #=> String
    #
    def create_channel_moderator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelModeratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelModeratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelModerator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateChannelModerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelModerator,
        stubs: @stubs,
        params_class: Params::CreateChannelModeratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_moderator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMediaCapturePipelineInput}.
    #
    # @option params [String] :source_type
    #   <p>Source type from which the media artifacts will be captured. A Chime SDK Meeting
    #               is the only supported source.</p>
    #
    # @option params [String] :source_arn
    #   <p>ARN of the source from which the media artifacts are captured.</p>
    #
    # @option params [String] :sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 bucket. </p>
    #
    # @option params [String] :sink_arn
    #   <p>The ARN of the sink type.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The token assigned to the client making the pipeline request.</p>
    #
    # @option params [ChimeSdkMeetingConfiguration] :chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    # @return [Types::CreateMediaCapturePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_capture_pipeline(
    #     source_type: 'ChimeSdkMeeting', # required - accepts ["ChimeSdkMeeting"]
    #     source_arn: 'SourceArn', # required
    #     sink_type: 'S3Bucket', # required - accepts ["S3Bucket"]
    #     sink_arn: 'SinkArn', # required
    #     client_request_token: 'ClientRequestToken',
    #     chime_sdk_meeting_configuration: {
    #       source_configuration: {
    #         selected_video_streams: {
    #           attendee_ids: [
    #             'member'
    #           ],
    #           external_user_ids: [
    #             'member'
    #           ]
    #         }
    #       },
    #       artifacts_configuration: {
    #         audio: {
    #           mux_type: 'AudioOnly' # required - accepts ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #         }, # required
    #         video: {
    #           state: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           mux_type: 'VideoOnly' # accepts ["VideoOnly"]
    #         }, # required
    #         content: {
    #           state: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           mux_type: 'ContentOnly' # accepts ["ContentOnly"]
    #         } # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMediaCapturePipelineOutput
    #   resp.data.media_capture_pipeline #=> Types::MediaCapturePipeline
    #   resp.data.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.data.media_capture_pipeline.source_type #=> String, one of ["ChimeSdkMeeting"]
    #   resp.data.media_capture_pipeline.source_arn #=> String
    #   resp.data.media_capture_pipeline.status #=> String, one of ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #   resp.data.media_capture_pipeline.sink_type #=> String, one of ["S3Bucket"]
    #   resp.data.media_capture_pipeline.sink_arn #=> String
    #   resp.data.media_capture_pipeline.created_timestamp #=> Time
    #   resp.data.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration #=> Types::ChimeSdkMeetingConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration #=> Types::SourceConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams #=> Types::SelectedVideoStreams
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration #=> Types::ArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio #=> Types::AudioArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video #=> Types::VideoArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of ["VideoOnly"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content #=> Types::ContentArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of ["ContentOnly"]
    #
    def create_media_capture_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMediaCapturePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMediaCapturePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMediaCapturePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateMediaCapturePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMediaCapturePipeline,
        stubs: @stubs,
        params_class: Params::CreateMediaCapturePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_media_capture_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html">Amazon Chime SDK Media Regions</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>
    # . For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>
    # .
    # </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMeetingInput}.
    #
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    # @option params [String] :external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    # @option params [String] :meeting_host_id
    #   <p>Reserved.</p>
    #
    # @option params [String] :media_region
    #   <p>
    #   The Region in which to create the meeting. Default: <code>us-east-1</code>.
    #   </p>
    #
    #            <p>
    #   Available values:
    #   <code>af-south-1</code>
    #   ,
    #   <code>ap-northeast-1</code>
    #   ,
    #   <code>ap-northeast-2</code>
    #   ,
    #   <code>ap-south-1</code>
    #   ,
    #   <code>ap-southeast-1</code>
    #   ,
    #   <code>ap-southeast-2</code>
    #   ,
    #   <code>ca-central-1</code>
    #   ,
    #   <code>eu-central-1</code>
    #   ,
    #   <code>eu-north-1</code>
    #   ,
    #   <code>eu-south-1</code>
    #   ,
    #   <code>eu-west-1</code>
    #   ,
    #   <code>eu-west-2</code>
    #   ,
    #   <code>eu-west-3</code>
    #   ,
    #   <code>sa-east-1</code>
    #   ,
    #   <code>us-east-1</code>
    #   ,
    #   <code>us-east-2</code>
    #   ,
    #   <code>us-west-1</code>
    #   ,
    #   <code>us-west-2</code>
    #   .
    #   </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @option params [MeetingNotificationConfiguration] :notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    # @return [Types::CreateMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting(
    #     client_request_token: 'ClientRequestToken', # required
    #     external_meeting_id: 'ExternalMeetingId',
    #     meeting_host_id: 'MeetingHostId',
    #     media_region: 'MediaRegion',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     notifications_configuration: {
    #       sns_topic_arn: 'SnsTopicArn',
    #       sqs_queue_arn: 'SqsQueueArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMeetingOutput
    #   resp.data.meeting #=> Types::Meeting
    #   resp.data.meeting.meeting_id #=> String
    #   resp.data.meeting.external_meeting_id #=> String
    #   resp.data.meeting.media_placement #=> Types::MediaPlacement
    #   resp.data.meeting.media_placement.audio_host_url #=> String
    #   resp.data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.data.meeting.media_placement.screen_data_url #=> String
    #   resp.data.meeting.media_placement.screen_sharing_url #=> String
    #   resp.data.meeting.media_placement.screen_viewing_url #=> String
    #   resp.data.meeting.media_placement.signaling_url #=> String
    #   resp.data.meeting.media_placement.turn_control_url #=> String
    #   resp.data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.data.meeting.media_region #=> String
    #
    def create_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMeetingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMeeting
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMeeting,
        stubs: @stubs,
        params_class: Params::CreateMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uses the join token and call metadata in a meeting request (From number, To number, and so forth) to initiate an outbound call to a public
    #     switched telephone network (PSTN) and join them into a Chime meeting. Also ensures that the From number belongs to the customer.</p>
    #
    #          <p>To play welcome audio or implement an interactive voice response (IVR), use the
    # <code>CreateSipMediaApplicationCall</code> action with the corresponding SIP media application ID.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMeetingDialOutInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :from_phone_number
    #   <p>Phone number used as the caller ID when the remote party receives a call.</p>
    #
    # @option params [String] :to_phone_number
    #   <p>Phone number called when inviting someone to a meeting.</p>
    #
    # @option params [String] :join_token
    #   <p>Token used by the Amazon Chime SDK attendee. Call the <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html">CreateAttendee</a> action to get a join token.</p>
    #
    # @return [Types::CreateMeetingDialOutOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_dial_out(
    #     meeting_id: 'MeetingId', # required
    #     from_phone_number: 'FromPhoneNumber', # required
    #     to_phone_number: 'ToPhoneNumber', # required
    #     join_token: 'JoinToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMeetingDialOutOutput
    #   resp.data.transaction_id #=> String
    #
    def create_meeting_dial_out(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMeetingDialOutInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMeetingDialOutInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMeetingDialOut
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateMeetingDialOut
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMeetingDialOut,
        stubs: @stubs,
        params_class: Params::CreateMeetingDialOutOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_meeting_dial_out
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html">Amazon Chime SDK Media Regions</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>
    # . For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>
    # .
    # </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMeetingWithAttendeesInput}.
    #
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    # @option params [String] :external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    # @option params [String] :meeting_host_id
    #   <p>Reserved.</p>
    #
    # @option params [String] :media_region
    #   <p>
    #   The Region in which to create the meeting. Default: <code>us-east-1</code>
    #   .
    #   </p>
    #
    #            <p>
    #   Available values:
    #   <code>af-south-1</code>
    #   ,
    #   <code>ap-northeast-1</code>
    #   ,
    #   <code>ap-northeast-2</code>
    #   ,
    #   <code>ap-south-1</code>
    #   ,
    #   <code>ap-southeast-1</code>
    #   ,
    #   <code>ap-southeast-2</code>
    #   ,
    #   <code>ca-central-1</code>
    #   ,
    #   <code>eu-central-1</code>
    #   ,
    #   <code>eu-north-1</code>
    #   ,
    #   <code>eu-south-1</code>
    #   ,
    #   <code>eu-west-1</code>
    #   ,
    #   <code>eu-west-2</code>
    #   ,
    #   <code>eu-west-3</code>
    #   ,
    #   <code>sa-east-1</code>
    #   ,
    #   <code>us-east-1</code>
    #   ,
    #   <code>us-east-2</code>
    #   ,
    #   <code>us-west-1</code>
    #   ,
    #   <code>us-west-2</code>
    #   .
    #   </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @option params [MeetingNotificationConfiguration] :notifications_configuration
    #   <p> The resource target configurations for receiving Amazon Chime SDK meeting and attendee event
    #               notifications. The Amazon Chime SDK supports resource targets located in the US East (N.
    #               Virginia) AWS Region (<code>us-east-1</code>). </p>
    #
    # @option params [Array<CreateAttendeeRequestItem>] :attendees
    #   <p>The request containing the attendees to create.</p>
    #
    # @return [Types::CreateMeetingWithAttendeesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_with_attendees(
    #     client_request_token: 'ClientRequestToken', # required
    #     external_meeting_id: 'ExternalMeetingId',
    #     meeting_host_id: 'MeetingHostId',
    #     media_region: 'MediaRegion',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     notifications_configuration: {
    #       sns_topic_arn: 'SnsTopicArn',
    #       sqs_queue_arn: 'SqsQueueArn'
    #     },
    #     attendees: [
    #       {
    #         external_user_id: 'ExternalUserId', # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMeetingWithAttendeesOutput
    #   resp.data.meeting #=> Types::Meeting
    #   resp.data.meeting.meeting_id #=> String
    #   resp.data.meeting.external_meeting_id #=> String
    #   resp.data.meeting.media_placement #=> Types::MediaPlacement
    #   resp.data.meeting.media_placement.audio_host_url #=> String
    #   resp.data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.data.meeting.media_placement.screen_data_url #=> String
    #   resp.data.meeting.media_placement.screen_sharing_url #=> String
    #   resp.data.meeting.media_placement.screen_viewing_url #=> String
    #   resp.data.meeting.media_placement.signaling_url #=> String
    #   resp.data.meeting.media_placement.turn_control_url #=> String
    #   resp.data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.data.meeting.media_region #=> String
    #   resp.data.attendees #=> Array<Attendee>
    #   resp.data.attendees[0] #=> Types::Attendee
    #   resp.data.attendees[0].external_user_id #=> String
    #   resp.data.attendees[0].attendee_id #=> String
    #   resp.data.attendees[0].join_token #=> String
    #   resp.data.errors #=> Array<CreateAttendeeError>
    #   resp.data.errors[0] #=> Types::CreateAttendeeError
    #   resp.data.errors[0].external_user_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def create_meeting_with_attendees(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMeetingWithAttendeesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMeetingWithAttendeesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMeetingWithAttendees
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateMeetingWithAttendees
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMeetingWithAttendees,
        stubs: @stubs,
        params_class: Params::CreateMeetingWithAttendeesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_meeting_with_attendees
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an order for phone numbers to be provisioned. For toll-free numbers, you cannot use the Amazon Chime Business Calling product type.
    #         For numbers outside the U.S., you must use the Amazon Chime SIP Media Application Dial-In product type.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePhoneNumberOrderInput}.
    #
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    # @return [Types::CreatePhoneNumberOrderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_phone_number_order(
    #     product_type: 'BusinessCalling', # required - accepts ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #     e164_phone_numbers: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePhoneNumberOrderOutput
    #   resp.data.phone_number_order #=> Types::PhoneNumberOrder
    #   resp.data.phone_number_order.phone_number_order_id #=> String
    #   resp.data.phone_number_order.product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_number_order.status #=> String, one of ["Processing", "Successful", "Failed", "Partial"]
    #   resp.data.phone_number_order.ordered_phone_numbers #=> Array<OrderedPhoneNumber>
    #   resp.data.phone_number_order.ordered_phone_numbers[0] #=> Types::OrderedPhoneNumber
    #   resp.data.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.data.phone_number_order.ordered_phone_numbers[0].status #=> String, one of ["Processing", "Acquired", "Failed"]
    #   resp.data.phone_number_order.created_timestamp #=> Time
    #   resp.data.phone_number_order.updated_timestamp #=> Time
    #
    def create_phone_number_order(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePhoneNumberOrderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePhoneNumberOrderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePhoneNumberOrder
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreatePhoneNumberOrder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePhoneNumberOrder,
        stubs: @stubs,
        params_class: Params::CreatePhoneNumberOrderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_phone_number_order
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a proxy session on the specified Amazon Chime Voice Connector for the specified participant phone numbers.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProxySessionInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @option params [Array<String>] :participant_phone_numbers
    #   <p>The participant phone numbers.</p>
    #
    # @option params [String] :name
    #   <p>The name of the proxy session.</p>
    #
    # @option params [Integer] :expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>The proxy session capabilities.</p>
    #
    # @option params [String] :number_selection_behavior
    #   <p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>
    #
    # @option params [String] :geo_match_level
    #   <p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>
    #
    # @option params [GeoMatchParams] :geo_match_params
    #   <p>The country and area code for the proxy phone number.</p>
    #
    # @return [Types::CreateProxySessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_proxy_session(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     participant_phone_numbers: [
    #       'member'
    #     ], # required
    #     name: 'Name',
    #     expiry_minutes: 1,
    #     capabilities: [
    #       'Voice' # accepts ["Voice", "SMS"]
    #     ], # required
    #     number_selection_behavior: 'PreferSticky', # accepts ["PreferSticky", "AvoidSticky"]
    #     geo_match_level: 'Country', # accepts ["Country", "AreaCode"]
    #     geo_match_params: {
    #       country: 'Country', # required
    #       area_code: 'AreaCode' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProxySessionOutput
    #   resp.data.proxy_session #=> Types::ProxySession
    #   resp.data.proxy_session.voice_connector_id #=> String
    #   resp.data.proxy_session.proxy_session_id #=> String
    #   resp.data.proxy_session.name #=> String
    #   resp.data.proxy_session.status #=> String, one of ["Open", "InProgress", "Closed"]
    #   resp.data.proxy_session.expiry_minutes #=> Integer
    #   resp.data.proxy_session.capabilities #=> Array<String>
    #   resp.data.proxy_session.capabilities[0] #=> String, one of ["Voice", "SMS"]
    #   resp.data.proxy_session.created_timestamp #=> Time
    #   resp.data.proxy_session.updated_timestamp #=> Time
    #   resp.data.proxy_session.ended_timestamp #=> Time
    #   resp.data.proxy_session.participants #=> Array<Participant>
    #   resp.data.proxy_session.participants[0] #=> Types::Participant
    #   resp.data.proxy_session.participants[0].phone_number #=> String
    #   resp.data.proxy_session.participants[0].proxy_phone_number #=> String
    #   resp.data.proxy_session.number_selection_behavior #=> String, one of ["PreferSticky", "AvoidSticky"]
    #   resp.data.proxy_session.geo_match_level #=> String, one of ["Country", "AreaCode"]
    #   resp.data.proxy_session.geo_match_params #=> Types::GeoMatchParams
    #   resp.data.proxy_session.geo_match_params.country #=> String
    #   resp.data.proxy_session.geo_match_params.area_code #=> String
    #
    def create_proxy_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProxySessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProxySessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProxySession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateProxySession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProxySession,
        stubs: @stubs,
        params_class: Params::CreateProxySessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_proxy_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a chat room for the specified Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoomInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :name
    #   <p>The room name.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The idempotency token for the request.</p>
    #
    # @return [Types::CreateRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room(
    #     account_id: 'AccountId', # required
    #     name: 'Name', # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRoomOutput
    #   resp.data.room #=> Types::Room
    #   resp.data.room.room_id #=> String
    #   resp.data.room.name #=> String
    #   resp.data.room.account_id #=> String
    #   resp.data.room.created_by #=> String
    #   resp.data.room.created_timestamp #=> Time
    #   resp.data.room.updated_timestamp #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Adds a member to a chat room in an Amazon Chime Enterprise account. A member can be either a user or a bot. The member role designates whether the member is a chat room administrator or a general chat room member.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoomMembershipInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [String] :member_id
    #   <p>The Amazon Chime member ID (user ID or bot ID).</p>
    #
    # @option params [String] :role
    #   <p>The role of the member.</p>
    #
    # @return [Types::CreateRoomMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room_membership(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     member_id: 'MemberId', # required
    #     role: 'Administrator' # accepts ["Administrator", "Member"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRoomMembershipOutput
    #   resp.data.room_membership #=> Types::RoomMembership
    #   resp.data.room_membership.room_id #=> String
    #   resp.data.room_membership.member #=> Types::Member
    #   resp.data.room_membership.member.member_id #=> String
    #   resp.data.room_membership.member.member_type #=> String, one of ["User", "Bot", "Webhook"]
    #   resp.data.room_membership.member.email #=> String
    #   resp.data.room_membership.member.full_name #=> String
    #   resp.data.room_membership.member.account_id #=> String
    #   resp.data.room_membership.role #=> String, one of ["Administrator", "Member"]
    #   resp.data.room_membership.invited_by #=> String
    #   resp.data.room_membership.updated_timestamp #=> Time
    #
    def create_room_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoomMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoomMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoomMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateRoomMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoomMembership,
        stubs: @stubs,
        params_class: Params::CreateRoomMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_room_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a SIP media application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSipMediaApplicationInput}.
    #
    # @option params [String] :aws_region
    #   <p>The AWS Region assigned to the SIP media application.</p>
    #
    # @option params [String] :name
    #   <p>The SIP media application name.</p>
    #
    # @option params [Array<SipMediaApplicationEndpoint>] :endpoints
    #   <p>List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported.</p>
    #
    # @return [Types::CreateSipMediaApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sip_media_application(
    #     aws_region: 'AwsRegion', # required
    #     name: 'Name', # required
    #     endpoints: [
    #       {
    #         lambda_arn: 'LambdaArn'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSipMediaApplicationOutput
    #   resp.data.sip_media_application #=> Types::SipMediaApplication
    #   resp.data.sip_media_application.sip_media_application_id #=> String
    #   resp.data.sip_media_application.aws_region #=> String
    #   resp.data.sip_media_application.name #=> String
    #   resp.data.sip_media_application.endpoints #=> Array<SipMediaApplicationEndpoint>
    #   resp.data.sip_media_application.endpoints[0] #=> Types::SipMediaApplicationEndpoint
    #   resp.data.sip_media_application.endpoints[0].lambda_arn #=> String
    #   resp.data.sip_media_application.created_timestamp #=> Time
    #   resp.data.sip_media_application.updated_timestamp #=> Time
    #
    def create_sip_media_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSipMediaApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSipMediaApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSipMediaApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateSipMediaApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSipMediaApplication,
        stubs: @stubs,
        params_class: Params::CreateSipMediaApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sip_media_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an outbound call to a phone number from the phone number specified in the request, and it invokes the endpoint of the specified
    # <code>sipMediaApplicationId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSipMediaApplicationCallInput}.
    #
    # @option params [String] :from_phone_number
    #   <p>The phone number that a user calls from. This is a phone number in your Amazon Chime phone number inventory.</p>
    #
    # @option params [String] :to_phone_number
    #   <p>The phone number that the service should call.</p>
    #
    # @option params [String] :sip_media_application_id
    #   <p>The ID of the SIP media application.</p>
    #
    # @option params [Hash<String, String>] :sip_headers
    #   <p>The SIP headers added to an outbound call leg.</p>
    #
    # @return [Types::CreateSipMediaApplicationCallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sip_media_application_call(
    #     from_phone_number: 'FromPhoneNumber', # required
    #     to_phone_number: 'ToPhoneNumber', # required
    #     sip_media_application_id: 'SipMediaApplicationId', # required
    #     sip_headers: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSipMediaApplicationCallOutput
    #   resp.data.sip_media_application_call #=> Types::SipMediaApplicationCall
    #   resp.data.sip_media_application_call.transaction_id #=> String
    #
    def create_sip_media_application_call(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSipMediaApplicationCallInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSipMediaApplicationCallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSipMediaApplicationCall
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateSipMediaApplicationCall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSipMediaApplicationCall,
        stubs: @stubs,
        params_class: Params::CreateSipMediaApplicationCallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sip_media_application_call
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a SIP rule which can be used to run a SIP media application as a target for a specific trigger type.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSipRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SIP rule.</p>
    #
    # @option params [String] :trigger_type
    #   <p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, currently <code>RequestUriHostname</code> or <code>ToPhoneNumber</code>.</p>
    #
    # @option params [String] :trigger_value
    #   <p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, the value can be the outbound
    #               host name of an Amazon Chime Voice Connector. If <code>TriggerType</code> is
    #                   <code>ToPhoneNumber</code>, the value can be a customer-owned phone number in the
    #       E164 format. The <code>SipMediaApplication</code> specified in the <code>SipRule</code> is triggered if the request URI in an incoming SIP
    #       request matches the <code>RequestUriHostname</code>, or if the <code>To</code> header in the incoming SIP request matches the
    #       <code>ToPhoneNumber</code> value.</p>
    #
    # @option params [Boolean] :disabled
    #   <p>Enables or disables a rule. You must disable rules before you can delete them.</p>
    #
    # @option params [Array<SipRuleTargetApplication>] :target_applications
    #   <p>List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used.</p>
    #
    # @return [Types::CreateSipRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sip_rule(
    #     name: 'Name', # required
    #     trigger_type: 'ToPhoneNumber', # required - accepts ["ToPhoneNumber", "RequestUriHostname"]
    #     trigger_value: 'TriggerValue', # required
    #     disabled: false,
    #     target_applications: [
    #       {
    #         sip_media_application_id: 'SipMediaApplicationId',
    #         priority: 1,
    #         aws_region: 'AwsRegion'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSipRuleOutput
    #   resp.data.sip_rule #=> Types::SipRule
    #   resp.data.sip_rule.sip_rule_id #=> String
    #   resp.data.sip_rule.name #=> String
    #   resp.data.sip_rule.disabled #=> Boolean
    #   resp.data.sip_rule.trigger_type #=> String, one of ["ToPhoneNumber", "RequestUriHostname"]
    #   resp.data.sip_rule.trigger_value #=> String
    #   resp.data.sip_rule.target_applications #=> Array<SipRuleTargetApplication>
    #   resp.data.sip_rule.target_applications[0] #=> Types::SipRuleTargetApplication
    #   resp.data.sip_rule.target_applications[0].sip_media_application_id #=> String
    #   resp.data.sip_rule.target_applications[0].priority #=> Integer
    #   resp.data.sip_rule.target_applications[0].aws_region #=> String
    #   resp.data.sip_rule.created_timestamp #=> Time
    #   resp.data.sip_rule.updated_timestamp #=> Time
    #
    def create_sip_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSipRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSipRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSipRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateSipRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSipRule,
        stubs: @stubs,
        params_class: Params::CreateSipRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sip_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user under the specified Amazon Chime account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :username
    #   <p>The user name.</p>
    #
    # @option params [String] :email
    #   <p>The user's email address.</p>
    #
    # @option params [String] :user_type
    #   <p>The user type.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     account_id: 'AccountId', # required
    #     username: 'Username',
    #     email: 'Email',
    #     user_type: 'PrivateUser' # accepts ["PrivateUser", "SharedDevice"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.user_id #=> String
    #   resp.data.user.account_id #=> String
    #   resp.data.user.primary_email #=> String
    #   resp.data.user.primary_provisioned_number #=> String
    #   resp.data.user.display_name #=> String
    #   resp.data.user.license_type #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.user.user_type #=> String, one of ["PrivateUser", "SharedDevice"]
    #   resp.data.user.user_registration_status #=> String, one of ["Unregistered", "Registered", "Suspended"]
    #   resp.data.user.user_invitation_status #=> String, one of ["Pending", "Accepted", "Failed"]
    #   resp.data.user.registered_on #=> Time
    #   resp.data.user.invited_on #=> Time
    #   resp.data.user.alexa_for_business_metadata #=> Types::AlexaForBusinessMetadata
    #   resp.data.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.data.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.data.user.personal_pin #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Creates an Amazon Chime Voice Connector under the administrator's AWS account. You can choose to create an Amazon Chime Voice Connector in a specific AWS Region.</p>
    #
    #          <p>
    # Enabling
    # <a>CreateVoiceConnectorRequest$RequireEncryption</a>
    # configures your Amazon Chime Voice Connector to use TLS transport for SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and unencrypted outbound calls are blocked.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::CreateVoiceConnectorInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon Chime Voice Connector.</p>
    #
    # @option params [String] :aws_region
    #   <p>
    #   The AWS Region in which the Amazon Chime Voice Connector is created. Default value:
    #   <code>us-east-1</code>
    #   .
    #   </p>
    #
    # @option params [Boolean] :require_encryption
    #   <p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>
    #
    # @return [Types::CreateVoiceConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_connector(
    #     name: 'Name', # required
    #     aws_region: 'us-east-1', # accepts ["us-east-1", "us-west-2"]
    #     require_encryption: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVoiceConnectorOutput
    #   resp.data.voice_connector #=> Types::VoiceConnector
    #   resp.data.voice_connector.voice_connector_id #=> String
    #   resp.data.voice_connector.aws_region #=> String, one of ["us-east-1", "us-west-2"]
    #   resp.data.voice_connector.name #=> String
    #   resp.data.voice_connector.outbound_host_name #=> String
    #   resp.data.voice_connector.require_encryption #=> Boolean
    #   resp.data.voice_connector.created_timestamp #=> Time
    #   resp.data.voice_connector.updated_timestamp #=> Time
    #   resp.data.voice_connector.voice_connector_arn #=> String
    #
    def create_voice_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVoiceConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVoiceConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVoiceConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateVoiceConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVoiceConnector,
        stubs: @stubs,
        params_class: Params::CreateVoiceConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_voice_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can
    #             associate Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by
    #             including <code>VoiceConnectorItems</code> in the request.</p>
    #          <p>You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This
    #             creates a fault tolerant mechanism for fallback in case of availability events.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVoiceConnectorGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon Chime Voice Connector group.</p>
    #
    # @option params [Array<VoiceConnectorItem>] :voice_connector_items
    #   <p>The Amazon Chime Voice Connectors to route inbound calls to.</p>
    #
    # @return [Types::CreateVoiceConnectorGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_connector_group(
    #     name: 'Name', # required
    #     voice_connector_items: [
    #       {
    #         voice_connector_id: 'VoiceConnectorId', # required
    #         priority: 1 # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVoiceConnectorGroupOutput
    #   resp.data.voice_connector_group #=> Types::VoiceConnectorGroup
    #   resp.data.voice_connector_group.voice_connector_group_id #=> String
    #   resp.data.voice_connector_group.name #=> String
    #   resp.data.voice_connector_group.voice_connector_items #=> Array<VoiceConnectorItem>
    #   resp.data.voice_connector_group.voice_connector_items[0] #=> Types::VoiceConnectorItem
    #   resp.data.voice_connector_group.voice_connector_items[0].voice_connector_id #=> String
    #   resp.data.voice_connector_group.voice_connector_items[0].priority #=> Integer
    #   resp.data.voice_connector_group.created_timestamp #=> Time
    #   resp.data.voice_connector_group.updated_timestamp #=> Time
    #   resp.data.voice_connector_group.voice_connector_group_arn #=> String
    #
    def create_voice_connector_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVoiceConnectorGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVoiceConnectorGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVoiceConnectorGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::CreateVoiceConnectorGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVoiceConnectorGroup,
        stubs: @stubs,
        params_class: Params::CreateVoiceConnectorGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_voice_connector_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Chime account. You must suspend all users before deleting
    #                 <code>Team</code> account. You can use the <a>BatchSuspendUser</a> action
    #             to dodo.</p>
    #
    #          <p>For <code>EnterpriseLWA</code> and <code>EnterpriseAD</code> accounts, you must release the
    #             claimed domains for your Amazon Chime account before deletion. As soon as you release
    #             the domain, all users under that account are suspended.</p>
    #
    #          <p>Deleted accounts appear in your <code>Disabled</code> accounts list for 90 days. To restore
    #             deleted account from your <code>Disabled</code> accounts list, you must contact AWS
    #             Support.</p>
    #
    #          <p>After 90 days, deleted accounts are permanently removed from your
    # <code>Disabled</code> accounts list.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @return [Types::DeleteAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountOutput
    #
    def delete_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnprocessableEntityException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccount,
        stubs: @stubs,
        params_class: Params::DeleteAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an <code>AppInstance</code> and all associated data asynchronously.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DeleteAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceOutput
    #
    def delete_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstance,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Demotes an <code>AppInstanceAdmin</code> to an <code>AppInstanceUser</code>. This action does not delete the user.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceAdminInput}.
    #
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstance</code>'s administrator.</p>
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DeleteAppInstanceAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_admin(
    #     app_instance_admin_arn: 'AppInstanceAdminArn', # required
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceAdminOutput
    #
    def delete_app_instance_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstanceAdmin
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteAppInstanceAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstanceAdmin,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the streaming configurations of an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceStreamingConfigurationsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the streaming configurations being deleted.</p>
    #
    # @return [Types::DeleteAppInstanceStreamingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_streaming_configurations(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceStreamingConfigurationsOutput
    #
    def delete_app_instance_streaming_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceStreamingConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceStreamingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstanceStreamingConfigurations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteAppInstanceStreamingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstanceStreamingConfigurations,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceStreamingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance_streaming_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an <code>AppInstanceUser</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user request being deleted.</p>
    #
    # @return [Types::DeleteAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceUserOutput
    #
    def delete_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their
    # <code>JoinToken</code>. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @return [Types::DeleteAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAttendeeOutput
    #
    def delete_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAttendeeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAttendee
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAttendee,
        stubs: @stubs,
        params_class: Params::DeleteAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Immediately makes a channel and its memberships inaccessible and marks them for
    #          deletion. This is an irreversible process.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel being deleted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel(
    #     channel_arn: 'ChannelArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelOutput
    #
    def delete_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannel,
        stubs: @stubs,
        params_class: Params::DeleteChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a user from a channel's ban list.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelBanInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelBanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_ban(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelBanOutput
    #
    def delete_channel_ban(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelBanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelBanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelBan
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteChannelBan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelBan,
        stubs: @stubs,
        params_class: Params::DeleteChannelBanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_ban
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a member from a channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which you want to remove the user.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the member that you're removing from the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelMembershipOutput
    #
    def delete_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelMembership,
        stubs: @stubs,
        params_class: Params::DeleteChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a channel message. Only admins can perform this action. Deletion makes messages
    #          inaccessible immediately. A background process deletes any revisions created by
    #             <code>UpdateChannelMessage</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message being deleted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelMessageOutput
    #
    def delete_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelMessage,
        stubs: @stubs,
        params_class: Params::DeleteChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a channel moderator.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelModeratorInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_moderator_arn
    #   <p>The ARN of the moderator being deleted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelModeratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_moderator(
    #     channel_arn: 'ChannelArn', # required
    #     channel_moderator_arn: 'ChannelModeratorArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelModeratorOutput
    #
    def delete_channel_moderator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelModeratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelModeratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelModerator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteChannelModerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelModerator,
        stubs: @stubs,
        params_class: Params::DeleteChannelModeratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_moderator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the events configuration that allows a bot to receive outgoing events.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventsConfigurationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    #
    # @return [Types::DeleteEventsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_events_configuration(
    #     account_id: 'AccountId', # required
    #     bot_id: 'BotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventsConfigurationOutput
    #
    def delete_events_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventsConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventsConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventsConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::UnauthorizedClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteEventsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventsConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteEventsConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_events_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMediaCapturePipelineInput}.
    #
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the media capture pipeline being deleted. </p>
    #
    # @return [Types::DeleteMediaCapturePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_capture_pipeline(
    #     media_pipeline_id: 'MediaPipelineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMediaCapturePipelineOutput
    #
    def delete_media_capture_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMediaCapturePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMediaCapturePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMediaCapturePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteMediaCapturePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMediaCapturePipeline,
        stubs: @stubs,
        params_class: Params::DeleteMediaCapturePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_media_capture_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees, disconnects all clients, and prevents new clients from
    #     joining the meeting. For more information about the Amazon Chime SDK, see
    #     <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a> in the
    #     <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMeetingInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @return [Types::DeleteMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_meeting(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMeetingOutput
    #
    def delete_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMeetingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMeeting
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMeeting,
        stubs: @stubs,
        params_class: Params::DeleteMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves the specified phone number into the <b>Deletion queue</b>. A
    #             phone number must be disassociated from any users or Amazon Chime Voice Connectors
    #             before it can be deleted.</p>
    #
    #          <p>Deleted phone numbers remain in the
    # <b>Deletion queue</b>
    # for 7 days before they are deleted permanently.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    #
    # @return [Types::DeletePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_phone_number(
    #     phone_number_id: 'PhoneNumberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePhoneNumberOutput
    #
    def delete_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeletePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePhoneNumber,
        stubs: @stubs,
        params_class: Params::DeletePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified proxy session from the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProxySessionInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @option params [String] :proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    # @return [Types::DeleteProxySessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_proxy_session(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     proxy_session_id: 'ProxySessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProxySessionOutput
    #
    def delete_proxy_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProxySessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProxySessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProxySession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteProxySession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProxySession,
        stubs: @stubs,
        params_class: Params::DeleteProxySessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_proxy_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a chat room in an Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoomInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The chat room ID.</p>
    #
    # @return [Types::DeleteRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Removes a member from a chat room in an Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoomMembershipInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [String] :member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #
    # @return [Types::DeleteRoomMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room_membership(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     member_id: 'MemberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoomMembershipOutput
    #
    def delete_room_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoomMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoomMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoomMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteRoomMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoomMembership,
        stubs: @stubs,
        params_class: Params::DeleteRoomMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_room_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a SIP media application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSipMediaApplicationInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    # @return [Types::DeleteSipMediaApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sip_media_application(
    #     sip_media_application_id: 'SipMediaApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSipMediaApplicationOutput
    #
    def delete_sip_media_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSipMediaApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSipMediaApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSipMediaApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteSipMediaApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSipMediaApplication,
        stubs: @stubs,
        params_class: Params::DeleteSipMediaApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sip_media_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a SIP rule. You must disable a SIP rule before you can delete it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSipRuleInput}.
    #
    # @option params [String] :sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    # @return [Types::DeleteSipRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sip_rule(
    #     sip_rule_id: 'SipRuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSipRuleOutput
    #
    def delete_sip_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSipRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSipRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSipRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteSipRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSipRule,
        stubs: @stubs,
        params_class: Params::DeleteSipRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sip_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Chime Voice Connector. Any phone numbers associated with the
    #             Amazon Chime Voice Connector must be disassociated from it before it can be
    #             deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorOutput
    #
    def delete_voice_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnector,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the emergency calling configuration details from the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorEmergencyCallingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorEmergencyCallingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_emergency_calling_configuration(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorEmergencyCallingConfigurationOutput
    #
    def delete_voice_connector_emergency_calling_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorEmergencyCallingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorEmergencyCallingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorEmergencyCallingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorEmergencyCallingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorEmergencyCallingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorEmergencyCallingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_emergency_calling_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Chime Voice Connector group. Any
    # <code>VoiceConnectorItems</code>
    # and phone numbers associated with the group must be removed before it can be deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorGroupInput}.
    #
    # @option params [String] :voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_group(
    #     voice_connector_group_id: 'VoiceConnectorGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorGroupOutput
    #
    def delete_voice_connector_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorGroup,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the origination settings for the specified Amazon Chime Voice Connector.</p>
    #
    #          <note>
    #             <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to deleting the origination settings.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorOriginationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorOriginationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_origination(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorOriginationOutput
    #
    def delete_voice_connector_origination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorOriginationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorOriginationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorOrigination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorOrigination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorOrigination,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorOriginationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_origination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the proxy configuration from the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorProxyInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorProxyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_proxy(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorProxyOutput
    #
    def delete_voice_connector_proxy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorProxyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorProxyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorProxy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorProxy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorProxy,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorProxyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_proxy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the streaming configuration for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorStreamingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorStreamingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_streaming_configuration(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorStreamingConfigurationOutput
    #
    def delete_voice_connector_streaming_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorStreamingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorStreamingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorStreamingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorStreamingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorStreamingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorStreamingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_streaming_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the termination settings for the specified Amazon Chime Voice Connector.</p>
    #
    #          <note>
    #             <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to deleting the termination settings.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorTerminationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::DeleteVoiceConnectorTerminationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorTerminationOutput
    #
    def delete_voice_connector_termination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorTerminationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorTerminationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorTermination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorTermination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorTermination,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorTerminationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_termination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified SIP credentials used by your equipment to authenticate during call termination.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceConnectorTerminationCredentialsInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [Array<String>] :usernames
    #   <p>The RFC2617 compliant username associated with the SIP credentials, in US-ASCII format.</p>
    #
    # @return [Types::DeleteVoiceConnectorTerminationCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination_credentials(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     usernames: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceConnectorTerminationCredentialsOutput
    #
    def delete_voice_connector_termination_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceConnectorTerminationCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceConnectorTerminationCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceConnectorTerminationCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DeleteVoiceConnectorTerminationCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceConnectorTerminationCredentials,
        stubs: @stubs,
        params_class: Params::DeleteVoiceConnectorTerminationCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_connector_termination_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DescribeAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceOutput
    #   resp.data.app_instance #=> Types::AppInstance
    #   resp.data.app_instance.app_instance_arn #=> String
    #   resp.data.app_instance.name #=> String
    #   resp.data.app_instance.metadata #=> String
    #   resp.data.app_instance.created_timestamp #=> Time
    #   resp.data.app_instance.last_updated_timestamp #=> Time
    #
    def describe_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstance,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstanceAdmin</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceAdminInput}.
    #
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstanceAdmin</code>.</p>
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DescribeAppInstanceAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_admin(
    #     app_instance_admin_arn: 'AppInstanceAdminArn', # required
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceAdminOutput
    #   resp.data.app_instance_admin #=> Types::AppInstanceAdmin
    #   resp.data.app_instance_admin.admin #=> Types::Identity
    #   resp.data.app_instance_admin.admin.arn #=> String
    #   resp.data.app_instance_admin.admin.name #=> String
    #   resp.data.app_instance_admin.app_instance_arn #=> String
    #   resp.data.app_instance_admin.created_timestamp #=> Time
    #
    def describe_app_instance_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstanceAdmin
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeAppInstanceAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstanceAdmin,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstanceUser</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::DescribeAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceUserOutput
    #   resp.data.app_instance_user #=> Types::AppInstanceUser
    #   resp.data.app_instance_user.app_instance_user_arn #=> String
    #   resp.data.app_instance_user.name #=> String
    #   resp.data.app_instance_user.created_timestamp #=> Time
    #   resp.data.app_instance_user.metadata #=> String
    #   resp.data.app_instance_user.last_updated_timestamp #=> Time
    #
    def describe_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel in an Amazon Chime
    #          <code>AppInstance</code>.</p>
    #
    #          <note>
    #
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel(
    #     channel_arn: 'ChannelArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelOutput
    #   resp.data.channel #=> Types::Channel
    #   resp.data.channel.name #=> String
    #   resp.data.channel.channel_arn #=> String
    #   resp.data.channel.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel.metadata #=> String
    #   resp.data.channel.created_by #=> Types::Identity
    #   resp.data.channel.created_by.arn #=> String
    #   resp.data.channel.created_by.name #=> String
    #   resp.data.channel.created_timestamp #=> Time
    #   resp.data.channel.last_message_timestamp #=> Time
    #   resp.data.channel.last_updated_timestamp #=> Time
    #
    def describe_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannel,
        stubs: @stubs,
        params_class: Params::DescribeChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel ban.</p>
    #
    #          <note>
    #
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelBanInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which the user is banned.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the member being banned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelBanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_ban(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelBanOutput
    #   resp.data.channel_ban #=> Types::ChannelBan
    #   resp.data.channel_ban.member #=> Types::Identity
    #   resp.data.channel_ban.member.arn #=> String
    #   resp.data.channel_ban.member.name #=> String
    #   resp.data.channel_ban.channel_arn #=> String
    #   resp.data.channel_ban.created_timestamp #=> Time
    #   resp.data.channel_ban.created_by #=> Types::Identity
    #
    def describe_channel_ban(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelBanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelBanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelBan
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeChannelBan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelBan,
        stubs: @stubs,
        params_class: Params::DescribeChannelBanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_ban
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a user's channel membership.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the member.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelMembershipOutput
    #   resp.data.channel_membership #=> Types::ChannelMembership
    #   resp.data.channel_membership.invited_by #=> Types::Identity
    #   resp.data.channel_membership.invited_by.arn #=> String
    #   resp.data.channel_membership.invited_by.name #=> String
    #   resp.data.channel_membership.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.channel_membership.member #=> Types::Identity
    #   resp.data.channel_membership.channel_arn #=> String
    #   resp.data.channel_membership.created_timestamp #=> Time
    #   resp.data.channel_membership.last_updated_timestamp #=> Time
    #
    def describe_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelMembership,
        stubs: @stubs,
        params_class: Params::DescribeChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the details of a channel based on the membership of the specified
    #             <code>AppInstanceUser</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelMembershipForAppInstanceUserInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which the user belongs.</p>
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user in a channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelMembershipForAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership_for_app_instance_user(
    #     channel_arn: 'ChannelArn', # required
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelMembershipForAppInstanceUserOutput
    #   resp.data.channel_membership #=> Types::ChannelMembershipForAppInstanceUserSummary
    #   resp.data.channel_membership.channel_summary #=> Types::ChannelSummary
    #   resp.data.channel_membership.channel_summary.name #=> String
    #   resp.data.channel_membership.channel_summary.channel_arn #=> String
    #   resp.data.channel_membership.channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel_membership.channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel_membership.channel_summary.metadata #=> String
    #   resp.data.channel_membership.channel_summary.last_message_timestamp #=> Time
    #   resp.data.channel_membership.app_instance_user_membership_summary #=> Types::AppInstanceUserMembershipSummary
    #   resp.data.channel_membership.app_instance_user_membership_summary.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.channel_membership.app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #
    def describe_channel_membership_for_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelMembershipForAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelMembershipForAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelMembershipForAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeChannelMembershipForAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelMembershipForAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DescribeChannelMembershipForAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_membership_for_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel moderated by the specified
    #             <code>AppInstanceUser</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelModeratedByAppInstanceUserInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the moderated channel.</p>
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> in the moderated channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelModeratedByAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderated_by_app_instance_user(
    #     channel_arn: 'ChannelArn', # required
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelModeratedByAppInstanceUserOutput
    #   resp.data.channel #=> Types::ChannelModeratedByAppInstanceUserSummary
    #   resp.data.channel.channel_summary #=> Types::ChannelSummary
    #   resp.data.channel.channel_summary.name #=> String
    #   resp.data.channel.channel_summary.channel_arn #=> String
    #   resp.data.channel.channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel.channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel.channel_summary.metadata #=> String
    #   resp.data.channel.channel_summary.last_message_timestamp #=> Time
    #
    def describe_channel_moderated_by_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelModeratedByAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelModeratedByAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelModeratedByAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeChannelModeratedByAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelModeratedByAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DescribeChannelModeratedByAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_moderated_by_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a single ChannelModerator.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelModeratorInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_moderator_arn
    #   <p>The ARN of the channel moderator.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelModeratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderator(
    #     channel_arn: 'ChannelArn', # required
    #     channel_moderator_arn: 'ChannelModeratorArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelModeratorOutput
    #   resp.data.channel_moderator #=> Types::ChannelModerator
    #   resp.data.channel_moderator.moderator #=> Types::Identity
    #   resp.data.channel_moderator.moderator.arn #=> String
    #   resp.data.channel_moderator.moderator.name #=> String
    #   resp.data.channel_moderator.channel_arn #=> String
    #   resp.data.channel_moderator.created_timestamp #=> Time
    #   resp.data.channel_moderator.created_by #=> Types::Identity
    #
    def describe_channel_moderator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelModeratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelModeratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelModerator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DescribeChannelModerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelModerator,
        stubs: @stubs,
        params_class: Params::DescribeChannelModeratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_moderator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the primary provisioned phone number from the specified Amazon Chime user.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePhoneNumberFromUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @return [Types::DisassociatePhoneNumberFromUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_from_user(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePhoneNumberFromUserOutput
    #
    def disassociate_phone_number_from_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePhoneNumberFromUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePhoneNumberFromUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePhoneNumberFromUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DisassociatePhoneNumberFromUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePhoneNumberFromUser,
        stubs: @stubs,
        params_class: Params::DisassociatePhoneNumberFromUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_phone_number_from_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePhoneNumbersFromVoiceConnectorInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_numbers_from_voice_connector(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     e164_phone_numbers: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePhoneNumbersFromVoiceConnectorOutput
    #   resp.data.phone_number_errors #=> Array<PhoneNumberError>
    #   resp.data.phone_number_errors[0] #=> Types::PhoneNumberError
    #   resp.data.phone_number_errors[0].phone_number_id #=> String
    #   resp.data.phone_number_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.phone_number_errors[0].error_message #=> String
    #
    def disassociate_phone_numbers_from_voice_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePhoneNumbersFromVoiceConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePhoneNumbersFromVoiceConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePhoneNumbersFromVoiceConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DisassociatePhoneNumbersFromVoiceConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePhoneNumbersFromVoiceConnector,
        stubs: @stubs,
        params_class: Params::DisassociatePhoneNumbersFromVoiceConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_phone_numbers_from_voice_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector group.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePhoneNumbersFromVoiceConnectorGroupInput}.
    #
    # @option params [String] :voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_numbers_from_voice_connector_group(
    #     voice_connector_group_id: 'VoiceConnectorGroupId', # required
    #     e164_phone_numbers: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput
    #   resp.data.phone_number_errors #=> Array<PhoneNumberError>
    #   resp.data.phone_number_errors[0] #=> Types::PhoneNumberError
    #   resp.data.phone_number_errors[0].phone_number_id #=> String
    #   resp.data.phone_number_errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.phone_number_errors[0].error_message #=> String
    #
    def disassociate_phone_numbers_from_voice_connector_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePhoneNumbersFromVoiceConnectorGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePhoneNumbersFromVoiceConnectorGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePhoneNumbersFromVoiceConnectorGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DisassociatePhoneNumbersFromVoiceConnectorGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePhoneNumbersFromVoiceConnectorGroup,
        stubs: @stubs,
        params_class: Params::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_phone_numbers_from_voice_connector_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified sign-in delegate groups from the specified Amazon Chime account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateSigninDelegateGroupsFromAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Array<String>] :group_names
    #   <p>The sign-in delegate group names.</p>
    #
    # @return [Types::DisassociateSigninDelegateGroupsFromAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_signin_delegate_groups_from_account(
    #     account_id: 'AccountId', # required
    #     group_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateSigninDelegateGroupsFromAccountOutput
    #
    def disassociate_signin_delegate_groups_from_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateSigninDelegateGroupsFromAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateSigninDelegateGroupsFromAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateSigninDelegateGroupsFromAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::DisassociateSigninDelegateGroupsFromAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateSigninDelegateGroupsFromAccount,
        stubs: @stubs,
        params_class: Params::DisassociateSigninDelegateGroupsFromAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_signin_delegate_groups_from_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for the specified Amazon Chime account, such as account type and supported
    #             licenses.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @return [Types::GetAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountOutput
    #   resp.data.account #=> Types::Account
    #   resp.data.account.aws_account_id #=> String
    #   resp.data.account.account_id #=> String
    #   resp.data.account.name #=> String
    #   resp.data.account.account_type #=> String, one of ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"]
    #   resp.data.account.created_timestamp #=> Time
    #   resp.data.account.default_license #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.account.supported_licenses #=> Array<String>
    #   resp.data.account.supported_licenses[0] #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.account.account_status #=> String, one of ["Suspended", "Active"]
    #   resp.data.account.signin_delegate_groups #=> Array<SigninDelegateGroup>
    #   resp.data.account.signin_delegate_groups[0] #=> Types::SigninDelegateGroup
    #   resp.data.account.signin_delegate_groups[0].group_name #=> String
    #
    def get_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccount,
        stubs: @stubs,
        params_class: Params::GetAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves account settings for the specified Amazon Chime account ID, such as remote control
    #             and dialout settings. For more information about these settings, see
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountSettingsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @return [Types::GetAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_settings(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountSettingsOutput
    #   resp.data.account_settings #=> Types::AccountSettings
    #   resp.data.account_settings.disable_remote_control #=> Boolean
    #   resp.data.account_settings.enable_dial_out #=> Boolean
    #
    def get_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountSettings,
        stubs: @stubs,
        params_class: Params::GetAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the retention settings for an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppInstanceRetentionSettingsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::GetAppInstanceRetentionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_instance_retention_settings(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppInstanceRetentionSettingsOutput
    #   resp.data.app_instance_retention_settings #=> Types::AppInstanceRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings #=> Types::ChannelRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.data.initiate_deletion_timestamp #=> Time
    #
    def get_app_instance_retention_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppInstanceRetentionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppInstanceRetentionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppInstanceRetentionSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetAppInstanceRetentionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppInstanceRetentionSettings,
        stubs: @stubs,
        params_class: Params::GetAppInstanceRetentionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_instance_retention_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the streaming settings for an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppInstanceStreamingConfigurationsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::GetAppInstanceStreamingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_instance_streaming_configurations(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppInstanceStreamingConfigurationsOutput
    #   resp.data.app_instance_streaming_configurations #=> Array<AppInstanceStreamingConfiguration>
    #   resp.data.app_instance_streaming_configurations[0] #=> Types::AppInstanceStreamingConfiguration
    #   resp.data.app_instance_streaming_configurations[0].app_instance_data_type #=> String, one of ["Channel", "ChannelMessage"]
    #   resp.data.app_instance_streaming_configurations[0].resource_arn #=> String
    #
    def get_app_instance_streaming_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppInstanceStreamingConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppInstanceStreamingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppInstanceStreamingConfigurations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetAppInstanceStreamingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppInstanceStreamingConfigurations,
        stubs: @stubs,
        params_class: Params::GetAppInstanceStreamingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_instance_streaming_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>
    # .
    # </p>
    #
    # @param [Hash] params
    #   See {Types::GetAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @return [Types::GetAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAttendeeOutput
    #   resp.data.attendee #=> Types::Attendee
    #   resp.data.attendee.external_user_id #=> String
    #   resp.data.attendee.attendee_id #=> String
    #   resp.data.attendee.join_token #=> String
    #
    def get_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAttendeeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAttendee
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAttendee,
        stubs: @stubs,
        params_class: Params::GetAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    #
    # @return [Types::GetBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot(
    #     account_id: 'AccountId', # required
    #     bot_id: 'BotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotOutput
    #   resp.data.bot #=> Types::Bot
    #   resp.data.bot.bot_id #=> String
    #   resp.data.bot.user_id #=> String
    #   resp.data.bot.display_name #=> String
    #   resp.data.bot.bot_type #=> String, one of ["ChatBot"]
    #   resp.data.bot.disabled #=> Boolean
    #   resp.data.bot.created_timestamp #=> Time
    #   resp.data.bot.updated_timestamp #=> Time
    #   resp.data.bot.bot_email #=> String
    #   resp.data.bot.security_token #=> String
    #
    def get_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBot,
        stubs: @stubs,
        params_class: Params::GetBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the full details of a channel message.</p>
    #
    #          <note>
    #             <p>The x-amz-chime-bearer request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::GetChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelMessageOutput
    #   resp.data.channel_message #=> Types::ChannelMessage
    #   resp.data.channel_message.channel_arn #=> String
    #   resp.data.channel_message.message_id #=> String
    #   resp.data.channel_message.content #=> String
    #   resp.data.channel_message.metadata #=> String
    #   resp.data.channel_message.type #=> String, one of ["STANDARD", "CONTROL"]
    #   resp.data.channel_message.created_timestamp #=> Time
    #   resp.data.channel_message.last_edited_timestamp #=> Time
    #   resp.data.channel_message.last_updated_timestamp #=> Time
    #   resp.data.channel_message.sender #=> Types::Identity
    #   resp.data.channel_message.sender.arn #=> String
    #   resp.data.channel_message.sender.name #=> String
    #   resp.data.channel_message.redacted #=> Boolean
    #   resp.data.channel_message.persistence #=> String, one of ["PERSISTENT", "NON_PERSISTENT"]
    #
    def get_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannelMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannelMessage,
        stubs: @stubs,
        params_class: Params::GetChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventsConfigurationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    #
    # @return [Types::GetEventsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_events_configuration(
    #     account_id: 'AccountId', # required
    #     bot_id: 'BotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventsConfigurationOutput
    #   resp.data.events_configuration #=> Types::EventsConfiguration
    #   resp.data.events_configuration.bot_id #=> String
    #   resp.data.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.data.events_configuration.lambda_function_arn #=> String
    #
    def get_events_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventsConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventsConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventsConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetEventsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventsConfiguration,
        stubs: @stubs,
        params_class: Params::GetEventsConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_events_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business
    #             Calling and Amazon Chime Voice Connector settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGlobalSettingsInput}.
    #
    # @return [Types::GetGlobalSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_global_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGlobalSettingsOutput
    #   resp.data.business_calling #=> Types::BusinessCallingSettings
    #   resp.data.business_calling.cdr_bucket #=> String
    #   resp.data.voice_connector #=> Types::VoiceConnectorSettings
    #   resp.data.voice_connector.cdr_bucket #=> String
    #
    def get_global_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGlobalSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGlobalSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGlobalSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetGlobalSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGlobalSettings,
        stubs: @stubs,
        params_class: Params::GetGlobalSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_global_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an existing media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMediaCapturePipelineInput}.
    #
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    #
    # @return [Types::GetMediaCapturePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_capture_pipeline(
    #     media_pipeline_id: 'MediaPipelineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMediaCapturePipelineOutput
    #   resp.data.media_capture_pipeline #=> Types::MediaCapturePipeline
    #   resp.data.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.data.media_capture_pipeline.source_type #=> String, one of ["ChimeSdkMeeting"]
    #   resp.data.media_capture_pipeline.source_arn #=> String
    #   resp.data.media_capture_pipeline.status #=> String, one of ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #   resp.data.media_capture_pipeline.sink_type #=> String, one of ["S3Bucket"]
    #   resp.data.media_capture_pipeline.sink_arn #=> String
    #   resp.data.media_capture_pipeline.created_timestamp #=> Time
    #   resp.data.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration #=> Types::ChimeSdkMeetingConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration #=> Types::SourceConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams #=> Types::SelectedVideoStreams
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration #=> Types::ArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio #=> Types::AudioArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video #=> Types::VideoArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of ["VideoOnly"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content #=> Types::ContentArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of ["ContentOnly"]
    #
    def get_media_capture_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMediaCapturePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMediaCapturePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMediaCapturePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetMediaCapturePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMediaCapturePipeline,
        stubs: @stubs,
        params_class: Params::GetMediaCapturePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_media_capture_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the
    # <i>Amazon Chime Developer Guide</i>
    # .
    # </p>
    #
    # @param [Hash] params
    #   See {Types::GetMeetingInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @return [Types::GetMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_meeting(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMeetingOutput
    #   resp.data.meeting #=> Types::Meeting
    #   resp.data.meeting.meeting_id #=> String
    #   resp.data.meeting.external_meeting_id #=> String
    #   resp.data.meeting.media_placement #=> Types::MediaPlacement
    #   resp.data.meeting.media_placement.audio_host_url #=> String
    #   resp.data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.data.meeting.media_placement.screen_data_url #=> String
    #   resp.data.meeting.media_placement.screen_sharing_url #=> String
    #   resp.data.meeting.media_placement.screen_viewing_url #=> String
    #   resp.data.meeting.media_placement.signaling_url #=> String
    #   resp.data.meeting.media_placement.turn_control_url #=> String
    #   resp.data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.data.meeting.media_region #=> String
    #
    def get_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMeetingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMeeting
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMeeting,
        stubs: @stubs,
        params_class: Params::GetMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The details of the endpoint for the messaging session.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMessagingSessionEndpointInput}.
    #
    # @return [Types::GetMessagingSessionEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_messaging_session_endpoint()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMessagingSessionEndpointOutput
    #   resp.data.endpoint #=> Types::MessagingSessionEndpoint
    #   resp.data.endpoint.url #=> String
    #
    def get_messaging_session_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMessagingSessionEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMessagingSessionEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMessagingSessionEndpoint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetMessagingSessionEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMessagingSessionEndpoint,
        stubs: @stubs,
        params_class: Params::GetMessagingSessionEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_messaging_session_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    #
    # @return [Types::GetPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number(
    #     phone_number_id: 'PhoneNumberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPhoneNumberOutput
    #   resp.data.phone_number #=> Types::PhoneNumber
    #   resp.data.phone_number.phone_number_id #=> String
    #   resp.data.phone_number.e164_phone_number #=> String
    #   resp.data.phone_number.country #=> String
    #   resp.data.phone_number.type #=> String, one of ["Local", "TollFree"]
    #   resp.data.phone_number.product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_number.status #=> String, one of ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #   resp.data.phone_number.capabilities #=> Types::PhoneNumberCapabilities
    #   resp.data.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.data.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.data.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.data.phone_number.associations #=> Array<PhoneNumberAssociation>
    #   resp.data.phone_number.associations[0] #=> Types::PhoneNumberAssociation
    #   resp.data.phone_number.associations[0].value #=> String
    #   resp.data.phone_number.associations[0].name #=> String, one of ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #   resp.data.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.data.phone_number.calling_name #=> String
    #   resp.data.phone_number.calling_name_status #=> String, one of ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"]
    #   resp.data.phone_number.created_timestamp #=> Time
    #   resp.data.phone_number.updated_timestamp #=> Time
    #   resp.data.phone_number.deletion_timestamp #=> Time
    #
    def get_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPhoneNumber,
        stubs: @stubs,
        params_class: Params::GetPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for the specified phone number order, such as the order creation timestamp, phone
    #             numbers in E.164 format, product type, and order status.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPhoneNumberOrderInput}.
    #
    # @option params [String] :phone_number_order_id
    #   <p>The ID for the phone number order.</p>
    #
    # @return [Types::GetPhoneNumberOrderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number_order(
    #     phone_number_order_id: 'PhoneNumberOrderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPhoneNumberOrderOutput
    #   resp.data.phone_number_order #=> Types::PhoneNumberOrder
    #   resp.data.phone_number_order.phone_number_order_id #=> String
    #   resp.data.phone_number_order.product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_number_order.status #=> String, one of ["Processing", "Successful", "Failed", "Partial"]
    #   resp.data.phone_number_order.ordered_phone_numbers #=> Array<OrderedPhoneNumber>
    #   resp.data.phone_number_order.ordered_phone_numbers[0] #=> Types::OrderedPhoneNumber
    #   resp.data.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.data.phone_number_order.ordered_phone_numbers[0].status #=> String, one of ["Processing", "Acquired", "Failed"]
    #   resp.data.phone_number_order.created_timestamp #=> Time
    #   resp.data.phone_number_order.updated_timestamp #=> Time
    #
    def get_phone_number_order(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPhoneNumberOrderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPhoneNumberOrderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPhoneNumberOrder
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetPhoneNumberOrder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPhoneNumberOrder,
        stubs: @stubs,
        params_class: Params::GetPhoneNumberOrderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_phone_number_order
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the phone number settings for the administrator's AWS account, such as the default outbound calling name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPhoneNumberSettingsInput}.
    #
    # @return [Types::GetPhoneNumberSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPhoneNumberSettingsOutput
    #   resp.data.calling_name #=> String
    #   resp.data.calling_name_updated_timestamp #=> Time
    #
    def get_phone_number_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPhoneNumberSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPhoneNumberSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPhoneNumberSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetPhoneNumberSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPhoneNumberSettings,
        stubs: @stubs,
        params_class: Params::GetPhoneNumberSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_phone_number_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified proxy session details for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProxySessionInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @option params [String] :proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    # @return [Types::GetProxySessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proxy_session(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     proxy_session_id: 'ProxySessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProxySessionOutput
    #   resp.data.proxy_session #=> Types::ProxySession
    #   resp.data.proxy_session.voice_connector_id #=> String
    #   resp.data.proxy_session.proxy_session_id #=> String
    #   resp.data.proxy_session.name #=> String
    #   resp.data.proxy_session.status #=> String, one of ["Open", "InProgress", "Closed"]
    #   resp.data.proxy_session.expiry_minutes #=> Integer
    #   resp.data.proxy_session.capabilities #=> Array<String>
    #   resp.data.proxy_session.capabilities[0] #=> String, one of ["Voice", "SMS"]
    #   resp.data.proxy_session.created_timestamp #=> Time
    #   resp.data.proxy_session.updated_timestamp #=> Time
    #   resp.data.proxy_session.ended_timestamp #=> Time
    #   resp.data.proxy_session.participants #=> Array<Participant>
    #   resp.data.proxy_session.participants[0] #=> Types::Participant
    #   resp.data.proxy_session.participants[0].phone_number #=> String
    #   resp.data.proxy_session.participants[0].proxy_phone_number #=> String
    #   resp.data.proxy_session.number_selection_behavior #=> String, one of ["PreferSticky", "AvoidSticky"]
    #   resp.data.proxy_session.geo_match_level #=> String, one of ["Country", "AreaCode"]
    #   resp.data.proxy_session.geo_match_params #=> Types::GeoMatchParams
    #   resp.data.proxy_session.geo_match_params.country #=> String
    #   resp.data.proxy_session.geo_match_params.area_code #=> String
    #
    def get_proxy_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProxySessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProxySessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProxySession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetProxySession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProxySession,
        stubs: @stubs,
        params_class: Params::GetProxySessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_proxy_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Gets the retention settings for the specified Amazon Chime Enterprise account. For more information about retention settings, see
    # <a href="https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html">Managing Chat Retention Policies</a> in the <i>Amazon Chime Administration Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::GetRetentionSettingsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @return [Types::GetRetentionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retention_settings(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRetentionSettingsOutput
    #   resp.data.retention_settings #=> Types::RetentionSettings
    #   resp.data.retention_settings.room_retention_settings #=> Types::RoomRetentionSettings
    #   resp.data.retention_settings.room_retention_settings.retention_days #=> Integer
    #   resp.data.retention_settings.conversation_retention_settings #=> Types::ConversationRetentionSettings
    #   resp.data.retention_settings.conversation_retention_settings.retention_days #=> Integer
    #   resp.data.initiate_deletion_timestamp #=> Time
    #
    def get_retention_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRetentionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRetentionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRetentionSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetRetentionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRetentionSettings,
        stubs: @stubs,
        params_class: Params::GetRetentionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_retention_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves room details, such as the room name, for a room in an Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRoomInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @return [Types::GetRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoomOutput
    #   resp.data.room #=> Types::Room
    #   resp.data.room.room_id #=> String
    #   resp.data.room.name #=> String
    #   resp.data.room.account_id #=> String
    #   resp.data.room.created_by #=> String
    #   resp.data.room.created_timestamp #=> Time
    #   resp.data.room.updated_timestamp #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Retrieves the information for a SIP media application, including name, AWS Region, and endpoints.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSipMediaApplicationInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    # @return [Types::GetSipMediaApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_media_application(
    #     sip_media_application_id: 'SipMediaApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSipMediaApplicationOutput
    #   resp.data.sip_media_application #=> Types::SipMediaApplication
    #   resp.data.sip_media_application.sip_media_application_id #=> String
    #   resp.data.sip_media_application.aws_region #=> String
    #   resp.data.sip_media_application.name #=> String
    #   resp.data.sip_media_application.endpoints #=> Array<SipMediaApplicationEndpoint>
    #   resp.data.sip_media_application.endpoints[0] #=> Types::SipMediaApplicationEndpoint
    #   resp.data.sip_media_application.endpoints[0].lambda_arn #=> String
    #   resp.data.sip_media_application.created_timestamp #=> Time
    #   resp.data.sip_media_application.updated_timestamp #=> Time
    #
    def get_sip_media_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSipMediaApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSipMediaApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSipMediaApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetSipMediaApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSipMediaApplication,
        stubs: @stubs,
        params_class: Params::GetSipMediaApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sip_media_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the logging configuration for the specified SIP media application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSipMediaApplicationLoggingConfigurationInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    # @return [Types::GetSipMediaApplicationLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_media_application_logging_configuration(
    #     sip_media_application_id: 'SipMediaApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSipMediaApplicationLoggingConfigurationOutput
    #   resp.data.sip_media_application_logging_configuration #=> Types::SipMediaApplicationLoggingConfiguration
    #   resp.data.sip_media_application_logging_configuration.enable_sip_media_application_message_logs #=> Boolean
    #
    def get_sip_media_application_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSipMediaApplicationLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSipMediaApplicationLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSipMediaApplicationLoggingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetSipMediaApplicationLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSipMediaApplicationLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::GetSipMediaApplicationLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sip_media_application_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of a SIP rule, such as the rule ID, name, triggers, and target endpoints.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSipRuleInput}.
    #
    # @option params [String] :sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    # @return [Types::GetSipRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_rule(
    #     sip_rule_id: 'SipRuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSipRuleOutput
    #   resp.data.sip_rule #=> Types::SipRule
    #   resp.data.sip_rule.sip_rule_id #=> String
    #   resp.data.sip_rule.name #=> String
    #   resp.data.sip_rule.disabled #=> Boolean
    #   resp.data.sip_rule.trigger_type #=> String, one of ["ToPhoneNumber", "RequestUriHostname"]
    #   resp.data.sip_rule.trigger_value #=> String
    #   resp.data.sip_rule.target_applications #=> Array<SipRuleTargetApplication>
    #   resp.data.sip_rule.target_applications[0] #=> Types::SipRuleTargetApplication
    #   resp.data.sip_rule.target_applications[0].sip_media_application_id #=> String
    #   resp.data.sip_rule.target_applications[0].priority #=> Integer
    #   resp.data.sip_rule.target_applications[0].aws_region #=> String
    #   resp.data.sip_rule.created_timestamp #=> Time
    #   resp.data.sip_rule.updated_timestamp #=> Time
    #
    def get_sip_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSipRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSipRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSipRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetSipRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSipRule,
        stubs: @stubs,
        params_class: Params::GetSipRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sip_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for the specified user ID, such as primary email address, license type,and personal meeting PIN.</p>
    #
    #          <p>
    # To retrieve user details with an email address instead of a user ID, use the
    # <a>ListUsers</a> action, and then filter by email address.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::GetUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @return [Types::GetUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.user_id #=> String
    #   resp.data.user.account_id #=> String
    #   resp.data.user.primary_email #=> String
    #   resp.data.user.primary_provisioned_number #=> String
    #   resp.data.user.display_name #=> String
    #   resp.data.user.license_type #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.user.user_type #=> String, one of ["PrivateUser", "SharedDevice"]
    #   resp.data.user.user_registration_status #=> String, one of ["Unregistered", "Registered", "Suspended"]
    #   resp.data.user.user_invitation_status #=> String, one of ["Pending", "Accepted", "Failed"]
    #   resp.data.user.registered_on #=> Time
    #   resp.data.user.invited_on #=> Time
    #   resp.data.user.alexa_for_business_metadata #=> Types::AlexaForBusinessMetadata
    #   resp.data.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.data.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.data.user.personal_pin #=> String
    #
    def get_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUser,
        stubs: @stubs,
        params_class: Params::GetUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves settings for the specified user ID, such as any associated phone number settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserSettingsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @return [Types::GetUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_settings(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserSettingsOutput
    #   resp.data.user_settings #=> Types::UserSettings
    #   resp.data.user_settings.telephony #=> Types::TelephonySettings
    #   resp.data.user_settings.telephony.inbound_calling #=> Boolean
    #   resp.data.user_settings.telephony.outbound_calling #=> Boolean
    #   resp.data.user_settings.telephony.sms #=> Boolean
    #
    def get_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUserSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUserSettings,
        stubs: @stubs,
        params_class: Params::GetUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for the specified Amazon Chime Voice Connector, such as timestamps,name, outbound host, and encryption requirements.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorOutput
    #   resp.data.voice_connector #=> Types::VoiceConnector
    #   resp.data.voice_connector.voice_connector_id #=> String
    #   resp.data.voice_connector.aws_region #=> String, one of ["us-east-1", "us-west-2"]
    #   resp.data.voice_connector.name #=> String
    #   resp.data.voice_connector.outbound_host_name #=> String
    #   resp.data.voice_connector.require_encryption #=> Boolean
    #   resp.data.voice_connector.created_timestamp #=> Time
    #   resp.data.voice_connector.updated_timestamp #=> Time
    #   resp.data.voice_connector.voice_connector_arn #=> String
    #
    def get_voice_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnector,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the emergency calling configuration details for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorEmergencyCallingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorEmergencyCallingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_emergency_calling_configuration(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorEmergencyCallingConfigurationOutput
    #   resp.data.emergency_calling_configuration #=> Types::EmergencyCallingConfiguration
    #   resp.data.emergency_calling_configuration.dnis #=> Array<DNISEmergencyCallingConfiguration>
    #   resp.data.emergency_calling_configuration.dnis[0] #=> Types::DNISEmergencyCallingConfiguration
    #   resp.data.emergency_calling_configuration.dnis[0].emergency_phone_number #=> String
    #   resp.data.emergency_calling_configuration.dnis[0].test_phone_number #=> String
    #   resp.data.emergency_calling_configuration.dnis[0].calling_country #=> String
    #
    def get_voice_connector_emergency_calling_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorEmergencyCallingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorEmergencyCallingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorEmergencyCallingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorEmergencyCallingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorEmergencyCallingConfiguration,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorEmergencyCallingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_emergency_calling_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Retrieves details for the specified Amazon Chime Voice Connector group, such as timestamps,name, and associated <code>VoiceConnectorItems</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorGroupInput}.
    #
    # @option params [String] :voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    # @return [Types::GetVoiceConnectorGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_group(
    #     voice_connector_group_id: 'VoiceConnectorGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorGroupOutput
    #   resp.data.voice_connector_group #=> Types::VoiceConnectorGroup
    #   resp.data.voice_connector_group.voice_connector_group_id #=> String
    #   resp.data.voice_connector_group.name #=> String
    #   resp.data.voice_connector_group.voice_connector_items #=> Array<VoiceConnectorItem>
    #   resp.data.voice_connector_group.voice_connector_items[0] #=> Types::VoiceConnectorItem
    #   resp.data.voice_connector_group.voice_connector_items[0].voice_connector_id #=> String
    #   resp.data.voice_connector_group.voice_connector_items[0].priority #=> Integer
    #   resp.data.voice_connector_group.created_timestamp #=> Time
    #   resp.data.voice_connector_group.updated_timestamp #=> Time
    #   resp.data.voice_connector_group.voice_connector_group_arn #=> String
    #
    def get_voice_connector_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorGroup,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the logging configuration details for the specified Amazon Chime Voice Connector. Shows whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorLoggingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_logging_configuration(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorLoggingConfigurationOutput
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.enable_sip_logs #=> Boolean
    #   resp.data.logging_configuration.enable_media_metric_logs #=> Boolean
    #
    def get_voice_connector_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorLoggingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves origination setting details for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorOriginationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorOriginationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_origination(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorOriginationOutput
    #   resp.data.origination #=> Types::Origination
    #   resp.data.origination.routes #=> Array<OriginationRoute>
    #   resp.data.origination.routes[0] #=> Types::OriginationRoute
    #   resp.data.origination.routes[0].host #=> String
    #   resp.data.origination.routes[0].port #=> Integer
    #   resp.data.origination.routes[0].protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.origination.routes[0].priority #=> Integer
    #   resp.data.origination.routes[0].weight #=> Integer
    #   resp.data.origination.disabled #=> Boolean
    #
    def get_voice_connector_origination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorOriginationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorOriginationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorOrigination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorOrigination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorOrigination,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorOriginationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_origination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the proxy configuration details for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorProxyInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorProxyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_proxy(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorProxyOutput
    #   resp.data.proxy #=> Types::Proxy
    #   resp.data.proxy.default_session_expiry_minutes #=> Integer
    #   resp.data.proxy.disabled #=> Boolean
    #   resp.data.proxy.fall_back_phone_number #=> String
    #   resp.data.proxy.phone_number_countries #=> Array<String>
    #   resp.data.proxy.phone_number_countries[0] #=> String
    #
    def get_voice_connector_proxy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorProxyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorProxyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorProxy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorProxy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorProxy,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorProxyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_proxy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the streaming configuration details for the specified Amazon Chime Voice Connector.
    #             Shows whether media streaming is enabled for sending to Amazon Kinesis. It also shows
    #             the retention period, in hours, for the Amazon Kinesis data.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorStreamingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorStreamingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_streaming_configuration(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorStreamingConfigurationOutput
    #   resp.data.streaming_configuration #=> Types::StreamingConfiguration
    #   resp.data.streaming_configuration.data_retention_in_hours #=> Integer
    #   resp.data.streaming_configuration.disabled #=> Boolean
    #   resp.data.streaming_configuration.streaming_notification_targets #=> Array<StreamingNotificationTarget>
    #   resp.data.streaming_configuration.streaming_notification_targets[0] #=> Types::StreamingNotificationTarget
    #   resp.data.streaming_configuration.streaming_notification_targets[0].notification_target #=> String, one of ["EventBridge", "SNS", "SQS"]
    #
    def get_voice_connector_streaming_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorStreamingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorStreamingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorStreamingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorStreamingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorStreamingConfiguration,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorStreamingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_streaming_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves termination setting details for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorTerminationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorTerminationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_termination(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorTerminationOutput
    #   resp.data.termination #=> Types::Termination
    #   resp.data.termination.cps_limit #=> Integer
    #   resp.data.termination.default_phone_number #=> String
    #   resp.data.termination.calling_regions #=> Array<String>
    #   resp.data.termination.calling_regions[0] #=> String
    #   resp.data.termination.cidr_allowed_list #=> Array<String>
    #   resp.data.termination.cidr_allowed_list[0] #=> String
    #   resp.data.termination.disabled #=> Boolean
    #
    def get_voice_connector_termination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorTerminationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorTerminationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorTermination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorTermination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorTermination,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorTerminationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_termination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the last time a SIP <code>OPTIONS</code> ping was received from
    #             your SIP infrastructure for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceConnectorTerminationHealthInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::GetVoiceConnectorTerminationHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_termination_health(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceConnectorTerminationHealthOutput
    #   resp.data.termination_health #=> Types::TerminationHealth
    #   resp.data.termination_health.timestamp #=> Time
    #   resp.data.termination_health.source #=> String
    #
    def get_voice_connector_termination_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceConnectorTerminationHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceConnectorTerminationHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceConnectorTerminationHealth
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::GetVoiceConnectorTerminationHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceConnectorTerminationHealth,
        stubs: @stubs,
        params_class: Params::GetVoiceConnectorTerminationHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_connector_termination_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends email to a maximum of 50 users, inviting them to the specified Amazon Chime
    #                 <code>Team</code> account. Only <code>Team</code> account types are currently
    #             supported for this action.</p>
    #
    # @param [Hash] params
    #   See {Types::InviteUsersInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Array<String>] :user_email_list
    #   <p>The user email addresses to which to send the email invitation.</p>
    #
    # @option params [String] :user_type
    #   <p>The user type.</p>
    #
    # @return [Types::InviteUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_users(
    #     account_id: 'AccountId', # required
    #     user_email_list: [
    #       'member'
    #     ], # required
    #     user_type: 'PrivateUser' # accepts ["PrivateUser", "SharedDevice"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InviteUsersOutput
    #   resp.data.invites #=> Array<Invite>
    #   resp.data.invites[0] #=> Types::Invite
    #   resp.data.invites[0].invite_id #=> String
    #   resp.data.invites[0].status #=> String, one of ["Pending", "Accepted", "Failed"]
    #   resp.data.invites[0].email_address #=> String
    #   resp.data.invites[0].email_status #=> String, one of ["NotSent", "Sent", "Failed"]
    #
    def invite_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InviteUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InviteUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InviteUsers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::InviteUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InviteUsers,
        stubs: @stubs,
        params_class: Params::InviteUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invite_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts
    #             by account name prefix. To find out which Amazon Chime account a user belongs to, you can
    #             filter by the user's email address, which returns one account result.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountsInput}.
    #
    # @option params [String] :name
    #   <p>Amazon Chime account name prefix with which to filter results.</p>
    #
    # @option params [String] :user_email
    #   <p>User email address with which to filter results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    # @return [Types::ListAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts(
    #     name: 'Name',
    #     user_email: 'UserEmail',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountsOutput
    #   resp.data.accounts #=> Array<Account>
    #   resp.data.accounts[0] #=> Types::Account
    #   resp.data.accounts[0].aws_account_id #=> String
    #   resp.data.accounts[0].account_id #=> String
    #   resp.data.accounts[0].name #=> String
    #   resp.data.accounts[0].account_type #=> String, one of ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"]
    #   resp.data.accounts[0].created_timestamp #=> Time
    #   resp.data.accounts[0].default_license #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.accounts[0].supported_licenses #=> Array<String>
    #   resp.data.accounts[0].supported_licenses[0] #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.accounts[0].account_status #=> String, one of ["Suspended", "Active"]
    #   resp.data.accounts[0].signin_delegate_groups #=> Array<SigninDelegateGroup>
    #   resp.data.accounts[0].signin_delegate_groups[0] #=> Types::SigninDelegateGroup
    #   resp.data.accounts[0].signin_delegate_groups[0].group_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccounts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccounts,
        stubs: @stubs,
        params_class: Params::ListAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the administrators in the <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstanceAdminsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of administrators that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of administrators is reached.</p>
    #
    # @return [Types::ListAppInstanceAdminsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_admins(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstanceAdminsOutput
    #   resp.data.app_instance_arn #=> String
    #   resp.data.app_instance_admins #=> Array<AppInstanceAdminSummary>
    #   resp.data.app_instance_admins[0] #=> Types::AppInstanceAdminSummary
    #   resp.data.app_instance_admins[0].admin #=> Types::Identity
    #   resp.data.app_instance_admins[0].admin.arn #=> String
    #   resp.data.app_instance_admins[0].admin.name #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_instance_admins(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstanceAdminsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstanceAdminsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstanceAdmins
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListAppInstanceAdmins
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstanceAdmins,
        stubs: @stubs,
        params_class: Params::ListAppInstanceAdminsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instance_admins
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all <code>AppInstanceUsers</code>
    #             created under a single <code>AppInstance</code>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstanceUsersInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of requests that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    # @return [Types::ListAppInstanceUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_users(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstanceUsersOutput
    #   resp.data.app_instance_arn #=> String
    #   resp.data.app_instance_users #=> Array<AppInstanceUserSummary>
    #   resp.data.app_instance_users[0] #=> Types::AppInstanceUserSummary
    #   resp.data.app_instance_users[0].app_instance_user_arn #=> String
    #   resp.data.app_instance_users[0].name #=> String
    #   resp.data.app_instance_users[0].metadata #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_instance_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstanceUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstanceUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstanceUsers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListAppInstanceUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstanceUsers,
        stubs: @stubs,
        params_class: Params::ListAppInstanceUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instance_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Amazon Chime <code>AppInstance</code>s created under a single AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstancesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>AppInstance</code>s that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API requests until you reach the maximum number of <code>AppInstance</code>s.</p>
    #
    # @return [Types::ListAppInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instances(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstancesOutput
    #   resp.data.app_instances #=> Array<AppInstanceSummary>
    #   resp.data.app_instances[0] #=> Types::AppInstanceSummary
    #   resp.data.app_instances[0].app_instance_arn #=> String
    #   resp.data.app_instances[0].name #=> String
    #   resp.data.app_instances[0].metadata #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListAppInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstances,
        stubs: @stubs,
        params_class: Params::ListAppInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon Chime SDK attendee resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttendeeTagsInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @return [Types::ListAttendeeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attendee_tags(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttendeeTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_attendee_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttendeeTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttendeeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttendeeTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListAttendeeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttendeeTags,
        stubs: @stubs,
        params_class: Params::ListAttendeeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attendee_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the <i>Amazon Chime Developer Guide</i>.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::ListAttendeesInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListAttendeesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attendees(
    #     meeting_id: 'MeetingId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttendeesOutput
    #   resp.data.attendees #=> Array<Attendee>
    #   resp.data.attendees[0] #=> Types::Attendee
    #   resp.data.attendees[0].external_user_id #=> String
    #   resp.data.attendees[0].attendee_id #=> String
    #   resp.data.attendees[0].join_token #=> String
    #   resp.data.next_token #=> String
    #
    def list_attendees(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttendeesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttendeesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttendees
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListAttendees
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttendees,
        stubs: @stubs,
        params_class: Params::ListAttendeesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attendees
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBotsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListBotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots(
    #     account_id: 'AccountId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotsOutput
    #   resp.data.bots #=> Array<Bot>
    #   resp.data.bots[0] #=> Types::Bot
    #   resp.data.bots[0].bot_id #=> String
    #   resp.data.bots[0].user_id #=> String
    #   resp.data.bots[0].display_name #=> String
    #   resp.data.bots[0].bot_type #=> String, one of ["ChatBot"]
    #   resp.data.bots[0].disabled #=> Boolean
    #   resp.data.bots[0].created_timestamp #=> Time
    #   resp.data.bots[0].updated_timestamp #=> Time
    #   resp.data.bots[0].bot_email #=> String
    #   resp.data.bots[0].security_token #=> String
    #   resp.data.next_token #=> String
    #
    def list_bots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBots
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListBots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBots,
        stubs: @stubs,
        params_class: Params::ListBotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the users banned from a particular channel.</p>
    #
    #          <note>
    #
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelBansInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bans that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelBansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_bans(
    #     channel_arn: 'ChannelArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelBansOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.channel_bans #=> Array<ChannelBanSummary>
    #   resp.data.channel_bans[0] #=> Types::ChannelBanSummary
    #   resp.data.channel_bans[0].member #=> Types::Identity
    #   resp.data.channel_bans[0].member.arn #=> String
    #   resp.data.channel_bans[0].member.name #=> String
    #
    def list_channel_bans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelBansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelBansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelBans
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannelBans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelBans,
        stubs: @stubs,
        params_class: Params::ListChannelBansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_bans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all channel memberships in a channel.</p>
    #
    #          <note>
    #
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelMembershipsInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelMembershipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships(
    #     channel_arn: 'ChannelArn', # required
    #     type: 'DEFAULT', # accepts ["DEFAULT", "HIDDEN"]
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelMembershipsOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.channel_memberships #=> Array<ChannelMembershipSummary>
    #   resp.data.channel_memberships[0] #=> Types::ChannelMembershipSummary
    #   resp.data.channel_memberships[0].member #=> Types::Identity
    #   resp.data.channel_memberships[0].member.arn #=> String
    #   resp.data.channel_memberships[0].member.name #=> String
    #   resp.data.next_token #=> String
    #
    def list_channel_memberships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelMembershipsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelMembershipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelMemberships
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannelMemberships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelMemberships,
        stubs: @stubs,
        params_class: Params::ListChannelMembershipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_memberships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists all channels that a particular <code>AppInstanceUser</code> is a part of. Only an
    #             <code>AppInstanceAdmin</code> can call the API with a user ARN that is not their own. </p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelMembershipsForAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>s</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of users that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channel memberships is reached.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelMembershipsForAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships_for_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelMembershipsForAppInstanceUserOutput
    #   resp.data.channel_memberships #=> Array<ChannelMembershipForAppInstanceUserSummary>
    #   resp.data.channel_memberships[0] #=> Types::ChannelMembershipForAppInstanceUserSummary
    #   resp.data.channel_memberships[0].channel_summary #=> Types::ChannelSummary
    #   resp.data.channel_memberships[0].channel_summary.name #=> String
    #   resp.data.channel_memberships[0].channel_summary.channel_arn #=> String
    #   resp.data.channel_memberships[0].channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel_memberships[0].channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel_memberships[0].channel_summary.metadata #=> String
    #   resp.data.channel_memberships[0].channel_summary.last_message_timestamp #=> Time
    #   resp.data.channel_memberships[0].app_instance_user_membership_summary #=> Types::AppInstanceUserMembershipSummary
    #   resp.data.channel_memberships[0].app_instance_user_membership_summary.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.channel_memberships[0].app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channel_memberships_for_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelMembershipsForAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelMembershipsForAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelMembershipsForAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannelMembershipsForAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelMembershipsForAppInstanceUser,
        stubs: @stubs,
        params_class: Params::ListChannelMembershipsForAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_memberships_for_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all the messages in a channel. Returns a paginated list of
    #             <code>ChannelMessages</code>. By default, sorted by creation timestamp in descending
    #          order.</p>
    #          <note>
    #             <p>Redacted messages appear in the results as empty, since they are only redacted, not
    #             deleted. Deleted messages do not appear in the results. This action always returns the
    #             latest version of an edited message.</p>
    #             <p>Also, the x-amz-chime-bearer request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelMessagesInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :sort_order
    #   <p>The order in which you want messages sorted. Default is Descending, based on time
    #            created.</p>
    #
    # @option params [Time] :not_before
    #   <p>The initial or starting time stamp for your requested messages.</p>
    #
    # @option params [Time] :not_after
    #   <p>The final or ending time stamp for your requested messages.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of messages that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_messages(
    #     channel_arn: 'ChannelArn', # required
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     not_before: Time.now,
    #     not_after: Time.now,
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelMessagesOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.channel_messages #=> Array<ChannelMessageSummary>
    #   resp.data.channel_messages[0] #=> Types::ChannelMessageSummary
    #   resp.data.channel_messages[0].message_id #=> String
    #   resp.data.channel_messages[0].content #=> String
    #   resp.data.channel_messages[0].metadata #=> String
    #   resp.data.channel_messages[0].type #=> String, one of ["STANDARD", "CONTROL"]
    #   resp.data.channel_messages[0].created_timestamp #=> Time
    #   resp.data.channel_messages[0].last_updated_timestamp #=> Time
    #   resp.data.channel_messages[0].last_edited_timestamp #=> Time
    #   resp.data.channel_messages[0].sender #=> Types::Identity
    #   resp.data.channel_messages[0].sender.arn #=> String
    #   resp.data.channel_messages[0].sender.name #=> String
    #   resp.data.channel_messages[0].redacted #=> Boolean
    #
    def list_channel_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelMessagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelMessages
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannelMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelMessages,
        stubs: @stubs,
        params_class: Params::ListChannelMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the moderators for a channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelModeratorsInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of moderators that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelModeratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_moderators(
    #     channel_arn: 'ChannelArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelModeratorsOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.channel_moderators #=> Array<ChannelModeratorSummary>
    #   resp.data.channel_moderators[0] #=> Types::ChannelModeratorSummary
    #   resp.data.channel_moderators[0].moderator #=> Types::Identity
    #   resp.data.channel_moderators[0].moderator.arn #=> String
    #   resp.data.channel_moderators[0].moderator.name #=> String
    #
    def list_channel_moderators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelModeratorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelModeratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelModerators
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannelModerators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelModerators,
        stubs: @stubs,
        params_class: Params::ListChannelModeratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_moderators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Channels created under a single Chime App as a paginated list. You can specify
    #          filters to narrow results.</p>
    #
    #          <p class="title">
    #             <b>Functionality & restrictions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Use privacy = <code>PUBLIC</code> to retrieve all public channels in the
    #                account.</p>
    #             </li>
    #             <li>
    #                <p>Only an <code>AppInstanceAdmin</code> can set privacy = <code>PRIVATE</code> to
    #                list the private channels in an account.</p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :privacy
    #   <p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.
    #               <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>
    #            can retrieve private channels. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     privacy: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE"]
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsOutput
    #   resp.data.channels #=> Array<ChannelSummary>
    #   resp.data.channels[0] #=> Types::ChannelSummary
    #   resp.data.channels[0].name #=> String
    #   resp.data.channels[0].channel_arn #=> String
    #   resp.data.channels[0].mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channels[0].privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channels[0].metadata #=> String
    #   resp.data.channels[0].last_message_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannels
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannels,
        stubs: @stubs,
        params_class: Params::ListChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of the channels moderated by an <code>AppInstanceUser</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsModeratedByAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user in the moderated channel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels in the request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelsModeratedByAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels_moderated_by_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsModeratedByAppInstanceUserOutput
    #   resp.data.channels #=> Array<ChannelModeratedByAppInstanceUserSummary>
    #   resp.data.channels[0] #=> Types::ChannelModeratedByAppInstanceUserSummary
    #   resp.data.channels[0].channel_summary #=> Types::ChannelSummary
    #   resp.data.channels[0].channel_summary.name #=> String
    #   resp.data.channels[0].channel_summary.channel_arn #=> String
    #   resp.data.channels[0].channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channels[0].channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channels[0].channel_summary.metadata #=> String
    #   resp.data.channels[0].channel_summary.last_message_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channels_moderated_by_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsModeratedByAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelsModeratedByAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelsModeratedByAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListChannelsModeratedByAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelsModeratedByAppInstanceUser,
        stubs: @stubs,
        params_class: Params::ListChannelsModeratedByAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channels_moderated_by_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of media capture pipelines.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMediaCapturePipelinesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    #
    # @return [Types::ListMediaCapturePipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_capture_pipelines(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMediaCapturePipelinesOutput
    #   resp.data.media_capture_pipelines #=> Array<MediaCapturePipeline>
    #   resp.data.media_capture_pipelines[0] #=> Types::MediaCapturePipeline
    #   resp.data.media_capture_pipelines[0].media_pipeline_id #=> String
    #   resp.data.media_capture_pipelines[0].source_type #=> String, one of ["ChimeSdkMeeting"]
    #   resp.data.media_capture_pipelines[0].source_arn #=> String
    #   resp.data.media_capture_pipelines[0].status #=> String, one of ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #   resp.data.media_capture_pipelines[0].sink_type #=> String, one of ["S3Bucket"]
    #   resp.data.media_capture_pipelines[0].sink_arn #=> String
    #   resp.data.media_capture_pipelines[0].created_timestamp #=> Time
    #   resp.data.media_capture_pipelines[0].updated_timestamp #=> Time
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration #=> Types::ChimeSdkMeetingConfiguration
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration #=> Types::SourceConfiguration
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams #=> Types::SelectedVideoStreams
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array<String>
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array<String>
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration #=> Types::ArtifactsConfiguration
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.audio #=> Types::AudioArtifactsConfiguration
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.video #=> Types::VideoArtifactsConfiguration
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of ["VideoOnly"]
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.content #=> Types::ContentArtifactsConfiguration
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of ["ContentOnly"]
    #   resp.data.next_token #=> String
    #
    def list_media_capture_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMediaCapturePipelinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMediaCapturePipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMediaCapturePipelines
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListMediaCapturePipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMediaCapturePipelines,
        stubs: @stubs,
        params_class: Params::ListMediaCapturePipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_media_capture_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon Chime SDK meeting resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMeetingTagsInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @return [Types::ListMeetingTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_meeting_tags(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMeetingTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_meeting_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMeetingTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMeetingTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMeetingTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListMeetingTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMeetingTags,
        stubs: @stubs,
        params_class: Params::ListMeetingTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_meeting_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see
    # <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    # in the <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMeetingsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListMeetingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_meetings(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMeetingsOutput
    #   resp.data.meetings #=> Array<Meeting>
    #   resp.data.meetings[0] #=> Types::Meeting
    #   resp.data.meetings[0].meeting_id #=> String
    #   resp.data.meetings[0].external_meeting_id #=> String
    #   resp.data.meetings[0].media_placement #=> Types::MediaPlacement
    #   resp.data.meetings[0].media_placement.audio_host_url #=> String
    #   resp.data.meetings[0].media_placement.audio_fallback_url #=> String
    #   resp.data.meetings[0].media_placement.screen_data_url #=> String
    #   resp.data.meetings[0].media_placement.screen_sharing_url #=> String
    #   resp.data.meetings[0].media_placement.screen_viewing_url #=> String
    #   resp.data.meetings[0].media_placement.signaling_url #=> String
    #   resp.data.meetings[0].media_placement.turn_control_url #=> String
    #   resp.data.meetings[0].media_placement.event_ingestion_url #=> String
    #   resp.data.meetings[0].media_region #=> String
    #   resp.data.next_token #=> String
    #
    def list_meetings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMeetingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMeetingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMeetings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListMeetings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMeetings,
        stubs: @stubs,
        params_class: Params::ListMeetingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_meetings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the phone number orders for the administrator's Amazon Chime account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPhoneNumberOrdersInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListPhoneNumberOrdersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_number_orders(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPhoneNumberOrdersOutput
    #   resp.data.phone_number_orders #=> Array<PhoneNumberOrder>
    #   resp.data.phone_number_orders[0] #=> Types::PhoneNumberOrder
    #   resp.data.phone_number_orders[0].phone_number_order_id #=> String
    #   resp.data.phone_number_orders[0].product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_number_orders[0].status #=> String, one of ["Processing", "Successful", "Failed", "Partial"]
    #   resp.data.phone_number_orders[0].ordered_phone_numbers #=> Array<OrderedPhoneNumber>
    #   resp.data.phone_number_orders[0].ordered_phone_numbers[0] #=> Types::OrderedPhoneNumber
    #   resp.data.phone_number_orders[0].ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.data.phone_number_orders[0].ordered_phone_numbers[0].status #=> String, one of ["Processing", "Acquired", "Failed"]
    #   resp.data.phone_number_orders[0].created_timestamp #=> Time
    #   resp.data.phone_number_orders[0].updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_phone_number_orders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPhoneNumberOrdersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPhoneNumberOrdersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPhoneNumberOrders
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListPhoneNumberOrders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPhoneNumberOrders,
        stubs: @stubs,
        params_class: Params::ListPhoneNumberOrdersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_phone_number_orders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPhoneNumbersInput}.
    #
    # @option params [String] :status
    #   <p>The phone number status.</p>
    #
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    #
    # @option params [String] :filter_name
    #   <p>The filter to use to limit the number of results.</p>
    #
    # @option params [String] :filter_value
    #   <p>The value to use for the filter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListPhoneNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers(
    #     status: 'AcquireInProgress', # accepts ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #     product_type: 'BusinessCalling', # accepts ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #     filter_name: 'AccountId', # accepts ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #     filter_value: 'FilterValue',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPhoneNumbersOutput
    #   resp.data.phone_numbers #=> Array<PhoneNumber>
    #   resp.data.phone_numbers[0] #=> Types::PhoneNumber
    #   resp.data.phone_numbers[0].phone_number_id #=> String
    #   resp.data.phone_numbers[0].e164_phone_number #=> String
    #   resp.data.phone_numbers[0].country #=> String
    #   resp.data.phone_numbers[0].type #=> String, one of ["Local", "TollFree"]
    #   resp.data.phone_numbers[0].product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_numbers[0].status #=> String, one of ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #   resp.data.phone_numbers[0].capabilities #=> Types::PhoneNumberCapabilities
    #   resp.data.phone_numbers[0].capabilities.inbound_call #=> Boolean
    #   resp.data.phone_numbers[0].capabilities.outbound_call #=> Boolean
    #   resp.data.phone_numbers[0].capabilities.inbound_sms #=> Boolean
    #   resp.data.phone_numbers[0].capabilities.outbound_sms #=> Boolean
    #   resp.data.phone_numbers[0].capabilities.inbound_mms #=> Boolean
    #   resp.data.phone_numbers[0].capabilities.outbound_mms #=> Boolean
    #   resp.data.phone_numbers[0].associations #=> Array<PhoneNumberAssociation>
    #   resp.data.phone_numbers[0].associations[0] #=> Types::PhoneNumberAssociation
    #   resp.data.phone_numbers[0].associations[0].value #=> String
    #   resp.data.phone_numbers[0].associations[0].name #=> String, one of ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #   resp.data.phone_numbers[0].associations[0].associated_timestamp #=> Time
    #   resp.data.phone_numbers[0].calling_name #=> String
    #   resp.data.phone_numbers[0].calling_name_status #=> String, one of ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"]
    #   resp.data.phone_numbers[0].created_timestamp #=> Time
    #   resp.data.phone_numbers[0].updated_timestamp #=> Time
    #   resp.data.phone_numbers[0].deletion_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_phone_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPhoneNumbersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPhoneNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPhoneNumbers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListPhoneNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPhoneNumbers,
        stubs: @stubs,
        params_class: Params::ListPhoneNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_phone_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the proxy sessions for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProxySessionsInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @option params [String] :status
    #   <p>The proxy session status.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListProxySessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proxy_sessions(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     status: 'Open', # accepts ["Open", "InProgress", "Closed"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProxySessionsOutput
    #   resp.data.proxy_sessions #=> Array<ProxySession>
    #   resp.data.proxy_sessions[0] #=> Types::ProxySession
    #   resp.data.proxy_sessions[0].voice_connector_id #=> String
    #   resp.data.proxy_sessions[0].proxy_session_id #=> String
    #   resp.data.proxy_sessions[0].name #=> String
    #   resp.data.proxy_sessions[0].status #=> String, one of ["Open", "InProgress", "Closed"]
    #   resp.data.proxy_sessions[0].expiry_minutes #=> Integer
    #   resp.data.proxy_sessions[0].capabilities #=> Array<String>
    #   resp.data.proxy_sessions[0].capabilities[0] #=> String, one of ["Voice", "SMS"]
    #   resp.data.proxy_sessions[0].created_timestamp #=> Time
    #   resp.data.proxy_sessions[0].updated_timestamp #=> Time
    #   resp.data.proxy_sessions[0].ended_timestamp #=> Time
    #   resp.data.proxy_sessions[0].participants #=> Array<Participant>
    #   resp.data.proxy_sessions[0].participants[0] #=> Types::Participant
    #   resp.data.proxy_sessions[0].participants[0].phone_number #=> String
    #   resp.data.proxy_sessions[0].participants[0].proxy_phone_number #=> String
    #   resp.data.proxy_sessions[0].number_selection_behavior #=> String, one of ["PreferSticky", "AvoidSticky"]
    #   resp.data.proxy_sessions[0].geo_match_level #=> String, one of ["Country", "AreaCode"]
    #   resp.data.proxy_sessions[0].geo_match_params #=> Types::GeoMatchParams
    #   resp.data.proxy_sessions[0].geo_match_params.country #=> String
    #   resp.data.proxy_sessions[0].geo_match_params.area_code #=> String
    #   resp.data.next_token #=> String
    #
    def list_proxy_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProxySessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProxySessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProxySessions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListProxySessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProxySessions,
        stubs: @stubs,
        params_class: Params::ListProxySessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_proxy_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the membership details for the specified room in an Amazon Chime Enterprise account,
    #             such as the members' IDs, email addresses, and names.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoomMembershipsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListRoomMembershipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_room_memberships(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoomMembershipsOutput
    #   resp.data.room_memberships #=> Array<RoomMembership>
    #   resp.data.room_memberships[0] #=> Types::RoomMembership
    #   resp.data.room_memberships[0].room_id #=> String
    #   resp.data.room_memberships[0].member #=> Types::Member
    #   resp.data.room_memberships[0].member.member_id #=> String
    #   resp.data.room_memberships[0].member.member_type #=> String, one of ["User", "Bot", "Webhook"]
    #   resp.data.room_memberships[0].member.email #=> String
    #   resp.data.room_memberships[0].member.full_name #=> String
    #   resp.data.room_memberships[0].member.account_id #=> String
    #   resp.data.room_memberships[0].role #=> String, one of ["Administrator", "Member"]
    #   resp.data.room_memberships[0].invited_by #=> String
    #   resp.data.room_memberships[0].updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_room_memberships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoomMembershipsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoomMembershipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoomMemberships
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListRoomMemberships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoomMemberships,
        stubs: @stubs,
        params_class: Params::ListRoomMembershipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_room_memberships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the room details for the specified Amazon Chime Enterprise account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoomsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListRoomsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rooms(
    #     account_id: 'AccountId', # required
    #     member_id: 'MemberId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoomsOutput
    #   resp.data.rooms #=> Array<Room>
    #   resp.data.rooms[0] #=> Types::Room
    #   resp.data.rooms[0].room_id #=> String
    #   resp.data.rooms[0].name #=> String
    #   resp.data.rooms[0].account_id #=> String
    #   resp.data.rooms[0].created_by #=> String
    #   resp.data.rooms[0].created_timestamp #=> Time
    #   resp.data.rooms[0].updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_rooms(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoomsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoomsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRooms
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListRooms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRooms,
        stubs: @stubs,
        params_class: Params::ListRoomsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rooms
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the SIP media applications under the administrator's AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSipMediaApplicationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListSipMediaApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sip_media_applications(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSipMediaApplicationsOutput
    #   resp.data.sip_media_applications #=> Array<SipMediaApplication>
    #   resp.data.sip_media_applications[0] #=> Types::SipMediaApplication
    #   resp.data.sip_media_applications[0].sip_media_application_id #=> String
    #   resp.data.sip_media_applications[0].aws_region #=> String
    #   resp.data.sip_media_applications[0].name #=> String
    #   resp.data.sip_media_applications[0].endpoints #=> Array<SipMediaApplicationEndpoint>
    #   resp.data.sip_media_applications[0].endpoints[0] #=> Types::SipMediaApplicationEndpoint
    #   resp.data.sip_media_applications[0].endpoints[0].lambda_arn #=> String
    #   resp.data.sip_media_applications[0].created_timestamp #=> Time
    #   resp.data.sip_media_applications[0].updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_sip_media_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSipMediaApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSipMediaApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSipMediaApplications
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListSipMediaApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSipMediaApplications,
        stubs: @stubs,
        params_class: Params::ListSipMediaApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sip_media_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the SIP rules under the administrator's AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSipRulesInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListSipRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sip_rules(
    #     sip_media_application_id: 'SipMediaApplicationId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSipRulesOutput
    #   resp.data.sip_rules #=> Array<SipRule>
    #   resp.data.sip_rules[0] #=> Types::SipRule
    #   resp.data.sip_rules[0].sip_rule_id #=> String
    #   resp.data.sip_rules[0].name #=> String
    #   resp.data.sip_rules[0].disabled #=> Boolean
    #   resp.data.sip_rules[0].trigger_type #=> String, one of ["ToPhoneNumber", "RequestUriHostname"]
    #   resp.data.sip_rules[0].trigger_value #=> String
    #   resp.data.sip_rules[0].target_applications #=> Array<SipRuleTargetApplication>
    #   resp.data.sip_rules[0].target_applications[0] #=> Types::SipRuleTargetApplication
    #   resp.data.sip_rules[0].target_applications[0].sip_media_application_id #=> String
    #   resp.data.sip_rules[0].target_applications[0].priority #=> Integer
    #   resp.data.sip_rules[0].target_applications[0].aws_region #=> String
    #   resp.data.sip_rules[0].created_timestamp #=> Time
    #   resp.data.sip_rules[0].updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_sip_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSipRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSipRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSipRules
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListSipRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSipRules,
        stubs: @stubs,
        params_class: Params::ListSipRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sip_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists supported phone number countries.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSupportedPhoneNumberCountriesInput}.
    #
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    #
    # @return [Types::ListSupportedPhoneNumberCountriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_supported_phone_number_countries(
    #     product_type: 'BusinessCalling' # required - accepts ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSupportedPhoneNumberCountriesOutput
    #   resp.data.phone_number_countries #=> Array<PhoneNumberCountry>
    #   resp.data.phone_number_countries[0] #=> Types::PhoneNumberCountry
    #   resp.data.phone_number_countries[0].country_code #=> String
    #   resp.data.phone_number_countries[0].supported_phone_number_types #=> Array<String>
    #   resp.data.phone_number_countries[0].supported_phone_number_types[0] #=> String, one of ["Local", "TollFree"]
    #
    def list_supported_phone_number_countries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSupportedPhoneNumberCountriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSupportedPhoneNumberCountriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSupportedPhoneNumberCountries
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListSupportedPhoneNumberCountries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSupportedPhoneNumberCountries,
        stubs: @stubs,
        params_class: Params::ListSupportedPhoneNumberCountriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_supported_phone_number_countries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon Chime SDK meeting resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Lists the users that belong to the specified Amazon Chime account. You can specify an email
    #             address to list only the user that the email address belongs to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_email
    #   <p>Optional. The user email address used to filter results. Maximum 1.</p>
    #
    # @option params [String] :user_type
    #   <p>The user type.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     account_id: 'AccountId', # required
    #     user_email: 'UserEmail',
    #     user_type: 'PrivateUser', # accepts ["PrivateUser", "SharedDevice"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].user_id #=> String
    #   resp.data.users[0].account_id #=> String
    #   resp.data.users[0].primary_email #=> String
    #   resp.data.users[0].primary_provisioned_number #=> String
    #   resp.data.users[0].display_name #=> String
    #   resp.data.users[0].license_type #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.users[0].user_type #=> String, one of ["PrivateUser", "SharedDevice"]
    #   resp.data.users[0].user_registration_status #=> String, one of ["Unregistered", "Registered", "Suspended"]
    #   resp.data.users[0].user_invitation_status #=> String, one of ["Pending", "Accepted", "Failed"]
    #   resp.data.users[0].registered_on #=> Time
    #   resp.data.users[0].invited_on #=> Time
    #   resp.data.users[0].alexa_for_business_metadata #=> Types::AlexaForBusinessMetadata
    #   resp.data.users[0].alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.data.users[0].alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.data.users[0].personal_pin #=> String
    #   resp.data.next_token #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVoiceConnectorGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListVoiceConnectorGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connector_groups(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVoiceConnectorGroupsOutput
    #   resp.data.voice_connector_groups #=> Array<VoiceConnectorGroup>
    #   resp.data.voice_connector_groups[0] #=> Types::VoiceConnectorGroup
    #   resp.data.voice_connector_groups[0].voice_connector_group_id #=> String
    #   resp.data.voice_connector_groups[0].name #=> String
    #   resp.data.voice_connector_groups[0].voice_connector_items #=> Array<VoiceConnectorItem>
    #   resp.data.voice_connector_groups[0].voice_connector_items[0] #=> Types::VoiceConnectorItem
    #   resp.data.voice_connector_groups[0].voice_connector_items[0].voice_connector_id #=> String
    #   resp.data.voice_connector_groups[0].voice_connector_items[0].priority #=> Integer
    #   resp.data.voice_connector_groups[0].created_timestamp #=> Time
    #   resp.data.voice_connector_groups[0].updated_timestamp #=> Time
    #   resp.data.voice_connector_groups[0].voice_connector_group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_voice_connector_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVoiceConnectorGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVoiceConnectorGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVoiceConnectorGroups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListVoiceConnectorGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVoiceConnectorGroups,
        stubs: @stubs,
        params_class: Params::ListVoiceConnectorGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_voice_connector_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the SIP credentials for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVoiceConnectorTerminationCredentialsInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @return [Types::ListVoiceConnectorTerminationCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connector_termination_credentials(
    #     voice_connector_id: 'VoiceConnectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVoiceConnectorTerminationCredentialsOutput
    #   resp.data.usernames #=> Array<String>
    #   resp.data.usernames[0] #=> String
    #
    def list_voice_connector_termination_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVoiceConnectorTerminationCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVoiceConnectorTerminationCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVoiceConnectorTerminationCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListVoiceConnectorTerminationCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVoiceConnectorTerminationCredentials,
        stubs: @stubs,
        params_class: Params::ListVoiceConnectorTerminationCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_voice_connector_termination_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Chime Voice Connectors for the administrator's AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVoiceConnectorsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListVoiceConnectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connectors(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVoiceConnectorsOutput
    #   resp.data.voice_connectors #=> Array<VoiceConnector>
    #   resp.data.voice_connectors[0] #=> Types::VoiceConnector
    #   resp.data.voice_connectors[0].voice_connector_id #=> String
    #   resp.data.voice_connectors[0].aws_region #=> String, one of ["us-east-1", "us-west-2"]
    #   resp.data.voice_connectors[0].name #=> String
    #   resp.data.voice_connectors[0].outbound_host_name #=> String
    #   resp.data.voice_connectors[0].require_encryption #=> Boolean
    #   resp.data.voice_connectors[0].created_timestamp #=> Time
    #   resp.data.voice_connectors[0].updated_timestamp #=> Time
    #   resp.data.voice_connectors[0].voice_connector_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_voice_connectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVoiceConnectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVoiceConnectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVoiceConnectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ListVoiceConnectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVoiceConnectors,
        stubs: @stubs,
        params_class: Params::ListVoiceConnectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_voice_connectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Logs out the specified user from all of the devices they are currently logged into.</p>
    #
    # @param [Hash] params
    #   See {Types::LogoutUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @return [Types::LogoutUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.logout_user(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LogoutUserOutput
    #
    def logout_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LogoutUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LogoutUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LogoutUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::LogoutUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LogoutUser,
        stubs: @stubs,
        params_class: Params::LogoutUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :logout_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the amount of time in days that a given <code>AppInstance</code> retains data.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppInstanceRetentionSettingsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [AppInstanceRetentionSettings] :app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #
    # @return [Types::PutAppInstanceRetentionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_retention_settings(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     app_instance_retention_settings: {
    #       channel_retention_settings: {
    #         retention_days: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppInstanceRetentionSettingsOutput
    #   resp.data.app_instance_retention_settings #=> Types::AppInstanceRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings #=> Types::ChannelRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.data.initiate_deletion_timestamp #=> Time
    #
    def put_app_instance_retention_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppInstanceRetentionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppInstanceRetentionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppInstanceRetentionSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutAppInstanceRetentionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppInstanceRetentionSettings,
        stubs: @stubs,
        params_class: Params::PutAppInstanceRetentionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_app_instance_retention_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The data streaming configurations of an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppInstanceStreamingConfigurationsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [Array<AppInstanceStreamingConfiguration>] :app_instance_streaming_configurations
    #   <p>The streaming configurations set for an <code>AppInstance</code>.</p>
    #
    # @return [Types::PutAppInstanceStreamingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_streaming_configurations(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     app_instance_streaming_configurations: [
    #       {
    #         app_instance_data_type: 'Channel', # required - accepts ["Channel", "ChannelMessage"]
    #         resource_arn: 'ResourceArn' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppInstanceStreamingConfigurationsOutput
    #   resp.data.app_instance_streaming_configurations #=> Array<AppInstanceStreamingConfiguration>
    #   resp.data.app_instance_streaming_configurations[0] #=> Types::AppInstanceStreamingConfiguration
    #   resp.data.app_instance_streaming_configurations[0].app_instance_data_type #=> String, one of ["Channel", "ChannelMessage"]
    #   resp.data.app_instance_streaming_configurations[0].resource_arn #=> String
    #
    def put_app_instance_streaming_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppInstanceStreamingConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppInstanceStreamingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppInstanceStreamingConfigurations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutAppInstanceStreamingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppInstanceStreamingConfigurations,
        stubs: @stubs,
        params_class: Params::PutAppInstanceStreamingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_app_instance_streaming_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an events configuration that allows a bot to receive outgoing events sent by Amazon
    #             Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information,
    #             see <a>Bot</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEventsConfigurationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    #
    # @option params [String] :outbound_events_https_endpoint
    #   <p>HTTPS endpoint that allows the bot to receive outgoing events.</p>
    #
    # @option params [String] :lambda_function_arn
    #   <p>Lambda function ARN that allows the bot to receive outgoing events.</p>
    #
    # @return [Types::PutEventsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events_configuration(
    #     account_id: 'AccountId', # required
    #     bot_id: 'BotId', # required
    #     outbound_events_https_endpoint: 'OutboundEventsHTTPSEndpoint',
    #     lambda_function_arn: 'LambdaFunctionArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEventsConfigurationOutput
    #   resp.data.events_configuration #=> Types::EventsConfiguration
    #   resp.data.events_configuration.bot_id #=> String
    #   resp.data.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.data.events_configuration.lambda_function_arn #=> String
    #
    def put_events_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEventsConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEventsConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEventsConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutEventsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEventsConfiguration,
        stubs: @stubs,
        params_class: Params::PutEventsConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_events_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Puts retention settings for the specified Amazon Chime Enterprise account. We recommend using AWS CloudTrail to monitor usage of this API for your account. For more information, see
    # <a href="https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html">Logging Amazon Chime API Calls with AWS CloudTrail</a>
    # in the <i>Amazon Chime Administration Guide</i>.</p>
    #
    #          <p>
    # To turn off existing retention settings, remove the number of days from the corresponding
    # <b>RetentionDays</b>
    # field in the
    # <b>RetentionSettings</b>
    # object. For more information about retention settings, see
    # <a href="https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html">Managing Chat Retention Policies</a>
    # in the <i>Amazon Chime Administration Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRetentionSettingsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [RetentionSettings] :retention_settings
    #   <p>The retention settings.</p>
    #
    # @return [Types::PutRetentionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_settings(
    #     account_id: 'AccountId', # required
    #     retention_settings: {
    #       room_retention_settings: {
    #         retention_days: 1
    #       },
    #       conversation_retention_settings: {
    #         retention_days: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRetentionSettingsOutput
    #   resp.data.retention_settings #=> Types::RetentionSettings
    #   resp.data.retention_settings.room_retention_settings #=> Types::RoomRetentionSettings
    #   resp.data.retention_settings.room_retention_settings.retention_days #=> Integer
    #   resp.data.retention_settings.conversation_retention_settings #=> Types::ConversationRetentionSettings
    #   resp.data.retention_settings.conversation_retention_settings.retention_days #=> Integer
    #   resp.data.initiate_deletion_timestamp #=> Time
    #
    def put_retention_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRetentionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRetentionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRetentionSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutRetentionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRetentionSettings,
        stubs: @stubs,
        params_class: Params::PutRetentionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_retention_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the logging configuration for the specified SIP media application.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSipMediaApplicationLoggingConfigurationInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    # @option params [SipMediaApplicationLoggingConfiguration] :sip_media_application_logging_configuration
    #   <p>The actual logging configuration.</p>
    #
    # @return [Types::PutSipMediaApplicationLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_sip_media_application_logging_configuration(
    #     sip_media_application_id: 'SipMediaApplicationId', # required
    #     sip_media_application_logging_configuration: {
    #       enable_sip_media_application_message_logs: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSipMediaApplicationLoggingConfigurationOutput
    #   resp.data.sip_media_application_logging_configuration #=> Types::SipMediaApplicationLoggingConfiguration
    #   resp.data.sip_media_application_logging_configuration.enable_sip_media_application_message_logs #=> Boolean
    #
    def put_sip_media_application_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSipMediaApplicationLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSipMediaApplicationLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSipMediaApplicationLoggingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutSipMediaApplicationLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSipMediaApplicationLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::PutSipMediaApplicationLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_sip_media_application_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Puts emergency calling configuration details to the specified Amazon Chime Voice Connector, such as emergency phone numbers and calling countries. Origination and termination settings must be enabled for
    #     the Amazon Chime Voice Connector before emergency calling can be configured.</p>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorEmergencyCallingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [EmergencyCallingConfiguration] :emergency_calling_configuration
    #   <p>The emergency calling configuration details.</p>
    #
    # @return [Types::PutVoiceConnectorEmergencyCallingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_emergency_calling_configuration(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     emergency_calling_configuration: {
    #       dnis: [
    #         {
    #           emergency_phone_number: 'EmergencyPhoneNumber', # required
    #           test_phone_number: 'TestPhoneNumber',
    #           calling_country: 'CallingCountry' # required
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorEmergencyCallingConfigurationOutput
    #   resp.data.emergency_calling_configuration #=> Types::EmergencyCallingConfiguration
    #   resp.data.emergency_calling_configuration.dnis #=> Array<DNISEmergencyCallingConfiguration>
    #   resp.data.emergency_calling_configuration.dnis[0] #=> Types::DNISEmergencyCallingConfiguration
    #   resp.data.emergency_calling_configuration.dnis[0].emergency_phone_number #=> String
    #   resp.data.emergency_calling_configuration.dnis[0].test_phone_number #=> String
    #   resp.data.emergency_calling_configuration.dnis[0].calling_country #=> String
    #
    def put_voice_connector_emergency_calling_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorEmergencyCallingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorEmergencyCallingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorEmergencyCallingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorEmergencyCallingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorEmergencyCallingConfiguration,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorEmergencyCallingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_emergency_calling_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorLoggingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [LoggingConfiguration] :logging_configuration
    #   <p>The logging configuration details to add.</p>
    #
    # @return [Types::PutVoiceConnectorLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_logging_configuration(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     logging_configuration: {
    #       enable_sip_logs: false,
    #       enable_media_metric_logs: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorLoggingConfigurationOutput
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.enable_sip_logs #=> Boolean
    #   resp.data.logging_configuration.enable_media_metric_logs #=> Boolean
    #
    def put_voice_connector_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorLoggingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds origination settings for the specified Amazon Chime Voice Connector.</p>
    #
    #          <note>
    #             <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to turning off origination settings.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorOriginationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [Origination] :origination
    #   <p>The origination setting details to add.</p>
    #
    # @return [Types::PutVoiceConnectorOriginationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_origination(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     origination: {
    #       routes: [
    #         {
    #           host: 'Host',
    #           port: 1,
    #           protocol: 'TCP', # accepts ["TCP", "UDP"]
    #           priority: 1,
    #           weight: 1
    #         }
    #       ],
    #       disabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorOriginationOutput
    #   resp.data.origination #=> Types::Origination
    #   resp.data.origination.routes #=> Array<OriginationRoute>
    #   resp.data.origination.routes[0] #=> Types::OriginationRoute
    #   resp.data.origination.routes[0].host #=> String
    #   resp.data.origination.routes[0].port #=> Integer
    #   resp.data.origination.routes[0].protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.origination.routes[0].priority #=> Integer
    #   resp.data.origination.routes[0].weight #=> Integer
    #   resp.data.origination.disabled #=> Boolean
    #
    def put_voice_connector_origination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorOriginationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorOriginationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorOrigination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorOrigination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorOrigination,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorOriginationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_origination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Puts the specified proxy configuration to the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorProxyInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @option params [Integer] :default_session_expiry_minutes
    #   <p>The default number of minutes allowed for proxy sessions.</p>
    #
    # @option params [Array<String>] :phone_number_pool_countries
    #   <p>The countries for proxy phone numbers to be selected from.</p>
    #
    # @option params [String] :fall_back_phone_number
    #   <p>The phone number to route calls to after a proxy session expires.</p>
    #
    # @option params [Boolean] :disabled
    #   <p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>
    #
    # @return [Types::PutVoiceConnectorProxyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_proxy(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     default_session_expiry_minutes: 1, # required
    #     phone_number_pool_countries: [
    #       'member'
    #     ], # required
    #     fall_back_phone_number: 'FallBackPhoneNumber',
    #     disabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorProxyOutput
    #   resp.data.proxy #=> Types::Proxy
    #   resp.data.proxy.default_session_expiry_minutes #=> Integer
    #   resp.data.proxy.disabled #=> Boolean
    #   resp.data.proxy.fall_back_phone_number #=> String
    #   resp.data.proxy.phone_number_countries #=> Array<String>
    #   resp.data.proxy.phone_number_countries[0] #=> String
    #
    def put_voice_connector_proxy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorProxyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorProxyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorProxy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorProxy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorProxy,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorProxyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_proxy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming
    #             configuration specifies whether media streaming is enabled for sending to Indonesians.
    #             It also sets the retention period, in hours, for the Amazon Kinesis data.</p>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorStreamingConfigurationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [StreamingConfiguration] :streaming_configuration
    #   <p>The streaming configuration details to add.</p>
    #
    # @return [Types::PutVoiceConnectorStreamingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_streaming_configuration(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     streaming_configuration: {
    #       data_retention_in_hours: 1, # required
    #       disabled: false,
    #       streaming_notification_targets: [
    #         {
    #           notification_target: 'EventBridge' # required - accepts ["EventBridge", "SNS", "SQS"]
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorStreamingConfigurationOutput
    #   resp.data.streaming_configuration #=> Types::StreamingConfiguration
    #   resp.data.streaming_configuration.data_retention_in_hours #=> Integer
    #   resp.data.streaming_configuration.disabled #=> Boolean
    #   resp.data.streaming_configuration.streaming_notification_targets #=> Array<StreamingNotificationTarget>
    #   resp.data.streaming_configuration.streaming_notification_targets[0] #=> Types::StreamingNotificationTarget
    #   resp.data.streaming_configuration.streaming_notification_targets[0].notification_target #=> String, one of ["EventBridge", "SNS", "SQS"]
    #
    def put_voice_connector_streaming_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorStreamingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorStreamingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorStreamingConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorStreamingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorStreamingConfiguration,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorStreamingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_streaming_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds termination settings for the specified Amazon Chime Voice Connector.</p>
    #
    #          <note>
    #             <p>If emergency calling is configured for the Amazon Chime Voice Connector, it must be deleted prior to turning off termination settings.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorTerminationInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [Termination] :termination
    #   <p>The termination setting details to add.</p>
    #
    # @return [Types::PutVoiceConnectorTerminationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_termination(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     termination: {
    #       cps_limit: 1,
    #       default_phone_number: 'DefaultPhoneNumber',
    #       calling_regions: [
    #         'member'
    #       ],
    #       cidr_allowed_list: [
    #         'member'
    #       ],
    #       disabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorTerminationOutput
    #   resp.data.termination #=> Types::Termination
    #   resp.data.termination.cps_limit #=> Integer
    #   resp.data.termination.default_phone_number #=> String
    #   resp.data.termination.calling_regions #=> Array<String>
    #   resp.data.termination.calling_regions[0] #=> String
    #   resp.data.termination.cidr_allowed_list #=> Array<String>
    #   resp.data.termination.cidr_allowed_list[0] #=> String
    #   resp.data.termination.disabled #=> Boolean
    #
    def put_voice_connector_termination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorTerminationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorTerminationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorTermination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorTermination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorTermination,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorTerminationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_termination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds termination SIP credentials for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::PutVoiceConnectorTerminationCredentialsInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [Array<Credential>] :credentials
    #   <p>The termination SIP credentials.</p>
    #
    # @return [Types::PutVoiceConnectorTerminationCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_termination_credentials(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     credentials: [
    #       {
    #         username: 'Username',
    #         password: 'Password'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutVoiceConnectorTerminationCredentialsOutput
    #
    def put_voice_connector_termination_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutVoiceConnectorTerminationCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutVoiceConnectorTerminationCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutVoiceConnectorTerminationCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::PutVoiceConnectorTerminationCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutVoiceConnectorTerminationCredentials,
        stubs: @stubs,
        params_class: Params::PutVoiceConnectorTerminationCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_voice_connector_termination_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Redacts message content, but not metadata. The message exists in the back end, but the
    #          action returns null content, and the state shows as redacted.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RedactChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message being redacted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::RedactChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RedactChannelMessageOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.message_id #=> String
    #
    def redact_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RedactChannelMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RedactChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RedactChannelMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::RedactChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RedactChannelMessage,
        stubs: @stubs,
        params_class: Params::RedactChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :redact_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Redacts the specified message from the specified Amazon Chime conversation.</p>
    #
    # @param [Hash] params
    #   See {Types::RedactConversationMessageInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :conversation_id
    #   <p>The conversation ID.</p>
    #
    # @option params [String] :message_id
    #   <p>The message ID.</p>
    #
    # @return [Types::RedactConversationMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_conversation_message(
    #     account_id: 'AccountId', # required
    #     conversation_id: 'ConversationId', # required
    #     message_id: 'MessageId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RedactConversationMessageOutput
    #
    def redact_conversation_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RedactConversationMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RedactConversationMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RedactConversationMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::RedactConversationMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RedactConversationMessage,
        stubs: @stubs,
        params_class: Params::RedactConversationMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :redact_conversation_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Redacts the specified message from the specified Amazon Chime channel.</p>
    #
    # @param [Hash] params
    #   See {Types::RedactRoomMessageInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [String] :message_id
    #   <p>The message ID.</p>
    #
    # @return [Types::RedactRoomMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_room_message(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     message_id: 'MessageId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RedactRoomMessageOutput
    #
    def redact_room_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RedactRoomMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RedactRoomMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RedactRoomMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::RedactRoomMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RedactRoomMessage,
        stubs: @stubs,
        params_class: Params::RedactRoomMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :redact_room_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Regenerates the security token for a bot.</p>
    #
    # @param [Hash] params
    #   See {Types::RegenerateSecurityTokenInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    #
    # @return [Types::RegenerateSecurityTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.regenerate_security_token(
    #     account_id: 'AccountId', # required
    #     bot_id: 'BotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegenerateSecurityTokenOutput
    #   resp.data.bot #=> Types::Bot
    #   resp.data.bot.bot_id #=> String
    #   resp.data.bot.user_id #=> String
    #   resp.data.bot.display_name #=> String
    #   resp.data.bot.bot_type #=> String, one of ["ChatBot"]
    #   resp.data.bot.disabled #=> Boolean
    #   resp.data.bot.created_timestamp #=> Time
    #   resp.data.bot.updated_timestamp #=> Time
    #   resp.data.bot.bot_email #=> String
    #   resp.data.bot.security_token #=> String
    #
    def regenerate_security_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegenerateSecurityTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegenerateSecurityTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegenerateSecurityToken
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::RegenerateSecurityToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegenerateSecurityToken,
        stubs: @stubs,
        params_class: Params::RegenerateSecurityTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :regenerate_security_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns
    #             the <a>User</a> object with the updated personal meeting PIN.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetPersonalPINInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @return [Types::ResetPersonalPINOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_personal_pin(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetPersonalPINOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.user_id #=> String
    #   resp.data.user.account_id #=> String
    #   resp.data.user.primary_email #=> String
    #   resp.data.user.primary_provisioned_number #=> String
    #   resp.data.user.display_name #=> String
    #   resp.data.user.license_type #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.user.user_type #=> String, one of ["PrivateUser", "SharedDevice"]
    #   resp.data.user.user_registration_status #=> String, one of ["Unregistered", "Registered", "Suspended"]
    #   resp.data.user.user_invitation_status #=> String, one of ["Pending", "Accepted", "Failed"]
    #   resp.data.user.registered_on #=> Time
    #   resp.data.user.invited_on #=> Time
    #   resp.data.user.alexa_for_business_metadata #=> Types::AlexaForBusinessMetadata
    #   resp.data.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.data.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.data.user.personal_pin #=> String
    #
    def reset_personal_pin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetPersonalPINInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetPersonalPINInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetPersonalPIN
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::ResetPersonalPIN
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetPersonalPIN,
        stubs: @stubs,
        params_class: Params::ResetPersonalPINOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_personal_pin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves a phone number from the <b>Deletion queue</b> back into the
    #             phone number <b>Inventory</b>.</p>
    #
    # @param [Hash] params
    #   See {Types::RestorePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>The phone number.</p>
    #
    # @return [Types::RestorePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_phone_number(
    #     phone_number_id: 'PhoneNumberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestorePhoneNumberOutput
    #   resp.data.phone_number #=> Types::PhoneNumber
    #   resp.data.phone_number.phone_number_id #=> String
    #   resp.data.phone_number.e164_phone_number #=> String
    #   resp.data.phone_number.country #=> String
    #   resp.data.phone_number.type #=> String, one of ["Local", "TollFree"]
    #   resp.data.phone_number.product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_number.status #=> String, one of ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #   resp.data.phone_number.capabilities #=> Types::PhoneNumberCapabilities
    #   resp.data.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.data.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.data.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.data.phone_number.associations #=> Array<PhoneNumberAssociation>
    #   resp.data.phone_number.associations[0] #=> Types::PhoneNumberAssociation
    #   resp.data.phone_number.associations[0].value #=> String
    #   resp.data.phone_number.associations[0].name #=> String, one of ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #   resp.data.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.data.phone_number.calling_name #=> String
    #   resp.data.phone_number.calling_name_status #=> String, one of ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"]
    #   resp.data.phone_number.created_timestamp #=> Time
    #   resp.data.phone_number.updated_timestamp #=> Time
    #   resp.data.phone_number.deletion_timestamp #=> Time
    #
    def restore_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestorePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestorePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestorePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::RestorePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestorePhoneNumber,
        stubs: @stubs,
        params_class: Params::RestorePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for phone numbers that can be ordered. For US numbers, provide at least one of
    #             the following search filters: <code>AreaCode</code>, <code>City</code>,
    #                 <code>State</code>, or <code>TollFreePrefix</code>. If you provide
    #             <code>City</code>, you must also provide <code>State</code>. Numbers outside the US only
    #             support the <code>PhoneNumberType</code> filter, which you must use.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchAvailablePhoneNumbersInput}.
    #
    # @option params [String] :area_code
    #   <p>The area code used to filter results. Only applies to the US.</p>
    #
    # @option params [String] :city
    #   <p>The city used to filter results. Only applies to the US.</p>
    #
    # @option params [String] :country
    #   <p>The country used to filter results. Defaults to the US Format: ISO 3166-1 alpha-2.</p>
    #
    # @option params [String] :state
    #   <p>The state used to filter results. Required only if you provide <code>City</code>. Only applies to the US.</p>
    #
    # @option params [String] :toll_free_prefix
    #   <p>The toll-free prefix that you use to filter results. Only applies to the US.</p>
    #
    # @option params [String] :phone_number_type
    #   <p>The phone number type used to filter results. Required for non-US numbers.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #
    # @return [Types::SearchAvailablePhoneNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers(
    #     area_code: 'AreaCode',
    #     city: 'City',
    #     country: 'Country',
    #     state: 'State',
    #     toll_free_prefix: 'TollFreePrefix',
    #     phone_number_type: 'Local', # accepts ["Local", "TollFree"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchAvailablePhoneNumbersOutput
    #   resp.data.e164_phone_numbers #=> Array<String>
    #   resp.data.e164_phone_numbers[0] #=> String
    #   resp.data.next_token #=> String
    #
    def search_available_phone_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchAvailablePhoneNumbersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchAvailablePhoneNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchAvailablePhoneNumbers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::SearchAvailablePhoneNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchAvailablePhoneNumbers,
        stubs: @stubs,
        params_class: Params::SearchAvailablePhoneNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_available_phone_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a message to a particular channel that the member is a part of.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #
    #             <p>Also, <code>STANDARD</code> messages can contain 4KB of data and the 1KB of metadata.
    #                <code>CONTROL</code> messages can contain 30 bytes of data and no metadata.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::SendChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :content
    #   <p>The content of the message.</p>
    #
    # @option params [String] :type
    #   <p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>
    #
    # @option params [String] :persistence
    #   <p>Boolean that controls whether the message is persisted on the back end. Required.</p>
    #
    # @option params [String] :metadata
    #   <p>The optional metadata for each message.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The <code>Idempotency</code> token for each client request.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::SendChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     content: 'Content', # required
    #     type: 'STANDARD', # required - accepts ["STANDARD", "CONTROL"]
    #     persistence: 'PERSISTENT', # required - accepts ["PERSISTENT", "NON_PERSISTENT"]
    #     metadata: 'Metadata',
    #     client_request_token: 'ClientRequestToken', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendChannelMessageOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.message_id #=> String
    #
    def send_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendChannelMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendChannelMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::SendChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendChannelMessage,
        stubs: @stubs,
        params_class: Params::SendChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts transcription for the specified <code>meetingId</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::StartMeetingTranscriptionInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting being transcribed.</p>
    #
    # @option params [TranscriptionConfiguration] :transcription_configuration
    #   <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>
    #
    # @return [Types::StartMeetingTranscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_meeting_transcription(
    #     meeting_id: 'MeetingId', # required
    #     transcription_configuration: {
    #       engine_transcribe_settings: {
    #         language_code: 'en-US', # required - accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #         vocabulary_filter_method: 'remove', # accepts ["remove", "mask", "tag"]
    #         vocabulary_filter_name: 'VocabularyFilterName',
    #         vocabulary_name: 'VocabularyName',
    #         region: 'us-east-2', # accepts ["us-east-2", "us-east-1", "us-west-2", "ap-northeast-2", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "sa-east-1", "auto"]
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: 'low', # accepts ["low", "medium", "high"]
    #         content_identification_type: 'PII', # accepts ["PII"]
    #         content_redaction_type: 'PII', # accepts ["PII"]
    #         pii_entity_types: 'PiiEntityTypes',
    #         language_model_name: 'LanguageModelName'
    #       },
    #       engine_transcribe_medical_settings: {
    #         language_code: 'en-US', # required - accepts ["en-US"]
    #         specialty: 'PRIMARYCARE', # required - accepts ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #         type: 'CONVERSATION', # required - accepts ["CONVERSATION", "DICTATION"]
    #         vocabulary_name: 'VocabularyName',
    #         region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-2", "ap-southeast-2", "ca-central-1", "eu-west-1", "auto"]
    #         content_identification_type: 'PHI' # accepts ["PHI"]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMeetingTranscriptionOutput
    #
    def start_meeting_transcription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMeetingTranscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMeetingTranscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMeetingTranscription
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::UnprocessableEntityException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::StartMeetingTranscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMeetingTranscription,
        stubs: @stubs,
        params_class: Params::StartMeetingTranscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_meeting_transcription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops transcription for the specified <code>meetingId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopMeetingTranscriptionInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting for which you stop transcription.</p>
    #
    # @return [Types::StopMeetingTranscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_meeting_transcription(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopMeetingTranscriptionOutput
    #
    def stop_meeting_transcription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopMeetingTranscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopMeetingTranscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopMeetingTranscription
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnprocessableEntityException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::StopMeetingTranscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopMeetingTranscription,
        stubs: @stubs,
        params_class: Params::StopMeetingTranscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_meeting_transcription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK attendee.</p>
    #
    # @param [Hash] params
    #   See {Types::TagAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @return [Types::TagAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId', # required
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
    #   resp.data #=> Types::TagAttendeeOutput
    #
    def tag_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagAttendeeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagAttendee
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::TagAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagAttendee,
        stubs: @stubs,
        params_class: Params::TagAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK meeting.</p>
    #
    # @param [Hash] params
    #   See {Types::TagMeetingInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @return [Types::TagMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_meeting(
    #     meeting_id: 'MeetingId', # required
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
    #   resp.data #=> Types::TagMeetingOutput
    #
    def tag_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagMeetingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagMeeting
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::TagMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagMeeting,
        stubs: @stubs,
        params_class: Params::TagMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK meeting resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Untags the specified tags from the specified Amazon Chime SDK attendee.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::UntagAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagAttendeeOutput
    #
    def untag_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagAttendeeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagAttendee
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UntagAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagAttendee,
        stubs: @stubs,
        params_class: Params::UntagAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Untags the specified tags from the specified Amazon Chime SDK meeting.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagMeetingInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::UntagMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_meeting(
    #     meeting_id: 'MeetingId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagMeetingOutput
    #
    def untag_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagMeetingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagMeeting
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UntagMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagMeeting,
        stubs: @stubs,
        params_class: Params::UntagMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Untags the specified tags from the specified Amazon Chime SDK meeting resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Updates account details for the specified Amazon Chime account. Currently, only account name and default license updates are supported for this action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :name
    #   <p>The new name for the specified Amazon Chime account.</p>
    #
    # @option params [String] :default_license
    #   <p>The default license applied when you add users to an Amazon Chime account.</p>
    #
    # @return [Types::UpdateAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account(
    #     account_id: 'AccountId', # required
    #     name: 'Name',
    #     default_license: 'Basic' # accepts ["Basic", "Plus", "Pro", "ProTrial"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountOutput
    #   resp.data.account #=> Types::Account
    #   resp.data.account.aws_account_id #=> String
    #   resp.data.account.account_id #=> String
    #   resp.data.account.name #=> String
    #   resp.data.account.account_type #=> String, one of ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"]
    #   resp.data.account.created_timestamp #=> Time
    #   resp.data.account.default_license #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.account.supported_licenses #=> Array<String>
    #   resp.data.account.supported_licenses[0] #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.account.account_status #=> String, one of ["Suspended", "Active"]
    #   resp.data.account.signin_delegate_groups #=> Array<SigninDelegateGroup>
    #   resp.data.account.signin_delegate_groups[0] #=> Types::SigninDelegateGroup
    #   resp.data.account.signin_delegate_groups[0].group_name #=> String
    #
    def update_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccount,
        stubs: @stubs,
        params_class: Params::UpdateAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings for the specified Amazon Chime account. You can update settings for
    #             remote control of shared screens, or for the dial-out option. For more information about
    #             these settings, see <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use
    #                 the Policies Page</a> in the <i>Amazon Chime Administration
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountSettingsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [AccountSettings] :account_settings
    #   <p>The Amazon Chime account settings to update.</p>
    #
    # @return [Types::UpdateAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings(
    #     account_id: 'AccountId', # required
    #     account_settings: {
    #       disable_remote_control: false,
    #       enable_dial_out: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountSettingsOutput
    #
    def update_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountSettings,
        stubs: @stubs,
        params_class: Params::UpdateAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates <code>AppInstance</code> metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInstanceInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name that you want to change.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata that you want to change.</p>
    #
    # @return [Types::UpdateAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     name: 'Name', # required
    #     metadata: 'Metadata'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppInstanceOutput
    #   resp.data.app_instance_arn #=> String
    #
    def update_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAppInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAppInstance,
        stubs: @stubs,
        params_class: Params::UpdateAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of an <code>AppInstanceUser</code>. You can update names and metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::UpdateAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     name: 'Name', # required
    #     metadata: 'Metadata'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppInstanceUserOutput
    #   resp.data.app_instance_user_arn #=> String
    #
    def update_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "identity-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAppInstanceUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAppInstanceUser,
        stubs: @stubs,
        params_class: Params::UpdateAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBotInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    #
    # @option params [Boolean] :disabled
    #   <p>When true, stops the specified bot from running in your account.</p>
    #
    # @return [Types::UpdateBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot(
    #     account_id: 'AccountId', # required
    #     bot_id: 'BotId', # required
    #     disabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBotOutput
    #   resp.data.bot #=> Types::Bot
    #   resp.data.bot.bot_id #=> String
    #   resp.data.bot.user_id #=> String
    #   resp.data.bot.display_name #=> String
    #   resp.data.bot.bot_type #=> String, one of ["ChatBot"]
    #   resp.data.bot.disabled #=> Boolean
    #   resp.data.bot.created_timestamp #=> Time
    #   resp.data.bot.updated_timestamp #=> Time
    #   resp.data.bot.bot_email #=> String
    #   resp.data.bot.security_token #=> String
    #
    def update_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBot,
        stubs: @stubs,
        params_class: Params::UpdateBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a channel's attributes.</p>
    #          <p>
    #             <b>Restriction</b>: You can't change a channel's privacy. </p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    #
    # @option params [String] :mode
    #   <p>The mode of the update request.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata for the update request.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::UpdateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel(
    #     channel_arn: 'ChannelArn', # required
    #     name: 'Name', # required
    #     mode: 'UNRESTRICTED', # required - accepts ["UNRESTRICTED", "RESTRICTED"]
    #     metadata: 'Metadata',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelOutput
    #   resp.data.channel_arn #=> String
    #
    def update_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannel,
        stubs: @stubs,
        params_class: Params::UpdateChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the content of a message.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID string of the message being updated.</p>
    #
    # @option params [String] :content
    #   <p>The content of the message being updated.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the message being updated.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::UpdateChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     content: 'Content',
    #     metadata: 'Metadata',
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelMessageOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.message_id #=> String
    #
    def update_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannelMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannelMessage,
        stubs: @stubs,
        params_class: Params::UpdateChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The details of the time when a user last read messages in a channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelReadMarkerInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::UpdateChannelReadMarkerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_read_marker(
    #     channel_arn: 'ChannelArn', # required
    #     chime_bearer: 'ChimeBearer'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelReadMarkerOutput
    #   resp.data.channel_arn #=> String
    #
    def update_channel_read_marker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelReadMarkerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelReadMarkerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "messaging-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannelReadMarker
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateChannelReadMarker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannelReadMarker,
        stubs: @stubs,
        params_class: Params::UpdateChannelReadMarkerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel_read_marker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGlobalSettingsInput}.
    #
    # @option params [BusinessCallingSettings] :business_calling
    #   <p>The Amazon Chime Business Calling settings.</p>
    #
    # @option params [VoiceConnectorSettings] :voice_connector
    #   <p>The Amazon Chime Voice Connector settings.</p>
    #
    # @return [Types::UpdateGlobalSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings(
    #     business_calling: {
    #       cdr_bucket: 'CdrBucket'
    #     },
    #     voice_connector: {
    #       cdr_bucket: 'CdrBucket'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGlobalSettingsOutput
    #
    def update_global_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateGlobalSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGlobalSettings,
        stubs: @stubs,
        params_class: Params::UpdateGlobalSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_global_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates phone number details, such as product type or calling name, for the specified phone number ID. You can update one phone number detail at a time. For example, you can update either the product type or the calling name in one action.</p>
    #          <p>For toll-free numbers, you cannot use the Amazon Chime Business Calling product type. For numbers outside the U.S., you must use the Amazon Chime SIP Media Application Dial-In product type.</p>
    #          <p>Updates to outbound calling names can take 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    #
    # @option params [String] :product_type
    #   <p>The product type.</p>
    #
    # @option params [String] :calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #
    # @return [Types::UpdatePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number(
    #     phone_number_id: 'PhoneNumberId', # required
    #     product_type: 'BusinessCalling', # accepts ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #     calling_name: 'CallingName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePhoneNumberOutput
    #   resp.data.phone_number #=> Types::PhoneNumber
    #   resp.data.phone_number.phone_number_id #=> String
    #   resp.data.phone_number.e164_phone_number #=> String
    #   resp.data.phone_number.country #=> String
    #   resp.data.phone_number.type #=> String, one of ["Local", "TollFree"]
    #   resp.data.phone_number.product_type #=> String, one of ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #   resp.data.phone_number.status #=> String, one of ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #   resp.data.phone_number.capabilities #=> Types::PhoneNumberCapabilities
    #   resp.data.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.data.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.data.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.data.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.data.phone_number.associations #=> Array<PhoneNumberAssociation>
    #   resp.data.phone_number.associations[0] #=> Types::PhoneNumberAssociation
    #   resp.data.phone_number.associations[0].value #=> String
    #   resp.data.phone_number.associations[0].name #=> String, one of ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #   resp.data.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.data.phone_number.calling_name #=> String
    #   resp.data.phone_number.calling_name_status #=> String, one of ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"]
    #   resp.data.phone_number.created_timestamp #=> Time
    #   resp.data.phone_number.updated_timestamp #=> Time
    #   resp.data.phone_number.deletion_timestamp #=> Time
    #
    def update_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdatePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePhoneNumber,
        stubs: @stubs,
        params_class: Params::UpdatePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the phone number settings for the administrator's AWS account, such as the default
    #             outbound calling name. You can update the default outbound calling name once every seven
    #             days. Outbound calling names can take up to 72 hours to update.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePhoneNumberSettingsInput}.
    #
    # @option params [String] :calling_name
    #   <p>The default outbound calling name for the account.</p>
    #
    # @return [Types::UpdatePhoneNumberSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number_settings(
    #     calling_name: 'CallingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePhoneNumberSettingsOutput
    #
    def update_phone_number_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePhoneNumberSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePhoneNumberSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePhoneNumberSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdatePhoneNumberSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePhoneNumberSettings,
        stubs: @stubs,
        params_class: Params::UpdatePhoneNumberSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_phone_number_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified proxy session details, such as voice or SMS capabilities.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProxySessionInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    # @option params [String] :proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>The proxy session capabilities.</p>
    #
    # @option params [Integer] :expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #
    # @return [Types::UpdateProxySessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_proxy_session(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     proxy_session_id: 'ProxySessionId', # required
    #     capabilities: [
    #       'Voice' # accepts ["Voice", "SMS"]
    #     ], # required
    #     expiry_minutes: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProxySessionOutput
    #   resp.data.proxy_session #=> Types::ProxySession
    #   resp.data.proxy_session.voice_connector_id #=> String
    #   resp.data.proxy_session.proxy_session_id #=> String
    #   resp.data.proxy_session.name #=> String
    #   resp.data.proxy_session.status #=> String, one of ["Open", "InProgress", "Closed"]
    #   resp.data.proxy_session.expiry_minutes #=> Integer
    #   resp.data.proxy_session.capabilities #=> Array<String>
    #   resp.data.proxy_session.capabilities[0] #=> String, one of ["Voice", "SMS"]
    #   resp.data.proxy_session.created_timestamp #=> Time
    #   resp.data.proxy_session.updated_timestamp #=> Time
    #   resp.data.proxy_session.ended_timestamp #=> Time
    #   resp.data.proxy_session.participants #=> Array<Participant>
    #   resp.data.proxy_session.participants[0] #=> Types::Participant
    #   resp.data.proxy_session.participants[0].phone_number #=> String
    #   resp.data.proxy_session.participants[0].proxy_phone_number #=> String
    #   resp.data.proxy_session.number_selection_behavior #=> String, one of ["PreferSticky", "AvoidSticky"]
    #   resp.data.proxy_session.geo_match_level #=> String, one of ["Country", "AreaCode"]
    #   resp.data.proxy_session.geo_match_params #=> Types::GeoMatchParams
    #   resp.data.proxy_session.geo_match_params.country #=> String
    #   resp.data.proxy_session.geo_match_params.area_code #=> String
    #
    def update_proxy_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProxySessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProxySessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProxySession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateProxySession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProxySession,
        stubs: @stubs,
        params_class: Params::UpdateProxySessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_proxy_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates room details, such as the room name, for a room in an Amazon Chime Enterprise account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoomInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [String] :name
    #   <p>The room name.</p>
    #
    # @return [Types::UpdateRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoomOutput
    #   resp.data.room #=> Types::Room
    #   resp.data.room.room_id #=> String
    #   resp.data.room.name #=> String
    #   resp.data.room.account_id #=> String
    #   resp.data.room.created_by #=> String
    #   resp.data.room.created_timestamp #=> Time
    #   resp.data.room.updated_timestamp #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
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

    # <p>Updates room membership details, such as the member role, for a room in an Amazon Chime
    #             Enterprise account. The member role designates whether the member is a chat room
    #             administrator or a general chat room member. The member role can be updated only for
    #             user IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoomMembershipInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    #
    # @option params [String] :member_id
    #   <p>The member ID.</p>
    #
    # @option params [String] :role
    #   <p>The role of the member.</p>
    #
    # @return [Types::UpdateRoomMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room_membership(
    #     account_id: 'AccountId', # required
    #     room_id: 'RoomId', # required
    #     member_id: 'MemberId', # required
    #     role: 'Administrator' # accepts ["Administrator", "Member"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoomMembershipOutput
    #   resp.data.room_membership #=> Types::RoomMembership
    #   resp.data.room_membership.room_id #=> String
    #   resp.data.room_membership.member #=> Types::Member
    #   resp.data.room_membership.member.member_id #=> String
    #   resp.data.room_membership.member.member_type #=> String, one of ["User", "Bot", "Webhook"]
    #   resp.data.room_membership.member.email #=> String
    #   resp.data.room_membership.member.full_name #=> String
    #   resp.data.room_membership.member.account_id #=> String
    #   resp.data.room_membership.role #=> String, one of ["Administrator", "Member"]
    #   resp.data.room_membership.invited_by #=> String
    #   resp.data.room_membership.updated_timestamp #=> Time
    #
    def update_room_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoomMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoomMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoomMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateRoomMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoomMembership,
        stubs: @stubs,
        params_class: Params::UpdateRoomMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_room_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of the specified SIP media application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSipMediaApplicationInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    # @option params [String] :name
    #   <p>The new name for the specified SIP media application.</p>
    #
    # @option params [Array<SipMediaApplicationEndpoint>] :endpoints
    #   <p>The new set of endpoints for the specified SIP media application.</p>
    #
    # @return [Types::UpdateSipMediaApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sip_media_application(
    #     sip_media_application_id: 'SipMediaApplicationId', # required
    #     name: 'Name',
    #     endpoints: [
    #       {
    #         lambda_arn: 'LambdaArn'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSipMediaApplicationOutput
    #   resp.data.sip_media_application #=> Types::SipMediaApplication
    #   resp.data.sip_media_application.sip_media_application_id #=> String
    #   resp.data.sip_media_application.aws_region #=> String
    #   resp.data.sip_media_application.name #=> String
    #   resp.data.sip_media_application.endpoints #=> Array<SipMediaApplicationEndpoint>
    #   resp.data.sip_media_application.endpoints[0] #=> Types::SipMediaApplicationEndpoint
    #   resp.data.sip_media_application.endpoints[0].lambda_arn #=> String
    #   resp.data.sip_media_application.created_timestamp #=> Time
    #   resp.data.sip_media_application.updated_timestamp #=> Time
    #
    def update_sip_media_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSipMediaApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSipMediaApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSipMediaApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateSipMediaApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSipMediaApplication,
        stubs: @stubs,
        params_class: Params::UpdateSipMediaApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sip_media_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Invokes the AWS Lambda function associated with the SIP media application and transaction ID in an update request. The Lambda function can then return a new set of actions.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSipMediaApplicationCallInput}.
    #
    # @option params [String] :sip_media_application_id
    #   <p>The ID of the SIP media application handling the call.</p>
    #
    # @option params [String] :transaction_id
    #   <p>The ID of the call transaction.</p>
    #
    # @option params [Hash<String, String>] :arguments
    #   <p>Arguments made available to the Lambda function as part of the <code>CALL_UPDATE_REQUESTED</code> event. Can contain 0-20 key-value pairs.</p>
    #
    # @return [Types::UpdateSipMediaApplicationCallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sip_media_application_call(
    #     sip_media_application_id: 'SipMediaApplicationId', # required
    #     transaction_id: 'TransactionId', # required
    #     arguments: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSipMediaApplicationCallOutput
    #   resp.data.sip_media_application_call #=> Types::SipMediaApplicationCall
    #   resp.data.sip_media_application_call.transaction_id #=> String
    #
    def update_sip_media_application_call(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSipMediaApplicationCallInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSipMediaApplicationCallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSipMediaApplicationCall
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateSipMediaApplicationCall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSipMediaApplicationCall,
        stubs: @stubs,
        params_class: Params::UpdateSipMediaApplicationCallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sip_media_application_call
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of the specified SIP rule.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSipRuleInput}.
    #
    # @option params [String] :sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    # @option params [String] :name
    #   <p>The new name for the specified SIP rule.</p>
    #
    # @option params [Boolean] :disabled
    #   <p>The new value specified to indicate whether the rule is disabled.</p>
    #
    # @option params [Array<SipRuleTargetApplication>] :target_applications
    #   <p>The new value of the list of target applications.</p>
    #
    # @return [Types::UpdateSipRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sip_rule(
    #     sip_rule_id: 'SipRuleId', # required
    #     name: 'Name', # required
    #     disabled: false,
    #     target_applications: [
    #       {
    #         sip_media_application_id: 'SipMediaApplicationId',
    #         priority: 1,
    #         aws_region: 'AwsRegion'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSipRuleOutput
    #   resp.data.sip_rule #=> Types::SipRule
    #   resp.data.sip_rule.sip_rule_id #=> String
    #   resp.data.sip_rule.name #=> String
    #   resp.data.sip_rule.disabled #=> Boolean
    #   resp.data.sip_rule.trigger_type #=> String, one of ["ToPhoneNumber", "RequestUriHostname"]
    #   resp.data.sip_rule.trigger_value #=> String
    #   resp.data.sip_rule.target_applications #=> Array<SipRuleTargetApplication>
    #   resp.data.sip_rule.target_applications[0] #=> Types::SipRuleTargetApplication
    #   resp.data.sip_rule.target_applications[0].sip_media_application_id #=> String
    #   resp.data.sip_rule.target_applications[0].priority #=> Integer
    #   resp.data.sip_rule.target_applications[0].aws_region #=> String
    #   resp.data.sip_rule.created_timestamp #=> Time
    #   resp.data.sip_rule.updated_timestamp #=> Time
    #
    def update_sip_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSipRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSipRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSipRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateSipRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSipRule,
        stubs: @stubs,
        params_class: Params::UpdateSipRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sip_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates user details for a specified user ID. Currently, only <code>LicenseType</code> updates are supported for this action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @option params [String] :license_type
    #   <p>The user license type to update. This must be a supported license type for the Amazon Chime
    #               account that the user belongs to.</p>
    #
    # @option params [String] :user_type
    #   <p>The user type.</p>
    #
    # @option params [AlexaForBusinessMetadata] :alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId', # required
    #     license_type: 'Basic', # accepts ["Basic", "Plus", "Pro", "ProTrial"]
    #     user_type: 'PrivateUser', # accepts ["PrivateUser", "SharedDevice"]
    #     alexa_for_business_metadata: {
    #       is_alexa_for_business_enabled: false,
    #       alexa_for_business_room_arn: 'AlexaForBusinessRoomArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.user_id #=> String
    #   resp.data.user.account_id #=> String
    #   resp.data.user.primary_email #=> String
    #   resp.data.user.primary_provisioned_number #=> String
    #   resp.data.user.display_name #=> String
    #   resp.data.user.license_type #=> String, one of ["Basic", "Plus", "Pro", "ProTrial"]
    #   resp.data.user.user_type #=> String, one of ["PrivateUser", "SharedDevice"]
    #   resp.data.user.user_registration_status #=> String, one of ["Unregistered", "Registered", "Suspended"]
    #   resp.data.user.user_invitation_status #=> String, one of ["Pending", "Accepted", "Failed"]
    #   resp.data.user.registered_on #=> Time
    #   resp.data.user.invited_on #=> Time
    #   resp.data.user.alexa_for_business_metadata #=> Types::AlexaForBusinessMetadata
    #   resp.data.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.data.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.data.user.personal_pin #=> String
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings for the specified user, such as phone number settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserSettingsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @option params [UserSettings] :user_settings
    #   <p>The user settings to update.</p>
    #
    # @return [Types::UpdateUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings(
    #     account_id: 'AccountId', # required
    #     user_id: 'UserId', # required
    #     user_settings: {
    #       telephony: {
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false # required
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserSettingsOutput
    #
    def update_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserSettings,
        stubs: @stubs,
        params_class: Params::UpdateUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates details for the specified Amazon Chime Voice Connector.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVoiceConnectorInput}.
    #
    # @option params [String] :voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Amazon Chime Voice Connector.</p>
    #
    # @option params [Boolean] :require_encryption
    #   <p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>
    #
    # @return [Types::UpdateVoiceConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_connector(
    #     voice_connector_id: 'VoiceConnectorId', # required
    #     name: 'Name', # required
    #     require_encryption: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVoiceConnectorOutput
    #   resp.data.voice_connector #=> Types::VoiceConnector
    #   resp.data.voice_connector.voice_connector_id #=> String
    #   resp.data.voice_connector.aws_region #=> String, one of ["us-east-1", "us-west-2"]
    #   resp.data.voice_connector.name #=> String
    #   resp.data.voice_connector.outbound_host_name #=> String
    #   resp.data.voice_connector.require_encryption #=> Boolean
    #   resp.data.voice_connector.created_timestamp #=> Time
    #   resp.data.voice_connector.updated_timestamp #=> Time
    #   resp.data.voice_connector.voice_connector_arn #=> String
    #
    def update_voice_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVoiceConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVoiceConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVoiceConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateVoiceConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVoiceConnector,
        stubs: @stubs,
        params_class: Params::UpdateVoiceConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_voice_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates details of the specified Amazon Chime Voice Connector group, such as the name and
    #             Amazon Chime Voice Connector priority ranking.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVoiceConnectorGroupInput}.
    #
    # @option params [String] :voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Amazon Chime Voice Connector group.</p>
    #
    # @option params [Array<VoiceConnectorItem>] :voice_connector_items
    #   <p>The <code>VoiceConnectorItems</code> to associate with the group.</p>
    #
    # @return [Types::UpdateVoiceConnectorGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_connector_group(
    #     voice_connector_group_id: 'VoiceConnectorGroupId', # required
    #     name: 'Name', # required
    #     voice_connector_items: [
    #       {
    #         voice_connector_id: 'VoiceConnectorId', # required
    #         priority: 1 # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVoiceConnectorGroupOutput
    #   resp.data.voice_connector_group #=> Types::VoiceConnectorGroup
    #   resp.data.voice_connector_group.voice_connector_group_id #=> String
    #   resp.data.voice_connector_group.name #=> String
    #   resp.data.voice_connector_group.voice_connector_items #=> Array<VoiceConnectorItem>
    #   resp.data.voice_connector_group.voice_connector_items[0] #=> Types::VoiceConnectorItem
    #   resp.data.voice_connector_group.voice_connector_items[0].voice_connector_id #=> String
    #   resp.data.voice_connector_group.voice_connector_items[0].priority #=> Integer
    #   resp.data.voice_connector_group.created_timestamp #=> Time
    #   resp.data.voice_connector_group.updated_timestamp #=> Time
    #   resp.data.voice_connector_group.voice_connector_group_arn #=> String
    #
    def update_voice_connector_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVoiceConnectorGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVoiceConnectorGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVoiceConnectorGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceFailureException, Errors::BadRequestException, Errors::ConflictException, Errors::NotFoundException, Errors::UnauthorizedClientException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ForbiddenException]),
        data_parser: Parsers::UpdateVoiceConnectorGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVoiceConnectorGroup,
        stubs: @stubs,
        params_class: Params::UpdateVoiceConnectorGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_voice_connector_group
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
