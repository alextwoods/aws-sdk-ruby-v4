# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SNS
  # An API client for AmazonSimpleNotificationService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Simple Notification Service</fullname>
  #         <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build
  #             distributed web-enabled applications. Applications can use Amazon SNS to easily push
  #             real-time notification messages to interested subscribers over multiple delivery
  #             protocols. For more information about this product see the <a href="http://aws.amazon.com/sns/">Amazon SNS product page</a>. For detailed information about Amazon SNS features
  #             and their associated API calls, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/">Amazon SNS Developer Guide</a>. </p>
  #         <p>For information on the permissions you need to use this API, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html">Identity and access management in Amazon SNS</a> in the <i>Amazon SNS Developer
  #                 Guide.</i>
  #          </p>
  #         <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming
  #             language. The SDKs contain functionality that automatically takes care of tasks such as:
  #             cryptographically signing your service requests, retrying requests, and handling error
  #             responses. For a list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>. </p>
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
    def initialize(config = AWS::SDK::SNS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds a statement to a topic's access control policy, granting access for the specified
    #             Amazon Web Services accounts to the specified actions.</p>
    #
    # @param [Hash] params
    #   See {Types::AddPermissionInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic whose access control policy you wish to modify.</p>
    #
    # @option params [String] :label
    #   <p>A unique identifier for the new policy statement.</p>
    #
    # @option params [Array<String>] :aws_account_id
    #   <p>The Amazon Web Services account IDs of the users (principals) who will be given access to the
    #               specified actions. The users must have Amazon Web Services account, but do not need to be signed up for
    #               this service.</p>
    #
    # @option params [Array<String>] :action_name
    #   <p>The action you want to allow for the specified principal(s).</p>
    #           <p>Valid values: Any Amazon SNS action name, for example <code>Publish</code>.</p>
    #
    # @return [Types::AddPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_permission(
    #     topic_arn: 'TopicArn', # required
    #     label: 'Label', # required
    #     aws_account_id: [
    #       'member'
    #     ], # required
    #     action_name: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddPermissionOutput
    #
    def add_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddPermissionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddPermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::AddPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddPermission,
        stubs: @stubs,
        params_class: Params::AddPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts a phone number and indicates whether the phone holder has opted out of
    #             receiving SMS messages from your Amazon Web Services account. You cannot send SMS messages to a number that
    #             is opted out.</p>
    #         <p>To resume sending messages, you can opt in the number by using the
    #                 <code>OptInPhoneNumber</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CheckIfPhoneNumberIsOptedOutInput}.
    #
    # @option params [String] :phone_number
    #   <p>The phone number for which you want to check the opt out status.</p>
    #
    # @return [Types::CheckIfPhoneNumberIsOptedOutOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_if_phone_number_is_opted_out(
    #     phone_number: 'phoneNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckIfPhoneNumberIsOptedOutOutput
    #   resp.data.is_opted_out #=> Boolean
    #
    def check_if_phone_number_is_opted_out(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckIfPhoneNumberIsOptedOutInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckIfPhoneNumberIsOptedOutInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckIfPhoneNumberIsOptedOut
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::CheckIfPhoneNumberIsOptedOut
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckIfPhoneNumberIsOptedOut,
        stubs: @stubs,
        params_class: Params::CheckIfPhoneNumberIsOptedOutOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :check_if_phone_number_is_opted_out
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Verifies an endpoint owner's intent to receive messages by validating the token sent
    #             to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the
    #             action creates a new subscription and returns its Amazon Resource Name (ARN). This call
    #             requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is
    #             set to "true".</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmSubscriptionInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic for which you wish to confirm a subscription.</p>
    #
    # @option params [String] :token
    #   <p>Short-lived token sent to an endpoint during the <code>Subscribe</code> action.</p>
    #
    # @option params [String] :authenticate_on_unsubscribe
    #   <p>Disallows unauthenticated unsubscribes of the subscription. If the value of this
    #               parameter is <code>true</code> and the request has an Amazon Web Services signature, then only the topic
    #               owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action
    #               requires Amazon Web Services authentication. </p>
    #
    # @return [Types::ConfirmSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_subscription(
    #     topic_arn: 'TopicArn', # required
    #     token: 'Token', # required
    #     authenticate_on_unsubscribe: 'AuthenticateOnUnsubscribe'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmSubscriptionOutput
    #   resp.data.subscription_arn #=> String
    #
    def confirm_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmSubscription
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::FilterPolicyLimitExceededException, Errors::AuthorizationErrorException, Errors::SubscriptionLimitExceededException, Errors::InternalErrorException]),
        data_parser: Parsers::ConfirmSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmSubscription,
        stubs: @stubs,
        params_class: Params::ConfirmSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a platform application object for one of the supported push notification
    #             services, such as APNS and GCM (Firebase Cloud Messaging), to which devices and mobile
    #             apps may register. You must specify <code>PlatformPrincipal</code> and
    #                 <code>PlatformCredential</code> attributes when using the
    #                 <code>CreatePlatformApplication</code> action.</p>
    #         <p>
    #             <code>PlatformPrincipal</code> and <code>PlatformCredential</code> are received from
    #             the notification service.</p>
    #         <ul>
    #             <li>
    #                 <p>For <code>ADM</code>, <code>PlatformPrincipal</code> is <code>client id</code>
    #                     and <code>PlatformCredential</code> is <code>client secret</code>.</p>
    #             </li>
    #             <li>
    #                 <p>For <code>Baidu</code>, <code>PlatformPrincipal</code> is <code>API key</code>
    #                     and <code>PlatformCredential</code> is <code>secret key</code>.</p>
    #             </li>
    #             <li>
    #                 <p>For <code>APNS</code> and <code>APNS_SANDBOX</code> using certificate credentials,
    #                         <code>PlatformPrincipal</code> is <code>SSL certificate</code> and
    #                         <code>PlatformCredential</code> is <code>private key</code>.</p>
    #             </li>
    #             <li>
    #                 <p>For <code>APNS</code> and <code>APNS_SANDBOX</code> using token credentials,
    #                     <code>PlatformPrincipal</code> is <code>signing key ID</code> and
    #                     <code>PlatformCredential</code> is <code>signing key</code>.</p>
    #             </li>
    #             <li>
    #                 <p>For <code>GCM</code> (Firebase Cloud Messaging), there is no
    #                         <code>PlatformPrincipal</code> and the <code>PlatformCredential</code> is
    #                         <code>API key</code>.</p>
    #             </li>
    #             <li>
    #                 <p>For <code>MPNS</code>, <code>PlatformPrincipal</code> is <code>TLS
    #                         certificate</code> and <code>PlatformCredential</code> is <code>private
    #                         key</code>.</p>
    #             </li>
    #             <li>
    #                 <p>For <code>WNS</code>, <code>PlatformPrincipal</code> is <code>Package Security
    #                         Identifier</code> and <code>PlatformCredential</code> is <code>secret
    #                         key</code>.</p>
    #             </li>
    #          </ul>
    #         <p>You can use the returned <code>PlatformApplicationArn</code> as an attribute for the
    #                 <code>CreatePlatformEndpoint</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePlatformApplicationInput}.
    #
    # @option params [String] :name
    #   <p>Application names must be made up of only uppercase and lowercase ASCII letters,
    #               numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters
    #               long.</p>
    #
    # @option params [String] :platform
    #   <p>The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push
    #               Notification Service), APNS_SANDBOX, and GCM (Firebase Cloud Messaging).</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html">SetPlatformApplicationAttributes</a>.</p>
    #
    # @return [Types::CreatePlatformApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_platform_application(
    #     name: 'Name', # required
    #     platform: 'Platform', # required
    #     attributes: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlatformApplicationOutput
    #   resp.data.platform_application_arn #=> String
    #
    def create_platform_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlatformApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlatformApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlatformApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::CreatePlatformApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlatformApplication,
        stubs: @stubs,
        params_class: Params::CreatePlatformApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_platform_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for a device and mobile app on one of the supported push
    #             notification services, such as GCM (Firebase Cloud Messaging) and APNS.
    #                 <code>CreatePlatformEndpoint</code> requires the <code>PlatformApplicationArn</code>
    #             that is returned from <code>CreatePlatformApplication</code>. You can use the returned
    #                 <code>EndpointArn</code> to send a message to a mobile app or by the
    #                 <code>Subscribe</code> action for subscription to a topic. The
    #                 <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester
    #             already owns an endpoint with the same device token and attributes, that endpoint's ARN
    #             is returned without creating a new endpoint. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #                 Notifications</a>. </p>
    #         <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be
    #             provided: ChannelId and UserId. The token field must also contain the ChannelId. For
    #             more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint
    #                 for Baidu</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreatePlatformEndpointInput}.
    #
    # @option params [String] :platform_application_arn
    #   <p>PlatformApplicationArn returned from CreatePlatformApplication is used to create a an
    #               endpoint.</p>
    #
    # @option params [String] :token
    #   <p>Unique identifier created by the notification service for an app on a device. The
    #               specific name for Token will vary, depending on which notification service is being
    #               used. For example, when using APNS as the notification service, you need the device
    #               token. Alternatively, when using GCM (Firebase Cloud Messaging) or ADM, the device token
    #               equivalent is called the registration ID.</p>
    #
    # @option params [String] :custom_user_data
    #   <p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The
    #               data must be in UTF-8 format and less than 2KB.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html">SetEndpointAttributes</a>.</p>
    #
    # @return [Types::CreatePlatformEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_platform_endpoint(
    #     platform_application_arn: 'PlatformApplicationArn', # required
    #     token: 'Token', # required
    #     custom_user_data: 'CustomUserData',
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlatformEndpointOutput
    #   resp.data.endpoint_arn #=> String
    #
    def create_platform_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlatformEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlatformEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlatformEndpoint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::CreatePlatformEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlatformEndpoint,
        stubs: @stubs,
        params_class: Params::CreatePlatformEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_platform_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a destination phone number to an Amazon Web Services account in the SMS sandbox and sends a
    #             one-time password (OTP) to that phone number.</p>
    #         <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send
    #                 SMS messages only to verified destination phone numbers. For more information, including how to
    #                 move out of the sandbox to send messages without restrictions,
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSMSSandboxPhoneNumberInput}.
    #
    # @option params [String] :phone_number
    #   <p>The destination phone number to verify. On verification, Amazon SNS adds this phone number
    #               to the list of verified phone numbers that you can send SMS messages to.</p>
    #
    # @option params [String] :language_code
    #   <p>The language to use for sending the OTP. The default value is
    #               <code>en-US</code>.</p>
    #
    # @return [Types::CreateSMSSandboxPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sms_sandbox_phone_number(
    #     phone_number: 'PhoneNumber', # required
    #     language_code: 'en-US' # accepts ["en-US", "en-GB", "es-419", "es-ES", "de-DE", "fr-CA", "fr-FR", "it-IT", "ja-JP", "pt-BR", "kr-KR", "zh-CN", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSMSSandboxPhoneNumberOutput
    #
    def create_sms_sandbox_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSMSSandboxPhoneNumberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSMSSandboxPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSMSSandboxPhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OptedOutException, Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException, Errors::UserErrorException]),
        data_parser: Parsers::CreateSMSSandboxPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSMSSandboxPhoneNumber,
        stubs: @stubs,
        params_class: Params::CreateSMSSandboxPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sms_sandbox_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a topic to which notifications can be published. Users can create at most
    #             100,000 standard topics (at most 1,000 FIFO topics). For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html">Creating an Amazon SNS
    #                 topic</a> in the <i>Amazon SNS Developer Guide</i>. This action is
    #             idempotent, so if the requester already owns a topic with the specified name, that
    #             topic's ARN is returned without creating a new topic.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTopicInput}.
    #
    # @option params [String] :name
    #   <p>The name of the topic you want to create.</p>
    #           <p>Constraints: Topic names must be made up of only uppercase and lowercase ASCII
    #               letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters
    #               long.</p>
    #           <p>For a FIFO (first-in-first-out) topic, the name must end with the <code>.fifo</code>
    #               suffix. </p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>CreateTopic</code> action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DisplayName</code> – The display name to use for a topic with SMS
    #                       subscriptions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FifoTopic</code> – Set to true to create a FIFO topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Policy</code> – The policy that defines who can access your
    #                       topic. By default, only the topic owner can publish or subscribe to the
    #                       topic.</p>
    #               </li>
    #            </ul>
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side
    #               encryption</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>KmsMasterKeyId</code> – The ID of an Amazon Web Services managed customer master
    #                       key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API
    #                           Reference</i>. </p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attributes apply only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>FifoTopic</code> – When this is set to <code>true</code>, a FIFO
    #                   topic is created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>ContentBasedDeduplication</code> – Enables content-based deduplication for
    #                       FIFO topics.</p>
    #
    #                   <ul>
    #                     <li>
    #                           <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
    #                               If you create a FIFO topic and this attribute is <code>false</code>, you must
    #                               specify a value for the <code>MessageDeduplicationId</code> parameter for the
    #                               <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                       </li>
    #                     <li>
    #                           <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>,
    #                               Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using
    #                               the body of the message (but not the attributes of the message).</p>
    #                           <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
    #                               action.</p>
    #                        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags to add to a new topic.</p>
    #           <note>
    #               <p>To be able to tag a topic on creation, you must have the
    #                       <code>sns:CreateTopic</code> and <code>sns:TagResource</code>
    #                   permissions.</p>
    #           </note>
    #
    # @return [Types::CreateTopicOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic(
    #     name: 'Name', # required
    #     attributes: {
    #       'key' => 'value'
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
    #   resp.data #=> Types::CreateTopicOutput
    #   resp.data.topic_arn #=> String
    #
    def create_topic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTopicInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTopicInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTopic
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSecurityException, Errors::InvalidParameterException, Errors::StaleTagException, Errors::AuthorizationErrorException, Errors::TagPolicyException, Errors::TagLimitExceededException, Errors::TopicLimitExceededException, Errors::ConcurrentAccessException, Errors::InternalErrorException]),
        data_parser: Parsers::CreateTopic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTopic,
        stubs: @stubs,
        params_class: Params::CreateTopicOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_topic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is
    #             idempotent. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #             Notifications</a>. </p>
    #         <p>When you delete an endpoint that is also subscribed to a topic, then you must also
    #             unsubscribe the endpoint from the topic.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>EndpointArn of endpoint to delete.</p>
    #
    # @return [Types::DeleteEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint(
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointOutput
    #
    def delete_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpoint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a platform application object for one of the supported push notification
    #             services, such as APNS and GCM (Firebase Cloud Messaging). For more information, see
    #                 <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS
    #                 Mobile Push Notifications</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeletePlatformApplicationInput}.
    #
    # @option params [String] :platform_application_arn
    #   <p>PlatformApplicationArn of platform application object to delete.</p>
    #
    # @return [Types::DeletePlatformApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_platform_application(
    #     platform_application_arn: 'PlatformApplicationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePlatformApplicationOutput
    #
    def delete_platform_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePlatformApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePlatformApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePlatformApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::DeletePlatformApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePlatformApplication,
        stubs: @stubs,
        params_class: Params::DeletePlatformApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_platform_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Web Services account's verified or pending phone number from the SMS sandbox.</p>
    #         <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send
    #                 SMS messages only to verified destination phone numbers. For more information, including how to
    #                 move out of the sandbox to send messages without restrictions,
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSMSSandboxPhoneNumberInput}.
    #
    # @option params [String] :phone_number
    #   <p>The destination phone number to delete.</p>
    #
    # @return [Types::DeleteSMSSandboxPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sms_sandbox_phone_number(
    #     phone_number: 'PhoneNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSMSSandboxPhoneNumberOutput
    #
    def delete_sms_sandbox_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSMSSandboxPhoneNumberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSMSSandboxPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSMSSandboxPhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::UserErrorException]),
        data_parser: Parsers::DeleteSMSSandboxPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSMSSandboxPhoneNumber,
        stubs: @stubs,
        params_class: Params::DeleteSMSSandboxPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sms_sandbox_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some
    #             messages previously sent to the topic from being delivered to subscribers. This action
    #             is idempotent, so deleting a topic that does not exist does not result in an
    #             error.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTopicInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic you want to delete.</p>
    #
    # @return [Types::DeleteTopicOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic(
    #     topic_arn: 'TopicArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTopicOutput
    #
    def delete_topic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTopicInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTopicInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTopic
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::StaleTagException, Errors::AuthorizationErrorException, Errors::TagPolicyException, Errors::ConcurrentAccessException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteTopic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTopic,
        stubs: @stubs,
        params_class: Params::DeleteTopicOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_topic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the endpoint attributes for a device on one of the supported push
    #             notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetEndpointAttributesInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>EndpointArn for GetEndpointAttributes input.</p>
    #
    # @return [Types::GetEndpointAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint_attributes(
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEndpointAttributesOutput
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #
    def get_endpoint_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEndpointAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEndpointAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEndpointAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::GetEndpointAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEndpointAttributes,
        stubs: @stubs,
        params_class: Params::GetEndpointAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_endpoint_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the attributes of the platform application object for the supported push
    #             notification services, such as APNS and GCM (Firebase Cloud Messaging). For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetPlatformApplicationAttributesInput}.
    #
    # @option params [String] :platform_application_arn
    #   <p>PlatformApplicationArn for GetPlatformApplicationAttributesInput.</p>
    #
    # @return [Types::GetPlatformApplicationAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_platform_application_attributes(
    #     platform_application_arn: 'PlatformApplicationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPlatformApplicationAttributesOutput
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #
    def get_platform_application_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPlatformApplicationAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPlatformApplicationAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPlatformApplicationAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::GetPlatformApplicationAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPlatformApplicationAttributes,
        stubs: @stubs,
        params_class: Params::GetPlatformApplicationAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_platform_application_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the settings for sending SMS messages from your Amazon Web Services account.</p>
    #         <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSMSAttributesInput}.
    #
    # @option params [Array<String>] :attributes
    #   <p>A list of the individual attribute names, such as <code>MonthlySpendLimit</code>, for
    #               which you want values.</p>
    #           <p>For all attribute names, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html">SetSMSAttributes</a>.</p>
    #           <p>If you don't use this parameter, Amazon SNS returns all SMS attributes.</p>
    #
    # @return [Types::GetSMSAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_attributes(
    #     attributes: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSMSAttributesOutput
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #
    def get_sms_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSMSAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSMSAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSMSAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::GetSMSAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSMSAttributes,
        stubs: @stubs,
        params_class: Params::GetSMSAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sms_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the SMS sandbox status for the calling Amazon Web Services account in the target Amazon Web Services Region.</p>
    #         <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send
    #                 SMS messages only to verified destination phone numbers. For more information, including how to
    #                 move out of the sandbox to send messages without restrictions,
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSMSSandboxAccountStatusInput}.
    #
    # @return [Types::GetSMSSandboxAccountStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_sandbox_account_status()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSMSSandboxAccountStatusOutput
    #   resp.data.is_in_sandbox #=> Boolean
    #
    def get_sms_sandbox_account_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSMSSandboxAccountStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSMSSandboxAccountStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSMSSandboxAccountStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::GetSMSSandboxAccountStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSMSSandboxAccountStatus,
        stubs: @stubs,
        params_class: Params::GetSMSSandboxAccountStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sms_sandbox_account_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all of the properties of a subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSubscriptionAttributesInput}.
    #
    # @option params [String] :subscription_arn
    #   <p>The ARN of the subscription whose properties you want to get.</p>
    #
    # @return [Types::GetSubscriptionAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_attributes(
    #     subscription_arn: 'SubscriptionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSubscriptionAttributesOutput
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #
    def get_subscription_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSubscriptionAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSubscriptionAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSubscriptionAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::GetSubscriptionAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSubscriptionAttributes,
        stubs: @stubs,
        params_class: Params::GetSubscriptionAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_subscription_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all of the properties of a topic. Topic properties returned might differ based
    #             on the authorization of the user.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTopicAttributesInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic whose properties you want to get.</p>
    #
    # @return [Types::GetTopicAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_topic_attributes(
    #     topic_arn: 'TopicArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTopicAttributesOutput
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #
    def get_topic_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTopicAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTopicAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTopicAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSecurityException, Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::GetTopicAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTopicAttributes,
        stubs: @stubs,
        params_class: Params::GetTopicAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_topic_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the endpoints and endpoint attributes for devices in a supported push
    #             notification service, such as GCM (Firebase Cloud Messaging) and APNS. The results for
    #                 <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited
    #             list of endpoints, up to 100. If additional records are available after the first page
    #             results, then a NextToken string will be returned. To receive the next page, you call
    #                 <code>ListEndpointsByPlatformApplication</code> again using the NextToken string
    #             received from the previous call. When there are no more records to return, NextToken
    #             will be null. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #             Notifications</a>. </p>
    #         <p>This action is throttled at 30 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::ListEndpointsByPlatformApplicationInput}.
    #
    # @option params [String] :platform_application_arn
    #   <p>PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken string is used when calling ListEndpointsByPlatformApplication action to
    #               retrieve additional records that are available after the first page results.</p>
    #
    # @return [Types::ListEndpointsByPlatformApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints_by_platform_application(
    #     platform_application_arn: 'PlatformApplicationArn', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEndpointsByPlatformApplicationOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].endpoint_arn #=> String
    #   resp.data.endpoints[0].attributes #=> Hash<String, String>
    #   resp.data.endpoints[0].attributes['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_endpoints_by_platform_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEndpointsByPlatformApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEndpointsByPlatformApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEndpointsByPlatformApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListEndpointsByPlatformApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEndpointsByPlatformApplication,
        stubs: @stubs,
        params_class: Params::ListEndpointsByPlatformApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_endpoints_by_platform_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the calling Amazon Web Services account's dedicated origination numbers and their metadata. For
    #             more information about origination numbers, see <a href="https://docs.aws.amazon.com/sns/latest/dg/channels-sms-originating-identities-origination-numbers.html">Origination numbers</a> in the <i>Amazon SNS Developer
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOriginationNumbersInput}.
    #
    # @option params [String] :next_token
    #   <p>Token that the previous <code>ListOriginationNumbers</code> request returns.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of origination numbers to return.</p>
    #
    # @return [Types::ListOriginationNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origination_numbers(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOriginationNumbersOutput
    #   resp.data.next_token #=> String
    #   resp.data.phone_numbers #=> Array<PhoneNumberInformation>
    #   resp.data.phone_numbers[0] #=> Types::PhoneNumberInformation
    #   resp.data.phone_numbers[0].created_at #=> Time
    #   resp.data.phone_numbers[0].phone_number #=> String
    #   resp.data.phone_numbers[0].status #=> String
    #   resp.data.phone_numbers[0].iso2_country_code #=> String
    #   resp.data.phone_numbers[0].route_type #=> String, one of ["Transactional", "Promotional", "Premium"]
    #   resp.data.phone_numbers[0].number_capabilities #=> Array<String>
    #   resp.data.phone_numbers[0].number_capabilities[0] #=> String, one of ["SMS", "MMS", "VOICE"]
    #
    def list_origination_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOriginationNumbersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOriginationNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOriginationNumbers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::ValidationException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListOriginationNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOriginationNumbers,
        stubs: @stubs,
        params_class: Params::ListOriginationNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_origination_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS
    #             messages to them.</p>
    #         <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page
    #             returns up to 100 phone numbers. If additional phone numbers are available after the
    #             first page of results, then a <code>NextToken</code> string will be returned. To receive
    #             the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the
    #                 <code>NextToken</code> string received from the previous call. When there are no
    #             more records to return, <code>NextToken</code> will be null.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPhoneNumbersOptedOutInput}.
    #
    # @option params [String] :next_token
    #   <p>A <code>NextToken</code> string is used when you call the
    #                   <code>ListPhoneNumbersOptedOut</code> action to retrieve additional records that are
    #               available after the first page of results.</p>
    #
    # @return [Types::ListPhoneNumbersOptedOutOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers_opted_out(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPhoneNumbersOptedOutOutput
    #   resp.data.phone_numbers #=> Array<String>
    #   resp.data.phone_numbers[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_phone_numbers_opted_out(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPhoneNumbersOptedOutInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPhoneNumbersOptedOutInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPhoneNumbersOptedOut
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListPhoneNumbersOptedOut
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPhoneNumbersOptedOut,
        stubs: @stubs,
        params_class: Params::ListPhoneNumbersOptedOutOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_phone_numbers_opted_out
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the platform application objects for the supported push notification services,
    #             such as APNS and GCM (Firebase Cloud Messaging). The results for
    #                 <code>ListPlatformApplications</code> are paginated and return a limited list of
    #             applications, up to 100. If additional records are available after the first page
    #             results, then a NextToken string will be returned. To receive the next page, you call
    #                 <code>ListPlatformApplications</code> using the NextToken string received from the
    #             previous call. When there are no more records to return, <code>NextToken</code> will be
    #             null. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #             Notifications</a>. </p>
    #         <p>This action is throttled at 15 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlatformApplicationsInput}.
    #
    # @option params [String] :next_token
    #   <p>NextToken string is used when calling ListPlatformApplications action to retrieve
    #               additional records that are available after the first page results.</p>
    #
    # @return [Types::ListPlatformApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_platform_applications(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlatformApplicationsOutput
    #   resp.data.platform_applications #=> Array<PlatformApplication>
    #   resp.data.platform_applications[0] #=> Types::PlatformApplication
    #   resp.data.platform_applications[0].platform_application_arn #=> String
    #   resp.data.platform_applications[0].attributes #=> Hash<String, String>
    #   resp.data.platform_applications[0].attributes['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_platform_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlatformApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlatformApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlatformApplications
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListPlatformApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlatformApplications,
        stubs: @stubs,
        params_class: Params::ListPlatformApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_platform_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the calling Amazon Web Services account's current verified and pending destination phone numbers
    #             in the SMS sandbox.</p>
    #         <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send
    #                 SMS messages only to verified destination phone numbers. For more information, including how to
    #                 move out of the sandbox to send messages without restrictions,
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSMSSandboxPhoneNumbersInput}.
    #
    # @option params [String] :next_token
    #   <p>Token that the previous <code>ListSMSSandboxPhoneNumbersInput</code> request
    #               returns.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of phone numbers to return.</p>
    #
    # @return [Types::ListSMSSandboxPhoneNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sms_sandbox_phone_numbers(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSMSSandboxPhoneNumbersOutput
    #   resp.data.phone_numbers #=> Array<SMSSandboxPhoneNumber>
    #   resp.data.phone_numbers[0] #=> Types::SMSSandboxPhoneNumber
    #   resp.data.phone_numbers[0].phone_number #=> String
    #   resp.data.phone_numbers[0].status #=> String, one of ["Pending", "Verified"]
    #   resp.data.next_token #=> String
    #
    def list_sms_sandbox_phone_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSMSSandboxPhoneNumbersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSMSSandboxPhoneNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSMSSandboxPhoneNumbers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::ListSMSSandboxPhoneNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSMSSandboxPhoneNumbers,
        stubs: @stubs,
        params_class: Params::ListSMSSandboxPhoneNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sms_sandbox_phone_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the requester's subscriptions. Each call returns a limited list of
    #             subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is
    #             also returned. Use the <code>NextToken</code> parameter in a new
    #                 <code>ListSubscriptions</code> call to get further results.</p>
    #         <p>This action is throttled at 30 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::ListSubscriptionsInput}.
    #
    # @option params [String] :next_token
    #   <p>Token returned by the previous <code>ListSubscriptions</code> request.</p>
    #
    # @return [Types::ListSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscriptions(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSubscriptionsOutput
    #   resp.data.subscriptions #=> Array<Subscription>
    #   resp.data.subscriptions[0] #=> Types::Subscription
    #   resp.data.subscriptions[0].subscription_arn #=> String
    #   resp.data.subscriptions[0].owner #=> String
    #   resp.data.subscriptions[0].protocol #=> String
    #   resp.data.subscriptions[0].endpoint #=> String
    #   resp.data.subscriptions[0].topic_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSubscriptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSubscriptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSubscriptions,
        stubs: @stubs,
        params_class: Params::ListSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the subscriptions to a specific topic. Each call returns a limited
    #             list of subscriptions, up to 100. If there are more subscriptions, a
    #                 <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in
    #             a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>
    #         <p>This action is throttled at 30 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::ListSubscriptionsByTopicInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic for which you wish to find subscriptions.</p>
    #
    # @option params [String] :next_token
    #   <p>Token returned by the previous <code>ListSubscriptionsByTopic</code> request.</p>
    #
    # @return [Types::ListSubscriptionsByTopicOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscriptions_by_topic(
    #     topic_arn: 'TopicArn', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSubscriptionsByTopicOutput
    #   resp.data.subscriptions #=> Array<Subscription>
    #   resp.data.subscriptions[0] #=> Types::Subscription
    #   resp.data.subscriptions[0].subscription_arn #=> String
    #   resp.data.subscriptions[0].owner #=> String
    #   resp.data.subscriptions[0].protocol #=> String
    #   resp.data.subscriptions[0].endpoint #=> String
    #   resp.data.subscriptions[0].topic_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_subscriptions_by_topic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSubscriptionsByTopicInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSubscriptionsByTopicInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSubscriptionsByTopic
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListSubscriptionsByTopic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSubscriptionsByTopic,
        stubs: @stubs,
        params_class: Params::ListSubscriptionsByTopicOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_subscriptions_by_topic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags added to the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the
    #                 <i>Amazon Simple Notification Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic for which to list tags.</p>
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
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::TagPolicyException, Errors::ResourceNotFoundException, Errors::ConcurrentAccessException]),
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

    # <p>Returns a list of the requester's topics. Each call returns a limited list of topics,
    #             up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the
    #                 <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get
    #             further results.</p>
    #         <p>This action is throttled at 30 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::ListTopicsInput}.
    #
    # @option params [String] :next_token
    #   <p>Token returned by the previous <code>ListTopics</code> request.</p>
    #
    # @return [Types::ListTopicsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topics(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTopicsOutput
    #   resp.data.topics #=> Array<Topic>
    #   resp.data.topics[0] #=> Types::Topic
    #   resp.data.topics[0].topic_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_topics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTopicsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTopicsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTopics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::ListTopics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTopics,
        stubs: @stubs,
        params_class: Params::ListTopicsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_topics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this request to opt in a phone number that is opted out, which enables you to
    #             resume sending SMS messages to the number.</p>
    #         <p>You can opt in a phone number only once every 30 days.</p>
    #
    # @param [Hash] params
    #   See {Types::OptInPhoneNumberInput}.
    #
    # @option params [String] :phone_number
    #   <p>The phone number to opt in. Use E.164 format.</p>
    #
    # @return [Types::OptInPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.opt_in_phone_number(
    #     phone_number: 'phoneNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::OptInPhoneNumberOutput
    #
    def opt_in_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::OptInPhoneNumberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::OptInPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::OptInPhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::OptInPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::OptInPhoneNumber,
        stubs: @stubs,
        params_class: Params::OptInPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :opt_in_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a message to an Amazon SNS topic, a text message (SMS message) directly to a phone
    #             number, or a message to a mobile platform endpoint (when you specify the
    #                 <code>TargetArn</code>).</p>
    #         <p>If you send a message to a topic, Amazon SNS delivers the message to each endpoint that is
    #             subscribed to the topic. The format of the message depends on the notification protocol
    #             for each subscribed endpoint.</p>
    #         <p>When a <code>messageId</code> is returned, the message is saved and Amazon SNS
    #             immediately delivers it to subscribers.</p>
    #         <p>To use the <code>Publish</code> action for publishing a message to a mobile endpoint,
    #             such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for
    #             the TargetArn parameter. The EndpointArn is returned when making a call with the
    #                 <code>CreatePlatformEndpoint</code> action. </p>
    #         <p>For more information about formatting messages, see <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom
    #                 Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>
    #         <important>
    #             <p>You can publish messages only to topics and endpoints in the same Amazon Web Services Region.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::PublishInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The topic you want to publish to.</p>
    #           <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify
    #               a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>
    #
    # @option params [String] :target_arn
    #   <p>If you don't specify a value for the <code>TargetArn</code> parameter, you must
    #               specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code>
    #               parameters.</p>
    #
    # @option params [String] :phone_number
    #   <p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p>
    #           <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must
    #               specify a value for the <code>TargetArn</code> or <code>TopicArn</code>
    #               parameters.</p>
    #
    # @option params [String] :message
    #   <p>The message you want to send.</p>
    #           <p>If you are publishing to a topic and you want to send the same message to all
    #               transport protocols, include the text of the message as a String value. If you want to
    #               send different messages for each transport protocol, set the value of the
    #                   <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object
    #               for the <code>Message</code> parameter.
    #           </p>
    #           <p></p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>With the exception of SMS, messages must be UTF-8 encoded strings and at most
    #                       256 KB in size (262,144 bytes, not 262,144 characters).</p>
    #               </li>
    #               <li>
    #                   <p>For SMS, each message can contain up to 140 characters. This character limit
    #                       depends on the encoding schema. For example, an SMS message can contain 160 GSM
    #                       characters, 140 ASCII characters, or 70 UCS-2 characters.</p>
    #                   <p>If you publish a message that exceeds this size limit, Amazon SNS sends the message
    #                       as multiple messages, each fitting within the size limit. Messages aren't
    #                       truncated mid-word but are cut off at whole-word boundaries.</p>
    #                   <p>The total size limit for a single SMS <code>Publish</code> action is 1,600
    #                       characters.</p>
    #               </li>
    #            </ul>
    #           <p>JSON-specific constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Keys in the JSON object that correspond to supported transport protocols must
    #                       have simple JSON string values.</p>
    #               </li>
    #               <li>
    #                   <p>The values will be parsed (unescaped) before they are used in outgoing
    #                       messages.</p>
    #               </li>
    #               <li>
    #                   <p>Outbound notifications are JSON encoded (meaning that the characters will be
    #                       reescaped for sending).</p>
    #               </li>
    #               <li>
    #                   <p>Values have a minimum length of 0 (the empty string, "", is allowed).</p>
    #               </li>
    #               <li>
    #                   <p>Values have a maximum length bounded by the overall message size (so,
    #                       including multiple protocols may limit message sizes).</p>
    #               </li>
    #               <li>
    #                   <p>Non-string values will cause the key to be ignored.</p>
    #               </li>
    #               <li>
    #                   <p>Keys that do not correspond to supported transport protocols are
    #                       ignored.</p>
    #               </li>
    #               <li>
    #                   <p>Duplicate keys are not allowed.</p>
    #               </li>
    #               <li>
    #                   <p>Failure to parse or validate any key or value in the message will cause the
    #                           <code>Publish</code> call to return an error (no partial delivery).</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :subject
    #   <p>Optional parameter to be used as the "Subject" line when the message is delivered to
    #               email endpoints. This field will also be included, if present, in the standard JSON
    #               messages delivered to other endpoints.</p>
    #           <p>Constraints: Subjects must be ASCII text that begins with a letter, number, or
    #               punctuation mark; must not include line breaks or control characters; and must be less
    #               than 100 characters long.</p>
    #
    # @option params [String] :message_structure
    #   <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different
    #               message for each protocol. For example, using one publish action, you can send a short
    #               message to your SMS subscribers and a longer message to your email subscribers. If you
    #               set <code>MessageStructure</code> to <code>json</code>, the value of the
    #                   <code>Message</code> parameter must: </p>
    #           <ul>
    #               <li>
    #                   <p>be a syntactically valid JSON object; and</p>
    #               </li>
    #               <li>
    #                   <p>contain at least a top-level JSON key of "default" with a value that is a
    #                       string.</p>
    #               </li>
    #            </ul>
    #           <p>You can define other top-level keys that define the message you want to send to a
    #               specific transport protocol (e.g., "http").</p>
    #           <p>Valid value: <code>json</code>
    #           </p>
    #
    # @option params [Hash<String, MessageAttributeValue>] :message_attributes
    #   <p>Message attributes for Publish action.</p>
    #
    # @option params [String] :message_deduplication_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    #                   <code>MessageDeduplicationId</code> can contain up to 128 alphanumeric characters
    #               <code>(a-z, A-Z, 0-9)</code> and punctuation
    #               <code>(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #           <p>Every message must have a unique <code>MessageDeduplicationId</code>, which is a token
    #               used for deduplication of sent messages. If a message with a particular
    #                   <code>MessageDeduplicationId</code> is sent successfully, any message sent with the
    #               same <code>MessageDeduplicationId</code> during the 5-minute deduplication interval is
    #               treated as a duplicate. </p>
    #           <p>If the topic has <code>ContentBasedDeduplication</code> set, the system generates a
    #                   <code>MessageDeduplicationId</code> based on the contents of the message. Your
    #                   <code>MessageDeduplicationId</code> overrides the generated one.</p>
    #
    # @option params [String] :message_group_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    #               <code>MessageGroupId</code> can contain up to 128 alphanumeric characters
    #               <code>(a-z, A-Z, 0-9)</code> and punctuation
    #               <code>(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #           <p>The <code>MessageGroupId</code> is a tag that specifies that a message belongs to a
    #               specific message group. Messages that belong to the same message group are processed in
    #               a FIFO manner (however, messages in different message groups might be processed out of
    #               order). Every message must include a <code>MessageGroupId</code>.</p>
    #
    # @return [Types::PublishOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish(
    #     topic_arn: 'TopicArn',
    #     target_arn: 'TargetArn',
    #     phone_number: 'PhoneNumber',
    #     message: 'Message', # required
    #     subject: 'Subject',
    #     message_structure: 'MessageStructure',
    #     message_attributes: {
    #       'key' => {
    #         data_type: 'DataType', # required
    #         string_value: 'StringValue',
    #         binary_value: 'BinaryValue'
    #       }
    #     },
    #     message_deduplication_id: 'MessageDeduplicationId',
    #     message_group_id: 'MessageGroupId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishOutput
    #   resp.data.message_id #=> String
    #   resp.data.sequence_number #=> String
    #
    def publish(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Publish
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::PlatformApplicationDisabledException, Errors::KMSOptInRequired, Errors::InvalidParameterValueException, Errors::EndpointDisabledException, Errors::InvalidSecurityException, Errors::KMSAccessDeniedException, Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::KMSThrottlingException, Errors::InternalErrorException, Errors::KMSDisabledException]),
        data_parser: Parsers::Publish
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Publish,
        stubs: @stubs,
        params_class: Params::PublishOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Publishes up to ten messages to the specified topic. This is a batch version of <code>Publish</code>. For FIFO topics, multiple messages within a single batch are published in the order they are sent, and messages are deduplicated within the batch and across batches for 5 minutes.</p>
    #         <p>The result of publishing each message is reported individually in the response. Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p>
    #         <p>The maximum allowed individual message size and the maximum total payload size (the sum of the individual lengths of all of the batched messages) are both 256 KB (262,144 bytes). </p>
    #             <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this: </p>
    #             <p>&AttributeName.1=first</p>
    #             <p>&AttributeName.2=second</p>
    #         <p>If you send a batch message to a topic, Amazon SNS publishes the batch message to each endpoint that is
    #             subscribed to the topic. The format of the batch message depends on the notification protocol
    #             for each subscribed endpoint.</p>
    #         <p>When a <code>messageId</code> is returned, the batch message is saved and Amazon SNS immediately delivers the message to subscribers.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishBatchInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The Amazon resource name (ARN) of the topic you want to batch publish to.</p>
    #
    # @option params [Array<PublishBatchRequestEntry>] :publish_batch_request_entries
    #   <p>A list of <code>PublishBatch</code> request entries to be sent to the SNS topic.</p>
    #
    # @return [Types::PublishBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_batch(
    #     topic_arn: 'TopicArn', # required
    #     publish_batch_request_entries: [
    #       {
    #         id: 'Id', # required
    #         message: 'Message', # required
    #         subject: 'Subject',
    #         message_structure: 'MessageStructure',
    #         message_attributes: {
    #           'key' => {
    #             data_type: 'DataType', # required
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue'
    #           }
    #         },
    #         message_deduplication_id: 'MessageDeduplicationId',
    #         message_group_id: 'MessageGroupId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishBatchOutput
    #   resp.data.successful #=> Array<PublishBatchResultEntry>
    #   resp.data.successful[0] #=> Types::PublishBatchResultEntry
    #   resp.data.successful[0].id #=> String
    #   resp.data.successful[0].message_id #=> String
    #   resp.data.successful[0].sequence_number #=> String
    #   resp.data.failed #=> Array<BatchResultErrorEntry>
    #   resp.data.failed[0] #=> Types::BatchResultErrorEntry
    #   resp.data.failed[0].id #=> String
    #   resp.data.failed[0].code #=> String
    #   resp.data.failed[0].message #=> String
    #   resp.data.failed[0].sender_fault #=> Boolean
    #
    def publish_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishBatch
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BatchRequestTooLongException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::PlatformApplicationDisabledException, Errors::KMSOptInRequired, Errors::InvalidParameterValueException, Errors::InvalidBatchEntryIdException, Errors::EndpointDisabledException, Errors::InvalidSecurityException, Errors::KMSAccessDeniedException, Errors::NotFoundException, Errors::InvalidParameterException, Errors::TooManyEntriesInBatchRequestException, Errors::AuthorizationErrorException, Errors::BatchEntryIdsNotDistinctException, Errors::EmptyBatchRequestException, Errors::KMSThrottlingException, Errors::InternalErrorException, Errors::KMSDisabledException]),
        data_parser: Parsers::PublishBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishBatch,
        stubs: @stubs,
        params_class: Params::PublishBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a statement from a topic's access control policy.</p>
    #
    # @param [Hash] params
    #   See {Types::RemovePermissionInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic whose access control policy you wish to modify.</p>
    #
    # @option params [String] :label
    #   <p>The unique label of the statement you want to remove.</p>
    #
    # @return [Types::RemovePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission(
    #     topic_arn: 'TopicArn', # required
    #     label: 'Label' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemovePermissionOutput
    #
    def remove_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemovePermissionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemovePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemovePermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::RemovePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemovePermission,
        stubs: @stubs,
        params_class: Params::RemovePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the attributes for an endpoint for a device on one of the supported push
    #             notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::SetEndpointAttributesInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>EndpointArn used for SetEndpointAttributes action.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of the endpoint attributes. Attributes in this map include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>CustomUserData</code> – arbitrary user data to associate with the
    #                       endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and
    #                       less than 2KB.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Enabled</code> – flag that enables/disables delivery to the
    #                       endpoint. Amazon SNS will set this to false when a notification service indicates to
    #                       Amazon SNS that the endpoint is invalid. Users can set it back to true, typically
    #                       after updating Token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Token</code> – device token, also referred to as a registration id,
    #                       for an app and mobile device. This is returned from the notification service
    #                       when an app and mobile device are registered with the notification
    #                       service.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::SetEndpointAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_endpoint_attributes(
    #     endpoint_arn: 'EndpointArn', # required
    #     attributes: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetEndpointAttributesOutput
    #
    def set_endpoint_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetEndpointAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetEndpointAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetEndpointAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::SetEndpointAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetEndpointAttributes,
        stubs: @stubs,
        params_class: Params::SetEndpointAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_endpoint_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the attributes of the platform application object for the supported push
    #             notification services, such as APNS and GCM (Firebase Cloud Messaging). For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring
    #             attributes for message delivery status, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for
    #                 Message Delivery Status</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::SetPlatformApplicationAttributesInput}.
    #
    # @option params [String] :platform_application_arn
    #   <p>PlatformApplicationArn for SetPlatformApplicationAttributes action.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of the platform application attributes. Attributes in this map include the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PlatformCredential</code> – The credential received from the notification service.</p>
    #                   <ul>
    #                     <li>
    #                        <p>For ADM, <code>PlatformCredential</code>is client secret.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using certificate credentials, <code>PlatformCredential</code> is private key.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using token credentials, <code>PlatformCredential</code> is signing key.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging), <code>PlatformCredential</code> is API key. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformPrincipal</code> – The principal received from the notification service.</p>
    #                  <ul>
    #                     <li>
    #                        <p>For ADM, <code>PlatformPrincipal</code>is client id.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using certificate credentials, <code>PlatformPrincipal</code> is SSL certificate.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using token credentials, <code>PlatformPrincipal</code> is signing key ID.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging), there is no <code>PlatformPrincipal</code>. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                      <p>
    #                       <code>EventEndpointCreated</code> – Topic ARN to which
    #                           <code>EndpointCreated</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointDeleted</code> – Topic ARN to which
    #                           <code>EndpointDeleted</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointUpdated</code> – Topic ARN to which
    #                           <code>EndpointUpdate</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventDeliveryFailure</code> – Topic ARN to which
    #                           <code>DeliveryFailure</code> event notifications are sent upon Direct
    #                       Publish delivery failure (permanent) to one of the application's
    #                       endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SuccessFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
    #                       write access to use CloudWatch Logs on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>FailureFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
    #                       write access to use CloudWatch Logs on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SuccessFeedbackSampleRate</code> – Sample rate percentage (0-100)
    #                       of successfully delivered messages.</p>
    #               </li>
    #            </ul>
    #           <p>The following attributes only apply to <code>APNs</code> token-based authentication:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>ApplePlatformTeamID</code> – The identifier that's assigned to your Apple developer account team.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApplePlatformBundleID</code> – The bundle identifier that's assigned to your iOS app.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::SetPlatformApplicationAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_platform_application_attributes(
    #     platform_application_arn: 'PlatformApplicationArn', # required
    #     attributes: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetPlatformApplicationAttributesOutput
    #
    def set_platform_application_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetPlatformApplicationAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetPlatformApplicationAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetPlatformApplicationAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::SetPlatformApplicationAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetPlatformApplicationAttributes,
        stubs: @stubs,
        params_class: Params::SetPlatformApplicationAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_platform_application_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this request to set the default settings for sending SMS messages and receiving
    #             daily SMS usage reports.</p>
    #         <p>You can override some of these settings for a single message when you use the
    #                 <code>Publish</code> action with the <code>MessageAttributes.entry.N</code>
    #             parameter. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Publishing to a mobile phone</a>
    #             in the <i>Amazon SNS Developer Guide</i>.</p>
    #         <note>
    #             <p>To use this operation, you must grant the Amazon SNS service principal
    #                     (<code>sns.amazonaws.com</code>) permission to perform the
    #                     <code>s3:ListBucket</code> action. </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::SetSMSAttributesInput}.
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>The default settings for sending SMS messages from your Amazon Web Services account. You can set values
    #               for the following attribute names:</p>
    #           <p>
    #               <code>MonthlySpendLimit</code> – The maximum amount in USD that you are willing to spend
    #               each month to send SMS messages. When Amazon SNS determines that sending an SMS message would
    #               incur a cost that exceeds this limit, it stops sending SMS messages within
    #               minutes.</p>
    #           <important>
    #               <p>Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During
    #                   that interval, if you continue to send SMS messages, you will incur costs that
    #                   exceed your limit.</p>
    #           </important>
    #           <p>By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to
    #               raise the limit, submit an <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sns">SNS Limit Increase case</a>. For <b>New limit
    #                   value</b>, enter your desired monthly spend limit. In the <b>Use Case Description</b> field, explain that you are requesting
    #               an SMS monthly spend limit increase.</p>
    #           <p>
    #               <code>DeliveryStatusIAMRole</code> – The ARN of the IAM role that allows Amazon SNS to write
    #               logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS
    #               writes a log that includes the message price, the success or failure status, the reason
    #               for failure (if the message failed), the message dwell time, and other
    #               information.</p>
    #           <p>
    #               <code>DeliveryStatusSuccessSamplingRate</code> – The percentage of successful SMS
    #               deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an
    #               integer from 0 - 100. For example, to write logs only for failed deliveries, set this
    #               value to <code>0</code>. To write logs for 10% of your successful deliveries, set it to
    #                   <code>10</code>.</p>
    #           <p>
    #               <code>DefaultSenderID</code> – A string, such as your business brand, that is displayed
    #               as the sender on the receiving device. Support for sender IDs varies by country. The
    #               sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one
    #               letter.</p>
    #           <p>
    #               <code>DefaultSMSType</code> – The type of SMS message that you will send by default. You
    #               can assign the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Promotional</code> – (Default) Noncritical messages, such as marketing
    #                       messages. Amazon SNS optimizes the message delivery to incur the lowest cost.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Transactional</code> – Critical messages that support customer
    #                       transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <code>UsageReportS3Bucket</code> – The name of the Amazon S3 bucket to receive daily SMS
    #               usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to
    #               the bucket. The report includes the following information for each SMS message that was
    #               successfully delivered by your Amazon Web Services account:</p>
    #           <ul>
    #               <li>
    #                   <p>Time that the message was published (in UTC)</p>
    #               </li>
    #               <li>
    #                   <p>Message ID</p>
    #               </li>
    #               <li>
    #                   <p>Destination phone number</p>
    #               </li>
    #               <li>
    #                   <p>Message type</p>
    #               </li>
    #               <li>
    #                   <p>Delivery status</p>
    #               </li>
    #               <li>
    #                   <p>Message price (in USD)</p>
    #               </li>
    #               <li>
    #                   <p>Part number (a message is split into multiple parts if it is too long for a
    #                       single message)</p>
    #               </li>
    #               <li>
    #                   <p>Total number of parts</p>
    #               </li>
    #            </ul>
    #           <p>To receive the report, the bucket must have a policy that allows the Amazon SNS service
    #               principal to perform the <code>s3:PutObject</code> and <code>s3:GetBucketLocation</code>
    #               actions.</p>
    #           <p>For an example bucket policy and usage report, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_stats.html">Monitoring SMS Activity</a> in the
    #                   <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @return [Types::SetSMSAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_sms_attributes(
    #     attributes: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetSMSAttributesOutput
    #
    def set_sms_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetSMSAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetSMSAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetSMSAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::SetSMSAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetSMSAttributes,
        stubs: @stubs,
        params_class: Params::SetSMSAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_sms_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a subscription owner to set an attribute of the subscription to a new
    #             value.</p>
    #
    # @param [Hash] params
    #   See {Types::SetSubscriptionAttributesInput}.
    #
    # @option params [String] :subscription_arn
    #   <p>The ARN of the subscription to modify.</p>
    #
    # @option params [String] :attribute_name
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that this action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FilterPolicy</code> – The simple JSON object that lets your
    #                       subscriber receive only a subset of messages, rather than receiving every
    #                       message published to the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RawMessageDelivery</code> – When set to <code>true</code>,
    #                       enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
    #                       need for the endpoints to process JSON formatting, which is otherwise created
    #                       for Amazon SNS metadata.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue.
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon SNS listed as a trusted entity</p>
    #                       </li>
    #                  </ul>
    #                   <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions.
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
    #                       to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #                       </li>
    #            </ul>
    #
    # @option params [String] :attribute_value
    #   <p>The new value for the attribute in JSON format.</p>
    #
    # @return [Types::SetSubscriptionAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_subscription_attributes(
    #     subscription_arn: 'SubscriptionArn', # required
    #     attribute_name: 'AttributeName', # required
    #     attribute_value: 'AttributeValue'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetSubscriptionAttributesOutput
    #
    def set_subscription_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetSubscriptionAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetSubscriptionAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetSubscriptionAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::FilterPolicyLimitExceededException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::SetSubscriptionAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetSubscriptionAttributes,
        stubs: @stubs,
        params_class: Params::SetSubscriptionAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_subscription_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a topic owner to set an attribute of the topic to a new value.</p>
    #
    # @param [Hash] params
    #   See {Types::SetTopicAttributesInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic to modify.</p>
    #
    # @option params [String] :attribute_name
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>SetTopicAttributes</code> action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DisplayName</code> – The display name to use for a topic with SMS
    #                       subscriptions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Policy</code> – The policy that defines who can access your
    #                       topic. By default, only the topic owner can publish or subscribe to the
    #                       topic.</p>
    #               </li>
    #            </ul>
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side-encryption</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>KmsMasterKeyId</code> – The ID of an Amazon Web Services managed customer master
    #                       key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API
    #                           Reference</i>. </p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                       <code>ContentBasedDeduplication</code> – Enables content-based deduplication for
    #                       FIFO topics.</p>
    #
    #                   <ul>
    #                     <li>
    #                           <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
    #                               If you create a FIFO topic and this attribute is <code>false</code>, you must
    #                               specify a value for the <code>MessageDeduplicationId</code> parameter for the
    #                               <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                       </li>
    #                     <li>
    #                           <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>,
    #                               Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using
    #                               the body of the message (but not the attributes of the message).</p>
    #                           <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
    #                               action.</p>
    #                        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :attribute_value
    #   <p>The new value for the attribute.</p>
    #
    # @return [Types::SetTopicAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_topic_attributes(
    #     topic_arn: 'TopicArn', # required
    #     attribute_name: 'AttributeName', # required
    #     attribute_value: 'AttributeValue'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTopicAttributesOutput
    #
    def set_topic_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTopicAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTopicAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTopicAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSecurityException, Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::SetTopicAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTopicAttributes,
        stubs: @stubs,
        params_class: Params::SetTopicAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_topic_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Subscribes an endpoint to an Amazon SNS topic. If the endpoint type is HTTP/S or email, or
    #             if the endpoint and the topic are not in the same Amazon Web Services account, the endpoint owner must
    #             run the <code>ConfirmSubscription</code> action to confirm the subscription.</p>
    #         <p>You call the <code>ConfirmSubscription</code> action with the token from the
    #             subscription response. Confirmation tokens are valid for three days.</p>
    #         <p>This action is throttled at 100 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::SubscribeInput}.
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic you want to subscribe to.</p>
    #
    # @option params [String] :protocol
    #   <p>The protocol that you want to use. Supported protocols include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>http</code> – delivery of JSON-encoded message via HTTP
    #                       POST</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>https</code> – delivery of JSON-encoded message via HTTPS
    #                       POST</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>email</code> – delivery of message via SMTP</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>email-json</code> – delivery of JSON-encoded message via
    #                       SMTP</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sms</code> – delivery of message via SMS</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqs</code> – delivery of JSON-encoded message to an Amazon SQS
    #                       queue</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>application</code> – delivery of JSON-encoded message to an
    #                       EndpointArn for a mobile app and device</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>lambda</code> – delivery of JSON-encoded message to an Lambda
    #                       function</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>firehose</code> – delivery of JSON-encoded message to an Amazon
    #                       Kinesis Data Firehose delivery stream.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :endpoint
    #   <p>The endpoint that you want to receive notifications. Endpoints vary by
    #               protocol:</p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>http</code> protocol, the (public) endpoint is a URL beginning
    #                       with <code>http://</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>https</code> protocol, the (public) endpoint is a URL beginning
    #                       with <code>https://</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>email</code> protocol, the endpoint is an email address.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>email-json</code> protocol, the endpoint is an email
    #                       address.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>sms</code> protocol, the endpoint is a phone number of an
    #                       SMS-enabled device.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>sqs</code> protocol, the endpoint is the ARN of an Amazon SQS
    #                       queue.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>application</code> protocol, the endpoint is the EndpointArn of
    #                       a mobile app and device.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>lambda</code> protocol, the endpoint is the ARN of an Lambda
    #                       function.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>firehose</code> protocol, the endpoint is the ARN of an Amazon
    #                       Kinesis Data Firehose delivery stream.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>Subscribe</code> action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FilterPolicy</code> – The simple JSON object that lets your
    #                       subscriber receive only a subset of messages, rather than receiving every
    #                       message published to the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RawMessageDelivery</code> – When set to <code>true</code>,
    #                       enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
    #                       need for the endpoints to process JSON formatting, which is otherwise created
    #                       for Amazon SNS metadata.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue.
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon SNS listed as a trusted entity</p>
    #                       </li>
    #                  </ul>
    #                   <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions.
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
    #                       to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #                       </li>
    #            </ul>
    #
    # @option params [Boolean] :return_subscription_arn
    #   <p>Sets whether the response from the <code>Subscribe</code> request includes the
    #               subscription ARN, even if the subscription is not yet confirmed.</p>
    #           <p>If you set this parameter to <code>true</code>, the response includes the ARN in all
    #               cases, even if the subscription is not yet confirmed. In addition to the ARN for
    #               confirmed subscriptions, the response also includes the <code>pending
    #                   subscription</code> ARN value for subscriptions that aren't yet confirmed. A
    #               subscription becomes confirmed when the subscriber calls the
    #                   <code>ConfirmSubscription</code> action with a confirmation token.</p>
    #           <p></p>
    #           <p>The default value is <code>false</code>.</p>
    #
    # @return [Types::SubscribeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.subscribe(
    #     topic_arn: 'TopicArn', # required
    #     protocol: 'Protocol', # required
    #     endpoint: 'Endpoint',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     return_subscription_arn: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubscribeOutput
    #   resp.data.subscription_arn #=> String
    #
    def subscribe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubscribeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubscribeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Subscribe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSecurityException, Errors::NotFoundException, Errors::InvalidParameterException, Errors::FilterPolicyLimitExceededException, Errors::AuthorizationErrorException, Errors::SubscriptionLimitExceededException, Errors::InternalErrorException]),
        data_parser: Parsers::Subscribe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Subscribe,
        stubs: @stubs,
        params_class: Params::SubscribeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :subscribe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add tags to the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the
    #                 <i>Amazon SNS Developer Guide</i>.</p>
    #         <p>When you use topic tags, keep the following guidelines in mind:</p>
    #         <ul>
    #             <li>
    #                 <p>Adding more than 50 tags to a topic isn't recommended.</p>
    #             </li>
    #             <li>
    #                 <p>Tags don't have any semantic meaning. Amazon SNS interprets tags as character
    #                     strings.</p>
    #             </li>
    #             <li>
    #                 <p>Tags are case-sensitive.</p>
    #             </li>
    #             <li>
    #                 <p>A new tag with a key identical to that of an existing tag overwrites the
    #                     existing tag.</p>
    #             </li>
    #             <li>
    #                 <p>Tagging actions are limited to 10 TPS per Amazon Web Services account, per Amazon Web Services Region. If your
    #                     application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic to which to add tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be added to the specified topic. A tag consists of a required key and an
    #               optional value.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::StaleTagException, Errors::AuthorizationErrorException, Errors::TagPolicyException, Errors::ResourceNotFoundException, Errors::TagLimitExceededException, Errors::ConcurrentAccessException]),
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

    # <p>Deletes a subscription. If the subscription requires authentication for deletion, only
    #             the owner of the subscription or the topic's owner can unsubscribe, and an Amazon Web Services signature
    #             is required. If the <code>Unsubscribe</code> call does not require authentication and
    #             the requester is not the subscription owner, a final cancellation message is delivered
    #             to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the
    #                 <code>Unsubscribe</code> request was unintended.</p>
    #         <p>This action is throttled at 100 transactions per second (TPS).</p>
    #
    # @param [Hash] params
    #   See {Types::UnsubscribeInput}.
    #
    # @option params [String] :subscription_arn
    #   <p>The ARN of the subscription to be deleted.</p>
    #
    # @return [Types::UnsubscribeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unsubscribe(
    #     subscription_arn: 'SubscriptionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnsubscribeOutput
    #
    def unsubscribe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnsubscribeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnsubscribeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Unsubscribe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSecurityException, Errors::NotFoundException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::InternalErrorException]),
        data_parser: Parsers::Unsubscribe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Unsubscribe,
        stubs: @stubs,
        params_class: Params::UnsubscribeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unsubscribe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove tags from the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the
    #                 <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic from which to remove tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the specified topic.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::StaleTagException, Errors::AuthorizationErrorException, Errors::TagPolicyException, Errors::ResourceNotFoundException, Errors::TagLimitExceededException, Errors::ConcurrentAccessException]),
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

    # <p>Verifies a destination phone number with a one-time password (OTP) for the calling Amazon Web Services account.</p>
    #         <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send
    #                 SMS messages only to verified destination phone numbers. For more information, including how to
    #                 move out of the sandbox to send messages without restrictions,
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifySMSSandboxPhoneNumberInput}.
    #
    # @option params [String] :phone_number
    #   <p>The destination phone number to verify.</p>
    #
    # @option params [String] :one_time_password
    #   <p>The OTP sent to the destination number from the
    #                   <code>CreateSMSSandBoxPhoneNumber</code> call.</p>
    #
    # @return [Types::VerifySMSSandboxPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_sms_sandbox_phone_number(
    #     phone_number: 'PhoneNumber', # required
    #     one_time_password: 'OneTimePassword' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifySMSSandboxPhoneNumberOutput
    #
    def verify_sms_sandbox_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifySMSSandboxPhoneNumberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifySMSSandboxPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifySMSSandboxPhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ThrottledException, Errors::AuthorizationErrorException, Errors::VerificationException, Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::VerifySMSSandboxPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifySMSSandboxPhoneNumber,
        stubs: @stubs,
        params_class: Params::VerifySMSSandboxPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_sms_sandbox_phone_number
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
