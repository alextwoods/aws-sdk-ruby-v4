# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CognitoIdentityProvider
  # An API client for AWSCognitoIdentityProviderService
  # See {#initialize} for a full list of supported configuration options
  # <p>Using the Amazon Cognito user pools API, you can create a user pool to manage directories and
  #             users. You can authenticate a user to obtain tokens related to user identity and access
  #             policies.</p>
  #         <p>This API reference provides information about user pools in Amazon Cognito user pools.</p>
  #         <p>For more information, see the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html">Amazon Cognito
  #                 Documentation</a>.</p>
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
    def initialize(config = AWS::SDK::CognitoIdentityProvider::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds additional user attributes to the user pool schema.</p>
    #
    # @param [Hash] params
    #   See {Types::AddCustomAttributesInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to add custom attributes.</p>
    #
    # @option params [Array<SchemaAttributeType>] :custom_attributes
    #   <p>An array of custom attributes, such as Mutable and Name.</p>
    #
    # @return [Types::AddCustomAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_custom_attributes(
    #     user_pool_id: 'UserPoolId', # required
    #     custom_attributes: [
    #       {
    #         name: 'Name',
    #         attribute_data_type: 'String', # accepts ["String", "Number", "DateTime", "Boolean"]
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: 'MinValue',
    #           max_value: 'MaxValue'
    #         },
    #         string_attribute_constraints: {
    #           min_length: 'MinLength',
    #           max_length: 'MaxLength'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddCustomAttributesOutput
    #
    def add_custom_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddCustomAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddCustomAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddCustomAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserImportInProgressException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddCustomAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddCustomAttributes,
        stubs: @stubs,
        params_class: Params::AddCustomAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_custom_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified user to the specified group.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminAddUserToGroupInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :username
    #   <p>The username for the user.</p>
    #
    # @option params [String] :group_name
    #   <p>The group name.</p>
    #
    # @return [Types::AdminAddUserToGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_add_user_to_group(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     group_name: 'GroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminAddUserToGroupOutput
    #
    def admin_add_user_to_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminAddUserToGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminAddUserToGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminAddUserToGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminAddUserToGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminAddUserToGroup,
        stubs: @stubs,
        params_class: Params::AdminAddUserToGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_add_user_to_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Confirms user registration as an admin without using a confirmation code. Works on any
    #             user.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminConfirmSignUpInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for which you want to confirm user registration.</p>
    #
    # @option params [String] :username
    #   <p>The user name for which you want to confirm user registration.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>If your user pool configuration includes triggers, the AdminConfirmSignUp API action
    #               invokes the Lambda function that is specified for the <i>post
    #                   confirmation</i> trigger. When Amazon Cognito invokes this function, it passes a JSON
    #               payload, which the function receives as input. In this payload, the
    #                   <code>clientMetadata</code> attribute provides the data that you assigned to the
    #               ClientMetadata parameter in your AdminConfirmSignUp request. In your function code in
    #               Lambda, you can process the ClientMetadata value to enhance your workflow for your
    #               specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::AdminConfirmSignUpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_confirm_sign_up(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminConfirmSignUpOutput
    #
    def admin_confirm_sign_up(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminConfirmSignUpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminConfirmSignUpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminConfirmSignUp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnexpectedLambdaException, Errors::TooManyFailedAttemptsException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminConfirmSignUp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminConfirmSignUp,
        stubs: @stubs,
        params_class: Params::AdminConfirmSignUpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_confirm_sign_up
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new user in the specified user pool.</p>
    #         <p>If <code>MessageAction</code> isn't set, the default is to send a welcome message via
    #             email or phone (SMS).</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    #         <p>This message is based on a template that you configured in your call to create or
    #             update a user pool. This template includes your custom sign-up instructions and
    #             placeholders for user name and temporary password.</p>
    #         <p>Alternatively, you can call <code>AdminCreateUser</code> with <code>SUPPRESS</code>
    #             for the <code>MessageAction</code> parameter, and Amazon Cognito won't send any email. </p>
    #         <p>In either case, the user will be in the <code>FORCE_CHANGE_PASSWORD</code> state until
    #             they sign in and change their password.</p>
    #         <p>
    #             <code>AdminCreateUser</code> requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminCreateUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where the user will be created.</p>
    #
    # @option params [String] :username
    #   <p>The username for the user. Must be unique within the user pool. Must be a UTF-8 string
    #               between 1 and 128 characters. After the user is created, the username can't be
    #               changed.</p>
    #
    # @option params [Array<AttributeType>] :user_attributes
    #   <p>An array of name-value pairs that contain user attributes and attribute values to be
    #               set for the user to be created. You can create a user without specifying any attributes
    #               other than <code>Username</code>. However, any attributes that you specify as required
    #               (when creating a user pool or in the <b>Attributes</b> tab of
    #               the console) either you should supply (in your call to <code>AdminCreateUser</code>) or
    #               the user should supply (when they sign up in response to your welcome message).</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #           <p>To send a message inviting the user to sign up, you must specify the user's email
    #               address or phone number. You can do this in your call to AdminCreateUser or in the
    #                   <b>Users</b> tab of the Amazon Cognito console for managing your
    #               user pools.</p>
    #           <p>In your call to <code>AdminCreateUser</code>, you can set the
    #                   <code>email_verified</code> attribute to <code>True</code>, and you can set the
    #                   <code>phone_number_verified</code> attribute to <code>True</code>. You can also do
    #               this by calling <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminUpdateUserAttributes.html">AdminUpdateUserAttributes</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>email</b>: The email address of the user to whom
    #                       the message that contains the code and username will be sent. Required if the
    #                           <code>email_verified</code> attribute is set to <code>True</code>, or if
    #                           <code>"EMAIL"</code> is specified in the <code>DesiredDeliveryMediums</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>phone_number</b>: The phone number of the user to
    #                       whom the message that contains the code and username will be sent. Required if
    #                       the <code>phone_number_verified</code> attribute is set to <code>True</code>, or
    #                       if <code>"SMS"</code> is specified in the <code>DesiredDeliveryMediums</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<AttributeType>] :validation_data
    #   <p>The user's validation data. This is an array of name-value pairs that contain user
    #               attributes and attribute values that you can use for custom validation, such as
    #               restricting the types of user accounts that can be registered. For example, you might
    #               choose to allow or disallow user sign-up based on the user's domain.</p>
    #           <p>To configure custom validation, you must create a Pre Sign-up Lambda trigger for
    #               the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the
    #               validation data and uses it in the validation process.</p>
    #           <p>The user's validation data isn't persisted.</p>
    #
    # @option params [String] :temporary_password
    #   <p>The user's temporary password. This password must conform to the password policy that
    #               you specified when you created the user pool.</p>
    #           <p>The temporary password is valid only once. To complete the Admin Create User flow, the
    #               user must enter the temporary password in the sign-in page, along with a new password to
    #               be used in all future sign-ins.</p>
    #           <p>This parameter isn't required. If you don't specify a value, Amazon Cognito generates one for
    #               you.</p>
    #           <p>The temporary password can only be used until the user account expiration limit that
    #               you specified when you created the user pool. To reset the account after that time
    #               limit, you must call <code>AdminCreateUser</code> again, specifying
    #                   <code>"RESEND"</code> for the <code>MessageAction</code> parameter.</p>
    #
    # @option params [Boolean] :force_alias_creation
    #   <p>This parameter is used only if the <code>phone_number_verified</code> or
    #                   <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is
    #               ignored.</p>
    #           <p>If this parameter is set to <code>True</code> and the phone number or email address
    #               specified in the UserAttributes parameter already exists as an alias with a different
    #               user, the API call will migrate the alias from the previous user to the newly created
    #               user. The previous user will no longer be able to log in using that alias.</p>
    #           <p>If this parameter is set to <code>False</code>, the API throws an
    #                   <code>AliasExistsException</code> error if the alias already exists. The default
    #               value is <code>False</code>.</p>
    #
    # @option params [String] :message_action
    #   <p>Set to <code>RESEND</code> to resend the invitation message to a user that already
    #               exists and reset the expiration limit on the user's account. Set to
    #                   <code>SUPPRESS</code> to suppress sending the message. You can specify only one
    #               value.</p>
    #
    # @option params [Array<String>] :desired_delivery_mediums
    #   <p>Specify <code>"EMAIL"</code> if email will be used to send the welcome message.
    #               Specify <code>"SMS"</code> if the phone number will be used. The default value is
    #                   <code>"SMS"</code>. You can specify more than one value.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminCreateUser API action, Amazon Cognito invokes the function that is assigned
    #               to the <i>pre sign-up</i> trigger. When Amazon Cognito invokes this function, it
    #               passes a JSON payload, which the function receives as input. This payload contains a
    #                   <code>clientMetadata</code> attribute, which provides the data that you assigned to
    #               the ClientMetadata parameter in your AdminCreateUser request. In your function code in
    #               Lambda, you can process the <code>clientMetadata</code> value to enhance your
    #               workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::AdminCreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_create_user(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     user_attributes: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value'
    #       }
    #     ],
    #     temporary_password: 'TemporaryPassword',
    #     force_alias_creation: false,
    #     message_action: 'RESEND', # accepts ["RESEND", "SUPPRESS"]
    #     desired_delivery_mediums: [
    #       'SMS' # accepts ["SMS", "EMAIL"]
    #     ],
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminCreateUserOutput
    #   resp.data.user #=> Types::UserType
    #   resp.data.user.username #=> String
    #   resp.data.user.attributes #=> Array<AttributeType>
    #   resp.data.user.attributes[0] #=> Types::AttributeType
    #   resp.data.user.attributes[0].name #=> String
    #   resp.data.user.attributes[0].value #=> String
    #   resp.data.user.user_create_date #=> Time
    #   resp.data.user.user_last_modified_date #=> Time
    #   resp.data.user.enabled #=> Boolean
    #   resp.data.user.user_status #=> String, one of ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"]
    #   resp.data.user.mfa_options #=> Array<MFAOptionType>
    #   resp.data.user.mfa_options[0] #=> Types::MFAOptionType
    #   resp.data.user.mfa_options[0].delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.user.mfa_options[0].attribute_name #=> String
    #
    def admin_create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminCreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminCreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminCreateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::CodeDeliveryFailureException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::PreconditionNotMetException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::UsernameExistsException, Errors::UnsupportedUserStateException]),
        data_parser: Parsers::AdminCreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminCreateUser,
        stubs: @stubs,
        params_class: Params::AdminCreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a user as an administrator. Works on any user.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminDeleteUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to delete the user.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user you want to delete.</p>
    #
    # @return [Types::AdminDeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminDeleteUserOutput
    #
    def admin_delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminDeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminDeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminDeleteUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminDeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminDeleteUser,
        stubs: @stubs,
        params_class: Params::AdminDeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the user attributes in a user pool as an administrator. Works on any
    #             user.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminDeleteUserAttributesInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to delete user attributes.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user from which you would like to delete attributes.</p>
    #
    # @option params [Array<String>] :user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #
    # @return [Types::AdminDeleteUserAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user_attributes(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     user_attribute_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminDeleteUserAttributesOutput
    #
    def admin_delete_user_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminDeleteUserAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminDeleteUserAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminDeleteUserAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminDeleteUserAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminDeleteUserAttributes,
        stubs: @stubs,
        params_class: Params::AdminDeleteUserAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_delete_user_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Prevents the user from signing in with the specified external (SAML or social)
    #             identity provider (IdP). If the user that you want to deactivate is a Amazon Cognito user pools
    #             native username + password user, they can't use their password to sign in. If the user
    #             to deactivate is a linked external IdP user, any link between that user and an existing
    #             user is removed. When the external user signs in again, and the user is no longer
    #             attached to the previously linked <code>DestinationUser</code>, the user must create a
    #             new user account. See <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html">AdminLinkProviderForUser</a>.</p>
    #         <p>This action is enabled only for admin access and requires developer
    #             credentials.</p>
    #         <p>The <code>ProviderName</code> must match the value specified when creating an IdP for
    #             the pool. </p>
    #         <p>To deactivate a native username + password user, the <code>ProviderName</code> value
    #             must be <code>Cognito</code> and the <code>ProviderAttributeName</code> must be
    #                 <code>Cognito_Subject</code>. The <code>ProviderAttributeValue</code> must be the
    #             name that is used in the user pool for the user.</p>
    #         <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for
    #             social IdPs. The <code>ProviderAttributeValue</code> must always be the exact subject
    #             that was used when the user was originally linked as a source user.</p>
    #         <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has
    #             not yet been used to sign in, the <code>ProviderAttributeName</code> and
    #                 <code>ProviderAttributeValue</code> must be the same values that were used for the
    #                 <code>SourceUser</code> when the identities were originally linked using <code>
    #                 AdminLinkProviderForUser</code> call. (If the linking was done with
    #                 <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>, the same
    #             applies here). However, if the user has already signed in, the
    #                 <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code> and
    #                 <code>ProviderAttributeValue</code> must be the subject of the SAML
    #             assertion.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminDisableProviderForUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [ProviderUserIdentifierType] :user
    #   <p>The user to be disabled.</p>
    #
    # @return [Types::AdminDisableProviderForUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_provider_for_user(
    #     user_pool_id: 'UserPoolId', # required
    #     user: {
    #       provider_name: 'ProviderName',
    #       provider_attribute_name: 'ProviderAttributeName',
    #       provider_attribute_value: 'ProviderAttributeValue'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminDisableProviderForUserOutput
    #
    def admin_disable_provider_for_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminDisableProviderForUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminDisableProviderForUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminDisableProviderForUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AliasExistsException, Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminDisableProviderForUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminDisableProviderForUser,
        stubs: @stubs,
        params_class: Params::AdminDisableProviderForUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_disable_provider_for_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the specified user.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminDisableUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to disable the user.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user you want to disable.</p>
    #
    # @return [Types::AdminDisableUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_user(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminDisableUserOutput
    #
    def admin_disable_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminDisableUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminDisableUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminDisableUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminDisableUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminDisableUser,
        stubs: @stubs,
        params_class: Params::AdminDisableUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_disable_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the specified user as an administrator. Works on any user.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminEnableUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to enable the user.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user you want to enable.</p>
    #
    # @return [Types::AdminEnableUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_enable_user(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminEnableUserOutput
    #
    def admin_enable_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminEnableUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminEnableUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminEnableUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminEnableUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminEnableUser,
        stubs: @stubs,
        params_class: Params::AdminEnableUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_enable_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Forgets the device, as an administrator.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminForgetDeviceInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user name.</p>
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @return [Types::AdminForgetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_forget_device(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     device_key: 'DeviceKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminForgetDeviceOutput
    #
    def admin_forget_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminForgetDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminForgetDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminForgetDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminForgetDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminForgetDevice,
        stubs: @stubs,
        params_class: Params::AdminForgetDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_forget_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the device, as an administrator.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminGetDeviceInput}.
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user name.</p>
    #
    # @return [Types::AdminGetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_device(
    #     device_key: 'DeviceKey', # required
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminGetDeviceOutput
    #   resp.data.device #=> Types::DeviceType
    #   resp.data.device.device_key #=> String
    #   resp.data.device.device_attributes #=> Array<AttributeType>
    #   resp.data.device.device_attributes[0] #=> Types::AttributeType
    #   resp.data.device.device_attributes[0].name #=> String
    #   resp.data.device.device_attributes[0].value #=> String
    #   resp.data.device.device_create_date #=> Time
    #   resp.data.device.device_last_modified_date #=> Time
    #   resp.data.device.device_last_authenticated_date #=> Time
    #
    def admin_get_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminGetDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminGetDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminGetDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminGetDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminGetDevice,
        stubs: @stubs,
        params_class: Params::AdminGetDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_get_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified user by user name in a user pool as an administrator. Works on any
    #             user.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminGetUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to get information about the
    #               user.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user you want to retrieve.</p>
    #
    # @return [Types::AdminGetUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_user(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminGetUserOutput
    #   resp.data.username #=> String
    #   resp.data.user_attributes #=> Array<AttributeType>
    #   resp.data.user_attributes[0] #=> Types::AttributeType
    #   resp.data.user_attributes[0].name #=> String
    #   resp.data.user_attributes[0].value #=> String
    #   resp.data.user_create_date #=> Time
    #   resp.data.user_last_modified_date #=> Time
    #   resp.data.enabled #=> Boolean
    #   resp.data.user_status #=> String, one of ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"]
    #   resp.data.mfa_options #=> Array<MFAOptionType>
    #   resp.data.mfa_options[0] #=> Types::MFAOptionType
    #   resp.data.mfa_options[0].delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.mfa_options[0].attribute_name #=> String
    #   resp.data.preferred_mfa_setting #=> String
    #   resp.data.user_mfa_setting_list #=> Array<String>
    #   resp.data.user_mfa_setting_list[0] #=> String
    #
    def admin_get_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminGetUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminGetUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminGetUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminGetUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminGetUser,
        stubs: @stubs,
        params_class: Params::AdminGetUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_get_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates the authentication flow, as an administrator.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminInitiateAuthInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #
    # @option params [String] :client_id
    #   <p>The app client ID.</p>
    #
    # @option params [String] :auth_flow
    #   <p>The authentication flow for this call to run. The API action will depend on this
    #               value. For example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return
    #                       new tokens.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and
    #                           <code>SRP_A</code> and return the Secure Remote Password (SRP) protocol
    #                       variables to be used for next challenge execution.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_USER_PASSWORD_AUTH</code> will take in <code>USERNAME</code> and
    #                           <code>PASSWORD</code> and return the next challenge or tokens.</p>
    #               </li>
    #            </ul>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password
    #                       (SRP) protocol.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication
    #                       flow for refreshing the access token and ID token by supplying a valid refresh
    #                       token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CUSTOM_AUTH</code>: Custom authentication flow.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you can pass in
    #                       the USERNAME and PASSWORD directly if the flow is enabled for calling the app
    #                       client.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_USER_PASSWORD_AUTH</code>: Admin-based user password
    #                       authentication. This replaces the <code>ADMIN_NO_SRP_AUTH</code> authentication
    #                       flow. In this flow, Amazon Cognito receives the password in the request instead of using
    #                       the SRP process to verify passwords.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking. The required values depend on the value
    #               of <code>AuthFlow</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app
    #                       client is configured with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>REFRESH_TOKEN</code>
    #                       (required), <code>SECRET_HASH</code> (required if the app client is configured
    #                       with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret),
    #                           <code>PASSWORD</code> (required), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret),
    #                           <code>DEVICE_KEY</code>. To start the authentication flow with password
    #                       verification, include <code>ChallengeName: SRP_A</code> and <code>SRP_A: (The
    #                           SRP_A Value)</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminInitiateAuth API action, Amazon Cognito invokes the Lambda functions that
    #               are specified for various triggers. The ClientMetadata value is passed as input to the
    #               functions for only the following triggers:</p>
    #           <ul>
    #               <li>
    #                   <p>Pre signup</p>
    #               </li>
    #               <li>
    #                   <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                   <p>User migration</p>
    #               </li>
    #            </ul>
    #           <p>When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which
    #               the function receives as input. This payload contains a <code>validationData</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your AdminInitiateAuth request. In your function code in Lambda, you can process the
    #                   <code>validationData</code> value to enhance your workflow for your specific
    #               needs.</p>
    #           <p>When you use the AdminInitiateAuth API action, Amazon Cognito also invokes the functions for
    #               the following triggers, but it doesn't provide the ClientMetadata value as input:</p>
    #           <ul>
    #               <li>
    #                   <p>Post authentication</p>
    #               </li>
    #               <li>
    #                   <p>Custom message</p>
    #               </li>
    #               <li>
    #                   <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                   <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Verify auth challenge</p>
    #               </li>
    #            </ul>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The analytics metadata for collecting Amazon Pinpoint metrics for
    #                   <code>AdminInitiateAuth</code> calls.</p>
    #
    # @option params [ContextDataType] :context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @return [Types::AdminInitiateAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_initiate_auth(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId', # required
    #     auth_flow: 'USER_SRP_AUTH', # required - accepts ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH", "USER_PASSWORD_AUTH", "ADMIN_USER_PASSWORD_AUTH"]
    #     auth_parameters: {
    #       'key' => 'value'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     context_data: {
    #       ip_address: 'IpAddress', # required
    #       server_name: 'ServerName', # required
    #       server_path: 'ServerPath', # required
    #       http_headers: [
    #         {
    #           header_name: 'headerName',
    #           header_value: 'headerValue'
    #         }
    #       ], # required
    #       encoded_data: 'EncodedData'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminInitiateAuthOutput
    #   resp.data.challenge_name #=> String, one of ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #   resp.data.session #=> String
    #   resp.data.challenge_parameters #=> Hash<String, String>
    #   resp.data.challenge_parameters['key'] #=> String
    #   resp.data.authentication_result #=> Types::AuthenticationResultType
    #   resp.data.authentication_result.access_token #=> String
    #   resp.data.authentication_result.expires_in #=> Integer
    #   resp.data.authentication_result.token_type #=> String
    #   resp.data.authentication_result.refresh_token #=> String
    #   resp.data.authentication_result.id_token #=> String
    #   resp.data.authentication_result.new_device_metadata #=> Types::NewDeviceMetadataType
    #   resp.data.authentication_result.new_device_metadata.device_key #=> String
    #   resp.data.authentication_result.new_device_metadata.device_group_key #=> String
    #
    def admin_initiate_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminInitiateAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminInitiateAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminInitiateAuth
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::InvalidUserPoolConfigurationException, Errors::MFAMethodNotFoundException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AdminInitiateAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminInitiateAuth,
        stubs: @stubs,
        params_class: Params::AdminInitiateAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_initiate_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Links an existing user account in a user pool (<code>DestinationUser</code>) to an
    #             identity from an external IdP (<code>SourceUser</code>) based on a specified attribute
    #             name and value from the external IdP. This allows you to create a link from the existing
    #             user account to an external federated user identity that has not yet been used to sign
    #             in. You can then use the federated user identity to sign in as the existing user
    #             account. </p>
    #         <p> For example, if there is an existing user with a username and password, this API
    #             links that user to a federated user identity. When the user signs in with a federated
    #             user identity, they sign in as the existing user account.</p>
    #         <note>
    #             <p>The maximum number of federated identities linked to a user is five.</p>
    #         </note>
    #         <important>
    #             <p>Because this API allows a user with an external federated identity to sign in as
    #                 an existing user in the user pool, it is critical that it only be used with external
    #                 IdPs and provider attributes that have been trusted by the application owner.</p>
    #         </important>
    #
    #         <p>This action is administrative and requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminLinkProviderForUserInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [ProviderUserIdentifierType] :destination_user
    #   <p>The existing user in the user pool that you want to assign to the external IdP user
    #               account. This user can be a native (Username + Password) Amazon Cognito user pools user or a
    #               federated user (for example, a SAML or Facebook user). If the user doesn't exist, Amazon Cognito
    #               generates an exception. Amazon Cognito returns this user when the new user (with the linked IdP
    #               attribute) signs in.</p>
    #           <p>For a native username + password user, the <code>ProviderAttributeValue</code> for the
    #                   <code>DestinationUser</code> should be the username in the user pool. For a
    #               federated user, it should be the provider-specific <code>user_id</code>.</p>
    #           <p>The <code>ProviderAttributeName</code> of the <code>DestinationUser</code> is
    #               ignored.</p>
    #           <p>The <code>ProviderName</code> should be set to <code>Cognito</code> for users in
    #               Cognito user pools.</p>
    #           <important>
    #               <p>All attributes in the DestinationUser profile must be mutable. If you have
    #                   assigned the user any immutable custom attributes, the operation won't
    #                   succeed.</p>
    #           </important>
    #
    # @option params [ProviderUserIdentifierType] :source_user
    #   <p>An external IdP account for a user who doesn't exist yet in the user pool. This user
    #               must be a federated user (for example, a SAML or Facebook user), not another native
    #               user.</p>
    #           <p>If the <code>SourceUser</code> is using a federated social IdP, such as Facebook,
    #               Google, or Login with Amazon, you must set the <code>ProviderAttributeName</code> to
    #                   <code>Cognito_Subject</code>. For social IdPs, the <code>ProviderName</code> will be
    #                   <code>Facebook</code>, <code>Google</code>, or <code>LoginWithAmazon</code>, and
    #               Amazon Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for
    #                   <code>id</code>, <code>sub</code>, and <code>user_id</code>, respectively. The
    #                   <code>ProviderAttributeValue</code> for the user must be the same value as the
    #                   <code>id</code>, <code>sub</code>, or <code>user_id</code> value found in the social
    #               IdP token.</p>
    #           <p></p>
    #           <p>For SAML, the <code>ProviderAttributeName</code> can be any value that matches a claim
    #               in the SAML assertion. If you want to link SAML users based on the subject of the SAML
    #               assertion, you should map the subject to a claim through the SAML IdP and submit that
    #               claim name as the <code>ProviderAttributeName</code>. If you set
    #                   <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>, Amazon Cognito will
    #               automatically parse the default unique identifier found in the subject from the SAML
    #               token.</p>
    #
    # @return [Types::AdminLinkProviderForUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_link_provider_for_user(
    #     user_pool_id: 'UserPoolId', # required
    #     destination_user: {
    #       provider_name: 'ProviderName',
    #       provider_attribute_name: 'ProviderAttributeName',
    #       provider_attribute_value: 'ProviderAttributeValue'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminLinkProviderForUserOutput
    #
    def admin_link_provider_for_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminLinkProviderForUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminLinkProviderForUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminLinkProviderForUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AliasExistsException, Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminLinkProviderForUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminLinkProviderForUser,
        stubs: @stubs,
        params_class: Params::AdminLinkProviderForUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_link_provider_for_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists devices, as an administrator.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminListDevicesInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user name.</p>
    #
    # @option params [Integer] :limit
    #   <p>The limit of the devices request.</p>
    #
    # @option params [String] :pagination_token
    #   <p>The pagination token.</p>
    #
    # @return [Types::AdminListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_devices(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     limit: 1,
    #     pagination_token: 'PaginationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminListDevicesOutput
    #   resp.data.devices #=> Array<DeviceType>
    #   resp.data.devices[0] #=> Types::DeviceType
    #   resp.data.devices[0].device_key #=> String
    #   resp.data.devices[0].device_attributes #=> Array<AttributeType>
    #   resp.data.devices[0].device_attributes[0] #=> Types::AttributeType
    #   resp.data.devices[0].device_attributes[0].name #=> String
    #   resp.data.devices[0].device_attributes[0].value #=> String
    #   resp.data.devices[0].device_create_date #=> Time
    #   resp.data.devices[0].device_last_modified_date #=> Time
    #   resp.data.devices[0].device_last_authenticated_date #=> Time
    #   resp.data.pagination_token #=> String
    #
    def admin_list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminListDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminListDevices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminListDevices,
        stubs: @stubs,
        params_class: Params::AdminListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the groups that the user belongs to.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminListGroupsForUserInput}.
    #
    # @option params [String] :username
    #   <p>The username for the user.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [Integer] :limit
    #   <p>The limit of the request to list groups.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::AdminListGroupsForUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_groups_for_user(
    #     username: 'Username', # required
    #     user_pool_id: 'UserPoolId', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminListGroupsForUserOutput
    #   resp.data.groups #=> Array<GroupType>
    #   resp.data.groups[0] #=> Types::GroupType
    #   resp.data.groups[0].group_name #=> String
    #   resp.data.groups[0].user_pool_id #=> String
    #   resp.data.groups[0].description #=> String
    #   resp.data.groups[0].role_arn #=> String
    #   resp.data.groups[0].precedence #=> Integer
    #   resp.data.groups[0].last_modified_date #=> Time
    #   resp.data.groups[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def admin_list_groups_for_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminListGroupsForUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminListGroupsForUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminListGroupsForUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminListGroupsForUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminListGroupsForUser,
        stubs: @stubs,
        params_class: Params::AdminListGroupsForUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_list_groups_for_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A history of user activity and any risks detected as part of Amazon Cognito advanced
    #             security.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminListUserAuthEventsInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user pool username or an alias.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of authentication events to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    #
    # @return [Types::AdminListUserAuthEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_user_auth_events(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminListUserAuthEventsOutput
    #   resp.data.auth_events #=> Array<AuthEventType>
    #   resp.data.auth_events[0] #=> Types::AuthEventType
    #   resp.data.auth_events[0].event_id #=> String
    #   resp.data.auth_events[0].event_type #=> String, one of ["SignIn", "SignUp", "ForgotPassword"]
    #   resp.data.auth_events[0].creation_date #=> Time
    #   resp.data.auth_events[0].event_response #=> String, one of ["Success", "Failure"]
    #   resp.data.auth_events[0].event_risk #=> Types::EventRiskType
    #   resp.data.auth_events[0].event_risk.risk_decision #=> String, one of ["NoRisk", "AccountTakeover", "Block"]
    #   resp.data.auth_events[0].event_risk.risk_level #=> String, one of ["Low", "Medium", "High"]
    #   resp.data.auth_events[0].event_risk.compromised_credentials_detected #=> Boolean
    #   resp.data.auth_events[0].challenge_responses #=> Array<ChallengeResponseType>
    #   resp.data.auth_events[0].challenge_responses[0] #=> Types::ChallengeResponseType
    #   resp.data.auth_events[0].challenge_responses[0].challenge_name #=> String, one of ["Password", "Mfa"]
    #   resp.data.auth_events[0].challenge_responses[0].challenge_response #=> String, one of ["Success", "Failure"]
    #   resp.data.auth_events[0].event_context_data #=> Types::EventContextDataType
    #   resp.data.auth_events[0].event_context_data.ip_address #=> String
    #   resp.data.auth_events[0].event_context_data.device_name #=> String
    #   resp.data.auth_events[0].event_context_data.timezone #=> String
    #   resp.data.auth_events[0].event_context_data.city #=> String
    #   resp.data.auth_events[0].event_context_data.country #=> String
    #   resp.data.auth_events[0].event_feedback #=> Types::EventFeedbackType
    #   resp.data.auth_events[0].event_feedback.feedback_value #=> String, one of ["Valid", "Invalid"]
    #   resp.data.auth_events[0].event_feedback.provider #=> String
    #   resp.data.auth_events[0].event_feedback.feedback_date #=> Time
    #   resp.data.next_token #=> String
    #
    def admin_list_user_auth_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminListUserAuthEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminListUserAuthEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminListUserAuthEvents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserPoolAddOnNotEnabledException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminListUserAuthEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminListUserAuthEvents,
        stubs: @stubs,
        params_class: Params::AdminListUserAuthEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_list_user_auth_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified user from the specified group.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminRemoveUserFromGroupInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :username
    #   <p>The username for the user.</p>
    #
    # @option params [String] :group_name
    #   <p>The group name.</p>
    #
    # @return [Types::AdminRemoveUserFromGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_remove_user_from_group(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     group_name: 'GroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminRemoveUserFromGroupOutput
    #
    def admin_remove_user_from_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminRemoveUserFromGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminRemoveUserFromGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminRemoveUserFromGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminRemoveUserFromGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminRemoveUserFromGroup,
        stubs: @stubs,
        params_class: Params::AdminRemoveUserFromGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_remove_user_from_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets the specified user's password in a user pool as an administrator. Works on any
    #             user.</p>
    #         <p>When a developer calls this API, the current password is invalidated, so it must be
    #             changed. If a user tries to sign in after the API is called, the app will get a
    #             PasswordResetRequiredException exception back and should direct the user down the flow
    #             to reset the password, which is the same as the forgot password flow. In addition, if
    #             the user pool has phone verification selected and a verified phone number exists for the
    #             user, or if email verification is selected and a verified email exists for the user,
    #             calling this API will also result in sending a message to the end user with the code to
    #             change their password.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminResetUserPasswordInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to reset the user's password.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user whose password you want to reset.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the AdminResetUserPassword API action, Amazon Cognito invokes the function
    #               that is assigned to the <i>custom message</i> trigger. When Amazon Cognito invokes
    #               this function, it passes a JSON payload, which the function receives as input. This
    #               payload contains a <code>clientMetadata</code> attribute, which provides the data that
    #               you assigned to the ClientMetadata parameter in your AdminResetUserPassword request. In
    #               your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific needs. </p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::AdminResetUserPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_reset_user_password(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminResetUserPasswordOutput
    #
    def admin_reset_user_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminResetUserPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminResetUserPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminResetUserPassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AdminResetUserPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminResetUserPassword,
        stubs: @stubs,
        params_class: Params::AdminResetUserPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_reset_user_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Responds to an authentication challenge, as an administrator.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminRespondToAuthChallengeInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #
    # @option params [String] :client_id
    #   <p>The app client ID.</p>
    #
    # @option params [String] :challenge_name
    #   <p>The challenge name. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
    #
    # @option params [Hash<String, String>] :challenge_responses
    #   <p>The challenge responses. These are inputs corresponding to the value of
    #                   <code>ChallengeName</code>, for example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>,
    #                           <code>SECRET_HASH</code> (if app client is configured with client
    #                       secret).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>,
    #                           <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured
    #                       with client secret).</p>
    #                   <note>
    #                       <p>
    #                        <code>PASSWORD_VERIFIER</code> requires <code>DEVICE_KEY</code> when
    #                           signing in with a remembered device.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>, <code>USERNAME</code>,
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret).
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>,
    #                           <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured
    #                       with client secret). To set any required attributes that Amazon Cognito returned as
    #                           <code>requiredAttributes</code> in the <code>AdminInitiateAuth</code>
    #                       response, add a <code>userAttributes.<i>attributename</i>
    #                     </code>
    #                       parameter. This parameter can also set values for writable attributes that
    #                       aren't required by your user pool.</p>
    #
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the <code>requiredAttributes</code> parameter,
    #   then use the <code>AdminUpdateUserAttributes</code> API operation to modify the value of any additional attributes.</p>
    #                  </note>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code> requires <code>USERNAME</code>, plus you must use the
    #                       session value returned by <code>VerifySoftwareToken</code> in the
    #                           <code>Session</code> parameter.</p>
    #               </li>
    #            </ul>
    #           <p>The value of the <code>USERNAME</code> attribute must be the user's actual username,
    #               not an alias (such as an email address or phone number). To make this simpler, the
    #                   <code>AdminInitiateAuth</code> response includes the actual username value in the
    #                   <code>USERNAMEUSER_ID_FOR_SRP</code> attribute. This happens even if you specified
    #               an alias in your call to <code>AdminInitiateAuth</code>.</p>
    #
    # @option params [String] :session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If an <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call
    #               determines that the caller must pass another challenge, it returns a session with other
    #               challenge parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The analytics metadata for collecting Amazon Pinpoint metrics for
    #                   <code>AdminRespondToAuthChallenge</code> calls.</p>
    #
    # @option params [ContextDataType] :context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminRespondToAuthChallenge API action, Amazon Cognito invokes any functions
    #               that you have assigned to the following triggers: </p>
    #           <ul>
    #               <li>
    #                   <p>pre sign-up</p>
    #               </li>
    #               <li>
    #                   <p>custom message</p>
    #               </li>
    #               <li>
    #                   <p>post authentication</p>
    #               </li>
    #               <li>
    #                   <p>user migration</p>
    #               </li>
    #               <li>
    #                   <p>pre token generation</p>
    #               </li>
    #               <li>
    #                   <p>define auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>create auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>verify auth challenge response</p>
    #               </li>
    #            </ul>
    #           <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your AdminRespondToAuthChallenge request. In your function code in Lambda, you can
    #               process the <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::AdminRespondToAuthChallengeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_respond_to_auth_challenge(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId', # required
    #     challenge_name: 'SMS_MFA', # required - accepts ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #     challenge_responses: {
    #       'key' => 'value'
    #     },
    #     session: 'Session',
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     context_data: {
    #       ip_address: 'IpAddress', # required
    #       server_name: 'ServerName', # required
    #       server_path: 'ServerPath', # required
    #       http_headers: [
    #         {
    #           header_name: 'headerName',
    #           header_value: 'headerValue'
    #         }
    #       ], # required
    #       encoded_data: 'EncodedData'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminRespondToAuthChallengeOutput
    #   resp.data.challenge_name #=> String, one of ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #   resp.data.session #=> String
    #   resp.data.challenge_parameters #=> Hash<String, String>
    #   resp.data.challenge_parameters['key'] #=> String
    #   resp.data.authentication_result #=> Types::AuthenticationResultType
    #   resp.data.authentication_result.access_token #=> String
    #   resp.data.authentication_result.expires_in #=> Integer
    #   resp.data.authentication_result.token_type #=> String
    #   resp.data.authentication_result.refresh_token #=> String
    #   resp.data.authentication_result.id_token #=> String
    #   resp.data.authentication_result.new_device_metadata #=> Types::NewDeviceMetadataType
    #   resp.data.authentication_result.new_device_metadata.device_key #=> String
    #   resp.data.authentication_result.new_device_metadata.device_group_key #=> String
    #
    def admin_respond_to_auth_challenge(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminRespondToAuthChallengeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminRespondToAuthChallengeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminRespondToAuthChallenge
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::InvalidUserPoolConfigurationException, Errors::MFAMethodNotFoundException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::AliasExistsException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::ExpiredCodeException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::CodeMismatchException, Errors::SoftwareTokenMFANotFoundException]),
        data_parser: Parsers::AdminRespondToAuthChallenge
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminRespondToAuthChallenge,
        stubs: @stubs,
        params_class: Params::AdminRespondToAuthChallengeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_respond_to_auth_challenge
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The user's multi-factor authentication (MFA) preference, including which MFA options
    #             are activated, and if any are preferred. Only one factor can be set as preferred. The
    #             preferred MFA factor will be used to authenticate a user if multiple factors are
    #             activated. If multiple options are activated and no preference is set, a challenge to
    #             choose an MFA option will be returned during sign-in.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminSetUserMFAPreferenceInput}.
    #
    # @option params [SMSMfaSettingsType] :sms_mfa_settings
    #   <p>The SMS text message MFA settings.</p>
    #
    # @option params [SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   <p>The time-based one-time password software token MFA settings.</p>
    #
    # @option params [String] :username
    #   <p>The user pool username or alias.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @return [Types::AdminSetUserMFAPreferenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_mfa_preference(
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     username: 'Username', # required
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminSetUserMFAPreferenceOutput
    #
    def admin_set_user_mfa_preference(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminSetUserMFAPreferenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminSetUserMFAPreferenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminSetUserMFAPreference
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::AdminSetUserMFAPreference
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminSetUserMFAPreference,
        stubs: @stubs,
        params_class: Params::AdminSetUserMFAPreferenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_set_user_mfa_preference
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the specified user's password in a user pool as an administrator. Works on any
    #             user. </p>
    #         <p>The password can be temporary or permanent. If it is temporary, the user status enters
    #             the <code>FORCE_CHANGE_PASSWORD</code> state. When the user next tries to sign in, the
    #             InitiateAuth/AdminInitiateAuth response will contain the
    #                 <code>NEW_PASSWORD_REQUIRED</code> challenge. If the user doesn't sign in before it
    #             expires, the user won't be able to sign in, and an administrator must reset their
    #             password. </p>
    #         <p>Once the user has set a new password, or the password is permanent, the user status is
    #             set to <code>Confirmed</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminSetUserPasswordInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to set the user's password.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user whose password you want to set.</p>
    #
    # @option params [String] :password
    #   <p>The password for the user.</p>
    #
    # @option params [Boolean] :permanent
    #   <p>
    #               <code>True</code> if the password is permanent, <code>False</code> if it is
    #               temporary.</p>
    #
    # @return [Types::AdminSetUserPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_password(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     password: 'Password', # required
    #     permanent: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminSetUserPasswordOutput
    #
    def admin_set_user_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminSetUserPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminSetUserPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminSetUserPassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminSetUserPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminSetUserPassword,
        stubs: @stubs,
        params_class: Params::AdminSetUserPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_set_user_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <i>This action is no longer supported.</i> You can use it to configure
    #             only SMS MFA. You can't use it to configure time-based one-time password (TOTP) software
    #             token MFA. To configure either type of MFA, use <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html">AdminSetUserMFAPreference</a> instead.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminSetUserSettingsInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the user whose options you're setting.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user whose options you're setting.</p>
    #
    # @option params [Array<MFAOptionType>] :mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    #
    # @return [Types::AdminSetUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_settings(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     mfa_options: [
    #       {
    #         delivery_medium: 'SMS', # accepts ["SMS", "EMAIL"]
    #         attribute_name: 'AttributeName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminSetUserSettingsOutput
    #
    def admin_set_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminSetUserSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminSetUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminSetUserSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::AdminSetUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminSetUserSettings,
        stubs: @stubs,
        params_class: Params::AdminSetUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_set_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides feedback for an authentication event indicating if it was from a valid user.
    #             This feedback is used for improving the risk evaluation decision for the user pool as
    #             part of Amazon Cognito advanced security.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminUpdateAuthEventFeedbackInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user pool username.</p>
    #
    # @option params [String] :event_id
    #   <p>The authentication event ID.</p>
    #
    # @option params [String] :feedback_value
    #   <p>The authentication event feedback value.</p>
    #
    # @return [Types::AdminUpdateAuthEventFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_auth_event_feedback(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     event_id: 'EventId', # required
    #     feedback_value: 'Valid' # required - accepts ["Valid", "Invalid"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminUpdateAuthEventFeedbackOutput
    #
    def admin_update_auth_event_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminUpdateAuthEventFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminUpdateAuthEventFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminUpdateAuthEventFeedback
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserPoolAddOnNotEnabledException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminUpdateAuthEventFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminUpdateAuthEventFeedback,
        stubs: @stubs,
        params_class: Params::AdminUpdateAuthEventFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_update_auth_event_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the device status as an administrator.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminUpdateDeviceStatusInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user name.</p>
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @option params [String] :device_remembered_status
    #   <p>The status indicating whether a device has been remembered or not.</p>
    #
    # @return [Types::AdminUpdateDeviceStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_device_status(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     device_key: 'DeviceKey', # required
    #     device_remembered_status: 'remembered' # accepts ["remembered", "not_remembered"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminUpdateDeviceStatusOutput
    #
    def admin_update_device_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminUpdateDeviceStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminUpdateDeviceStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminUpdateDeviceStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminUpdateDeviceStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminUpdateDeviceStatus,
        stubs: @stubs,
        params_class: Params::AdminUpdateDeviceStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_update_device_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified user's attributes, including developer attributes, as an
    #             administrator. Works on any user.</p>
    #         <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #             attribute name.</p>
    #         <p>In addition to updating user attributes, this API can also be used to mark phone and
    #             email as verified.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminUpdateUserAttributesInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to update user attributes.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user for whom you want to update user attributes.</p>
    #
    # @option params [Array<AttributeType>] :user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #           <p>If your user pool requires verification before Amazon Cognito updates an attribute value that
    #               you specify in this request, Amazon Cognito doesn’t immediately update the value of that
    #               attribute. After your user receives and responds to a verification message to verify the
    #               new value, Amazon Cognito updates the attribute value. Your user can sign in and receive messages
    #               with the original attribute value until they verify the new value.</p>
    #           <p>To update the value of an attribute that requires verification in the same API
    #               request, include the <code>email_verified</code> or <code>phone_number_verified</code>
    #               attribute, with a value of <code>true</code>. If you set the <code>email_verified</code>
    #               or <code>phone_number_verified</code> value for an <code>email</code> or
    #                   <code>phone_number</code> attribute that requires verification to <code>true</code>,
    #               Amazon Cognito doesn’t send a verification message to your user.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the AdminUpdateUserAttributes API action, Amazon Cognito invokes the
    #               function that is assigned to the <i>custom message</i> trigger. When Amazon Cognito
    #               invokes this function, it passes a JSON payload, which the function receives as input.
    #               This payload contains a <code>clientMetadata</code> attribute, which provides the data
    #               that you assigned to the ClientMetadata parameter in your AdminUpdateUserAttributes
    #               request. In your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::AdminUpdateUserAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_user_attributes(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     user_attributes: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value'
    #       }
    #     ], # required
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminUpdateUserAttributesOutput
    #
    def admin_update_user_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminUpdateUserAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminUpdateUserAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminUpdateUserAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::AliasExistsException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AdminUpdateUserAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminUpdateUserAttributes,
        stubs: @stubs,
        params_class: Params::AdminUpdateUserAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_update_user_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Signs out a user from all devices. You must sign <code>AdminUserGlobalSignOut</code> requests
    #             with Amazon Web Services credentials. It also invalidates all refresh tokens that Amazon Cognito has issued to
    #             a user. The user's current access and ID tokens remain valid until they expire. By
    #             default, access and ID tokens expire one hour after they're issued. A user can still use
    #             a hosted UI cookie to retrieve new tokens for the duration of the cookie validity period
    #             of 1 hour.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::AdminUserGlobalSignOutInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user name.</p>
    #
    # @return [Types::AdminUserGlobalSignOutOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_user_global_sign_out(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdminUserGlobalSignOutOutput
    #
    def admin_user_global_sign_out(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdminUserGlobalSignOutInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdminUserGlobalSignOutInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdminUserGlobalSignOut
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AdminUserGlobalSignOut
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdminUserGlobalSignOut,
        stubs: @stubs,
        params_class: Params::AdminUserGlobalSignOutOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :admin_user_global_sign_out
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Begins setup of time-based one-time password multi-factor authentication (TOTP MFA)
    #             for a user, with a unique private key that Amazon Cognito generates and returns in the API
    #             response. You can authorize an <code>AssociateSoftwareToken</code> request with either
    #             the user's access token, or a session string from a challenge response that you received
    #             from Amazon Cognito.</p>
    #         <note>
    #             <p>Amazon Cognito disassociates an existing software token when you verify the new token in a
    #                     <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html"> VerifySoftwareToken</a> API request. If you don't verify the software
    #                 token and your user pool doesn't require MFA, the user can then authenticate with
    #                 user name and password credentials alone. If your user pool requires TOTP MFA, Amazon Cognito
    #                 generates an <code>MFA_SETUP</code> or <code>SOFTWARE_TOKEN_SETUP</code> challenge
    #                 each time your user signs. Complete setup with <code>AssociateSoftwareToken</code>
    #                 and <code>VerifySoftwareToken</code>.</p>
    #             <p>After you set up software token MFA for your user, Amazon Cognito generates a
    #                     <code>SOFTWARE_TOKEN_MFA</code> challenge when they authenticate. Respond to
    #                 this challenge with your user's TOTP.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateSoftwareTokenInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose software token you want to
    #               generate.</p>
    #
    # @option params [String] :session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. This allows authentication of the user as part of the MFA setup process.</p>
    #
    # @return [Types::AssociateSoftwareTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_software_token(
    #     access_token: 'AccessToken',
    #     session: 'Session'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSoftwareTokenOutput
    #   resp.data.secret_code #=> String
    #   resp.data.session #=> String
    #
    def associate_software_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSoftwareTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSoftwareTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSoftwareToken
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ConcurrentModificationException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::SoftwareTokenMFANotFoundException]),
        data_parser: Parsers::AssociateSoftwareToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSoftwareToken,
        stubs: @stubs,
        params_class: Params::AssociateSoftwareTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_software_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the password for a specified user in a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::ChangePasswordInput}.
    #
    # @option params [String] :previous_password
    #   <p>The old password.</p>
    #
    # @option params [String] :proposed_password
    #   <p>The new password.</p>
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose password you want to
    #               change.</p>
    #
    # @return [Types::ChangePasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_password(
    #     previous_password: 'PreviousPassword', # required
    #     proposed_password: 'ProposedPassword', # required
    #     access_token: 'AccessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChangePasswordOutput
    #
    def change_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChangePasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChangePasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChangePassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ChangePassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChangePassword,
        stubs: @stubs,
        params_class: Params::ChangePasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :change_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Confirms tracking of the device. This API call is the call that begins device
    #             tracking.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmDeviceInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose device you want to
    #               confirm.</p>
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @option params [DeviceSecretVerifierConfigType] :device_secret_verifier_config
    #   <p>The configuration of the device secret verifier.</p>
    #
    # @option params [String] :device_name
    #   <p>The device name.</p>
    #
    # @return [Types::ConfirmDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_device(
    #     access_token: 'AccessToken', # required
    #     device_key: 'DeviceKey', # required
    #     device_secret_verifier_config: {
    #       password_verifier: 'PasswordVerifier',
    #       salt: 'Salt'
    #     },
    #     device_name: 'DeviceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmDeviceOutput
    #   resp.data.user_confirmation_necessary #=> Boolean
    #
    def confirm_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException, Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::UsernameExistsException]),
        data_parser: Parsers::ConfirmDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmDevice,
        stubs: @stubs,
        params_class: Params::ConfirmDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a user to enter a confirmation code to reset a forgotten password.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmForgotPasswordInput}.
    #
    # @option params [String] :client_id
    #   <p>The app client ID of the app associated with the user pool.</p>
    #
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user for whom you want to enter a code to retrieve a forgotten
    #               password.</p>
    #
    # @option params [String] :confirmation_code
    #   <p>The confirmation code sent by a user's request to retrieve a forgotten password. For
    #               more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html">ForgotPassword</a>.</p>
    #
    # @option params [String] :password
    #   <p>The password sent by a user's request to retrieve a forgotten password.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata for collecting metrics for
    #                   <code>ConfirmForgotPassword</code> calls.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the ConfirmForgotPassword API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>post confirmation</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ConfirmForgotPassword request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to
    #               enhance your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::ConfirmForgotPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_forgot_password(
    #     client_id: 'ClientId', # required
    #     secret_hash: 'SecretHash',
    #     username: 'Username', # required
    #     confirmation_code: 'ConfirmationCode', # required
    #     password: 'Password', # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmForgotPasswordOutput
    #
    def confirm_forgot_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmForgotPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmForgotPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmForgotPassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::TooManyFailedAttemptsException, Errors::UserNotConfirmedException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidParameterException, Errors::ExpiredCodeException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::CodeMismatchException]),
        data_parser: Parsers::ConfirmForgotPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmForgotPassword,
        stubs: @stubs,
        params_class: Params::ConfirmForgotPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_forgot_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Confirms registration of a new user.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmSignUpInput}.
    #
    # @option params [String] :client_id
    #   <p>The ID of the app client associated with the user pool.</p>
    #
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user whose registration you want to confirm.</p>
    #
    # @option params [String] :confirmation_code
    #   <p>The confirmation code sent by a user's request to confirm registration.</p>
    #
    # @option params [Boolean] :force_alias_creation
    #   <p>Boolean to be specified to force user confirmation irrespective of existing alias. By
    #               default set to <code>False</code>. If this parameter is set to <code>True</code> and the
    #               phone number/email used for sign up confirmation already exists as an alias with a
    #               different user, the API call will migrate the alias from the previous user to the newly
    #               created user being confirmed. If set to <code>False</code>, the API will throw an
    #                   <b>AliasExistsException</b> error.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>ConfirmSignUp</code>
    #               calls.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>post confirmation</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function
    #               code in Lambda, you can process the <code>clientMetadata</code> value to
    #               enhance your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::ConfirmSignUpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_sign_up(
    #     client_id: 'ClientId', # required
    #     secret_hash: 'SecretHash',
    #     username: 'Username', # required
    #     confirmation_code: 'ConfirmationCode', # required
    #     force_alias_creation: false,
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmSignUpOutput
    #
    def confirm_sign_up(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmSignUpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmSignUpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmSignUp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::TooManyFailedAttemptsException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::AliasExistsException, Errors::InvalidParameterException, Errors::ExpiredCodeException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException, Errors::CodeMismatchException]),
        data_parser: Parsers::ConfirmSignUp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmSignUp,
        stubs: @stubs,
        params_class: Params::ConfirmSignUpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_sign_up
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new group in the specified user pool.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group. Must be unique.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :description
    #   <p>A string containing the description of the group.</p>
    #
    # @option params [String] :role_arn
    #   <p>The role Amazon Resource Name (ARN) for the group.</p>
    #
    # @option params [Integer] :precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher or null <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #           <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #           <p>The default <code>Precedence</code> value is null. The maximum <code>Precedence</code>
    #               value is <code>2^31-1</code>.</p>
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     group_name: 'GroupName', # required
    #     user_pool_id: 'UserPoolId', # required
    #     description: 'Description',
    #     role_arn: 'RoleArn',
    #     precedence: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.group #=> Types::GroupType
    #   resp.data.group.group_name #=> String
    #   resp.data.group.user_pool_id #=> String
    #   resp.data.group.description #=> String
    #   resp.data.group.role_arn #=> String
    #   resp.data.group.precedence #=> Integer
    #   resp.data.group.last_modified_date #=> Time
    #   resp.data.group.creation_date #=> Time
    #
    def create_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException, Errors::GroupExistsException]),
        data_parser: Parsers::CreateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroup,
        stubs: @stubs,
        params_class: Params::CreateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IdP for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIdentityProviderInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :provider_name
    #   <p>The IdP name.</p>
    #
    # @option params [String] :provider_type
    #   <p>The IdP type.</p>
    #
    # @option params [Hash<String, String>] :provider_details
    #   <p>The IdP details. The following list describes the provider detail keys for each IdP
    #               type.</p>
    #           <ul>
    #               <li>
    #                   <p>For Google and Login with Amazon:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For Facebook:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                     <li>
    #                           <p>api_version</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For Sign in with Apple:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>team_id</p>
    #                       </li>
    #                     <li>
    #                           <p>key_id</p>
    #                       </li>
    #                     <li>
    #                           <p>private_key</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For OpenID Connect (OIDC) providers:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>attributes_request_method</p>
    #                       </li>
    #                     <li>
    #                           <p>oidc_issuer</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                     <li>
    #                           <p>The following keys are only present if Amazon Cognito didn't discover them at
    #                               the <code>oidc_issuer</code> URL.</p>
    #                           <ul>
    #                           <li>
    #                                   <p>authorize_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>token_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>attributes_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>jwks_uri </p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                     <li>
    #                           <p>Amazon Cognito sets the value of the following keys automatically. They are
    #                               read-only.</p>
    #                           <ul>
    #                           <li>
    #                                   <p>attributes_url_add_attributes </p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For SAML providers:</p>
    #                   <ul>
    #                     <li>
    #                           <p>MetadataFile or MetadataURL</p>
    #                       </li>
    #                     <li>
    #                           <p>IDPSignout <i>optional</i>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes.</p>
    #
    # @option params [Array<String>] :idp_identifiers
    #   <p>A list of IdP identifiers.</p>
    #
    # @return [Types::CreateIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider(
    #     user_pool_id: 'UserPoolId', # required
    #     provider_name: 'ProviderName', # required
    #     provider_type: 'SAML', # required - accepts ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #     provider_details: {
    #       'key' => 'value'
    #     }, # required
    #     attribute_mapping: {
    #       'key' => 'value'
    #     },
    #     idp_identifiers: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIdentityProviderOutput
    #   resp.data.identity_provider #=> Types::IdentityProviderType
    #   resp.data.identity_provider.user_pool_id #=> String
    #   resp.data.identity_provider.provider_name #=> String
    #   resp.data.identity_provider.provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.identity_provider.provider_details #=> Hash<String, String>
    #   resp.data.identity_provider.provider_details['key'] #=> String
    #   resp.data.identity_provider.attribute_mapping #=> Hash<String, String>
    #   resp.data.identity_provider.attribute_mapping['key'] #=> String
    #   resp.data.identity_provider.idp_identifiers #=> Array<String>
    #   resp.data.identity_provider.idp_identifiers[0] #=> String
    #   resp.data.identity_provider.last_modified_date #=> Time
    #   resp.data.identity_provider.creation_date #=> Time
    #
    def create_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIdentityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIdentityProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DuplicateProviderException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIdentityProvider,
        stubs: @stubs,
        params_class: Params::CreateIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new OAuth2.0 resource server and defines custom scopes within it.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceServerInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :identifier
    #   <p>A unique resource server identifier for the resource server. This could be an HTTPS
    #               endpoint where the resource server is located, such as
    #                   <code>https://my-weather-api.example.com</code>.</p>
    #
    # @option params [String] :name
    #   <p>A friendly name for the resource server.</p>
    #
    # @option params [Array<ResourceServerScopeType>] :scopes
    #   <p>A list of scopes. Each scope is a key-value map with the keys <code>name</code> and
    #                   <code>description</code>.</p>
    #
    # @return [Types::CreateResourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_server(
    #     user_pool_id: 'UserPoolId', # required
    #     identifier: 'Identifier', # required
    #     name: 'Name', # required
    #     scopes: [
    #       {
    #         scope_name: 'ScopeName', # required
    #         scope_description: 'ScopeDescription' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceServerOutput
    #   resp.data.resource_server #=> Types::ResourceServerType
    #   resp.data.resource_server.user_pool_id #=> String
    #   resp.data.resource_server.identifier #=> String
    #   resp.data.resource_server.name #=> String
    #   resp.data.resource_server.scopes #=> Array<ResourceServerScopeType>
    #   resp.data.resource_server.scopes[0] #=> Types::ResourceServerScopeType
    #   resp.data.resource_server.scopes[0].scope_name #=> String
    #   resp.data.resource_server.scopes[0].scope_description #=> String
    #
    def create_resource_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateResourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceServer,
        stubs: @stubs,
        params_class: Params::CreateResourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the user import job.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserImportJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The job name for the user import job.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   <p>The role ARN for the Amazon CloudWatch Logs Logging role for the user import job.</p>
    #
    # @return [Types::CreateUserImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_import_job(
    #     job_name: 'JobName', # required
    #     user_pool_id: 'UserPoolId', # required
    #     cloud_watch_logs_role_arn: 'CloudWatchLogsRoleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserImportJobOutput
    #   resp.data.user_import_job #=> Types::UserImportJobType
    #   resp.data.user_import_job.job_name #=> String
    #   resp.data.user_import_job.job_id #=> String
    #   resp.data.user_import_job.user_pool_id #=> String
    #   resp.data.user_import_job.pre_signed_url #=> String
    #   resp.data.user_import_job.creation_date #=> Time
    #   resp.data.user_import_job.start_date #=> Time
    #   resp.data.user_import_job.completion_date #=> Time
    #   resp.data.user_import_job.status #=> String, one of ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"]
    #   resp.data.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.data.user_import_job.imported_users #=> Integer
    #   resp.data.user_import_job.skipped_users #=> Integer
    #   resp.data.user_import_job.failed_users #=> Integer
    #   resp.data.user_import_job.completion_message #=> String
    #
    def create_user_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserImportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PreconditionNotMetException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateUserImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserImportJob,
        stubs: @stubs,
        params_class: Params::CreateUserImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Cognito user pool and sets the password policy for the
    #             pool.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateUserPoolInput}.
    #
    # @option params [String] :pool_name
    #   <p>A string used to name the user pool.</p>
    #
    # @option params [UserPoolPolicyType] :policies
    #   <p>The policies associated with the new user pool.</p>
    #
    # @option params [LambdaConfigType] :lambda_config
    #   <p>The Lambda trigger configuration information for the new user pool.</p>
    #           <note>
    #               <p>In a push model, event sources (such as Amazon S3 and custom applications) need
    #                   permission to invoke a function. So you must make an extra call to add permission
    #                   for these event sources to invoke your Lambda function.</p>
    #               <p></p>
    #               <p>For more information on using the Lambda API to add permission, see<a href="https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html">
    #                       AddPermission </a>. </p>
    #               <p>For adding permission using the CLI, see<a href="https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html"> add-permission
    #                   </a>.</p>
    #           </note>
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   <p>The attributes to be auto-verified. Possible values: <b>email</b>, <b>phone_number</b>.</p>
    #
    # @option params [Array<String>] :alias_attributes
    #   <p>Attributes supported as an alias for this user pool. Possible values: <b>phone_number</b>, <b>email</b>, or
    #                   <b>preferred_username</b>.</p>
    #
    # @option params [Array<String>] :username_attributes
    #   <p>Specifies whether a user can use an email address or phone number as a username when
    #               they sign up.</p>
    #
    # @option params [String] :sms_verification_message
    #   <p>A string representing the SMS verification message.</p>
    #
    # @option params [String] :email_verification_message
    #   <p>A string representing the email verification message. EmailVerificationMessage is
    #               allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #
    # @option params [String] :email_verification_subject
    #   <p>A string representing the email verification subject. EmailVerificationSubject is
    #               allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #
    # @option params [VerificationMessageTemplateType] :verification_message_template
    #   <p>The template for the verification message that the user sees when the app requests
    #               permission to access the user's information.</p>
    #
    # @option params [String] :sms_authentication_message
    #   <p>A string representing the SMS authentication message.</p>
    #
    # @option params [String] :mfa_configuration
    #   <p>Specifies MFA configuration details.</p>
    #
    # @option params [UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to to email addresses and phone numbers</a>.</p>
    #
    # @option params [DeviceConfigurationType] :device_configuration
    #   <p>The device configuration.</p>
    #
    # @option params [EmailConfigurationType] :email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #               pool.</p>
    #
    # @option params [SmsConfigurationType] :sms_configuration
    #   <p>The SMS configuration with the settings that your Amazon Cognito user pool must use to send an
    #               SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To send SMS messages
    #               with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an Identity and Access Management
    #               (IAM) role in your Amazon Web Services account.</p>
    #
    # @option params [Hash<String, String>] :user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #
    # @option params [AdminCreateUserConfigType] :admin_create_user_config
    #   <p>The configuration for <code>AdminCreateUser</code> requests.</p>
    #
    # @option params [Array<SchemaAttributeType>] :schema
    #   <p>An array of schema attributes for the new user pool. These attributes can be standard
    #               or custom attributes.</p>
    #
    # @option params [UserPoolAddOnsType] :user_pool_add_ons
    #   <p>Enables advanced security risk detection. Set the key
    #                   <code>AdvancedSecurityMode</code> to the value "AUDIT".</p>
    #
    # @option params [UsernameConfigurationType] :username_configuration
    #   <p>Case sensitivity on the username input for the selected sign-in option. For example,
    #               when case sensitivity is set to <code>False</code>, users can sign in using either
    #               "username" or "Username". This configuration is immutable once it has been set. For more
    #               information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html">UsernameConfigurationType</a>.</p>
    #
    # @option params [AccountRecoverySettingType] :account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #
    # @return [Types::CreateUserPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool(
    #     pool_name: 'PoolName', # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         temporary_password_validity_days: 1
    #       }
    #     },
    #     lambda_config: {
    #       pre_sign_up: 'PreSignUp',
    #       custom_message: 'CustomMessage',
    #       post_confirmation: 'PostConfirmation',
    #       pre_authentication: 'PreAuthentication',
    #       post_authentication: 'PostAuthentication',
    #       define_auth_challenge: 'DefineAuthChallenge',
    #       create_auth_challenge: 'CreateAuthChallenge',
    #       verify_auth_challenge_response: 'VerifyAuthChallengeResponse',
    #       pre_token_generation: 'PreTokenGeneration',
    #       user_migration: 'UserMigration',
    #       custom_sms_sender: {
    #         lambda_version: 'V1_0', # required - accepts ["V1_0"]
    #         lambda_arn: 'LambdaArn' # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: 'V1_0', # required - accepts ["V1_0"]
    #         lambda_arn: 'LambdaArn' # required
    #       },
    #       kms_key_id: 'KMSKeyID'
    #     },
    #     auto_verified_attributes: [
    #       'phone_number' # accepts ["phone_number", "email"]
    #     ],
    #     alias_attributes: [
    #       'phone_number' # accepts ["phone_number", "email", "preferred_username"]
    #     ],
    #     username_attributes: [
    #       'phone_number' # accepts ["phone_number", "email"]
    #     ],
    #     sms_verification_message: 'SmsVerificationMessage',
    #     email_verification_message: 'EmailVerificationMessage',
    #     email_verification_subject: 'EmailVerificationSubject',
    #     verification_message_template: {
    #       sms_message: 'SmsMessage',
    #       email_message: 'EmailMessage',
    #       email_subject: 'EmailSubject',
    #       email_message_by_link: 'EmailMessageByLink',
    #       email_subject_by_link: 'EmailSubjectByLink',
    #       default_email_option: 'CONFIRM_WITH_LINK' # accepts ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #     },
    #     sms_authentication_message: 'SmsAuthenticationMessage',
    #     mfa_configuration: 'OFF', # accepts ["OFF", "ON", "OPTIONAL"]
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: [
    #         'phone_number' # accepts ["phone_number", "email"]
    #       ]
    #     },
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false
    #     },
    #     email_configuration: {
    #       source_arn: 'SourceArn',
    #       reply_to_email_address: 'ReplyToEmailAddress',
    #       email_sending_account: 'COGNITO_DEFAULT', # accepts ["COGNITO_DEFAULT", "DEVELOPER"]
    #       from: 'From',
    #       configuration_set: 'ConfigurationSet'
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: 'SnsCallerArn', # required
    #       external_id: 'ExternalId',
    #       sns_region: 'SnsRegion'
    #     },
    #     user_pool_tags: {
    #       'key' => 'value'
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: 'SMSMessage',
    #         email_message: 'EmailMessage',
    #         email_subject: 'EmailSubject'
    #       }
    #     },
    #     schema: [
    #       {
    #         name: 'Name',
    #         attribute_data_type: 'String', # accepts ["String", "Number", "DateTime", "Boolean"]
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: 'MinValue',
    #           max_value: 'MaxValue'
    #         },
    #         string_attribute_constraints: {
    #           min_length: 'MinLength',
    #           max_length: 'MaxLength'
    #         }
    #       }
    #     ],
    #     user_pool_add_ons: {
    #       advanced_security_mode: 'OFF' # required - accepts ["OFF", "AUDIT", "ENFORCED"]
    #     },
    #     username_configuration: {
    #       case_sensitive: false # required
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: 'verified_email' # required - accepts ["verified_email", "verified_phone_number", "admin_only"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserPoolOutput
    #   resp.data.user_pool #=> Types::UserPoolType
    #   resp.data.user_pool.id #=> String
    #   resp.data.user_pool.name #=> String
    #   resp.data.user_pool.policies #=> Types::UserPoolPolicyType
    #   resp.data.user_pool.policies.password_policy #=> Types::PasswordPolicyType
    #   resp.data.user_pool.policies.password_policy.minimum_length #=> Integer
    #   resp.data.user_pool.policies.password_policy.require_uppercase #=> Boolean
    #   resp.data.user_pool.policies.password_policy.require_lowercase #=> Boolean
    #   resp.data.user_pool.policies.password_policy.require_numbers #=> Boolean
    #   resp.data.user_pool.policies.password_policy.require_symbols #=> Boolean
    #   resp.data.user_pool.policies.password_policy.temporary_password_validity_days #=> Integer
    #   resp.data.user_pool.lambda_config #=> Types::LambdaConfigType
    #   resp.data.user_pool.lambda_config.pre_sign_up #=> String
    #   resp.data.user_pool.lambda_config.custom_message #=> String
    #   resp.data.user_pool.lambda_config.post_confirmation #=> String
    #   resp.data.user_pool.lambda_config.pre_authentication #=> String
    #   resp.data.user_pool.lambda_config.post_authentication #=> String
    #   resp.data.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.data.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.data.user_pool.lambda_config.verify_auth_challenge_response #=> String
    #   resp.data.user_pool.lambda_config.pre_token_generation #=> String
    #   resp.data.user_pool.lambda_config.user_migration #=> String
    #   resp.data.user_pool.lambda_config.custom_sms_sender #=> Types::CustomSMSLambdaVersionConfigType
    #   resp.data.user_pool.lambda_config.custom_sms_sender.lambda_version #=> String, one of ["V1_0"]
    #   resp.data.user_pool.lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.data.user_pool.lambda_config.custom_email_sender #=> Types::CustomEmailLambdaVersionConfigType
    #   resp.data.user_pool.lambda_config.custom_email_sender.lambda_version #=> String, one of ["V1_0"]
    #   resp.data.user_pool.lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.data.user_pool.lambda_config.kms_key_id #=> String
    #   resp.data.user_pool.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.user_pool.last_modified_date #=> Time
    #   resp.data.user_pool.creation_date #=> Time
    #   resp.data.user_pool.schema_attributes #=> Array<SchemaAttributeType>
    #   resp.data.user_pool.schema_attributes[0] #=> Types::SchemaAttributeType
    #   resp.data.user_pool.schema_attributes[0].name #=> String
    #   resp.data.user_pool.schema_attributes[0].attribute_data_type #=> String, one of ["String", "Number", "DateTime", "Boolean"]
    #   resp.data.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
    #   resp.data.user_pool.schema_attributes[0].mutable #=> Boolean
    #   resp.data.user_pool.schema_attributes[0].required #=> Boolean
    #   resp.data.user_pool.schema_attributes[0].number_attribute_constraints #=> Types::NumberAttributeConstraintsType
    #   resp.data.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
    #   resp.data.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
    #   resp.data.user_pool.schema_attributes[0].string_attribute_constraints #=> Types::StringAttributeConstraintsType
    #   resp.data.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
    #   resp.data.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
    #   resp.data.user_pool.auto_verified_attributes #=> Array<String>
    #   resp.data.user_pool.auto_verified_attributes[0] #=> String, one of ["phone_number", "email"]
    #   resp.data.user_pool.alias_attributes #=> Array<String>
    #   resp.data.user_pool.alias_attributes[0] #=> String, one of ["phone_number", "email", "preferred_username"]
    #   resp.data.user_pool.username_attributes #=> Array<String>
    #   resp.data.user_pool.username_attributes[0] #=> String, one of ["phone_number", "email"]
    #   resp.data.user_pool.sms_verification_message #=> String
    #   resp.data.user_pool.email_verification_message #=> String
    #   resp.data.user_pool.email_verification_subject #=> String
    #   resp.data.user_pool.verification_message_template #=> Types::VerificationMessageTemplateType
    #   resp.data.user_pool.verification_message_template.sms_message #=> String
    #   resp.data.user_pool.verification_message_template.email_message #=> String
    #   resp.data.user_pool.verification_message_template.email_subject #=> String
    #   resp.data.user_pool.verification_message_template.email_message_by_link #=> String
    #   resp.data.user_pool.verification_message_template.email_subject_by_link #=> String
    #   resp.data.user_pool.verification_message_template.default_email_option #=> String, one of ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #   resp.data.user_pool.sms_authentication_message #=> String
    #   resp.data.user_pool.user_attribute_update_settings #=> Types::UserAttributeUpdateSettingsType
    #   resp.data.user_pool.user_attribute_update_settings.attributes_require_verification_before_update #=> Array<String>
    #   resp.data.user_pool.user_attribute_update_settings.attributes_require_verification_before_update[0] #=> String, one of ["phone_number", "email"]
    #   resp.data.user_pool.mfa_configuration #=> String, one of ["OFF", "ON", "OPTIONAL"]
    #   resp.data.user_pool.device_configuration #=> Types::DeviceConfigurationType
    #   resp.data.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.data.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.data.user_pool.estimated_number_of_users #=> Integer
    #   resp.data.user_pool.email_configuration #=> Types::EmailConfigurationType
    #   resp.data.user_pool.email_configuration.source_arn #=> String
    #   resp.data.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.data.user_pool.email_configuration.email_sending_account #=> String, one of ["COGNITO_DEFAULT", "DEVELOPER"]
    #   resp.data.user_pool.email_configuration.from #=> String
    #   resp.data.user_pool.email_configuration.configuration_set #=> String
    #   resp.data.user_pool.sms_configuration #=> Types::SmsConfigurationType
    #   resp.data.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.data.user_pool.sms_configuration.external_id #=> String
    #   resp.data.user_pool.sms_configuration.sns_region #=> String
    #   resp.data.user_pool.user_pool_tags #=> Hash<String, String>
    #   resp.data.user_pool.user_pool_tags['key'] #=> String
    #   resp.data.user_pool.sms_configuration_failure #=> String
    #   resp.data.user_pool.email_configuration_failure #=> String
    #   resp.data.user_pool.domain #=> String
    #   resp.data.user_pool.custom_domain #=> String
    #   resp.data.user_pool.admin_create_user_config #=> Types::AdminCreateUserConfigType
    #   resp.data.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.data.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.data.user_pool.admin_create_user_config.invite_message_template #=> Types::MessageTemplateType
    #   resp.data.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.data.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.data.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #   resp.data.user_pool.user_pool_add_ons #=> Types::UserPoolAddOnsType
    #   resp.data.user_pool.user_pool_add_ons.advanced_security_mode #=> String, one of ["OFF", "AUDIT", "ENFORCED"]
    #   resp.data.user_pool.username_configuration #=> Types::UsernameConfigurationType
    #   resp.data.user_pool.username_configuration.case_sensitive #=> Boolean
    #   resp.data.user_pool.arn #=> String
    #   resp.data.user_pool.account_recovery_setting #=> Types::AccountRecoverySettingType
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms #=> Array<RecoveryOptionType>
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms[0] #=> Types::RecoveryOptionType
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms[0].priority #=> Integer
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms[0].name #=> String, one of ["verified_email", "verified_phone_number", "admin_only"]
    #
    def create_user_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserPool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::TooManyRequestsException, Errors::UserPoolTaggingException, Errors::InvalidSmsRoleTrustRelationshipException]),
        data_parser: Parsers::CreateUserPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserPool,
        stubs: @stubs,
        params_class: Params::CreateUserPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the user pool client.</p>
    #         <p>When you create a new user pool client, token revocation is automatically activated.
    #             For more information about revoking tokens, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserPoolClientInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to create a user pool client.</p>
    #
    # @option params [String] :client_name
    #   <p>The client name for the user pool client you would like to create.</p>
    #
    # @option params [Boolean] :generate_secret
    #   <p>Boolean to specify whether you want to generate a secret for the user pool client
    #               being created.</p>
    #
    # @option params [Integer] :refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #           their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #           and retrieve new access and ID tokens for 10 days.</p>
    #           <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #           You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #           value with the default value of 30 days. <i>Valid range</i> is displayed below
    #           in seconds.</p>
    #
    # @option params [Integer] :access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #           their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #           <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #           their access token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    # @option params [Integer] :id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #           their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #           session with their ID token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    # @option params [TokenValidityUnitsType] :token_validity_units
    #   <p>The units in which the validity times are represented. The default unit for
    #               RefreshToken is days, and default for ID and access tokens are hours.</p>
    #
    # @option params [Array<String>] :read_attributes
    #   <p>The read attributes.</p>
    #
    # @option params [Array<String>] :write_attributes
    #   <p>The user pool attributes that the app client can write to.</p>
    #           <p>If your app client allows users to sign in through an IdP, this array must include all
    #               attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #               users sign in to your application through an IdP. If your app client does not have write
    #               access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #               attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #               pool</a>.</p>
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   <p>The authentication flows that are supported by the user pool clients. Flow names
    #               without the <code>ALLOW_</code> prefix are no longer supported, in favor of new names
    #               with the <code>ALLOW_</code> prefix.</p>
    #           <note>
    #               <p>Values with <code>ALLOW_</code> prefix must be used only along with the
    #                       <code>ALLOW_</code> prefix.</p>
    #           </note>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #                       authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #                       the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, Amazon Cognito
    #                       receives the password in the request instead of using the Secure Remote Password
    #                       (SRP) protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #                       authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #                       authentication. In this flow, Amazon Cognito receives the password in the request instead
    #                       of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #                       tokens.</p>
    #               </li>
    #            </ul>
    #           <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client
    #               activates the <code>ALLOW_USER_SRP_AUTH</code> and <code>ALLOW_CUSTOM_AUTH</code>
    #               authentication flows.</p>
    #
    # @option params [Array<String>] :supported_identity_providers
    #   <p>A list of provider names for the IdPs that this client supports. The following are
    #               supported: <code>COGNITO</code>, <code>Facebook</code>, <code>Google</code>
    #               <code>LoginWithAmazon</code>, and the names of your own SAML and OIDC providers.</p>
    #
    # @option params [Array<String>] :callback_ur_ls
    #   <p>A list of allowed redirect (callback) URLs for the IdPs.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as myapp://example are also supported.</p>
    #
    # @option params [Array<String>] :logout_ur_ls
    #   <p>A list of allowed logout URLs for the IdPs.</p>
    #
    # @option params [String] :default_redirect_uri
    #   <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as myapp://example are also supported.</p>
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   <p>The allowed OAuth flows.</p>
    #           <dl>
    #               <dt>code</dt>
    #               <dd>
    #                       <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #                   </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                       <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #                   </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                       <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #                   </dd>
    #            </dl>
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   <p>The allowed OAuth scopes. Possible values provided by OAuth are <code>phone</code>,
    #                   <code>email</code>, <code>openid</code>, and <code>profile</code>. Possible values
    #               provided by Amazon Web Services are <code>aws.cognito.signin.user.admin</code>. Custom
    #               scopes created in Resource Servers are also supported.</p>
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   <p>Set to true if the client is allowed to follow the OAuth protocol when interacting
    #               with Amazon Cognito user pools.</p>
    #
    # @option params [AnalyticsConfigurationType] :analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #           <note>
    #               <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools only support sending
    #                   events to Amazon Pinpoint projects in Amazon Web Services Region us-east-1. In Regions where Amazon Pinpoint is
    #                   available, user pools support sending events to Amazon Pinpoint projects within that same
    #                   Region.</p>
    #           </note>
    #
    # @option params [String] :prevent_user_existence_errors
    #   <p>Errors and responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #                   <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code> - This prevents user existence-related errors.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LEGACY</code> - This represents the early behavior of Amazon Cognito where user
    #                       existence related errors aren't prevented.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :enable_token_revocation
    #   <p>Activates or deactivates token revocation. For more information about revoking tokens,
    #               see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #           <p>If you don't include this parameter, token revocation is automatically activated for
    #               the new user pool client.</p>
    #
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   <p>Activates the propagation of additional user context data. For more information about
    #               propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html"> Adding advanced security to a user pool</a>. If you don’t include this
    #               parameter, you can't send device fingerprint information, including source IP address,
    #               to Amazon Cognito advanced security. You can only activate
    #                   <code>EnablePropagateAdditionalUserContextData</code> in an app client that has a
    #               client secret.</p>
    #
    # @return [Types::CreateUserPoolClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_client(
    #     user_pool_id: 'UserPoolId', # required
    #     client_name: 'ClientName', # required
    #     generate_secret: false,
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: 'seconds', # accepts ["seconds", "minutes", "hours", "days"]
    #       id_token: 'seconds', # accepts ["seconds", "minutes", "hours", "days"]
    #       refresh_token: 'seconds' # accepts ["seconds", "minutes", "hours", "days"]
    #     },
    #     read_attributes: [
    #       'member'
    #     ],
    #     explicit_auth_flows: [
    #       'ADMIN_NO_SRP_AUTH' # accepts ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
    #     ],
    #     supported_identity_providers: [
    #       'member'
    #     ],
    #     callback_ur_ls: [
    #       'member'
    #     ],
    #     logout_ur_ls: [
    #       'member'
    #     ],
    #     default_redirect_uri: 'DefaultRedirectURI',
    #     allowed_o_auth_flows: [
    #       'code' # accepts ["code", "implicit", "client_credentials"]
    #     ],
    #     allowed_o_auth_scopes: [
    #       'member'
    #     ],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: 'ApplicationId',
    #       application_arn: 'ApplicationArn',
    #       role_arn: 'RoleArn',
    #       external_id: 'ExternalId',
    #       user_data_shared: false
    #     },
    #     prevent_user_existence_errors: 'LEGACY', # accepts ["LEGACY", "ENABLED"]
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserPoolClientOutput
    #   resp.data.user_pool_client #=> Types::UserPoolClientType
    #   resp.data.user_pool_client.user_pool_id #=> String
    #   resp.data.user_pool_client.client_name #=> String
    #   resp.data.user_pool_client.client_id #=> String
    #   resp.data.user_pool_client.client_secret #=> String
    #   resp.data.user_pool_client.last_modified_date #=> Time
    #   resp.data.user_pool_client.creation_date #=> Time
    #   resp.data.user_pool_client.refresh_token_validity #=> Integer
    #   resp.data.user_pool_client.access_token_validity #=> Integer
    #   resp.data.user_pool_client.id_token_validity #=> Integer
    #   resp.data.user_pool_client.token_validity_units #=> Types::TokenValidityUnitsType
    #   resp.data.user_pool_client.token_validity_units.access_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.token_validity_units.id_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.token_validity_units.refresh_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.read_attributes #=> Array<String>
    #   resp.data.user_pool_client.read_attributes[0] #=> String
    #   resp.data.user_pool_client.write_attributes #=> Array<String>
    #   resp.data.user_pool_client.explicit_auth_flows #=> Array<String>
    #   resp.data.user_pool_client.explicit_auth_flows[0] #=> String, one of ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
    #   resp.data.user_pool_client.supported_identity_providers #=> Array<String>
    #   resp.data.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.data.user_pool_client.callback_ur_ls #=> Array<String>
    #   resp.data.user_pool_client.callback_ur_ls[0] #=> String
    #   resp.data.user_pool_client.logout_ur_ls #=> Array<String>
    #   resp.data.user_pool_client.logout_ur_ls[0] #=> String
    #   resp.data.user_pool_client.default_redirect_uri #=> String
    #   resp.data.user_pool_client.allowed_o_auth_flows #=> Array<String>
    #   resp.data.user_pool_client.allowed_o_auth_flows[0] #=> String, one of ["code", "implicit", "client_credentials"]
    #   resp.data.user_pool_client.allowed_o_auth_scopes #=> Array<String>
    #   resp.data.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.data.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.data.user_pool_client.analytics_configuration #=> Types::AnalyticsConfigurationType
    #   resp.data.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.data.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.data.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.data.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.data.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.data.user_pool_client.prevent_user_existence_errors #=> String, one of ["LEGACY", "ENABLED"]
    #   resp.data.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.data.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #
    def create_user_pool_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserPoolClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserPoolClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserPoolClient
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::ScopeDoesNotExistException, Errors::TooManyRequestsException, Errors::InvalidOAuthFlowException]),
        data_parser: Parsers::CreateUserPoolClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserPoolClient,
        stubs: @stubs,
        params_class: Params::CreateUserPoolClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_pool_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new domain for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserPoolDomainInput}.
    #
    # @option params [String] :domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [CustomDomainConfigType] :custom_domain_config
    #   <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for
    #               your application.</p>
    #           <p>Provide this parameter only if you want to use a custom domain for your user pool.
    #               Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain
    #               instead.</p>
    #           <p>For more information about the hosted domain and custom domains, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html">Configuring a User Pool Domain</a>.</p>
    #
    # @return [Types::CreateUserPoolDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_domain(
    #     domain: 'Domain', # required
    #     user_pool_id: 'UserPoolId', # required
    #     custom_domain_config: {
    #       certificate_arn: 'CertificateArn' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserPoolDomainOutput
    #   resp.data.cloud_front_domain #=> String
    #
    def create_user_pool_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserPoolDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserPoolDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserPoolDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::CreateUserPoolDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserPoolDomain,
        stubs: @stubs,
        params_class: Params::CreateUserPoolDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_pool_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a group.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     group_name: 'GroupName', # required
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupOutput
    #
    def delete_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroup,
        stubs: @stubs,
        params_class: Params::DeleteGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an IdP for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIdentityProviderInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :provider_name
    #   <p>The IdP name.</p>
    #
    # @return [Types::DeleteIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_provider(
    #     user_pool_id: 'UserPoolId', # required
    #     provider_name: 'ProviderName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIdentityProviderOutput
    #
    def delete_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIdentityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIdentityProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException, Errors::UnsupportedIdentityProviderException]),
        data_parser: Parsers::DeleteIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIdentityProvider,
        stubs: @stubs,
        params_class: Params::DeleteIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource server.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceServerInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that hosts the resource server.</p>
    #
    # @option params [String] :identifier
    #   <p>The identifier for the resource server.</p>
    #
    # @return [Types::DeleteResourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_server(
    #     user_pool_id: 'UserPoolId', # required
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceServerOutput
    #
    def delete_resource_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteResourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceServer,
        stubs: @stubs,
        params_class: Params::DeleteResourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a user to delete himself or herself.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user profile you want to
    #               delete.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     access_token: 'AccessToken' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
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

    # <p>Deletes the attributes for a user.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserAttributesInput}.
    #
    # @option params [Array<String>] :user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #           <p>For custom attributes, you must prependattach the <code>custom:</code> prefix to the
    #               front of the attribute name.</p>
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose attributes you want to
    #               delete.</p>
    #
    # @return [Types::DeleteUserAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_attributes(
    #     user_attribute_names: [
    #       'member'
    #     ], # required
    #     access_token: 'AccessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserAttributesOutput
    #
    def delete_user_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteUserAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserAttributes,
        stubs: @stubs,
        params_class: Params::DeleteUserAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Cognito user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserPoolInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool you want to delete.</p>
    #
    # @return [Types::DeleteUserPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool(
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserPoolOutput
    #
    def delete_user_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserPool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserImportInProgressException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteUserPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserPool,
        stubs: @stubs,
        params_class: Params::DeleteUserPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the developer to delete the user pool client.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserPoolClientInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to delete the client.</p>
    #
    # @option params [String] :client_id
    #   <p>The app client ID of the app associated with the user pool.</p>
    #
    # @return [Types::DeleteUserPoolClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_client(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserPoolClientOutput
    #
    def delete_user_pool_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserPoolClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserPoolClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserPoolClient
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteUserPoolClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserPoolClient,
        stubs: @stubs,
        params_class: Params::DeleteUserPoolClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_pool_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a domain for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserPoolDomainInput}.
    #
    # @option params [String] :domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @return [Types::DeleteUserPoolDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_domain(
    #     domain: 'Domain', # required
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserPoolDomainOutput
    #
    def delete_user_pool_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserPoolDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserPoolDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserPoolDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::DeleteUserPoolDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserPoolDomain,
        stubs: @stubs,
        params_class: Params::DeleteUserPoolDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_pool_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specific IdP.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityProviderInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :provider_name
    #   <p>The IdP name.</p>
    #
    # @return [Types::DescribeIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider(
    #     user_pool_id: 'UserPoolId', # required
    #     provider_name: 'ProviderName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityProviderOutput
    #   resp.data.identity_provider #=> Types::IdentityProviderType
    #   resp.data.identity_provider.user_pool_id #=> String
    #   resp.data.identity_provider.provider_name #=> String
    #   resp.data.identity_provider.provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.identity_provider.provider_details #=> Hash<String, String>
    #   resp.data.identity_provider.provider_details['key'] #=> String
    #   resp.data.identity_provider.attribute_mapping #=> Hash<String, String>
    #   resp.data.identity_provider.attribute_mapping['key'] #=> String
    #   resp.data.identity_provider.idp_identifiers #=> Array<String>
    #   resp.data.identity_provider.idp_identifiers[0] #=> String
    #   resp.data.identity_provider.last_modified_date #=> Time
    #   resp.data.identity_provider.creation_date #=> Time
    #
    def describe_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentityProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentityProvider,
        stubs: @stubs,
        params_class: Params::DescribeIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a resource server.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourceServerInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that hosts the resource server.</p>
    #
    # @option params [String] :identifier
    #   <p>The identifier for the resource server</p>
    #
    # @return [Types::DescribeResourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_server(
    #     user_pool_id: 'UserPoolId', # required
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourceServerOutput
    #   resp.data.resource_server #=> Types::ResourceServerType
    #   resp.data.resource_server.user_pool_id #=> String
    #   resp.data.resource_server.identifier #=> String
    #   resp.data.resource_server.name #=> String
    #   resp.data.resource_server.scopes #=> Array<ResourceServerScopeType>
    #   resp.data.resource_server.scopes[0] #=> Types::ResourceServerScopeType
    #   resp.data.resource_server.scopes[0].scope_name #=> String
    #   resp.data.resource_server.scopes[0].scope_description #=> String
    #
    def describe_resource_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeResourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourceServer,
        stubs: @stubs,
        params_class: Params::DescribeResourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the risk configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRiskConfigurationInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :client_id
    #   <p>The app client ID.</p>
    #
    # @return [Types::DescribeRiskConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_risk_configuration(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRiskConfigurationOutput
    #   resp.data.risk_configuration #=> Types::RiskConfigurationType
    #   resp.data.risk_configuration.user_pool_id #=> String
    #   resp.data.risk_configuration.client_id #=> String
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration #=> Types::CompromisedCredentialsRiskConfigurationType
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.event_filter #=> Array<String>
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.event_filter[0] #=> String, one of ["SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"]
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.actions #=> Types::CompromisedCredentialsActionsType
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.actions.event_action #=> String, one of ["BLOCK", "NO_ACTION"]
    #   resp.data.risk_configuration.account_takeover_risk_configuration #=> Types::AccountTakeoverRiskConfigurationType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration #=> Types::NotifyConfigurationType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.from #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.reply_to #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.source_arn #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email #=> Types::NotifyEmailType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.subject #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.html_body #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.text_body #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email #=> Types::NotifyEmailType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email #=> Types::NotifyEmailType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions #=> Types::AccountTakeoverActionsType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.low_action #=> Types::AccountTakeoverActionType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.low_action.notify #=> Boolean
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.low_action.event_action #=> String, one of ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"]
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.medium_action #=> Types::AccountTakeoverActionType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.high_action #=> Types::AccountTakeoverActionType
    #   resp.data.risk_configuration.risk_exception_configuration #=> Types::RiskExceptionConfigurationType
    #   resp.data.risk_configuration.risk_exception_configuration.blocked_ip_range_list #=> Array<String>
    #   resp.data.risk_configuration.risk_exception_configuration.blocked_ip_range_list[0] #=> String
    #   resp.data.risk_configuration.risk_exception_configuration.skipped_ip_range_list #=> Array<String>
    #   resp.data.risk_configuration.risk_exception_configuration.skipped_ip_range_list[0] #=> String
    #   resp.data.risk_configuration.last_modified_date #=> Time
    #
    def describe_risk_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRiskConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRiskConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRiskConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::UserPoolAddOnNotEnabledException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeRiskConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRiskConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeRiskConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_risk_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the user import job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserImportJobInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    # @option params [String] :job_id
    #   <p>The job ID for the user import job.</p>
    #
    # @return [Types::DescribeUserImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_import_job(
    #     user_pool_id: 'UserPoolId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserImportJobOutput
    #   resp.data.user_import_job #=> Types::UserImportJobType
    #   resp.data.user_import_job.job_name #=> String
    #   resp.data.user_import_job.job_id #=> String
    #   resp.data.user_import_job.user_pool_id #=> String
    #   resp.data.user_import_job.pre_signed_url #=> String
    #   resp.data.user_import_job.creation_date #=> Time
    #   resp.data.user_import_job.start_date #=> Time
    #   resp.data.user_import_job.completion_date #=> Time
    #   resp.data.user_import_job.status #=> String, one of ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"]
    #   resp.data.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.data.user_import_job.imported_users #=> Integer
    #   resp.data.user_import_job.skipped_users #=> Integer
    #   resp.data.user_import_job.failed_users #=> Integer
    #   resp.data.user_import_job.completion_message #=> String
    #
    def describe_user_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserImportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeUserImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserImportJob,
        stubs: @stubs,
        params_class: Params::DescribeUserImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the configuration information and metadata of the specified user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserPoolInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool you want to describe.</p>
    #
    # @return [Types::DescribeUserPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool(
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserPoolOutput
    #   resp.data.user_pool #=> Types::UserPoolType
    #   resp.data.user_pool.id #=> String
    #   resp.data.user_pool.name #=> String
    #   resp.data.user_pool.policies #=> Types::UserPoolPolicyType
    #   resp.data.user_pool.policies.password_policy #=> Types::PasswordPolicyType
    #   resp.data.user_pool.policies.password_policy.minimum_length #=> Integer
    #   resp.data.user_pool.policies.password_policy.require_uppercase #=> Boolean
    #   resp.data.user_pool.policies.password_policy.require_lowercase #=> Boolean
    #   resp.data.user_pool.policies.password_policy.require_numbers #=> Boolean
    #   resp.data.user_pool.policies.password_policy.require_symbols #=> Boolean
    #   resp.data.user_pool.policies.password_policy.temporary_password_validity_days #=> Integer
    #   resp.data.user_pool.lambda_config #=> Types::LambdaConfigType
    #   resp.data.user_pool.lambda_config.pre_sign_up #=> String
    #   resp.data.user_pool.lambda_config.custom_message #=> String
    #   resp.data.user_pool.lambda_config.post_confirmation #=> String
    #   resp.data.user_pool.lambda_config.pre_authentication #=> String
    #   resp.data.user_pool.lambda_config.post_authentication #=> String
    #   resp.data.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.data.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.data.user_pool.lambda_config.verify_auth_challenge_response #=> String
    #   resp.data.user_pool.lambda_config.pre_token_generation #=> String
    #   resp.data.user_pool.lambda_config.user_migration #=> String
    #   resp.data.user_pool.lambda_config.custom_sms_sender #=> Types::CustomSMSLambdaVersionConfigType
    #   resp.data.user_pool.lambda_config.custom_sms_sender.lambda_version #=> String, one of ["V1_0"]
    #   resp.data.user_pool.lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.data.user_pool.lambda_config.custom_email_sender #=> Types::CustomEmailLambdaVersionConfigType
    #   resp.data.user_pool.lambda_config.custom_email_sender.lambda_version #=> String, one of ["V1_0"]
    #   resp.data.user_pool.lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.data.user_pool.lambda_config.kms_key_id #=> String
    #   resp.data.user_pool.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.user_pool.last_modified_date #=> Time
    #   resp.data.user_pool.creation_date #=> Time
    #   resp.data.user_pool.schema_attributes #=> Array<SchemaAttributeType>
    #   resp.data.user_pool.schema_attributes[0] #=> Types::SchemaAttributeType
    #   resp.data.user_pool.schema_attributes[0].name #=> String
    #   resp.data.user_pool.schema_attributes[0].attribute_data_type #=> String, one of ["String", "Number", "DateTime", "Boolean"]
    #   resp.data.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
    #   resp.data.user_pool.schema_attributes[0].mutable #=> Boolean
    #   resp.data.user_pool.schema_attributes[0].required #=> Boolean
    #   resp.data.user_pool.schema_attributes[0].number_attribute_constraints #=> Types::NumberAttributeConstraintsType
    #   resp.data.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
    #   resp.data.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
    #   resp.data.user_pool.schema_attributes[0].string_attribute_constraints #=> Types::StringAttributeConstraintsType
    #   resp.data.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
    #   resp.data.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
    #   resp.data.user_pool.auto_verified_attributes #=> Array<String>
    #   resp.data.user_pool.auto_verified_attributes[0] #=> String, one of ["phone_number", "email"]
    #   resp.data.user_pool.alias_attributes #=> Array<String>
    #   resp.data.user_pool.alias_attributes[0] #=> String, one of ["phone_number", "email", "preferred_username"]
    #   resp.data.user_pool.username_attributes #=> Array<String>
    #   resp.data.user_pool.username_attributes[0] #=> String, one of ["phone_number", "email"]
    #   resp.data.user_pool.sms_verification_message #=> String
    #   resp.data.user_pool.email_verification_message #=> String
    #   resp.data.user_pool.email_verification_subject #=> String
    #   resp.data.user_pool.verification_message_template #=> Types::VerificationMessageTemplateType
    #   resp.data.user_pool.verification_message_template.sms_message #=> String
    #   resp.data.user_pool.verification_message_template.email_message #=> String
    #   resp.data.user_pool.verification_message_template.email_subject #=> String
    #   resp.data.user_pool.verification_message_template.email_message_by_link #=> String
    #   resp.data.user_pool.verification_message_template.email_subject_by_link #=> String
    #   resp.data.user_pool.verification_message_template.default_email_option #=> String, one of ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #   resp.data.user_pool.sms_authentication_message #=> String
    #   resp.data.user_pool.user_attribute_update_settings #=> Types::UserAttributeUpdateSettingsType
    #   resp.data.user_pool.user_attribute_update_settings.attributes_require_verification_before_update #=> Array<String>
    #   resp.data.user_pool.user_attribute_update_settings.attributes_require_verification_before_update[0] #=> String, one of ["phone_number", "email"]
    #   resp.data.user_pool.mfa_configuration #=> String, one of ["OFF", "ON", "OPTIONAL"]
    #   resp.data.user_pool.device_configuration #=> Types::DeviceConfigurationType
    #   resp.data.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.data.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.data.user_pool.estimated_number_of_users #=> Integer
    #   resp.data.user_pool.email_configuration #=> Types::EmailConfigurationType
    #   resp.data.user_pool.email_configuration.source_arn #=> String
    #   resp.data.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.data.user_pool.email_configuration.email_sending_account #=> String, one of ["COGNITO_DEFAULT", "DEVELOPER"]
    #   resp.data.user_pool.email_configuration.from #=> String
    #   resp.data.user_pool.email_configuration.configuration_set #=> String
    #   resp.data.user_pool.sms_configuration #=> Types::SmsConfigurationType
    #   resp.data.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.data.user_pool.sms_configuration.external_id #=> String
    #   resp.data.user_pool.sms_configuration.sns_region #=> String
    #   resp.data.user_pool.user_pool_tags #=> Hash<String, String>
    #   resp.data.user_pool.user_pool_tags['key'] #=> String
    #   resp.data.user_pool.sms_configuration_failure #=> String
    #   resp.data.user_pool.email_configuration_failure #=> String
    #   resp.data.user_pool.domain #=> String
    #   resp.data.user_pool.custom_domain #=> String
    #   resp.data.user_pool.admin_create_user_config #=> Types::AdminCreateUserConfigType
    #   resp.data.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.data.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.data.user_pool.admin_create_user_config.invite_message_template #=> Types::MessageTemplateType
    #   resp.data.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.data.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.data.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #   resp.data.user_pool.user_pool_add_ons #=> Types::UserPoolAddOnsType
    #   resp.data.user_pool.user_pool_add_ons.advanced_security_mode #=> String, one of ["OFF", "AUDIT", "ENFORCED"]
    #   resp.data.user_pool.username_configuration #=> Types::UsernameConfigurationType
    #   resp.data.user_pool.username_configuration.case_sensitive #=> Boolean
    #   resp.data.user_pool.arn #=> String
    #   resp.data.user_pool.account_recovery_setting #=> Types::AccountRecoverySettingType
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms #=> Array<RecoveryOptionType>
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms[0] #=> Types::RecoveryOptionType
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms[0].priority #=> Integer
    #   resp.data.user_pool.account_recovery_setting.recovery_mechanisms[0].name #=> String, one of ["verified_email", "verified_phone_number", "admin_only"]
    #
    def describe_user_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserPool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException, Errors::UserPoolTaggingException]),
        data_parser: Parsers::DescribeUserPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserPool,
        stubs: @stubs,
        params_class: Params::DescribeUserPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Client method for returning the configuration information and metadata of the
    #             specified user pool app client.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserPoolClientInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool you want to describe.</p>
    #
    # @option params [String] :client_id
    #   <p>The app client ID of the app associated with the user pool.</p>
    #
    # @return [Types::DescribeUserPoolClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_client(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserPoolClientOutput
    #   resp.data.user_pool_client #=> Types::UserPoolClientType
    #   resp.data.user_pool_client.user_pool_id #=> String
    #   resp.data.user_pool_client.client_name #=> String
    #   resp.data.user_pool_client.client_id #=> String
    #   resp.data.user_pool_client.client_secret #=> String
    #   resp.data.user_pool_client.last_modified_date #=> Time
    #   resp.data.user_pool_client.creation_date #=> Time
    #   resp.data.user_pool_client.refresh_token_validity #=> Integer
    #   resp.data.user_pool_client.access_token_validity #=> Integer
    #   resp.data.user_pool_client.id_token_validity #=> Integer
    #   resp.data.user_pool_client.token_validity_units #=> Types::TokenValidityUnitsType
    #   resp.data.user_pool_client.token_validity_units.access_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.token_validity_units.id_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.token_validity_units.refresh_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.read_attributes #=> Array<String>
    #   resp.data.user_pool_client.read_attributes[0] #=> String
    #   resp.data.user_pool_client.write_attributes #=> Array<String>
    #   resp.data.user_pool_client.explicit_auth_flows #=> Array<String>
    #   resp.data.user_pool_client.explicit_auth_flows[0] #=> String, one of ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
    #   resp.data.user_pool_client.supported_identity_providers #=> Array<String>
    #   resp.data.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.data.user_pool_client.callback_ur_ls #=> Array<String>
    #   resp.data.user_pool_client.callback_ur_ls[0] #=> String
    #   resp.data.user_pool_client.logout_ur_ls #=> Array<String>
    #   resp.data.user_pool_client.logout_ur_ls[0] #=> String
    #   resp.data.user_pool_client.default_redirect_uri #=> String
    #   resp.data.user_pool_client.allowed_o_auth_flows #=> Array<String>
    #   resp.data.user_pool_client.allowed_o_auth_flows[0] #=> String, one of ["code", "implicit", "client_credentials"]
    #   resp.data.user_pool_client.allowed_o_auth_scopes #=> Array<String>
    #   resp.data.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.data.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.data.user_pool_client.analytics_configuration #=> Types::AnalyticsConfigurationType
    #   resp.data.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.data.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.data.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.data.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.data.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.data.user_pool_client.prevent_user_existence_errors #=> String, one of ["LEGACY", "ENABLED"]
    #   resp.data.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.data.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #
    def describe_user_pool_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserPoolClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserPoolClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserPoolClient
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeUserPoolClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserPoolClient,
        stubs: @stubs,
        params_class: Params::DescribeUserPoolClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_pool_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserPoolDomainInput}.
    #
    # @option params [String] :domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    # @return [Types::DescribeUserPoolDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_domain(
    #     domain: 'Domain' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserPoolDomainOutput
    #   resp.data.domain_description #=> Types::DomainDescriptionType
    #   resp.data.domain_description.user_pool_id #=> String
    #   resp.data.domain_description.aws_account_id #=> String
    #   resp.data.domain_description.domain #=> String
    #   resp.data.domain_description.s3_bucket #=> String
    #   resp.data.domain_description.cloud_front_distribution #=> String
    #   resp.data.domain_description.version #=> String
    #   resp.data.domain_description.status #=> String, one of ["CREATING", "DELETING", "UPDATING", "ACTIVE", "FAILED"]
    #   resp.data.domain_description.custom_domain_config #=> Types::CustomDomainConfigType
    #   resp.data.domain_description.custom_domain_config.certificate_arn #=> String
    #
    def describe_user_pool_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserPoolDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserPoolDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserPoolDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::DescribeUserPoolDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserPoolDomain,
        stubs: @stubs,
        params_class: Params::DescribeUserPoolDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_pool_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Forgets the specified device.</p>
    #
    # @param [Hash] params
    #   See {Types::ForgetDeviceInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose registered device you want to
    #               forget.</p>
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @return [Types::ForgetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forget_device(
    #     access_token: 'AccessToken',
    #     device_key: 'DeviceKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ForgetDeviceOutput
    #
    def forget_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ForgetDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ForgetDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ForgetDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ForgetDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ForgetDevice,
        stubs: @stubs,
        params_class: Params::ForgetDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :forget_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Calling this API causes a message to be sent to the end user with a confirmation code
    #             that is required to change the user's password. For the <code>Username</code> parameter,
    #             you can use the username or user alias. The method used to send the confirmation code is
    #             sent according to the specified AccountRecoverySetting. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html">Recovering
    #                 User Accounts</a> in the <i>Amazon Cognito Developer Guide</i>. If
    #             neither a verified phone number nor a verified email exists, an
    #                 <code>InvalidParameterException</code> is thrown. To use the confirmation code for
    #             resetting the password, call <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html">ConfirmForgotPassword</a>. </p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ForgotPasswordInput}.
    #
    # @option params [String] :client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user for whom you want to enter a code to reset a forgotten
    #               password.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>ForgotPassword</code> calls.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any
    #               functions that are assigned to the following triggers: <i>pre sign-up</i>,
    #                   <i>custom message</i>, and <i>user migration</i>. When
    #               Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your ForgotPassword request. In your function code in Lambda, you can
    #               process the <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::ForgotPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forgot_password(
    #     client_id: 'ClientId', # required
    #     secret_hash: 'SecretHash',
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     },
    #     username: 'Username', # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ForgotPasswordOutput
    #   resp.data.code_delivery_details #=> Types::CodeDeliveryDetailsType
    #   resp.data.code_delivery_details.destination #=> String
    #   resp.data.code_delivery_details.delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.code_delivery_details.attribute_name #=> String
    #
    def forgot_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ForgotPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ForgotPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ForgotPassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::CodeDeliveryFailureException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ForgotPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ForgotPassword,
        stubs: @stubs,
        params_class: Params::ForgotPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :forgot_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the header information for the comma-separated value (CSV) file to be used as
    #             input for the user import job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCSVHeaderInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that the users are to be imported into.</p>
    #
    # @return [Types::GetCSVHeaderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_csv_header(
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCSVHeaderOutput
    #   resp.data.user_pool_id #=> String
    #   resp.data.csv_header #=> Array<String>
    #   resp.data.csv_header[0] #=> String
    #
    def get_csv_header(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCSVHeaderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCSVHeaderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCSVHeader
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetCSVHeader
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCSVHeader,
        stubs: @stubs,
        params_class: Params::GetCSVHeaderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_csv_header
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the device.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceInput}.
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose device information you want
    #               to request.</p>
    #
    # @return [Types::GetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device(
    #     device_key: 'DeviceKey', # required
    #     access_token: 'AccessToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceOutput
    #   resp.data.device #=> Types::DeviceType
    #   resp.data.device.device_key #=> String
    #   resp.data.device.device_attributes #=> Array<AttributeType>
    #   resp.data.device.device_attributes[0] #=> Types::AttributeType
    #   resp.data.device.device_attributes[0].name #=> String
    #   resp.data.device.device_attributes[0].value #=> String
    #   resp.data.device.device_create_date #=> Time
    #   resp.data.device.device_last_modified_date #=> Time
    #   resp.data.device.device_last_authenticated_date #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
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

    # <p>Gets a group.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @return [Types::GetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group(
    #     group_name: 'GroupName', # required
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupOutput
    #   resp.data.group #=> Types::GroupType
    #   resp.data.group.group_name #=> String
    #   resp.data.group.user_pool_id #=> String
    #   resp.data.group.description #=> String
    #   resp.data.group.role_arn #=> String
    #   resp.data.group.precedence #=> Integer
    #   resp.data.group.last_modified_date #=> Time
    #   resp.data.group.creation_date #=> Time
    #
    def get_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroup,
        stubs: @stubs,
        params_class: Params::GetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified IdP.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityProviderByIdentifierInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :idp_identifier
    #   <p>The IdP identifier.</p>
    #
    # @return [Types::GetIdentityProviderByIdentifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_provider_by_identifier(
    #     user_pool_id: 'UserPoolId', # required
    #     idp_identifier: 'IdpIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityProviderByIdentifierOutput
    #   resp.data.identity_provider #=> Types::IdentityProviderType
    #   resp.data.identity_provider.user_pool_id #=> String
    #   resp.data.identity_provider.provider_name #=> String
    #   resp.data.identity_provider.provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.identity_provider.provider_details #=> Hash<String, String>
    #   resp.data.identity_provider.provider_details['key'] #=> String
    #   resp.data.identity_provider.attribute_mapping #=> Hash<String, String>
    #   resp.data.identity_provider.attribute_mapping['key'] #=> String
    #   resp.data.identity_provider.idp_identifiers #=> Array<String>
    #   resp.data.identity_provider.idp_identifiers[0] #=> String
    #   resp.data.identity_provider.last_modified_date #=> Time
    #   resp.data.identity_provider.creation_date #=> Time
    #
    def get_identity_provider_by_identifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityProviderByIdentifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityProviderByIdentifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityProviderByIdentifier
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetIdentityProviderByIdentifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityProviderByIdentifier,
        stubs: @stubs,
        params_class: Params::GetIdentityProviderByIdentifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_provider_by_identifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This method takes a user pool ID, and returns the signing certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSigningCertificateInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @return [Types::GetSigningCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_certificate(
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSigningCertificateOutput
    #   resp.data.certificate #=> String
    #
    def get_signing_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSigningCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSigningCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSigningCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException]),
        data_parser: Parsers::GetSigningCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSigningCertificate,
        stubs: @stubs,
        params_class: Params::GetSigningCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_signing_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the user interface (UI) Customization information for a particular app client's
    #             app UI, if any such information exists for the client. If nothing is set for the
    #             particular client, but there is an existing pool level customization (the app
    #                 <code>clientId</code> is <code>ALL</code>), then that information is returned. If
    #             nothing is present, then an empty shape is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUICustomizationInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :client_id
    #   <p>The client ID for the client app.</p>
    #
    # @return [Types::GetUICustomizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ui_customization(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUICustomizationOutput
    #   resp.data.ui_customization #=> Types::UICustomizationType
    #   resp.data.ui_customization.user_pool_id #=> String
    #   resp.data.ui_customization.client_id #=> String
    #   resp.data.ui_customization.image_url #=> String
    #   resp.data.ui_customization.css #=> String
    #   resp.data.ui_customization.css_version #=> String
    #   resp.data.ui_customization.last_modified_date #=> Time
    #   resp.data.ui_customization.creation_date #=> Time
    #
    def get_ui_customization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUICustomizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUICustomizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUICustomization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetUICustomization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUICustomization,
        stubs: @stubs,
        params_class: Params::GetUICustomizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ui_customization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the user attributes and metadata for a user.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserInput}.
    #
    # @option params [String] :access_token
    #   <p>A non-expired access token for the user whose information you want to query.</p>
    #
    # @return [Types::GetUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user(
    #     access_token: 'AccessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserOutput
    #   resp.data.username #=> String
    #   resp.data.user_attributes #=> Array<AttributeType>
    #   resp.data.user_attributes[0] #=> Types::AttributeType
    #   resp.data.user_attributes[0].name #=> String
    #   resp.data.user_attributes[0].value #=> String
    #   resp.data.mfa_options #=> Array<MFAOptionType>
    #   resp.data.mfa_options[0] #=> Types::MFAOptionType
    #   resp.data.mfa_options[0].delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.mfa_options[0].attribute_name #=> String
    #   resp.data.preferred_mfa_setting #=> String
    #   resp.data.user_mfa_setting_list #=> Array<String>
    #   resp.data.user_mfa_setting_list[0] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
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

    # <p>Generates a user attribute verification code for the specified attribute name. Sends a
    #             message to a user with a code that they must return in a VerifyUserAttribute
    #             request.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetUserAttributeVerificationCodeInput}.
    #
    # @option params [String] :access_token
    #   <p>A non-expired access token for the user whose attribute verification code you want to
    #               generate.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The attribute name returned by the server response to get the user attribute
    #               verification code.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the GetUserAttributeVerificationCode API action, Amazon Cognito invokes
    #               the function that is assigned to the <i>custom message</i> trigger. When
    #               Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as
    #               input. This payload contains a <code>clientMetadata</code> attribute, which provides the
    #               data that you assigned to the ClientMetadata parameter in your
    #               GetUserAttributeVerificationCode request. In your function code in Lambda, you can process the <code>clientMetadata</code> value to enhance your workflow for
    #               your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::GetUserAttributeVerificationCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_attribute_verification_code(
    #     access_token: 'AccessToken', # required
    #     attribute_name: 'AttributeName', # required
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserAttributeVerificationCodeOutput
    #   resp.data.code_delivery_details #=> Types::CodeDeliveryDetailsType
    #   resp.data.code_delivery_details.destination #=> String
    #   resp.data.code_delivery_details.delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.code_delivery_details.attribute_name #=> String
    #
    def get_user_attribute_verification_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserAttributeVerificationCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserAttributeVerificationCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUserAttributeVerificationCode
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::CodeDeliveryFailureException, Errors::UserNotConfirmedException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetUserAttributeVerificationCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUserAttributeVerificationCode,
        stubs: @stubs,
        params_class: Params::GetUserAttributeVerificationCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user_attribute_verification_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the user pool multi-factor authentication (MFA) configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserPoolMfaConfigInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @return [Types::GetUserPoolMfaConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_pool_mfa_config(
    #     user_pool_id: 'UserPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserPoolMfaConfigOutput
    #   resp.data.sms_mfa_configuration #=> Types::SmsMfaConfigType
    #   resp.data.sms_mfa_configuration.sms_authentication_message #=> String
    #   resp.data.sms_mfa_configuration.sms_configuration #=> Types::SmsConfigurationType
    #   resp.data.sms_mfa_configuration.sms_configuration.sns_caller_arn #=> String
    #   resp.data.sms_mfa_configuration.sms_configuration.external_id #=> String
    #   resp.data.sms_mfa_configuration.sms_configuration.sns_region #=> String
    #   resp.data.software_token_mfa_configuration #=> Types::SoftwareTokenMfaConfigType
    #   resp.data.software_token_mfa_configuration.enabled #=> Boolean
    #   resp.data.mfa_configuration #=> String, one of ["OFF", "ON", "OPTIONAL"]
    #
    def get_user_pool_mfa_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserPoolMfaConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserPoolMfaConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUserPoolMfaConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetUserPoolMfaConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUserPoolMfaConfig,
        stubs: @stubs,
        params_class: Params::GetUserPoolMfaConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user_pool_mfa_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Signs out users from all devices. It also invalidates all refresh tokens that Amazon Cognito
    #             has issued to a user. The user's current access and ID tokens remain valid until their
    #             expiry. By default, access and ID tokens expire one hour after Amazon Cognito issues them. A user
    #             can still use a hosted UI cookie to retrieve new tokens for the duration of the cookie
    #             validity period of 1 hour.</p>
    #
    # @param [Hash] params
    #   See {Types::GlobalSignOutInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user who you want to sign out.</p>
    #
    # @return [Types::GlobalSignOutOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.global_sign_out(
    #     access_token: 'AccessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GlobalSignOutOutput
    #
    def global_sign_out(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GlobalSignOutInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GlobalSignOutInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GlobalSignOut
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GlobalSignOut
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GlobalSignOut,
        stubs: @stubs,
        params_class: Params::GlobalSignOutOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :global_sign_out
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates sign-in for a user in the Amazon Cognito user directory. You can't sign in a user
    #             with a federated IdP with <code>InitiateAuth</code>. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html"> Adding user pool sign-in through a third party</a>.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::InitiateAuthInput}.
    #
    # @option params [String] :auth_flow
    #   <p>The authentication flow for this call to run. The API action will depend on this
    #               value. For example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code> takes in a valid refresh token and returns new
    #                       tokens.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code> takes in <code>USERNAME</code> and
    #                           <code>SRP_A</code> and returns the SRP variables to be used for next
    #                       challenge execution.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_PASSWORD_AUTH</code> takes in <code>USERNAME</code> and
    #                           <code>PASSWORD</code> and returns the next challenge or tokens.</p>
    #               </li>
    #            </ul>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password
    #                       (SRP) protocol.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication
    #                       flow for refreshing the access token and ID token by supplying a valid refresh
    #                       token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CUSTOM_AUTH</code>: Custom authentication flow.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_PASSWORD_AUTH</code>: Non-SRP authentication flow; user name and
    #                       password are passed directly. If a user migration Lambda trigger is set, this
    #                       flow will invoke the user migration Lambda if it doesn't find the user name in
    #                       the user pool. </p>
    #               </li>
    #            </ul>
    #           <p>
    #               <code>ADMIN_NO_SRP_AUTH</code> isn't a valid value.</p>
    #
    # @option params [Hash<String, String>] :auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking. The required values depend on the value
    #               of <code>AuthFlow</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app
    #                       client is configured with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>REFRESH_TOKEN</code>
    #                       (required), <code>SECRET_HASH</code> (required if the app client is configured
    #                       with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret),
    #                           <code>DEVICE_KEY</code>. To start the authentication flow with password
    #                       verification, include <code>ChallengeName: SRP_A</code> and <code>SRP_A: (The
    #                           SRP_A Value)</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the InitiateAuth API action, Amazon Cognito invokes the Lambda functions that are
    #               specified for various triggers. The ClientMetadata value is passed as input to the
    #               functions for only the following triggers:</p>
    #           <ul>
    #               <li>
    #                   <p>Pre signup</p>
    #               </li>
    #               <li>
    #                   <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                   <p>User migration</p>
    #               </li>
    #            </ul>
    #           <p>When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which
    #               the function receives as input. This payload contains a <code>validationData</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your InitiateAuth request. In your function code in Lambda, you can process the
    #                   <code>validationData</code> value to enhance your workflow for your specific
    #               needs.</p>
    #           <p>When you use the InitiateAuth API action, Amazon Cognito also invokes the functions for the
    #               following triggers, but it doesn't provide the ClientMetadata value as input:</p>
    #           <ul>
    #               <li>
    #                   <p>Post authentication</p>
    #               </li>
    #               <li>
    #                   <p>Custom message</p>
    #               </li>
    #               <li>
    #                   <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                   <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Verify auth challenge</p>
    #               </li>
    #            </ul>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @option params [String] :client_id
    #   <p>The app client ID.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>InitiateAuth</code> calls.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @return [Types::InitiateAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_auth(
    #     auth_flow: 'USER_SRP_AUTH', # required - accepts ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH", "USER_PASSWORD_AUTH", "ADMIN_USER_PASSWORD_AUTH"]
    #     auth_parameters: {
    #       'key' => 'value'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     },
    #     client_id: 'ClientId', # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateAuthOutput
    #   resp.data.challenge_name #=> String, one of ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #   resp.data.session #=> String
    #   resp.data.challenge_parameters #=> Hash<String, String>
    #   resp.data.challenge_parameters['key'] #=> String
    #   resp.data.authentication_result #=> Types::AuthenticationResultType
    #   resp.data.authentication_result.access_token #=> String
    #   resp.data.authentication_result.expires_in #=> Integer
    #   resp.data.authentication_result.token_type #=> String
    #   resp.data.authentication_result.refresh_token #=> String
    #   resp.data.authentication_result.id_token #=> String
    #   resp.data.authentication_result.new_device_metadata #=> Types::NewDeviceMetadataType
    #   resp.data.authentication_result.new_device_metadata.device_key #=> String
    #   resp.data.authentication_result.new_device_metadata.device_group_key #=> String
    #
    def initiate_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateAuth
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::InitiateAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateAuth,
        stubs: @stubs,
        params_class: Params::InitiateAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the sign-in devices that Amazon Cognito has registered to the current user.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicesInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose list of devices you want to
    #               view.</p>
    #
    # @option params [Integer] :limit
    #   <p>The limit of the device request.</p>
    #
    # @option params [String] :pagination_token
    #   <p>The pagination token for the list request.</p>
    #
    # @return [Types::ListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices(
    #     access_token: 'AccessToken', # required
    #     limit: 1,
    #     pagination_token: 'PaginationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesOutput
    #   resp.data.devices #=> Array<DeviceType>
    #   resp.data.devices[0] #=> Types::DeviceType
    #   resp.data.devices[0].device_key #=> String
    #   resp.data.devices[0].device_attributes #=> Array<AttributeType>
    #   resp.data.devices[0].device_attributes[0] #=> Types::AttributeType
    #   resp.data.devices[0].device_attributes[0].name #=> String
    #   resp.data.devices[0].device_attributes[0].value #=> String
    #   resp.data.devices[0].device_create_date #=> Time
    #   resp.data.devices[0].device_last_modified_date #=> Time
    #   resp.data.devices[0].device_last_authenticated_date #=> Time
    #   resp.data.pagination_token #=> String
    #
    def list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevices,
        stubs: @stubs,
        params_class: Params::ListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the groups associated with a user pool.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [Integer] :limit
    #   <p>The limit of the request to list groups.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     user_pool_id: 'UserPoolId', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.groups #=> Array<GroupType>
    #   resp.data.groups[0] #=> Types::GroupType
    #   resp.data.groups[0].group_name #=> String
    #   resp.data.groups[0].user_pool_id #=> String
    #   resp.data.groups[0].description #=> String
    #   resp.data.groups[0].role_arn #=> String
    #   resp.data.groups[0].precedence #=> Integer
    #   resp.data.groups[0].last_modified_date #=> Time
    #   resp.data.groups[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroups,
        stubs: @stubs,
        params_class: Params::ListGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about all IdPs for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentityProvidersInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of IdPs to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    #
    # @return [Types::ListIdentityProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers(
    #     user_pool_id: 'UserPoolId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityProvidersOutput
    #   resp.data.providers #=> Array<ProviderDescription>
    #   resp.data.providers[0] #=> Types::ProviderDescription
    #   resp.data.providers[0].provider_name #=> String
    #   resp.data.providers[0].provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.providers[0].last_modified_date #=> Time
    #   resp.data.providers[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_identity_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityProvidersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityProviders
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListIdentityProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityProviders,
        stubs: @stubs,
        params_class: Params::ListIdentityProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resource servers for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceServersInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource servers to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    #
    # @return [Types::ListResourceServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_servers(
    #     user_pool_id: 'UserPoolId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceServersOutput
    #   resp.data.resource_servers #=> Array<ResourceServerType>
    #   resp.data.resource_servers[0] #=> Types::ResourceServerType
    #   resp.data.resource_servers[0].user_pool_id #=> String
    #   resp.data.resource_servers[0].identifier #=> String
    #   resp.data.resource_servers[0].name #=> String
    #   resp.data.resource_servers[0].scopes #=> Array<ResourceServerScopeType>
    #   resp.data.resource_servers[0].scopes[0] #=> Types::ResourceServerScopeType
    #   resp.data.resource_servers[0].scopes[0].scope_name #=> String
    #   resp.data.resource_servers[0].scopes[0].scope_description #=> String
    #   resp.data.next_token #=> String
    #
    def list_resource_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceServersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceServers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListResourceServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceServers,
        stubs: @stubs,
        params_class: Params::ListResourceServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are assigned to an Amazon Cognito user pool.</p>
    #         <p>A tag is a label that you can apply to user pools to categorize and manage them in
    #             different ways, such as by purpose, owner, environment, or other criteria.</p>
    #         <p>You can use this action up to 10 times per second, per account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
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
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
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

    # <p>Lists the user import jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserImportJobsInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of import jobs you want the request to return.</p>
    #
    # @option params [String] :pagination_token
    #   <p>An identifier that was returned from the previous call to
    #                   <code>ListUserImportJobs</code>, which can be used to return the next set of import
    #               jobs in the list.</p>
    #
    # @return [Types::ListUserImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_import_jobs(
    #     user_pool_id: 'UserPoolId', # required
    #     max_results: 1, # required
    #     pagination_token: 'PaginationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserImportJobsOutput
    #   resp.data.user_import_jobs #=> Array<UserImportJobType>
    #   resp.data.user_import_jobs[0] #=> Types::UserImportJobType
    #   resp.data.user_import_jobs[0].job_name #=> String
    #   resp.data.user_import_jobs[0].job_id #=> String
    #   resp.data.user_import_jobs[0].user_pool_id #=> String
    #   resp.data.user_import_jobs[0].pre_signed_url #=> String
    #   resp.data.user_import_jobs[0].creation_date #=> Time
    #   resp.data.user_import_jobs[0].start_date #=> Time
    #   resp.data.user_import_jobs[0].completion_date #=> Time
    #   resp.data.user_import_jobs[0].status #=> String, one of ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"]
    #   resp.data.user_import_jobs[0].cloud_watch_logs_role_arn #=> String
    #   resp.data.user_import_jobs[0].imported_users #=> Integer
    #   resp.data.user_import_jobs[0].skipped_users #=> Integer
    #   resp.data.user_import_jobs[0].failed_users #=> Integer
    #   resp.data.user_import_jobs[0].completion_message #=> String
    #   resp.data.pagination_token #=> String
    #
    def list_user_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserImportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserImportJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListUserImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserImportJobs,
        stubs: @stubs,
        params_class: Params::ListUserImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the clients that have been created for the specified user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserPoolClientsInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to list user pool clients.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results you want the request to return when listing the user
    #               pool clients.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::ListUserPoolClientsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pool_clients(
    #     user_pool_id: 'UserPoolId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserPoolClientsOutput
    #   resp.data.user_pool_clients #=> Array<UserPoolClientDescription>
    #   resp.data.user_pool_clients[0] #=> Types::UserPoolClientDescription
    #   resp.data.user_pool_clients[0].client_id #=> String
    #   resp.data.user_pool_clients[0].user_pool_id #=> String
    #   resp.data.user_pool_clients[0].client_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_user_pool_clients(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserPoolClientsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserPoolClientsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserPoolClients
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListUserPoolClients
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserPoolClients,
        stubs: @stubs,
        params_class: Params::ListUserPoolClientsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_pool_clients
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the user pools associated with an Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserPoolsInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results you want the request to return when listing the user
    #               pools.</p>
    #
    # @return [Types::ListUserPoolsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pools(
    #     next_token: 'NextToken',
    #     max_results: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserPoolsOutput
    #   resp.data.user_pools #=> Array<UserPoolDescriptionType>
    #   resp.data.user_pools[0] #=> Types::UserPoolDescriptionType
    #   resp.data.user_pools[0].id #=> String
    #   resp.data.user_pools[0].name #=> String
    #   resp.data.user_pools[0].lambda_config #=> Types::LambdaConfigType
    #   resp.data.user_pools[0].lambda_config.pre_sign_up #=> String
    #   resp.data.user_pools[0].lambda_config.custom_message #=> String
    #   resp.data.user_pools[0].lambda_config.post_confirmation #=> String
    #   resp.data.user_pools[0].lambda_config.pre_authentication #=> String
    #   resp.data.user_pools[0].lambda_config.post_authentication #=> String
    #   resp.data.user_pools[0].lambda_config.define_auth_challenge #=> String
    #   resp.data.user_pools[0].lambda_config.create_auth_challenge #=> String
    #   resp.data.user_pools[0].lambda_config.verify_auth_challenge_response #=> String
    #   resp.data.user_pools[0].lambda_config.pre_token_generation #=> String
    #   resp.data.user_pools[0].lambda_config.user_migration #=> String
    #   resp.data.user_pools[0].lambda_config.custom_sms_sender #=> Types::CustomSMSLambdaVersionConfigType
    #   resp.data.user_pools[0].lambda_config.custom_sms_sender.lambda_version #=> String, one of ["V1_0"]
    #   resp.data.user_pools[0].lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.data.user_pools[0].lambda_config.custom_email_sender #=> Types::CustomEmailLambdaVersionConfigType
    #   resp.data.user_pools[0].lambda_config.custom_email_sender.lambda_version #=> String, one of ["V1_0"]
    #   resp.data.user_pools[0].lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.data.user_pools[0].lambda_config.kms_key_id #=> String
    #   resp.data.user_pools[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.user_pools[0].last_modified_date #=> Time
    #   resp.data.user_pools[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_user_pools(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserPoolsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserPoolsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserPools
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListUserPools
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserPools,
        stubs: @stubs,
        params_class: Params::ListUserPoolsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_pools
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the users in the Amazon Cognito user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool on which the search should be performed.</p>
    #
    # @option params [Array<String>] :attributes_to_get
    #   <p>An array of strings, where each string is the name of a user attribute to be returned
    #               for each user in the search results. If the array is null, all attributes are
    #               returned.</p>
    #
    # @option params [Integer] :limit
    #   <p>Maximum number of users to be returned.</p>
    #
    # @option params [String] :pagination_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @option params [String] :filter
    #   <p>A filter string of the form "<i>AttributeName</i>
    #               <i>Filter-Type</i> "<i>AttributeValue</i>"". Quotation marks
    #               within the filter string must be escaped using the backslash (\) character. For example,
    #                   "<code>family_name</code> = \"Reddy\"".</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <i>AttributeName</i>: The name of the attribute to search for.
    #                       You can only search for one attribute at a time.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>Filter-Type</i>: For an exact match, use =, for example,
    #                           "<code>given_name</code> = \"Jon\"". For a prefix ("starts with") match, use
    #                       ^=, for example, "<code>given_name</code> ^= \"Jon\"". </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>AttributeValue</i>: The attribute value that must be matched
    #                       for each user.</p>
    #               </li>
    #            </ul>
    #           <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user
    #               pool.</p>
    #           <p>You can only search for the following standard attributes:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>username</code> (case-sensitive)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>email</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>phone_number</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>name</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>given_name</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>family_name</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>preferred_username</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>cognito:user_status</code> (called <b>Status</b> in the Console) (case-insensitive)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>status (called <b>Enabled</b> in the Console)
    #                           (case-sensitive)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sub</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Custom attributes aren't searchable.</p>
    #           <note>
    #               <p>You can also list users with a client-side filter. The server-side filter matches
    #                   no more than one attribute. For an advanced search, use a client-side filter with
    #                   the <code>--query</code> parameter of the <code>list-users</code> action in the
    #                   CLI. When you use a client-side filter, ListUsers returns a paginated list of zero
    #                   or more users. You can receive multiple pages in a row with zero results. Repeat the
    #                   query with each pagination token that is returned until you receive a null
    #                   pagination token value, and then review the combined result. </p>
    #               <p>For more information about server-side and client-side filtering, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">FilteringCLI output</a> in the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Command Line Interface
    #                       User Guide</a>. </p>
    #           </note>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer
    #                   Guide</i>.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     user_pool_id: 'UserPoolId', # required
    #     attributes_to_get: [
    #       'member'
    #     ],
    #     limit: 1,
    #     pagination_token: 'PaginationToken',
    #     filter: 'Filter'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.users #=> Array<UserType>
    #   resp.data.users[0] #=> Types::UserType
    #   resp.data.users[0].username #=> String
    #   resp.data.users[0].attributes #=> Array<AttributeType>
    #   resp.data.users[0].attributes[0] #=> Types::AttributeType
    #   resp.data.users[0].attributes[0].name #=> String
    #   resp.data.users[0].attributes[0].value #=> String
    #   resp.data.users[0].user_create_date #=> Time
    #   resp.data.users[0].user_last_modified_date #=> Time
    #   resp.data.users[0].enabled #=> Boolean
    #   resp.data.users[0].user_status #=> String, one of ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"]
    #   resp.data.users[0].mfa_options #=> Array<MFAOptionType>
    #   resp.data.users[0].mfa_options[0] #=> Types::MFAOptionType
    #   resp.data.users[0].mfa_options[0].delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.users[0].mfa_options[0].attribute_name #=> String
    #   resp.data.pagination_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
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

    # <p>Lists the users in the specified group.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInGroupInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #
    # @option params [Integer] :limit
    #   <p>The limit of the request to list users.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::ListUsersInGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users_in_group(
    #     user_pool_id: 'UserPoolId', # required
    #     group_name: 'GroupName', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersInGroupOutput
    #   resp.data.users #=> Array<UserType>
    #   resp.data.users[0] #=> Types::UserType
    #   resp.data.users[0].username #=> String
    #   resp.data.users[0].attributes #=> Array<AttributeType>
    #   resp.data.users[0].attributes[0] #=> Types::AttributeType
    #   resp.data.users[0].attributes[0].name #=> String
    #   resp.data.users[0].attributes[0].value #=> String
    #   resp.data.users[0].user_create_date #=> Time
    #   resp.data.users[0].user_last_modified_date #=> Time
    #   resp.data.users[0].enabled #=> Boolean
    #   resp.data.users[0].user_status #=> String, one of ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"]
    #   resp.data.users[0].mfa_options #=> Array<MFAOptionType>
    #   resp.data.users[0].mfa_options[0] #=> Types::MFAOptionType
    #   resp.data.users[0].mfa_options[0].delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.users[0].mfa_options[0].attribute_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_users_in_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsersInGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListUsersInGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsersInGroup,
        stubs: @stubs,
        params_class: Params::ListUsersInGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users_in_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resends the confirmation (for confirmation of registration) to a specific user in the
    #             user pool.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ResendConfirmationCodeInput}.
    #
    # @option params [String] :client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [String] :username
    #   <p>The <code>username</code> attribute of the user to whom you want to resend a
    #               confirmation code.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>ResendConfirmationCode</code> calls.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the ResendConfirmationCode API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>custom message</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ResendConfirmationCode request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to enhance
    #               your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::ResendConfirmationCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_confirmation_code(
    #     client_id: 'ClientId', # required
    #     secret_hash: 'SecretHash',
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     },
    #     username: 'Username', # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResendConfirmationCodeOutput
    #   resp.data.code_delivery_details #=> Types::CodeDeliveryDetailsType
    #   resp.data.code_delivery_details.destination #=> String
    #   resp.data.code_delivery_details.delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.code_delivery_details.attribute_name #=> String
    #
    def resend_confirmation_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResendConfirmationCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResendConfirmationCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResendConfirmationCode
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::CodeDeliveryFailureException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ResendConfirmationCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResendConfirmationCode,
        stubs: @stubs,
        params_class: Params::ResendConfirmationCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resend_confirmation_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Responds to the authentication challenge.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RespondToAuthChallengeInput}.
    #
    # @option params [String] :client_id
    #   <p>The app client ID.</p>
    #
    # @option params [String] :challenge_name
    #   <p>The challenge name. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html">InitiateAuth</a>.</p>
    #           <p>
    #               <code>ADMIN_NO_SRP_AUTH</code> isn't a valid value.</p>
    #
    # @option params [String] :session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call
    #               determines that the caller must pass another challenge, they return a session with other
    #               challenge parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    # @option params [Hash<String, String>] :challenge_responses
    #   <p>The challenge responses. These are inputs corresponding to the value of
    #                   <code>ChallengeName</code>, for example:</p>
    #           <note>
    #               <p>
    #                  <code>SECRET_HASH</code> (if app client is configured with client secret) applies
    #                   to all of the inputs that follow (including <code>SOFTWARE_TOKEN_MFA</code>).</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>,
    #                           <code>USERNAME</code>.</p>
    #                   <note>
    #                       <p>
    #                        <code>PASSWORD_VERIFIER</code> requires <code>DEVICE_KEY</code> when you
    #                           sign in with a remembered device.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>,
    #                       <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured
    #                       with client secret). To set any required attributes that Amazon Cognito returned as
    #                       <code>requiredAttributes</code> in the <code>InitiateAuth</code> response,
    #                       add a <code>userAttributes.<i>attributename</i>
    #                     </code> parameter.
    #                       This parameter can also set values for writable attributes that aren't required
    #                       by your user pool.</p>
    #
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the <code>requiredAttributes</code> parameter,
    #   then use the <code>UpdateUserAttributes</code> API operation to modify the value of any additional attributes.</p>
    #                  </note>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SOFTWARE_TOKEN_MFA</code>: <code>USERNAME</code> and
    #                           <code>SOFTWARE_TOKEN_MFA_CODE</code> are required attributes.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_SRP_AUTH</code> requires <code>USERNAME</code>,
    #                           <code>DEVICE_KEY</code>, <code>SRP_A</code> (and
    #                       <code>SECRET_HASH</code>).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code> requires everything that
    #                           <code>PASSWORD_VERIFIER</code> requires, plus
    #                       <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code> requires <code>USERNAME</code>, plus you must use the
    #                       session value returned by <code>VerifySoftwareToken</code> in the
    #                           <code>Session</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>RespondToAuthChallenge</code> calls.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any
    #               functions that are assigned to the following triggers: <i>post
    #                   authentication</i>, <i>pre token generation</i>,
    #                   <i>define auth challenge</i>, <i>create auth
    #                   challenge</i>, and <i>verify auth challenge</i>. When Amazon Cognito
    #               invokes any of these functions, it passes a JSON payload, which the function receives as
    #               input. This payload contains a <code>clientMetadata</code> attribute, which provides the
    #               data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge
    #               request. In your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::RespondToAuthChallengeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_to_auth_challenge(
    #     client_id: 'ClientId', # required
    #     challenge_name: 'SMS_MFA', # required - accepts ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #     session: 'Session',
    #     challenge_responses: {
    #       'key' => 'value'
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RespondToAuthChallengeOutput
    #   resp.data.challenge_name #=> String, one of ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #   resp.data.session #=> String
    #   resp.data.challenge_parameters #=> Hash<String, String>
    #   resp.data.challenge_parameters['key'] #=> String
    #   resp.data.authentication_result #=> Types::AuthenticationResultType
    #   resp.data.authentication_result.access_token #=> String
    #   resp.data.authentication_result.expires_in #=> Integer
    #   resp.data.authentication_result.token_type #=> String
    #   resp.data.authentication_result.refresh_token #=> String
    #   resp.data.authentication_result.id_token #=> String
    #   resp.data.authentication_result.new_device_metadata #=> Types::NewDeviceMetadataType
    #   resp.data.authentication_result.new_device_metadata.device_key #=> String
    #   resp.data.authentication_result.new_device_metadata.device_group_key #=> String
    #
    def respond_to_auth_challenge(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RespondToAuthChallengeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RespondToAuthChallengeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RespondToAuthChallenge
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidLambdaResponseException, Errors::InvalidUserPoolConfigurationException, Errors::MFAMethodNotFoundException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::AliasExistsException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::ExpiredCodeException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::CodeMismatchException, Errors::SoftwareTokenMFANotFoundException]),
        data_parser: Parsers::RespondToAuthChallenge
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RespondToAuthChallenge,
        stubs: @stubs,
        params_class: Params::RespondToAuthChallengeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :respond_to_auth_challenge
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes all of the access tokens generated by the specified refresh token. After the
    #             token is revoked, you can't use the revoked token to access Amazon Cognito authenticated
    #             APIs.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeTokenInput}.
    #
    # @option params [String] :token
    #   <p>The refresh token that you want to revoke.</p>
    #
    # @option params [String] :client_id
    #   <p>The client ID for the token that you want to revoke.</p>
    #
    # @option params [String] :client_secret
    #   <p>The secret for the client ID. This is required only if the client ID has a
    #               secret.</p>
    #
    # @return [Types::RevokeTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_token(
    #     token: 'Token', # required
    #     client_id: 'ClientId', # required
    #     client_secret: 'ClientSecret'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeTokenOutput
    #
    def revoke_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeToken
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnsupportedTokenTypeException, Errors::UnauthorizedException, Errors::InternalErrorException, Errors::TooManyRequestsException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::RevokeToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeToken,
        stubs: @stubs,
        params_class: Params::RevokeTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures actions on detected risks. To delete the risk configuration for
    #                 <code>UserPoolId</code> or <code>ClientId</code>, pass null values for all four
    #             configuration types.</p>
    #         <p>To activate Amazon Cognito advanced security features, update the user pool to include the
    #                 <code>UserPoolAddOns</code> key<code>AdvancedSecurityMode</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetRiskConfigurationInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID. </p>
    #
    # @option params [String] :client_id
    #   <p>The app client ID. If <code>ClientId</code> is null, then the risk configuration is
    #               mapped to <code>userPoolId</code>. When the client ID is null, the same risk
    #               configuration is applied to all the clients in the userPool.</p>
    #           <p>Otherwise, <code>ClientId</code> is mapped to the client. When the client ID isn't
    #               null, the user pool configuration is overridden and the risk configuration for the
    #               client is used instead.</p>
    #
    # @option params [CompromisedCredentialsRiskConfigurationType] :compromised_credentials_risk_configuration
    #   <p>The compromised credentials risk configuration.</p>
    #
    # @option params [AccountTakeoverRiskConfigurationType] :account_takeover_risk_configuration
    #   <p>The account takeover risk configuration.</p>
    #
    # @option params [RiskExceptionConfigurationType] :risk_exception_configuration
    #   <p>The configuration to override the risk decision.</p>
    #
    # @return [Types::SetRiskConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_risk_configuration(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId',
    #     compromised_credentials_risk_configuration: {
    #       event_filter: [
    #         'SIGN_IN' # accepts ["SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"]
    #       ],
    #       actions: {
    #         event_action: 'BLOCK' # required - accepts ["BLOCK", "NO_ACTION"]
    #       } # required
    #     },
    #     account_takeover_risk_configuration: {
    #       notify_configuration: {
    #         from: 'From',
    #         reply_to: 'ReplyTo',
    #         source_arn: 'SourceArn', # required
    #         block_email: {
    #           subject: 'Subject', # required
    #           html_body: 'HtmlBody',
    #           text_body: 'TextBody'
    #         },
    #       },
    #       actions: {
    #         low_action: {
    #           notify: false, # required
    #           event_action: 'BLOCK' # required - accepts ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"]
    #         },
    #       } # required
    #     },
    #     risk_exception_configuration: {
    #       blocked_ip_range_list: [
    #         'member'
    #       ],
    #       skipped_ip_range_list: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetRiskConfigurationOutput
    #   resp.data.risk_configuration #=> Types::RiskConfigurationType
    #   resp.data.risk_configuration.user_pool_id #=> String
    #   resp.data.risk_configuration.client_id #=> String
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration #=> Types::CompromisedCredentialsRiskConfigurationType
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.event_filter #=> Array<String>
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.event_filter[0] #=> String, one of ["SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"]
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.actions #=> Types::CompromisedCredentialsActionsType
    #   resp.data.risk_configuration.compromised_credentials_risk_configuration.actions.event_action #=> String, one of ["BLOCK", "NO_ACTION"]
    #   resp.data.risk_configuration.account_takeover_risk_configuration #=> Types::AccountTakeoverRiskConfigurationType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration #=> Types::NotifyConfigurationType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.from #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.reply_to #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.source_arn #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email #=> Types::NotifyEmailType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.subject #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.html_body #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.text_body #=> String
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email #=> Types::NotifyEmailType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email #=> Types::NotifyEmailType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions #=> Types::AccountTakeoverActionsType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.low_action #=> Types::AccountTakeoverActionType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.low_action.notify #=> Boolean
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.low_action.event_action #=> String, one of ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"]
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.medium_action #=> Types::AccountTakeoverActionType
    #   resp.data.risk_configuration.account_takeover_risk_configuration.actions.high_action #=> Types::AccountTakeoverActionType
    #   resp.data.risk_configuration.risk_exception_configuration #=> Types::RiskExceptionConfigurationType
    #   resp.data.risk_configuration.risk_exception_configuration.blocked_ip_range_list #=> Array<String>
    #   resp.data.risk_configuration.risk_exception_configuration.blocked_ip_range_list[0] #=> String
    #   resp.data.risk_configuration.risk_exception_configuration.skipped_ip_range_list #=> Array<String>
    #   resp.data.risk_configuration.risk_exception_configuration.skipped_ip_range_list[0] #=> String
    #   resp.data.risk_configuration.last_modified_date #=> Time
    #
    def set_risk_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetRiskConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetRiskConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetRiskConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::CodeDeliveryFailureException, Errors::ResourceNotFoundException, Errors::UserPoolAddOnNotEnabledException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::TooManyRequestsException]),
        data_parser: Parsers::SetRiskConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetRiskConfiguration,
        stubs: @stubs,
        params_class: Params::SetRiskConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_risk_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the user interface (UI) customization information for a user pool's built-in app
    #             UI.</p>
    #         <p>You can specify app UI customization settings for a single client (with a specific
    #                 <code>clientId</code>) or for all clients (by setting the <code>clientId</code> to
    #                 <code>ALL</code>). If you specify <code>ALL</code>, the default configuration is
    #             used for every client that has no previously set UI customization. If you specify UI
    #             customization settings for a particular client, it will no longer return to the
    #                 <code>ALL</code> configuration.</p>
    #         <note>
    #             <p>To use this API, your user pool must have a domain associated with it. Otherwise,
    #                 there is no place to host the app's pages, and the service will throw an
    #                 error.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::SetUICustomizationInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :client_id
    #   <p>The client ID for the client app.</p>
    #
    # @option params [String] :css
    #   <p>The CSS values in the UI customization.</p>
    #
    # @option params [String] :image_file
    #   <p>The uploaded logo image for the UI customization.</p>
    #
    # @return [Types::SetUICustomizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_ui_customization(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId',
    #     css: 'CSS',
    #     image_file: 'ImageFile'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetUICustomizationOutput
    #   resp.data.ui_customization #=> Types::UICustomizationType
    #   resp.data.ui_customization.user_pool_id #=> String
    #   resp.data.ui_customization.client_id #=> String
    #   resp.data.ui_customization.image_url #=> String
    #   resp.data.ui_customization.css #=> String
    #   resp.data.ui_customization.css_version #=> String
    #   resp.data.ui_customization.last_modified_date #=> Time
    #   resp.data.ui_customization.creation_date #=> Time
    #
    def set_ui_customization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetUICustomizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetUICustomizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetUICustomization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::SetUICustomization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetUICustomization,
        stubs: @stubs,
        params_class: Params::SetUICustomizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_ui_customization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set the user's multi-factor authentication (MFA) method preference, including which
    #             MFA factors are activated and if any are preferred. Only one factor can be set as
    #             preferred. The preferred MFA factor will be used to authenticate a user if multiple
    #             factors are activated. If multiple options are activated and no preference is set, a
    #             challenge to choose an MFA option will be returned during sign-in. If an MFA type is
    #             activated for a user, the user will be prompted for MFA during all sign-in attempts
    #             unless device tracking is turned on and the device has been trusted. If you want MFA to
    #             be applied selectively based on the assessed risk level of sign-in attempts, deactivate
    #             MFA for users and turn on Adaptive Authentication for the user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::SetUserMFAPreferenceInput}.
    #
    # @option params [SMSMfaSettingsType] :sms_mfa_settings
    #   <p>The SMS text message multi-factor authentication (MFA) settings.</p>
    #
    # @option params [SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   <p>The time-based one-time password software token MFA settings.</p>
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose MFA preference you want to
    #               set.</p>
    #
    # @return [Types::SetUserMFAPreferenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_mfa_preference(
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     access_token: 'AccessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetUserMFAPreferenceOutput
    #
    def set_user_mfa_preference(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetUserMFAPreferenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetUserMFAPreferenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetUserMFAPreference
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::SetUserMFAPreference
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetUserMFAPreference,
        stubs: @stubs,
        params_class: Params::SetUserMFAPreferenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_user_mfa_preference
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the user pool multi-factor authentication (MFA) configuration.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::SetUserPoolMfaConfigInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [SmsMfaConfigType] :sms_mfa_configuration
    #   <p>The SMS text message MFA configuration.</p>
    #
    # @option params [SoftwareTokenMfaConfigType] :software_token_mfa_configuration
    #   <p>The software token MFA configuration.</p>
    #
    # @option params [String] :mfa_configuration
    #   <p>The MFA configuration. If you set the MfaConfiguration value to ‘ON’, only users who
    #               have set up an MFA factor can sign in. To learn more, see <a href="cognito/latest/developerguide/user-pool-settings-mfa.html">Adding Multi-Factor
    #                   Authentication (MFA) to a user pool</a>. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>OFF</code> MFA won't be used for any users.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON</code> MFA is required for all users to sign in.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>OPTIONAL</code> MFA will be required only for individual users who have
    #                       an MFA factor activated.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::SetUserPoolMfaConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_pool_mfa_config(
    #     user_pool_id: 'UserPoolId', # required
    #     sms_mfa_configuration: {
    #       sms_authentication_message: 'SmsAuthenticationMessage',
    #       sms_configuration: {
    #         sns_caller_arn: 'SnsCallerArn', # required
    #         external_id: 'ExternalId',
    #         sns_region: 'SnsRegion'
    #       }
    #     },
    #     software_token_mfa_configuration: {
    #       enabled: false
    #     },
    #     mfa_configuration: 'OFF' # accepts ["OFF", "ON", "OPTIONAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetUserPoolMfaConfigOutput
    #   resp.data.sms_mfa_configuration #=> Types::SmsMfaConfigType
    #   resp.data.sms_mfa_configuration.sms_authentication_message #=> String
    #   resp.data.sms_mfa_configuration.sms_configuration #=> Types::SmsConfigurationType
    #   resp.data.sms_mfa_configuration.sms_configuration.sns_caller_arn #=> String
    #   resp.data.sms_mfa_configuration.sms_configuration.external_id #=> String
    #   resp.data.sms_mfa_configuration.sms_configuration.sns_region #=> String
    #   resp.data.software_token_mfa_configuration #=> Types::SoftwareTokenMfaConfigType
    #   resp.data.software_token_mfa_configuration.enabled #=> Boolean
    #   resp.data.mfa_configuration #=> String, one of ["OFF", "ON", "OPTIONAL"]
    #
    def set_user_pool_mfa_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetUserPoolMfaConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetUserPoolMfaConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetUserPoolMfaConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException]),
        data_parser: Parsers::SetUserPoolMfaConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetUserPoolMfaConfig,
        stubs: @stubs,
        params_class: Params::SetUserPoolMfaConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_user_pool_mfa_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <i>This action is no longer supported.</i> You can use it to configure
    #             only SMS MFA. You can't use it to configure time-based one-time password (TOTP) software
    #             token MFA. To configure either type of MFA, use <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html">SetUserMFAPreference</a> instead.</p>
    #
    # @param [Hash] params
    #   See {Types::SetUserSettingsInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user settings you want to
    #               configure.</p>
    #
    # @option params [Array<MFAOptionType>] :mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    #
    # @return [Types::SetUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_settings(
    #     access_token: 'AccessToken', # required
    #     mfa_options: [
    #       {
    #         delivery_medium: 'SMS', # accepts ["SMS", "EMAIL"]
    #         attribute_name: 'AttributeName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetUserSettingsOutput
    #
    def set_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetUserSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetUserSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException]),
        data_parser: Parsers::SetUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetUserSettings,
        stubs: @stubs,
        params_class: Params::SetUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers the user in the specified user pool and creates a user name, password, and
    #             user attributes.</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::SignUpInput}.
    #
    # @option params [String] :client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    # @option params [String] :username
    #   <p>The user name of the user you want to register.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user you want to register.</p>
    #
    # @option params [Array<AttributeType>] :user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #
    # @option params [Array<AttributeType>] :validation_data
    #   <p>The validation data in the request to register a user.</p>
    #
    # @option params [AnalyticsMetadataType] :analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>SignUp</code> calls.</p>
    #
    # @option params [UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the
    #               following triggers: <i>pre sign-up</i>, <i>custom
    #                   message</i>, and <i>post confirmation</i>. When Amazon Cognito invokes
    #               any of these functions, it passes a JSON payload, which the function receives as input.
    #               This payload contains a <code>clientMetadata</code> attribute, which provides the data
    #               that you assigned to the ClientMetadata parameter in your SignUp request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to enhance
    #               your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::SignUpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign_up(
    #     client_id: 'ClientId', # required
    #     secret_hash: 'SecretHash',
    #     username: 'Username', # required
    #     password: 'Password', # required
    #     user_attributes: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value'
    #       }
    #     ],
    #     analytics_metadata: {
    #       analytics_endpoint_id: 'AnalyticsEndpointId'
    #     },
    #     user_context_data: {
    #       ip_address: 'IpAddress',
    #       encoded_data: 'EncodedData'
    #     },
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SignUpOutput
    #   resp.data.user_confirmed #=> Boolean
    #   resp.data.code_delivery_details #=> Types::CodeDeliveryDetailsType
    #   resp.data.code_delivery_details.destination #=> String
    #   resp.data.code_delivery_details.delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.code_delivery_details.attribute_name #=> String
    #   resp.data.user_sub #=> String
    #
    def sign_up(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SignUpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SignUpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SignUp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::CodeDeliveryFailureException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::UserLambdaValidationException, Errors::InvalidPasswordException, Errors::ResourceNotFoundException, Errors::UsernameExistsException]),
        data_parser: Parsers::SignUp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SignUp,
        stubs: @stubs,
        params_class: Params::SignUpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :sign_up
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the user import.</p>
    #
    # @param [Hash] params
    #   See {Types::StartUserImportJobInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    # @option params [String] :job_id
    #   <p>The job ID for the user import job.</p>
    #
    # @return [Types::StartUserImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_user_import_job(
    #     user_pool_id: 'UserPoolId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartUserImportJobOutput
    #   resp.data.user_import_job #=> Types::UserImportJobType
    #   resp.data.user_import_job.job_name #=> String
    #   resp.data.user_import_job.job_id #=> String
    #   resp.data.user_import_job.user_pool_id #=> String
    #   resp.data.user_import_job.pre_signed_url #=> String
    #   resp.data.user_import_job.creation_date #=> Time
    #   resp.data.user_import_job.start_date #=> Time
    #   resp.data.user_import_job.completion_date #=> Time
    #   resp.data.user_import_job.status #=> String, one of ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"]
    #   resp.data.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.data.user_import_job.imported_users #=> Integer
    #   resp.data.user_import_job.skipped_users #=> Integer
    #   resp.data.user_import_job.failed_users #=> Integer
    #   resp.data.user_import_job.completion_message #=> String
    #
    def start_user_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartUserImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartUserImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartUserImportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PreconditionNotMetException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::StartUserImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartUserImportJob,
        stubs: @stubs,
        params_class: Params::StartUserImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_user_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the user import job.</p>
    #
    # @param [Hash] params
    #   See {Types::StopUserImportJobInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    # @option params [String] :job_id
    #   <p>The job ID for the user import job.</p>
    #
    # @return [Types::StopUserImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_user_import_job(
    #     user_pool_id: 'UserPoolId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopUserImportJobOutput
    #   resp.data.user_import_job #=> Types::UserImportJobType
    #   resp.data.user_import_job.job_name #=> String
    #   resp.data.user_import_job.job_id #=> String
    #   resp.data.user_import_job.user_pool_id #=> String
    #   resp.data.user_import_job.pre_signed_url #=> String
    #   resp.data.user_import_job.creation_date #=> Time
    #   resp.data.user_import_job.start_date #=> Time
    #   resp.data.user_import_job.completion_date #=> Time
    #   resp.data.user_import_job.status #=> String, one of ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"]
    #   resp.data.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.data.user_import_job.imported_users #=> Integer
    #   resp.data.user_import_job.skipped_users #=> Integer
    #   resp.data.user_import_job.failed_users #=> Integer
    #   resp.data.user_import_job.completion_message #=> String
    #
    def stop_user_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopUserImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopUserImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopUserImportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PreconditionNotMetException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::StopUserImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopUserImportJob,
        stubs: @stubs,
        params_class: Params::StopUserImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_user_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns a set of tags to an Amazon Cognito user pool. A tag is a label that you can use to
    #             categorize and manage user pools in different ways, such as by purpose, owner,
    #             environment, or other criteria.</p>
    #         <p>Each tag consists of a key and value, both of which you define. A key is a general
    #             category for more specific values. For example, if you have two versions of a user pool,
    #             one for testing and another for production, you might assign an <code>Environment</code>
    #             tag key to both user pools. The value of this key might be <code>Test</code> for one
    #             user pool, and <code>Production</code> for the other.</p>
    #         <p>Tags are useful for cost tracking and access control. You can activate your tags so
    #             that they appear on the Billing and Cost Management console, where you can track the
    #             costs associated with your user pools. In an Identity and Access Management policy, you can constrain
    #             permissions for user pools based on specific tags or tag values.</p>
    #         <p>You can use this action up to 5 times per second, per account. A user pool can have as
    #             many as 50 tags.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool to assign the tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the user pool.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
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

    # <p>Removes the specified tags from an Amazon Cognito user pool. You can use this action up to 5
    #             times per second, per account.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the user pool.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
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

    # <p>Provides the feedback for an authentication event, whether it was from a valid user or
    #             not. This feedback is used for improving the risk evaluation decision for the user pool
    #             as part of Amazon Cognito advanced security.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAuthEventFeedbackInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :username
    #   <p>The user pool username.</p>
    #
    # @option params [String] :event_id
    #   <p>The event ID.</p>
    #
    # @option params [String] :feedback_token
    #   <p>The feedback token.</p>
    #
    # @option params [String] :feedback_value
    #   <p>The authentication event feedback value.</p>
    #
    # @return [Types::UpdateAuthEventFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_auth_event_feedback(
    #     user_pool_id: 'UserPoolId', # required
    #     username: 'Username', # required
    #     event_id: 'EventId', # required
    #     feedback_token: 'FeedbackToken', # required
    #     feedback_value: 'Valid' # required - accepts ["Valid", "Invalid"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAuthEventFeedbackOutput
    #
    def update_auth_event_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAuthEventFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAuthEventFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAuthEventFeedback
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserPoolAddOnNotEnabledException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateAuthEventFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAuthEventFeedback,
        stubs: @stubs,
        params_class: Params::UpdateAuthEventFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_auth_event_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the device status.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceStatusInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose device status you want to
    #               update.</p>
    #
    # @option params [String] :device_key
    #   <p>The device key.</p>
    #
    # @option params [String] :device_remembered_status
    #   <p>The status of whether a device is remembered.</p>
    #
    # @return [Types::UpdateDeviceStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_status(
    #     access_token: 'AccessToken', # required
    #     device_key: 'DeviceKey', # required
    #     device_remembered_status: 'remembered' # accepts ["remembered", "not_remembered"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceStatusOutput
    #
    def update_device_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeviceStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateDeviceStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeviceStatus,
        stubs: @stubs,
        params_class: Params::UpdateDeviceStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified group with the specified attributes.</p>
    #         <p>Calling this action requires developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :description
    #   <p>A string containing the new description of the group.</p>
    #
    # @option params [String] :role_arn
    #   <p>The new role Amazon Resource Name (ARN) for the group. This is used for setting the
    #                   <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the
    #               token.</p>
    #
    # @option params [Integer] :precedence
    #   <p>The new precedence value for the group. For more information about this parameter, see
    #                   <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateGroup.html">CreateGroup</a>.</p>
    #
    # @return [Types::UpdateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group(
    #     group_name: 'GroupName', # required
    #     user_pool_id: 'UserPoolId', # required
    #     description: 'Description',
    #     role_arn: 'RoleArn',
    #     precedence: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupOutput
    #   resp.data.group #=> Types::GroupType
    #   resp.data.group.group_name #=> String
    #   resp.data.group.user_pool_id #=> String
    #   resp.data.group.description #=> String
    #   resp.data.group.role_arn #=> String
    #   resp.data.group.precedence #=> Integer
    #   resp.data.group.last_modified_date #=> Time
    #   resp.data.group.creation_date #=> Time
    #
    def update_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroup,
        stubs: @stubs,
        params_class: Params::UpdateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates IdP information for a user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIdentityProviderInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    #
    # @option params [String] :provider_name
    #   <p>The IdP name.</p>
    #
    # @option params [Hash<String, String>] :provider_details
    #   <p>The IdP details to be updated, such as <code>MetadataURL</code> and
    #                   <code>MetadataFile</code>.</p>
    #
    # @option params [Hash<String, String>] :attribute_mapping
    #   <p>The IdP attribute mapping to be changed.</p>
    #
    # @option params [Array<String>] :idp_identifiers
    #   <p>A list of IdP identifiers.</p>
    #
    # @return [Types::UpdateIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider(
    #     user_pool_id: 'UserPoolId', # required
    #     provider_name: 'ProviderName', # required
    #     provider_details: {
    #       'key' => 'value'
    #     },
    #     attribute_mapping: {
    #       'key' => 'value'
    #     },
    #     idp_identifiers: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIdentityProviderOutput
    #   resp.data.identity_provider #=> Types::IdentityProviderType
    #   resp.data.identity_provider.user_pool_id #=> String
    #   resp.data.identity_provider.provider_name #=> String
    #   resp.data.identity_provider.provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.identity_provider.provider_details #=> Hash<String, String>
    #   resp.data.identity_provider.provider_details['key'] #=> String
    #   resp.data.identity_provider.attribute_mapping #=> Hash<String, String>
    #   resp.data.identity_provider.attribute_mapping['key'] #=> String
    #   resp.data.identity_provider.idp_identifiers #=> Array<String>
    #   resp.data.identity_provider.idp_identifiers[0] #=> String
    #   resp.data.identity_provider.last_modified_date #=> Time
    #   resp.data.identity_provider.creation_date #=> Time
    #
    def update_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIdentityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIdentityProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException, Errors::UnsupportedIdentityProviderException]),
        data_parser: Parsers::UpdateIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIdentityProvider,
        stubs: @stubs,
        params_class: Params::UpdateIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name and scopes of resource server. All other fields are read-only.</p>
    #         <important>
    #             <p>If you don't provide a value for an attribute, it is set to the default
    #                 value.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceServerInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    # @option params [String] :identifier
    #   <p>The identifier for the resource server.</p>
    #
    # @option params [String] :name
    #   <p>The name of the resource server.</p>
    #
    # @option params [Array<ResourceServerScopeType>] :scopes
    #   <p>The scope values to be set for the resource server.</p>
    #
    # @return [Types::UpdateResourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_server(
    #     user_pool_id: 'UserPoolId', # required
    #     identifier: 'Identifier', # required
    #     name: 'Name', # required
    #     scopes: [
    #       {
    #         scope_name: 'ScopeName', # required
    #         scope_description: 'ScopeDescription' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceServerOutput
    #   resp.data.resource_server #=> Types::ResourceServerType
    #   resp.data.resource_server.user_pool_id #=> String
    #   resp.data.resource_server.identifier #=> String
    #   resp.data.resource_server.name #=> String
    #   resp.data.resource_server.scopes #=> Array<ResourceServerScopeType>
    #   resp.data.resource_server.scopes[0] #=> Types::ResourceServerScopeType
    #   resp.data.resource_server.scopes[0].scope_name #=> String
    #   resp.data.resource_server.scopes[0].scope_description #=> String
    #
    def update_resource_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateResourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceServer,
        stubs: @stubs,
        params_class: Params::UpdateResourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a user to update a specific attribute (one at a time).</p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserAttributesInput}.
    #
    # @option params [Array<AttributeType>] :user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #           <p>If you have set an attribute to require verification before Amazon Cognito updates its value,
    #               this request doesn’t immediately update the value of that attribute. After your user
    #               receives and responds to a verification message to verify the new value, Amazon Cognito updates
    #               the attribute value. Your user can sign in and receive messages with the original
    #               attribute value until they verify the new value.</p>
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user attributes you want to
    #               update.</p>
    #
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action initiates. </p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers. When
    #               you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned
    #               to the <i>custom message</i> trigger. When Amazon Cognito invokes this function, it
    #               passes a JSON payload, which the function receives as input. This payload contains a
    #                   <code>clientMetadata</code> attribute, which provides the data that you assigned to
    #               the ClientMetadata parameter in your UpdateUserAttributes request. In your function code
    #               in Lambda, you can process the <code>clientMetadata</code> value to enhance your workflow
    #               for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    # @return [Types::UpdateUserAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_attributes(
    #     user_attributes: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value'
    #       }
    #     ], # required
    #     access_token: 'AccessToken', # required
    #     client_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserAttributesOutput
    #   resp.data.code_delivery_details_list #=> Array<CodeDeliveryDetailsType>
    #   resp.data.code_delivery_details_list[0] #=> Types::CodeDeliveryDetailsType
    #   resp.data.code_delivery_details_list[0].destination #=> String
    #   resp.data.code_delivery_details_list[0].delivery_medium #=> String, one of ["SMS", "EMAIL"]
    #   resp.data.code_delivery_details_list[0].attribute_name #=> String
    #
    def update_user_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnexpectedLambdaException, Errors::CodeDeliveryFailureException, Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::InvalidLambdaResponseException, Errors::TooManyRequestsException, Errors::InvalidSmsRoleTrustRelationshipException, Errors::AliasExistsException, Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::ExpiredCodeException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::UserLambdaValidationException, Errors::ResourceNotFoundException, Errors::CodeMismatchException]),
        data_parser: Parsers::UpdateUserAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserAttributes,
        stubs: @stubs,
        params_class: Params::UpdateUserAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified user pool with the specified attributes. You can get a list of
    #             the current user pool settings using <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html">DescribeUserPool</a>. If you don't provide a value for an attribute, it will be
    #             set to the default value.
    #         </p>
    #
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #                 require you to register an origination phone number before you can send SMS messages
    #                 to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #                 phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #                 Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #                 receive SMS messages might not be able to sign up, activate their accounts, or sign
    #                 in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service,
    #                 Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                         mode</a>
    #                </i>, you can send messages only to verified phone
    #                 numbers. After you test your app while in the sandbox environment, you can move out
    #                 of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                     Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserPoolInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool you want to update.</p>
    #
    # @option params [UserPoolPolicyType] :policies
    #   <p>A container with the policies you want to update in a user pool.</p>
    #
    # @option params [LambdaConfigType] :lambda_config
    #   <p>The Lambda configuration information from the request to update the user pool.</p>
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   <p>The attributes that are automatically verified when Amazon Cognito requests to update user
    #               pools.</p>
    #
    # @option params [String] :sms_verification_message
    #   <p>A container with information about the SMS verification message.</p>
    #
    # @option params [String] :email_verification_message
    #   <p>The contents of the email verification message.</p>
    #
    # @option params [String] :email_verification_subject
    #   <p>The subject of the email verification message.</p>
    #
    # @option params [VerificationMessageTemplateType] :verification_message_template
    #   <p>The template for verification messages.</p>
    #
    # @option params [String] :sms_authentication_message
    #   <p>The contents of the SMS authentication message.</p>
    #
    # @option params [UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to to email addresses and phone numbers</a>.</p>
    #
    # @option params [String] :mfa_configuration
    #   <p>Possible values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>OFF</code> - MFA tokens aren't required and can't be specified during user
    #                       registration.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ON</code> - MFA tokens are required for all user registrations. You can
    #                       only specify ON when you're initially creating a user pool. You can use the
    #                           <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html">SetUserPoolMfaConfig</a> API operation to turn MFA "ON" for existing
    #                       user pools. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OPTIONAL</code> - Users have the option when registering to create an MFA
    #                       token.</p>
    #               </li>
    #            </ul>
    #
    # @option params [DeviceConfigurationType] :device_configuration
    #   <p>Device configuration.</p>
    #
    # @option params [EmailConfigurationType] :email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for email invitation and verification
    #               messages from your user pool.</p>
    #
    # @option params [SmsConfigurationType] :sms_configuration
    #   <p>The SMS configuration with the settings that your Amazon Cognito user pool must use to send an
    #               SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To send SMS messages
    #               with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an Identity and Access Management
    #               (IAM) role in your Amazon Web Services account.</p>
    #
    # @option params [Hash<String, String>] :user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #
    # @option params [AdminCreateUserConfigType] :admin_create_user_config
    #   <p>The configuration for <code>AdminCreateUser</code> requests.</p>
    #
    # @option params [UserPoolAddOnsType] :user_pool_add_ons
    #   <p>Enables advanced security risk detection. Set the key
    #                   <code>AdvancedSecurityMode</code> to the value "AUDIT".</p>
    #
    # @option params [AccountRecoverySettingType] :account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #
    # @return [Types::UpdateUserPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool(
    #     user_pool_id: 'UserPoolId', # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         temporary_password_validity_days: 1
    #       }
    #     },
    #     lambda_config: {
    #       pre_sign_up: 'PreSignUp',
    #       custom_message: 'CustomMessage',
    #       post_confirmation: 'PostConfirmation',
    #       pre_authentication: 'PreAuthentication',
    #       post_authentication: 'PostAuthentication',
    #       define_auth_challenge: 'DefineAuthChallenge',
    #       create_auth_challenge: 'CreateAuthChallenge',
    #       verify_auth_challenge_response: 'VerifyAuthChallengeResponse',
    #       pre_token_generation: 'PreTokenGeneration',
    #       user_migration: 'UserMigration',
    #       custom_sms_sender: {
    #         lambda_version: 'V1_0', # required - accepts ["V1_0"]
    #         lambda_arn: 'LambdaArn' # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: 'V1_0', # required - accepts ["V1_0"]
    #         lambda_arn: 'LambdaArn' # required
    #       },
    #       kms_key_id: 'KMSKeyID'
    #     },
    #     auto_verified_attributes: [
    #       'phone_number' # accepts ["phone_number", "email"]
    #     ],
    #     sms_verification_message: 'SmsVerificationMessage',
    #     email_verification_message: 'EmailVerificationMessage',
    #     email_verification_subject: 'EmailVerificationSubject',
    #     verification_message_template: {
    #       sms_message: 'SmsMessage',
    #       email_message: 'EmailMessage',
    #       email_subject: 'EmailSubject',
    #       email_message_by_link: 'EmailMessageByLink',
    #       email_subject_by_link: 'EmailSubjectByLink',
    #       default_email_option: 'CONFIRM_WITH_LINK' # accepts ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #     },
    #     sms_authentication_message: 'SmsAuthenticationMessage',
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: [
    #         'phone_number' # accepts ["phone_number", "email"]
    #       ]
    #     },
    #     mfa_configuration: 'OFF', # accepts ["OFF", "ON", "OPTIONAL"]
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false
    #     },
    #     email_configuration: {
    #       source_arn: 'SourceArn',
    #       reply_to_email_address: 'ReplyToEmailAddress',
    #       email_sending_account: 'COGNITO_DEFAULT', # accepts ["COGNITO_DEFAULT", "DEVELOPER"]
    #       from: 'From',
    #       configuration_set: 'ConfigurationSet'
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: 'SnsCallerArn', # required
    #       external_id: 'ExternalId',
    #       sns_region: 'SnsRegion'
    #     },
    #     user_pool_tags: {
    #       'key' => 'value'
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: 'SMSMessage',
    #         email_message: 'EmailMessage',
    #         email_subject: 'EmailSubject'
    #       }
    #     },
    #     user_pool_add_ons: {
    #       advanced_security_mode: 'OFF' # required - accepts ["OFF", "AUDIT", "ENFORCED"]
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: 'verified_email' # required - accepts ["verified_email", "verified_phone_number", "admin_only"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserPoolOutput
    #
    def update_user_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserPool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidSmsRoleAccessPolicyException, Errors::ConcurrentModificationException, Errors::UserImportInProgressException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidEmailRoleAccessPolicyException, Errors::TooManyRequestsException, Errors::UserPoolTaggingException, Errors::InvalidSmsRoleTrustRelationshipException]),
        data_parser: Parsers::UpdateUserPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserPool,
        stubs: @stubs,
        params_class: Params::UpdateUserPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified user pool app client with the specified attributes. You can get
    #             a list of the current user pool app client settings using <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html">DescribeUserPoolClient</a>.</p>
    #         <important>
    #             <p>If you don't provide a value for an attribute, it will be set to the default
    #                 value.</p>
    #         </important>
    #         <p>You can also use this operation to enable token revocation for user pool clients. For
    #             more information about revoking tokens, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserPoolClientInput}.
    #
    # @option params [String] :user_pool_id
    #   <p>The user pool ID for the user pool where you want to update the user pool
    #               client.</p>
    #
    # @option params [String] :client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    # @option params [String] :client_name
    #   <p>The client name from the update user pool client request.</p>
    #
    # @option params [Integer] :refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #           their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #           and retrieve new access and ID tokens for 10 days.</p>
    #           <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #           You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #           value with the default value of 30 days. <i>Valid range</i> is displayed below
    #           in seconds.</p>
    #
    # @option params [Integer] :access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #           their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #           <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #           their access token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    # @option params [Integer] :id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #           their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #           session with their ID token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    # @option params [TokenValidityUnitsType] :token_validity_units
    #   <p>The units in which the validity times are represented. The default unit for
    #               RefreshToken is days, and the default for ID and access tokens is hours.</p>
    #
    # @option params [Array<String>] :read_attributes
    #   <p>The read-only attributes of the user pool.</p>
    #
    # @option params [Array<String>] :write_attributes
    #   <p>The writeable attributes of the user pool.</p>
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   <p>The authentication flows that are supported by the user pool clients. Flow names
    #               without the <code>ALLOW_</code> prefix are no longer supported in favor of new names
    #               with the <code>ALLOW_</code> prefix. Note that values with <code>ALLOW_</code> prefix
    #               must be used only along with values with the <code>ALLOW_</code> prefix.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #                       authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #                       the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, Amazon Cognito
    #                       receives the password in the request instead of using the Secure Remote Password
    #                       (SRP) protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #                       authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #                       authentication. In this flow, Amazon Cognito receives the password in the request instead
    #                       of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #                       tokens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :supported_identity_providers
    #   <p>A list of provider names for the IdPs that this client supports. The following are
    #               supported: <code>COGNITO</code>, <code>Facebook</code>, <code>Google</code>
    #               <code>LoginWithAmazon</code>, and the names of your own SAML and OIDC providers.</p>
    #
    # @option params [Array<String>] :callback_ur_ls
    #   <p>A list of allowed redirect (callback) URLs for the IdPs.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    #
    # @option params [Array<String>] :logout_ur_ls
    #   <p>A list of allowed logout URLs for the IdPs.</p>
    #
    # @option params [String] :default_redirect_uri
    #   <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for <code>http://localhost</code> for testing
    #               purposes only.</p>
    #           <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   <p>The allowed OAuth flows.</p>
    #           <dl>
    #               <dt>code</dt>
    #               <dd>
    #                       <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #                   </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                       <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #                   </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                       <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #                   </dd>
    #            </dl>
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   <p>The allowed OAuth scopes. Possible values provided by OAuth are <code>phone</code>,
    #                   <code>email</code>, <code>openid</code>, and <code>profile</code>. Possible values
    #               provided by Amazon Web Services are <code>aws.cognito.signin.user.admin</code>. Custom scopes created
    #               in Resource Servers are also supported.</p>
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   <p>Set to true if the client is allowed to follow the OAuth protocol when interacting
    #               with Amazon Cognito user pools.</p>
    #
    # @option params [AnalyticsConfigurationType] :analytics_configuration
    #   <p>The Amazon Pinpoint analytics configuration necessary to collect metrics for this user
    #               pool.</p>
    #           <note>
    #               <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools only support sending
    #                   events to Amazon Pinpoint projects in us-east-1. In Regions where Amazon Pinpoint is available, user
    #                   pools support sending events to Amazon Pinpoint projects within that same Region.</p>
    #           </note>
    #
    # @option params [String] :prevent_user_existence_errors
    #   <p>Errors and responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #                   <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code> - This prevents user existence-related errors.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LEGACY</code> - This represents the early behavior of Amazon Cognito where user
    #                       existence related errors aren't prevented.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :enable_token_revocation
    #   <p>Activates or deactivates token revocation. For more information about revoking tokens,
    #               see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   <p>Activates the propagation of additional user context data. For more information about
    #               propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html"> Adding advanced security to a user pool</a>. If you don’t include this
    #               parameter, you can't send device fingerprint information, including source IP address,
    #               to Amazon Cognito advanced security. You can only activate
    #                   <code>EnablePropagateAdditionalUserContextData</code> in an app client that has a
    #               client secret.</p>
    #
    # @return [Types::UpdateUserPoolClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_client(
    #     user_pool_id: 'UserPoolId', # required
    #     client_id: 'ClientId', # required
    #     client_name: 'ClientName',
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: 'seconds', # accepts ["seconds", "minutes", "hours", "days"]
    #       id_token: 'seconds', # accepts ["seconds", "minutes", "hours", "days"]
    #       refresh_token: 'seconds' # accepts ["seconds", "minutes", "hours", "days"]
    #     },
    #     read_attributes: [
    #       'member'
    #     ],
    #     explicit_auth_flows: [
    #       'ADMIN_NO_SRP_AUTH' # accepts ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
    #     ],
    #     supported_identity_providers: [
    #       'member'
    #     ],
    #     callback_ur_ls: [
    #       'member'
    #     ],
    #     logout_ur_ls: [
    #       'member'
    #     ],
    #     default_redirect_uri: 'DefaultRedirectURI',
    #     allowed_o_auth_flows: [
    #       'code' # accepts ["code", "implicit", "client_credentials"]
    #     ],
    #     allowed_o_auth_scopes: [
    #       'member'
    #     ],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: 'ApplicationId',
    #       application_arn: 'ApplicationArn',
    #       role_arn: 'RoleArn',
    #       external_id: 'ExternalId',
    #       user_data_shared: false
    #     },
    #     prevent_user_existence_errors: 'LEGACY', # accepts ["LEGACY", "ENABLED"]
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserPoolClientOutput
    #   resp.data.user_pool_client #=> Types::UserPoolClientType
    #   resp.data.user_pool_client.user_pool_id #=> String
    #   resp.data.user_pool_client.client_name #=> String
    #   resp.data.user_pool_client.client_id #=> String
    #   resp.data.user_pool_client.client_secret #=> String
    #   resp.data.user_pool_client.last_modified_date #=> Time
    #   resp.data.user_pool_client.creation_date #=> Time
    #   resp.data.user_pool_client.refresh_token_validity #=> Integer
    #   resp.data.user_pool_client.access_token_validity #=> Integer
    #   resp.data.user_pool_client.id_token_validity #=> Integer
    #   resp.data.user_pool_client.token_validity_units #=> Types::TokenValidityUnitsType
    #   resp.data.user_pool_client.token_validity_units.access_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.token_validity_units.id_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.token_validity_units.refresh_token #=> String, one of ["seconds", "minutes", "hours", "days"]
    #   resp.data.user_pool_client.read_attributes #=> Array<String>
    #   resp.data.user_pool_client.read_attributes[0] #=> String
    #   resp.data.user_pool_client.write_attributes #=> Array<String>
    #   resp.data.user_pool_client.explicit_auth_flows #=> Array<String>
    #   resp.data.user_pool_client.explicit_auth_flows[0] #=> String, one of ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
    #   resp.data.user_pool_client.supported_identity_providers #=> Array<String>
    #   resp.data.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.data.user_pool_client.callback_ur_ls #=> Array<String>
    #   resp.data.user_pool_client.callback_ur_ls[0] #=> String
    #   resp.data.user_pool_client.logout_ur_ls #=> Array<String>
    #   resp.data.user_pool_client.logout_ur_ls[0] #=> String
    #   resp.data.user_pool_client.default_redirect_uri #=> String
    #   resp.data.user_pool_client.allowed_o_auth_flows #=> Array<String>
    #   resp.data.user_pool_client.allowed_o_auth_flows[0] #=> String, one of ["code", "implicit", "client_credentials"]
    #   resp.data.user_pool_client.allowed_o_auth_scopes #=> Array<String>
    #   resp.data.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.data.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.data.user_pool_client.analytics_configuration #=> Types::AnalyticsConfigurationType
    #   resp.data.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.data.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.data.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.data.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.data.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.data.user_pool_client.prevent_user_existence_errors #=> String, one of ["LEGACY", "ENABLED"]
    #   resp.data.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.data.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #
    def update_user_pool_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserPoolClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserPoolClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserPoolClient
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ConcurrentModificationException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::ScopeDoesNotExistException, Errors::TooManyRequestsException, Errors::InvalidOAuthFlowException]),
        data_parser: Parsers::UpdateUserPoolClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserPoolClient,
        stubs: @stubs,
        params_class: Params::UpdateUserPoolClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_pool_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user
    #             pool.</p>
    #         <p>You can use this operation to provide the Amazon Resource Name (ARN) of a new
    #             certificate to Amazon Cognito. You can't use it to change the domain for a user pool.</p>
    #         <p>A custom domain is used to host the Amazon Cognito hosted UI, which provides sign-up and
    #             sign-in pages for your application. When you set up a custom domain, you provide a
    #             certificate that you manage with Certificate Manager (ACM). When necessary, you can use this
    #             operation to change the certificate that you applied to your custom domain.</p>
    #         <p>Usually, this is unnecessary following routine certificate renewal with ACM. When
    #             you renew your existing certificate in ACM, the ARN for your certificate remains the
    #             same, and your custom domain uses the new certificate automatically.</p>
    #         <p>However, if you replace your existing certificate with a new one, ACM gives the new
    #             certificate a new ARN. To apply the new certificate to your custom domain, you must
    #             provide this ARN to Amazon Cognito.</p>
    #         <p>When you add your new certificate in ACM, you must choose US East (N. Virginia) as
    #             the Amazon Web Services Region.</p>
    #         <p>After you submit your request, Amazon Cognito requires up to 1 hour to distribute your new
    #             certificate to your custom domain.</p>
    #         <p>For more information about adding a custom domain to your user pool, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">Using Your Own Domain for the Hosted UI</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserPoolDomainInput}.
    #
    # @option params [String] :domain
    #   <p>The domain name for the custom domain that hosts the sign-up and sign-in pages for
    #               your application. One example might be <code>auth.example.com</code>. </p>
    #           <p>This string can include only lowercase letters, numbers, and hyphens. Don't use a
    #               hyphen for the first or last character. Use periods to separate subdomain names.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that is associated with the custom domain whose certificate
    #               you're updating.</p>
    #
    # @option params [CustomDomainConfigType] :custom_domain_config
    #   <p>The configuration for a custom domain that hosts the sign-up and sign-in pages for
    #               your application. Use this object to specify an SSL certificate that is managed by
    #               ACM.</p>
    #
    # @return [Types::UpdateUserPoolDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_domain(
    #     domain: 'Domain', # required
    #     user_pool_id: 'UserPoolId', # required
    #     custom_domain_config: {
    #       certificate_arn: 'CertificateArn' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserPoolDomainOutput
    #   resp.data.cloud_front_domain #=> String
    #
    def update_user_pool_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserPoolDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserPoolDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserPoolDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateUserPoolDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserPoolDomain,
        stubs: @stubs,
        params_class: Params::UpdateUserPoolDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_pool_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this API to register a user's entered time-based one-time password (TOTP) code and
    #             mark the user's software token MFA status as "verified" if successful. The request takes
    #             an access token or a session string, but not both.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifySoftwareTokenInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose software token you want to
    #               verify.</p>
    #
    # @option params [String] :session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service.</p>
    #
    # @option params [String] :user_code
    #   <p>The one- time password computed using the secret code returned by <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html">AssociateSoftwareToken</a>.</p>
    #
    # @option params [String] :friendly_device_name
    #   <p>The friendly device name.</p>
    #
    # @return [Types::VerifySoftwareTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_software_token(
    #     access_token: 'AccessToken',
    #     session: 'Session',
    #     user_code: 'UserCode', # required
    #     friendly_device_name: 'FriendlyDeviceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifySoftwareTokenOutput
    #   resp.data.status #=> String, one of ["SUCCESS", "ERROR"]
    #   resp.data.session #=> String
    #
    def verify_software_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifySoftwareTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifySoftwareTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifySoftwareToken
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UserNotConfirmedException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::InvalidUserPoolConfigurationException, Errors::TooManyRequestsException, Errors::InvalidParameterException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::CodeMismatchException, Errors::EnableSoftwareTokenMFAException, Errors::SoftwareTokenMFANotFoundException]),
        data_parser: Parsers::VerifySoftwareToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifySoftwareToken,
        stubs: @stubs,
        params_class: Params::VerifySoftwareTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_software_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Verifies the specified user attributes in the user pool.</p>
    #         <p>
    #             If your user pool requires verification before Amazon Cognito updates the attribute value,
    #             VerifyUserAttribute updates the affected attribute to its pending value. For more information,
    #             see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html">
    #             UserAttributeUpdateSettingsType</a>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::VerifyUserAttributeInput}.
    #
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user attributes you want to
    #               verify.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The attribute name in the request to verify user attributes.</p>
    #
    # @option params [String] :code
    #   <p>The verification code in the request to verify user attributes.</p>
    #
    # @return [Types::VerifyUserAttributeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_user_attribute(
    #     access_token: 'AccessToken', # required
    #     attribute_name: 'AttributeName', # required
    #     code: 'Code' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyUserAttributeOutput
    #
    def verify_user_attribute(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyUserAttributeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyUserAttributeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyUserAttribute
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UserNotConfirmedException, Errors::LimitExceededException, Errors::InternalErrorException, Errors::NotAuthorizedException, Errors::TooManyRequestsException, Errors::AliasExistsException, Errors::InvalidParameterException, Errors::ExpiredCodeException, Errors::PasswordResetRequiredException, Errors::UserNotFoundException, Errors::ResourceNotFoundException, Errors::CodeMismatchException]),
        data_parser: Parsers::VerifyUserAttribute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyUserAttribute,
        stubs: @stubs,
        params_class: Params::VerifyUserAttributeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_user_attribute
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
