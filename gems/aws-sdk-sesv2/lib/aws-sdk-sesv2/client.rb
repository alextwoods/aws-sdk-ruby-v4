# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SESv2
  # An API client for SimpleEmailService_v2
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon SES API v2</fullname>
  #
  #         <p>
  #             <a href="http://aws.amazon.com/ses">Amazon SES</a> is an Amazon Web Services service that
  #             you can use to send email messages to your customers.</p>
  #         <p>If you're new to Amazon SES API v2, you might find it helpful to review the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon Simple Email Service Developer
  #                 Guide</a>. The <i>Amazon SES Developer Guide</i> provides information
  #             and code samples that demonstrate how to use Amazon SES API v2 features programmatically.</p>
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
    def initialize(config = AWS::SDK::SESv2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Create a configuration set. <i>Configuration sets</i> are groups of
    #             rules that you can apply to the emails that you send. You apply a configuration set to
    #             an email by specifying the name of the configuration set when you call the Amazon SES API v2. When
    #             you apply a configuration set to an email, all of the rules in that configuration set
    #             are applied to the email. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set. The name can contain up to 64 alphanumeric
    #               characters, including letters, numbers, hyphens (-) and underscores (_) only.</p>
    #
    # @option params [TrackingOptions] :tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    #
    # @option params [DeliveryOptions] :delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    #
    # @option params [ReputationOptions] :reputation_options
    #   <p>An object that defines whether or not Amazon SES collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    #
    # @option params [SendingOptions] :sending_options
    #   <p>An object that defines whether or not Amazon SES can send email that you send using the
    #               configuration set.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the
    #               configuration set.</p>
    #
    # @option params [SuppressionOptions] :suppression_options
    #   <p>An object that contains information about the suppression list preferences for your
    #               account.</p>
    #
    # @return [Types::CreateConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     tracking_options: {
    #       custom_redirect_domain: 'CustomRedirectDomain' # required
    #     },
    #     delivery_options: {
    #       tls_policy: 'REQUIRE', # accepts ["REQUIRE", "OPTIONAL"]
    #       sending_pool_name: 'SendingPoolName'
    #     },
    #     reputation_options: {
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now
    #     },
    #     sending_options: {
    #       sending_enabled: false
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     suppression_options: {
    #       suppressed_reasons: [
    #         'BOUNCE' # accepts ["BOUNCE", "COMPLAINT"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetOutput
    #
    def create_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::CreateConfigurationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationSet,
        stubs: @stubs,
        params_class: Params::CreateConfigurationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an event destination. <i>Events</i> include message sends,
    #             deliveries, opens, clicks, bounces, and complaints. <i>Event
    #                 destinations</i> are places that you can send information about these events
    #             to. For example, you can send event data to Amazon SNS to receive notifications when you
    #             receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
    #             storage.</p>
    #         <p>A single configuration set can include more than one event destination.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set .</p>
    #
    # @option params [String] :event_destination_name
    #   <p>A name that identifies the event destination within the configuration set.</p>
    #
    # @option params [EventDestinationDefinition] :event_destination
    #   <p>An object that defines the event destination.</p>
    #
    # @return [Types::CreateConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName', # required
    #     event_destination: {
    #       enabled: false,
    #       matching_event_types: [
    #         'SEND' # accepts ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"]
    #       ],
    #       kinesis_firehose_destination: {
    #         iam_role_arn: 'IamRoleArn', # required
    #         delivery_stream_arn: 'DeliveryStreamArn' # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [
    #           {
    #             dimension_name: 'DimensionName', # required
    #             dimension_value_source: 'MESSAGE_TAG', # required - accepts ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"]
    #             default_dimension_value: 'DefaultDimensionValue' # required
    #           }
    #         ] # required
    #       },
    #       sns_destination: {
    #         topic_arn: 'TopicArn' # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: 'ApplicationArn'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetEventDestinationOutput
    #
    def create_configuration_set_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationSetEventDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationSetEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationSetEventDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateConfigurationSetEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationSetEventDestination,
        stubs: @stubs,
        params_class: Params::CreateConfigurationSetEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_set_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a contact, which is an end-user who is receiving the email, and adds them to a
    #             contact list.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list to which the contact should be added.</p>
    #
    # @option params [String] :email_address
    #   <p>The contact's email address.</p>
    #
    # @option params [Array<TopicPreference>] :topic_preferences
    #   <p>The contact's preferences for being opted-in to or opted-out of topics.</p>
    #
    # @option params [Boolean] :unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    #
    # @option params [String] :attributes_data
    #   <p>The attribute data attached to a contact.</p>
    #
    # @return [Types::CreateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact(
    #     contact_list_name: 'ContactListName', # required
    #     email_address: 'EmailAddress', # required
    #     topic_preferences: [
    #       {
    #         topic_name: 'TopicName', # required
    #         subscription_status: 'OPT_IN' # required - accepts ["OPT_IN", "OPT_OUT"]
    #       }
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: 'AttributesData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContactOutput
    #
    def create_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContactInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
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

    # <p>Creates a contact list.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactListInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    #
    # @option params [Array<Topic>] :topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    #
    # @option params [String] :description
    #   <p>A description of what the contact list is about.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with a contact list.</p>
    #
    # @return [Types::CreateContactListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_list(
    #     contact_list_name: 'ContactListName', # required
    #     topics: [
    #       {
    #         topic_name: 'TopicName', # required
    #         display_name: 'DisplayName', # required
    #         description: 'Description',
    #         default_subscription_status: 'OPT_IN' # required - accepts ["OPT_IN", "OPT_OUT"]
    #       }
    #     ],
    #     description: 'Description',
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
    #   resp.data #=> Types::CreateContactListOutput
    #
    def create_contact_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContactListInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContactListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContactList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateContactList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContactList,
        stubs: @stubs,
        params_class: Params::CreateContactListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_contact_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom verification email template.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomVerificationEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template.</p>
    #
    # @option params [String] :from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    #
    # @option params [String] :template_subject
    #   <p>The subject line of the custom verification email.</p>
    #
    # @option params [String] :template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html#custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    # @option params [String] :success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    #
    # @option params [String] :failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    #
    # @return [Types::CreateCustomVerificationEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_verification_email_template(
    #     template_name: 'TemplateName', # required
    #     from_email_address: 'FromEmailAddress', # required
    #     template_subject: 'TemplateSubject', # required
    #     template_content: 'TemplateContent', # required
    #     success_redirection_url: 'SuccessRedirectionURL', # required
    #     failure_redirection_url: 'FailureRedirectionURL' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomVerificationEmailTemplateOutput
    #
    def create_custom_verification_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomVerificationEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomVerificationEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomVerificationEmailTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateCustomVerificationEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomVerificationEmailTemplate,
        stubs: @stubs,
        params_class: Params::CreateCustomVerificationEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_verification_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new pool of dedicated IP addresses. A pool can include one or more dedicated
    #             IP addresses that are associated with your Amazon Web Services account. You can associate a pool with
    #             a configuration set. When you send an email that uses that configuration set, the
    #             message is sent from one of the addresses in the associated pool.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDedicatedIpPoolInput}.
    #
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An object that defines the tags (keys and values) that you want to associate with the
    #               pool.</p>
    #
    # @return [Types::CreateDedicatedIpPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dedicated_ip_pool(
    #     pool_name: 'PoolName', # required
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
    #   resp.data #=> Types::CreateDedicatedIpPoolOutput
    #
    def create_dedicated_ip_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDedicatedIpPoolInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDedicatedIpPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDedicatedIpPool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::CreateDedicatedIpPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDedicatedIpPool,
        stubs: @stubs,
        params_class: Params::CreateDedicatedIpPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dedicated_ip_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled
    #             by various email providers around the world. When you perform a predictive inbox placement test, you provide a
    #             sample message that contains the content that you plan to send to your customers. Amazon SES
    #             then sends that message to special email addresses spread across several major email
    #             providers. After about 24 hours, the test is complete, and you can use the
    #                 <code>GetDeliverabilityTestReport</code> operation to view the results of the
    #             test.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeliverabilityTestReportInput}.
    #
    # @option params [String] :report_name
    #   <p>A unique name that helps you to identify the predictive inbox placement test when you retrieve the
    #               results.</p>
    #
    # @option params [String] :from_email_address
    #   <p>The email address that the predictive inbox placement test email was sent from.</p>
    #
    # @option params [EmailContent] :content
    #   <p>The HTML body of the message that you sent when you performed the predictive inbox placement test.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the predictive inbox placement test.</p>
    #
    # @return [Types::CreateDeliverabilityTestReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deliverability_test_report(
    #     report_name: 'ReportName',
    #     from_email_address: 'FromEmailAddress', # required
    #     content: {
    #       simple: {
    #         subject: {
    #           data: 'Data', # required
    #           charset: 'Charset'
    #         }, # required
    #         body: {
    #         } # required
    #       },
    #       raw: {
    #         data: 'Data' # required
    #       },
    #       template: {
    #         template_name: 'TemplateName',
    #         template_arn: 'TemplateArn',
    #         template_data: 'TemplateData'
    #       }
    #     }, # required
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
    #   resp.data #=> Types::CreateDeliverabilityTestReportOutput
    #   resp.data.report_id #=> String
    #   resp.data.deliverability_test_status #=> String, one of ["IN_PROGRESS", "COMPLETED"]
    #
    def create_deliverability_test_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeliverabilityTestReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeliverabilityTestReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeliverabilityTestReport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MailFromDomainNotVerifiedException, Errors::NotFoundException, Errors::AccountSuspendedException, Errors::BadRequestException, Errors::LimitExceededException, Errors::SendingPausedException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException, Errors::MessageRejected]),
        data_parser: Parsers::CreateDeliverabilityTestReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeliverabilityTestReport,
        stubs: @stubs,
        params_class: Params::CreateDeliverabilityTestReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deliverability_test_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the process of verifying an email identity. An <i>identity</i> is
    #             an email address or domain that you use when you send email. Before you can use an
    #             identity to send email, you first have to verify it. By verifying an identity, you
    #             demonstrate that you're the owner of the identity, and that you've given Amazon SES API v2
    #             permission to send email from the identity.</p>
    #         <p>When you verify an email address, Amazon SES sends an email to the address. Your email
    #             address is verified as soon as you follow the link in the verification email.
    #
    #         </p>
    #         <p>When you verify a domain without specifying the <code>DkimSigningAttributes</code>
    #             object, this operation provides a set of DKIM tokens. You can convert these tokens into
    #             CNAME records, which you then add to the DNS configuration for your domain. Your domain
    #             is verified when Amazon SES detects these records in the DNS configuration for your domain.
    #             This verification method is known as <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #         <p>Alternatively, you can perform the verification process by providing your own
    #             public-private key pair. This verification method is known as Bring Your Own DKIM
    #             (BYODKIM). To use BYODKIM, your call to the <code>CreateEmailIdentity</code> operation
    #             has to include the <code>DkimSigningAttributes</code> object. When you specify this
    #             object, you provide a selector (a component of the DNS record name that identifies the
    #             public key to use for DKIM authentication) and a private key.</p>
    #         <p>When you verify a domain, this operation provides a set of DKIM tokens, which you can
    #             convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your
    #             domain. Your domain is verified when Amazon SES detects these records in the DNS
    #             configuration for your domain. For some DNS providers, it can take 72 hours or more to
    #             complete the domain verification process.</p>
    #         <p>Additionally, you can associate an existing configuration set with the email identity that you're verifying.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEmailIdentityInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email address or domain to verify.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the email
    #               identity.</p>
    #
    # @option params [DkimSigningAttributes] :dkim_signing_attributes
    #   <p>If your request includes this object, Amazon SES configures the identity to use Bring Your
    #               Own DKIM (BYODKIM) for DKIM authentication purposes, or, configures the key length to be used for
    #               <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #           <p>You can only specify this object if the email identity is a domain, as opposed to an
    #               address.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to use by default when sending from this identity. Note that any
    #               configuration set defined in the email sending request takes precedence. </p>
    #
    # @return [Types::CreateEmailIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_identity(
    #     email_identity: 'EmailIdentity', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     dkim_signing_attributes: {
    #       domain_signing_selector: 'DomainSigningSelector',
    #       domain_signing_private_key: 'DomainSigningPrivateKey',
    #       next_signing_key_length: 'RSA_1024_BIT' # accepts ["RSA_1024_BIT", "RSA_2048_BIT"]
    #     },
    #     configuration_set_name: 'ConfigurationSetName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEmailIdentityOutput
    #   resp.data.identity_type #=> String, one of ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"]
    #   resp.data.verified_for_sending_status #=> Boolean
    #   resp.data.dkim_attributes #=> Types::DkimAttributes
    #   resp.data.dkim_attributes.signing_enabled #=> Boolean
    #   resp.data.dkim_attributes.status #=> String, one of ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"]
    #   resp.data.dkim_attributes.tokens #=> Array<String>
    #   resp.data.dkim_attributes.tokens[0] #=> String
    #   resp.data.dkim_attributes.signing_attributes_origin #=> String, one of ["AWS_SES", "EXTERNAL"]
    #   resp.data.dkim_attributes.next_signing_key_length #=> String, one of ["RSA_1024_BIT", "RSA_2048_BIT"]
    #   resp.data.dkim_attributes.current_signing_key_length #=> String, one of ["RSA_1024_BIT", "RSA_2048_BIT"]
    #   resp.data.dkim_attributes.last_key_generation_timestamp #=> Time
    #
    def create_email_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEmailIdentityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEmailIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEmailIdentity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::CreateEmailIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEmailIdentity,
        stubs: @stubs,
        params_class: Params::CreateEmailIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_email_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the specified sending authorization policy for the given identity (an email
    #         address or a domain).</p>
    #         <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #         </note>
    #         <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEmailIdentityPolicyInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    # @option params [String] :policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #           <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @return [Types::CreateEmailIdentityPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_identity_policy(
    #     email_identity: 'EmailIdentity', # required
    #     policy_name: 'PolicyName', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEmailIdentityPolicyOutput
    #
    def create_email_identity_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEmailIdentityPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEmailIdentityPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEmailIdentityPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateEmailIdentityPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEmailIdentityPolicy,
        stubs: @stubs,
        params_class: Params::CreateEmailIdentityPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_email_identity_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an email template. Email templates enable you to send personalized email to
    #             one or more destinations in a single API operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    #
    # @option params [EmailTemplateContent] :template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    #
    # @return [Types::CreateEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_template(
    #     template_name: 'TemplateName', # required
    #     template_content: {
    #       subject: 'Subject',
    #       text: 'Text',
    #       html: 'Html'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEmailTemplateOutput
    #
    def create_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEmailTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEmailTemplate,
        stubs: @stubs,
        params_class: Params::CreateEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an import job for a data destination.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImportJobInput}.
    #
    # @option params [ImportDestination] :import_destination
    #   <p>The destination for the import job.</p>
    #
    # @option params [ImportDataSource] :import_data_source
    #   <p>The data source for the import job.</p>
    #
    # @return [Types::CreateImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_import_job(
    #     import_destination: {
    #       suppression_list_destination: {
    #         suppression_list_import_action: 'DELETE' # required - accepts ["DELETE", "PUT"]
    #       },
    #       contact_list_destination: {
    #         contact_list_name: 'ContactListName', # required
    #         contact_list_import_action: 'DELETE' # required - accepts ["DELETE", "PUT"]
    #       }
    #     }, # required
    #     import_data_source: {
    #       s3_url: 'S3Url', # required
    #       data_format: 'CSV' # required - accepts ["CSV", "JSON"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImportJobOutput
    #   resp.data.job_id #=> String
    #
    def create_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::LimitExceededException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImportJob,
        stubs: @stubs,
        params_class: Params::CreateImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an existing configuration set.</p>
    #         <p>
    #             <i>Configuration sets</i> are groups of rules that you can apply to the
    #             emails you send. You apply a configuration set to an email by including a reference to
    #             the configuration set in the headers of the email. When you apply a configuration set to
    #             an email, all of the rules in that configuration set are applied to the email.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    # @return [Types::DeleteConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationSetOutput
    #
    def delete_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteConfigurationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationSet,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an event destination.</p>
    #         <p>
    #             <i>Events</i> include message sends, deliveries, opens, clicks, bounces,
    #             and complaints. <i>Event destinations</i> are places that you can send
    #             information about these events to. For example, you can send event data to Amazon SNS to
    #             receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to
    #             stream data to Amazon S3 for long-term storage.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination to
    #               delete.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination to delete.</p>
    #
    # @return [Types::DeleteConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationSetEventDestinationOutput
    #
    def delete_configuration_set_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationSetEventDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationSetEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationSetEventDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteConfigurationSetEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationSetEventDestination,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationSetEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_set_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a contact from a contact list.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list from which the contact should be removed.</p>
    #
    # @option params [String] :email_address
    #   <p>The contact's email address.</p>
    #
    # @return [Types::DeleteContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact(
    #     contact_list_name: 'ContactListName', # required
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContactOutput
    #
    def delete_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContactInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
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

    # <p>Deletes a contact list and all of the contacts on that list.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactListInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    #
    # @return [Types::DeleteContactListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_list(
    #     contact_list_name: 'ContactListName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContactListOutput
    #
    def delete_contact_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContactListInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContactListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContactList
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteContactList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContactList,
        stubs: @stubs,
        params_class: Params::DeleteContactListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_contact_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing custom verification email template.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomVerificationEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template that you want to delete.</p>
    #
    # @return [Types::DeleteCustomVerificationEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_verification_email_template(
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomVerificationEmailTemplateOutput
    #
    def delete_custom_verification_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomVerificationEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomVerificationEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomVerificationEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteCustomVerificationEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomVerificationEmailTemplate,
        stubs: @stubs,
        params_class: Params::DeleteCustomVerificationEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_verification_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a dedicated IP pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDedicatedIpPoolInput}.
    #
    # @option params [String] :pool_name
    #   <p>The name of the dedicated IP pool that you want to delete.</p>
    #
    # @return [Types::DeleteDedicatedIpPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dedicated_ip_pool(
    #     pool_name: 'PoolName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDedicatedIpPoolOutput
    #
    def delete_dedicated_ip_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDedicatedIpPoolInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDedicatedIpPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDedicatedIpPool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteDedicatedIpPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDedicatedIpPool,
        stubs: @stubs,
        params_class: Params::DeleteDedicatedIpPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dedicated_ip_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an email identity. An identity can be either an email address or a domain
    #             name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailIdentityInput}.
    #
    # @option params [String] :email_identity
    #   <p>The identity (that is, the email address or domain) to delete.</p>
    #
    # @return [Types::DeleteEmailIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_identity(
    #     email_identity: 'EmailIdentity' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEmailIdentityOutput
    #
    def delete_email_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEmailIdentityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEmailIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEmailIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteEmailIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEmailIdentity,
        stubs: @stubs,
        params_class: Params::DeleteEmailIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_email_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified sending authorization policy for the given identity (an email
    #             address or a domain). This API returns successfully even if a policy with the specified
    #             name does not exist.</p>
    #         <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #         </note>
    #         <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailIdentityPolicyInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    # @return [Types::DeleteEmailIdentityPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_identity_policy(
    #     email_identity: 'EmailIdentity', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEmailIdentityPolicyOutput
    #
    def delete_email_identity_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEmailIdentityPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEmailIdentityPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEmailIdentityPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteEmailIdentityPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEmailIdentityPolicy,
        stubs: @stubs,
        params_class: Params::DeleteEmailIdentityPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_email_identity_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an email template.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template to be deleted.</p>
    #
    # @return [Types::DeleteEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_template(
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEmailTemplateOutput
    #
    def delete_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEmailTemplate,
        stubs: @stubs,
        params_class: Params::DeleteEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an email address from the suppression list for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSuppressedDestinationInput}.
    #
    # @option params [String] :email_address
    #   <p>The suppressed email destination to remove from the account suppression list.</p>
    #
    # @return [Types::DeleteSuppressedDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_suppressed_destination(
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSuppressedDestinationOutput
    #
    def delete_suppressed_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSuppressedDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSuppressedDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSuppressedDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteSuppressedDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSuppressedDestination,
        stubs: @stubs,
        params_class: Params::DeleteSuppressedDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_suppressed_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtain information about the email-sending status and capabilities of your Amazon SES
    #             account in the current Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountInput}.
    #
    # @return [Types::GetAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountOutput
    #   resp.data.dedicated_ip_auto_warmup_enabled #=> Boolean
    #   resp.data.enforcement_status #=> String
    #   resp.data.production_access_enabled #=> Boolean
    #   resp.data.send_quota #=> Types::SendQuota
    #   resp.data.send_quota.max24_hour_send #=> Float
    #   resp.data.send_quota.max_send_rate #=> Float
    #   resp.data.send_quota.sent_last24_hours #=> Float
    #   resp.data.sending_enabled #=> Boolean
    #   resp.data.suppression_attributes #=> Types::SuppressionAttributes
    #   resp.data.suppression_attributes.suppressed_reasons #=> Array<String>
    #   resp.data.suppression_attributes.suppressed_reasons[0] #=> String, one of ["BOUNCE", "COMPLAINT"]
    #   resp.data.details #=> Types::AccountDetails
    #   resp.data.details.mail_type #=> String, one of ["MARKETING", "TRANSACTIONAL"]
    #   resp.data.details.website_url #=> String
    #   resp.data.details.contact_language #=> String, one of ["EN", "JA"]
    #   resp.data.details.use_case_description #=> String
    #   resp.data.details.additional_contact_email_addresses #=> Array<String>
    #   resp.data.details.additional_contact_email_addresses[0] #=> String
    #   resp.data.details.review_details #=> Types::ReviewDetails
    #   resp.data.details.review_details.status #=> String, one of ["PENDING", "FAILED", "GRANTED", "DENIED"]
    #   resp.data.details.review_details.case_id #=> String
    #
    def get_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
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

    # <p>Retrieve a list of the blacklists that your dedicated IP addresses appear on.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBlacklistReportsInput}.
    #
    # @option params [Array<String>] :blacklist_item_names
    #   <p>A list of IP addresses that you want to retrieve blacklist information about. You can
    #               only specify the dedicated IP addresses that you use to send email using Amazon SES or
    #               Amazon Pinpoint.</p>
    #
    # @return [Types::GetBlacklistReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blacklist_reports(
    #     blacklist_item_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBlacklistReportsOutput
    #   resp.data.blacklist_report #=> Hash<String, Array<BlacklistEntry>>
    #   resp.data.blacklist_report['key'] #=> Array<BlacklistEntry>
    #   resp.data.blacklist_report['key'][0] #=> Types::BlacklistEntry
    #   resp.data.blacklist_report['key'][0].rbl_name #=> String
    #   resp.data.blacklist_report['key'][0].listing_time #=> Time
    #   resp.data.blacklist_report['key'][0].description #=> String
    #
    def get_blacklist_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBlacklistReportsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBlacklistReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBlacklistReports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBlacklistReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBlacklistReports,
        stubs: @stubs,
        params_class: Params::GetBlacklistReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_blacklist_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about an existing configuration set, including the dedicated IP pool
    #             that it's associated with, whether or not it's enabled for sending email, and
    #             more.</p>
    #         <p>
    #             <i>Configuration sets</i> are groups of rules that you can apply to the
    #             emails you send. You apply a configuration set to an email by including a reference to
    #             the configuration set in the headers of the email. When you apply a configuration set to
    #             an email, all of the rules in that configuration set are applied to the email.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    # @return [Types::GetConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigurationSetOutput
    #   resp.data.configuration_set_name #=> String
    #   resp.data.tracking_options #=> Types::TrackingOptions
    #   resp.data.tracking_options.custom_redirect_domain #=> String
    #   resp.data.delivery_options #=> Types::DeliveryOptions
    #   resp.data.delivery_options.tls_policy #=> String, one of ["REQUIRE", "OPTIONAL"]
    #   resp.data.delivery_options.sending_pool_name #=> String
    #   resp.data.reputation_options #=> Types::ReputationOptions
    #   resp.data.reputation_options.reputation_metrics_enabled #=> Boolean
    #   resp.data.reputation_options.last_fresh_start #=> Time
    #   resp.data.sending_options #=> Types::SendingOptions
    #   resp.data.sending_options.sending_enabled #=> Boolean
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.suppression_options #=> Types::SuppressionOptions
    #   resp.data.suppression_options.suppressed_reasons #=> Array<String>
    #   resp.data.suppression_options.suppressed_reasons[0] #=> String, one of ["BOUNCE", "COMPLAINT"]
    #
    def get_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigurationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigurationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfigurationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetConfigurationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfigurationSet,
        stubs: @stubs,
        params_class: Params::GetConfigurationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_configuration_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve a list of event destinations that are associated with a configuration
    #             set.</p>
    #         <p>
    #             <i>Events</i> include message sends, deliveries, opens, clicks, bounces,
    #             and complaints. <i>Event destinations</i> are places that you can send
    #             information about these events to. For example, you can send event data to Amazon SNS to
    #             receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to
    #             stream data to Amazon S3 for long-term storage.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConfigurationSetEventDestinationsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination.</p>
    #
    # @return [Types::GetConfigurationSetEventDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set_event_destinations(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigurationSetEventDestinationsOutput
    #   resp.data.event_destinations #=> Array<EventDestination>
    #   resp.data.event_destinations[0] #=> Types::EventDestination
    #   resp.data.event_destinations[0].name #=> String
    #   resp.data.event_destinations[0].enabled #=> Boolean
    #   resp.data.event_destinations[0].matching_event_types #=> Array<String>
    #   resp.data.event_destinations[0].matching_event_types[0] #=> String, one of ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"]
    #   resp.data.event_destinations[0].kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destinations[0].cloud_watch_destination #=> Types::CloudWatchDestination
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations #=> Array<CloudWatchDimensionConfiguration>
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0] #=> Types::CloudWatchDimensionConfiguration
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_name #=> String
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_value_source #=> String, one of ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"]
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0].default_dimension_value #=> String
    #   resp.data.event_destinations[0].sns_destination #=> Types::SnsDestination
    #   resp.data.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.data.event_destinations[0].pinpoint_destination #=> Types::PinpointDestination
    #   resp.data.event_destinations[0].pinpoint_destination.application_arn #=> String
    #
    def get_configuration_set_event_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigurationSetEventDestinationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigurationSetEventDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfigurationSetEventDestinations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetConfigurationSetEventDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfigurationSetEventDestinations,
        stubs: @stubs,
        params_class: Params::GetConfigurationSetEventDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_configuration_set_event_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a contact from a contact list.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list to which the contact belongs.</p>
    #
    # @option params [String] :email_address
    #   <p>The contact's email addres.</p>
    #
    # @return [Types::GetContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact(
    #     contact_list_name: 'ContactListName', # required
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactOutput
    #   resp.data.contact_list_name #=> String
    #   resp.data.email_address #=> String
    #   resp.data.topic_preferences #=> Array<TopicPreference>
    #   resp.data.topic_preferences[0] #=> Types::TopicPreference
    #   resp.data.topic_preferences[0].topic_name #=> String
    #   resp.data.topic_preferences[0].subscription_status #=> String, one of ["OPT_IN", "OPT_OUT"]
    #   resp.data.topic_default_preferences #=> Array<TopicPreference>
    #   resp.data.unsubscribe_all #=> Boolean
    #   resp.data.attributes_data #=> String
    #   resp.data.created_timestamp #=> Time
    #   resp.data.last_updated_timestamp #=> Time
    #
    def get_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
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

    # <p>Returns contact list metadata. It does not return any information about the contacts
    #             present in the list.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactListInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    #
    # @return [Types::GetContactListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_list(
    #     contact_list_name: 'ContactListName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactListOutput
    #   resp.data.contact_list_name #=> String
    #   resp.data.topics #=> Array<Topic>
    #   resp.data.topics[0] #=> Types::Topic
    #   resp.data.topics[0].topic_name #=> String
    #   resp.data.topics[0].display_name #=> String
    #   resp.data.topics[0].description #=> String
    #   resp.data.topics[0].default_subscription_status #=> String, one of ["OPT_IN", "OPT_OUT"]
    #   resp.data.description #=> String
    #   resp.data.created_timestamp #=> Time
    #   resp.data.last_updated_timestamp #=> Time
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_contact_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactListInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContactList
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetContactList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContactList,
        stubs: @stubs,
        params_class: Params::GetContactListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_contact_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the custom email verification template for the template name you
    #             specify.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCustomVerificationEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template that you want to retrieve.</p>
    #
    # @return [Types::GetCustomVerificationEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_verification_email_template(
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCustomVerificationEmailTemplateOutput
    #   resp.data.template_name #=> String
    #   resp.data.from_email_address #=> String
    #   resp.data.template_subject #=> String
    #   resp.data.template_content #=> String
    #   resp.data.success_redirection_url #=> String
    #   resp.data.failure_redirection_url #=> String
    #
    def get_custom_verification_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCustomVerificationEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCustomVerificationEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCustomVerificationEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetCustomVerificationEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCustomVerificationEmailTemplate,
        stubs: @stubs,
        params_class: Params::GetCustomVerificationEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_custom_verification_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about a dedicated IP address, including the name of the dedicated IP
    #             pool that it's associated with, as well information about the automatic warm-up process
    #             for the address.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDedicatedIpInput}.
    #
    # @option params [String] :ip
    #   <p>The IP address that you want to obtain more information about. The value you specify
    #               has to be a dedicated IP address that's assocaited with your Amazon Web Services account.</p>
    #
    # @return [Types::GetDedicatedIpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ip(
    #     ip: 'Ip' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDedicatedIpOutput
    #   resp.data.dedicated_ip #=> Types::DedicatedIp
    #   resp.data.dedicated_ip.ip #=> String
    #   resp.data.dedicated_ip.warmup_status #=> String, one of ["IN_PROGRESS", "DONE"]
    #   resp.data.dedicated_ip.warmup_percentage #=> Integer
    #   resp.data.dedicated_ip.pool_name #=> String
    #
    def get_dedicated_ip(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDedicatedIpInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDedicatedIpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDedicatedIp
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetDedicatedIp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDedicatedIp,
        stubs: @stubs,
        params_class: Params::GetDedicatedIpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dedicated_ip
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the dedicated IP addresses that are associated with your Amazon Web Services
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDedicatedIpsInput}.
    #
    # @option params [String] :pool_name
    #   <p>The name of the IP pool that the dedicated IP address is associated with.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the
    #               position of the dedicated IP pool in the list of IP pools.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #
    # @return [Types::GetDedicatedIpsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ips(
    #     pool_name: 'PoolName',
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDedicatedIpsOutput
    #   resp.data.dedicated_ips #=> Array<DedicatedIp>
    #   resp.data.dedicated_ips[0] #=> Types::DedicatedIp
    #   resp.data.dedicated_ips[0].ip #=> String
    #   resp.data.dedicated_ips[0].warmup_status #=> String, one of ["IN_PROGRESS", "DONE"]
    #   resp.data.dedicated_ips[0].warmup_percentage #=> Integer
    #   resp.data.dedicated_ips[0].pool_name #=> String
    #   resp.data.next_token #=> String
    #
    def get_dedicated_ips(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDedicatedIpsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDedicatedIpsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDedicatedIps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetDedicatedIps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDedicatedIps,
        stubs: @stubs,
        params_class: Params::GetDedicatedIpsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dedicated_ips
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve information about the status of the Deliverability dashboard for your account. When
    #             the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other
    #             metrics for the domains that you use to send email. You also gain the ability to perform
    #             predictive inbox placement tests.</p>
    #
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon SES and other Amazon Web Services services. For more
    #             information about the features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/ses/pricing/">Amazon SES Pricing</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeliverabilityDashboardOptionsInput}.
    #
    # @return [Types::GetDeliverabilityDashboardOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deliverability_dashboard_options()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeliverabilityDashboardOptionsOutput
    #   resp.data.dashboard_enabled #=> Boolean
    #   resp.data.subscription_expiry_date #=> Time
    #   resp.data.account_status #=> String, one of ["ACTIVE", "PENDING_EXPIRATION", "DISABLED"]
    #   resp.data.active_subscribed_domains #=> Array<DomainDeliverabilityTrackingOption>
    #   resp.data.active_subscribed_domains[0] #=> Types::DomainDeliverabilityTrackingOption
    #   resp.data.active_subscribed_domains[0].domain #=> String
    #   resp.data.active_subscribed_domains[0].subscription_start_date #=> Time
    #   resp.data.active_subscribed_domains[0].inbox_placement_tracking_option #=> Types::InboxPlacementTrackingOption
    #   resp.data.active_subscribed_domains[0].inbox_placement_tracking_option.global #=> Boolean
    #   resp.data.active_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps #=> Array<String>
    #   resp.data.active_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps[0] #=> String
    #   resp.data.pending_expiration_subscribed_domains #=> Array<DomainDeliverabilityTrackingOption>
    #
    def get_deliverability_dashboard_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeliverabilityDashboardOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeliverabilityDashboardOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeliverabilityDashboardOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::LimitExceededException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetDeliverabilityDashboardOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeliverabilityDashboardOptions,
        stubs: @stubs,
        params_class: Params::GetDeliverabilityDashboardOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deliverability_dashboard_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve the results of a predictive inbox placement test.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeliverabilityTestReportInput}.
    #
    # @option params [String] :report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #
    # @return [Types::GetDeliverabilityTestReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deliverability_test_report(
    #     report_id: 'ReportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeliverabilityTestReportOutput
    #   resp.data.deliverability_test_report #=> Types::DeliverabilityTestReport
    #   resp.data.deliverability_test_report.report_id #=> String
    #   resp.data.deliverability_test_report.report_name #=> String
    #   resp.data.deliverability_test_report.subject #=> String
    #   resp.data.deliverability_test_report.from_email_address #=> String
    #   resp.data.deliverability_test_report.create_date #=> Time
    #   resp.data.deliverability_test_report.deliverability_test_status #=> String, one of ["IN_PROGRESS", "COMPLETED"]
    #   resp.data.overall_placement #=> Types::PlacementStatistics
    #   resp.data.overall_placement.inbox_percentage #=> Float
    #   resp.data.overall_placement.spam_percentage #=> Float
    #   resp.data.overall_placement.missing_percentage #=> Float
    #   resp.data.overall_placement.spf_percentage #=> Float
    #   resp.data.overall_placement.dkim_percentage #=> Float
    #   resp.data.isp_placements #=> Array<IspPlacement>
    #   resp.data.isp_placements[0] #=> Types::IspPlacement
    #   resp.data.isp_placements[0].isp_name #=> String
    #   resp.data.isp_placements[0].placement_statistics #=> Types::PlacementStatistics
    #   resp.data.message #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_deliverability_test_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeliverabilityTestReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeliverabilityTestReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeliverabilityTestReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetDeliverabilityTestReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeliverabilityTestReport,
        stubs: @stubs,
        params_class: Params::GetDeliverabilityTestReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deliverability_test_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve all the deliverability data for a specific campaign. This data is available
    #             for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainDeliverabilityCampaignInput}.
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign. The Deliverability dashboard automatically generates
    #               and assigns this identifier to a campaign.</p>
    #
    # @return [Types::GetDomainDeliverabilityCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_deliverability_campaign(
    #     campaign_id: 'CampaignId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainDeliverabilityCampaignOutput
    #   resp.data.domain_deliverability_campaign #=> Types::DomainDeliverabilityCampaign
    #   resp.data.domain_deliverability_campaign.campaign_id #=> String
    #   resp.data.domain_deliverability_campaign.image_url #=> String
    #   resp.data.domain_deliverability_campaign.subject #=> String
    #   resp.data.domain_deliverability_campaign.from_address #=> String
    #   resp.data.domain_deliverability_campaign.sending_ips #=> Array<String>
    #   resp.data.domain_deliverability_campaign.sending_ips[0] #=> String
    #   resp.data.domain_deliverability_campaign.first_seen_date_time #=> Time
    #   resp.data.domain_deliverability_campaign.last_seen_date_time #=> Time
    #   resp.data.domain_deliverability_campaign.inbox_count #=> Integer
    #   resp.data.domain_deliverability_campaign.spam_count #=> Integer
    #   resp.data.domain_deliverability_campaign.read_rate #=> Float
    #   resp.data.domain_deliverability_campaign.delete_rate #=> Float
    #   resp.data.domain_deliverability_campaign.read_delete_rate #=> Float
    #   resp.data.domain_deliverability_campaign.projected_volume #=> Integer
    #   resp.data.domain_deliverability_campaign.esps #=> Array<String>
    #   resp.data.domain_deliverability_campaign.esps[0] #=> String
    #
    def get_domain_deliverability_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainDeliverabilityCampaignInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainDeliverabilityCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainDeliverabilityCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetDomainDeliverabilityCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainDeliverabilityCampaign,
        stubs: @stubs,
        params_class: Params::GetDomainDeliverabilityCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_deliverability_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve inbox placement and engagement rates for the domains that you use to send
    #             email.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainStatisticsReportInput}.
    #
    # @option params [String] :domain
    #   <p>The domain that you want to obtain deliverability metrics for.</p>
    #
    # @option params [Time] :start_date
    #   <p>The first day (in Unix time) that you want to obtain domain deliverability metrics
    #               for.</p>
    #
    # @option params [Time] :end_date
    #   <p>The last day (in Unix time) that you want to obtain domain deliverability metrics for.
    #               The <code>EndDate</code> that you specify has to be less than or equal to 30 days after
    #               the <code>StartDate</code>.</p>
    #
    # @return [Types::GetDomainStatisticsReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_statistics_report(
    #     domain: 'Domain', # required
    #     start_date: Time.now, # required
    #     end_date: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainStatisticsReportOutput
    #   resp.data.overall_volume #=> Types::OverallVolume
    #   resp.data.overall_volume.volume_statistics #=> Types::VolumeStatistics
    #   resp.data.overall_volume.volume_statistics.inbox_raw_count #=> Integer
    #   resp.data.overall_volume.volume_statistics.spam_raw_count #=> Integer
    #   resp.data.overall_volume.volume_statistics.projected_inbox #=> Integer
    #   resp.data.overall_volume.volume_statistics.projected_spam #=> Integer
    #   resp.data.overall_volume.read_rate_percent #=> Float
    #   resp.data.overall_volume.domain_isp_placements #=> Array<DomainIspPlacement>
    #   resp.data.overall_volume.domain_isp_placements[0] #=> Types::DomainIspPlacement
    #   resp.data.overall_volume.domain_isp_placements[0].isp_name #=> String
    #   resp.data.overall_volume.domain_isp_placements[0].inbox_raw_count #=> Integer
    #   resp.data.overall_volume.domain_isp_placements[0].spam_raw_count #=> Integer
    #   resp.data.overall_volume.domain_isp_placements[0].inbox_percentage #=> Float
    #   resp.data.overall_volume.domain_isp_placements[0].spam_percentage #=> Float
    #   resp.data.daily_volumes #=> Array<DailyVolume>
    #   resp.data.daily_volumes[0] #=> Types::DailyVolume
    #   resp.data.daily_volumes[0].start_date #=> Time
    #   resp.data.daily_volumes[0].volume_statistics #=> Types::VolumeStatistics
    #   resp.data.daily_volumes[0].domain_isp_placements #=> Array<DomainIspPlacement>
    #
    def get_domain_statistics_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainStatisticsReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainStatisticsReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainStatisticsReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetDomainStatisticsReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainStatisticsReport,
        stubs: @stubs,
        params_class: Params::GetDomainStatisticsReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_statistics_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about a specific identity, including the identity's verification
    #             status, sending authorization policies, its DKIM authentication status, and its custom
    #             Mail-From settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEmailIdentityInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @return [Types::GetEmailIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_identity(
    #     email_identity: 'EmailIdentity' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEmailIdentityOutput
    #   resp.data.identity_type #=> String, one of ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"]
    #   resp.data.feedback_forwarding_status #=> Boolean
    #   resp.data.verified_for_sending_status #=> Boolean
    #   resp.data.dkim_attributes #=> Types::DkimAttributes
    #   resp.data.dkim_attributes.signing_enabled #=> Boolean
    #   resp.data.dkim_attributes.status #=> String, one of ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"]
    #   resp.data.dkim_attributes.tokens #=> Array<String>
    #   resp.data.dkim_attributes.tokens[0] #=> String
    #   resp.data.dkim_attributes.signing_attributes_origin #=> String, one of ["AWS_SES", "EXTERNAL"]
    #   resp.data.dkim_attributes.next_signing_key_length #=> String, one of ["RSA_1024_BIT", "RSA_2048_BIT"]
    #   resp.data.dkim_attributes.current_signing_key_length #=> String, one of ["RSA_1024_BIT", "RSA_2048_BIT"]
    #   resp.data.dkim_attributes.last_key_generation_timestamp #=> Time
    #   resp.data.mail_from_attributes #=> Types::MailFromAttributes
    #   resp.data.mail_from_attributes.mail_from_domain #=> String
    #   resp.data.mail_from_attributes.mail_from_domain_status #=> String, one of ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"]
    #   resp.data.mail_from_attributes.behavior_on_mx_failure #=> String, one of ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"]
    #   resp.data.policies #=> Hash<String, String>
    #   resp.data.policies['key'] #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.configuration_set_name #=> String
    #
    def get_email_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEmailIdentityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEmailIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEmailIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetEmailIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEmailIdentity,
        stubs: @stubs,
        params_class: Params::GetEmailIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_email_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the requested sending authorization policies for the given identity (an email
    #             address or a domain). The policies are returned as a map of policy names to policy
    #             contents. You can retrieve a maximum of 20 policies at a time.</p>
    #         <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #         </note>
    #         <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEmailIdentityPoliciesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @return [Types::GetEmailIdentityPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_identity_policies(
    #     email_identity: 'EmailIdentity' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEmailIdentityPoliciesOutput
    #   resp.data.policies #=> Hash<String, String>
    #   resp.data.policies['key'] #=> String
    #
    def get_email_identity_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEmailIdentityPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEmailIdentityPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEmailIdentityPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetEmailIdentityPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEmailIdentityPolicies,
        stubs: @stubs,
        params_class: Params::GetEmailIdentityPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_email_identity_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the template object (which includes the subject line, HTML part and text
    #             part) for the template you specify.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    #
    # @return [Types::GetEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_template(
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEmailTemplateOutput
    #   resp.data.template_name #=> String
    #   resp.data.template_content #=> Types::EmailTemplateContent
    #   resp.data.template_content.subject #=> String
    #   resp.data.template_content.text #=> String
    #   resp.data.template_content.html #=> String
    #
    def get_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEmailTemplate,
        stubs: @stubs,
        params_class: Params::GetEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about an import job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImportJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the import job.</p>
    #
    # @return [Types::GetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImportJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.import_destination #=> Types::ImportDestination
    #   resp.data.import_destination.suppression_list_destination #=> Types::SuppressionListDestination
    #   resp.data.import_destination.suppression_list_destination.suppression_list_import_action #=> String, one of ["DELETE", "PUT"]
    #   resp.data.import_destination.contact_list_destination #=> Types::ContactListDestination
    #   resp.data.import_destination.contact_list_destination.contact_list_name #=> String
    #   resp.data.import_destination.contact_list_destination.contact_list_import_action #=> String, one of ["DELETE", "PUT"]
    #   resp.data.import_data_source #=> Types::ImportDataSource
    #   resp.data.import_data_source.s3_url #=> String
    #   resp.data.import_data_source.data_format #=> String, one of ["CSV", "JSON"]
    #   resp.data.failure_info #=> Types::FailureInfo
    #   resp.data.failure_info.failed_records_s3_url #=> String
    #   resp.data.failure_info.error_message #=> String
    #   resp.data.job_status #=> String, one of ["CREATED", "PROCESSING", "COMPLETED", "FAILED"]
    #   resp.data.created_timestamp #=> Time
    #   resp.data.completed_timestamp #=> Time
    #   resp.data.processed_records_count #=> Integer
    #   resp.data.failed_records_count #=> Integer
    #
    def get_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImportJob,
        stubs: @stubs,
        params_class: Params::GetImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a specific email address that's on the suppression list
    #             for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSuppressedDestinationInput}.
    #
    # @option params [String] :email_address
    #   <p>The email address that's on the account suppression list.</p>
    #
    # @return [Types::GetSuppressedDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suppressed_destination(
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSuppressedDestinationOutput
    #   resp.data.suppressed_destination #=> Types::SuppressedDestination
    #   resp.data.suppressed_destination.email_address #=> String
    #   resp.data.suppressed_destination.reason #=> String, one of ["BOUNCE", "COMPLAINT"]
    #   resp.data.suppressed_destination.last_update_time #=> Time
    #   resp.data.suppressed_destination.attributes #=> Types::SuppressedDestinationAttributes
    #   resp.data.suppressed_destination.attributes.message_id #=> String
    #   resp.data.suppressed_destination.attributes.feedback_id #=> String
    #
    def get_suppressed_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSuppressedDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSuppressedDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSuppressedDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetSuppressedDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSuppressedDestination,
        stubs: @stubs,
        params_class: Params::GetSuppressedDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_suppressed_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all of the configuration sets associated with your account in the current
    #             region.</p>
    #         <p>
    #             <i>Configuration sets</i> are groups of rules that you can apply to the
    #             emails you send. You apply a configuration set to an email by including a reference to
    #             the configuration set in the headers of the email. When you apply a configuration set to
    #             an email, all of the rules in that configuration set are applied to the email.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationSetsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position in the list of configuration sets.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListConfigurationSets</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #
    # @return [Types::ListConfigurationSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_sets(
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationSetsOutput
    #   resp.data.configuration_sets #=> Array<String>
    #   resp.data.configuration_sets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_configuration_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurationSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListConfigurationSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurationSets,
        stubs: @stubs,
        params_class: Params::ListConfigurationSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configuration_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the contact lists available.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContactListsInput}.
    #
    # @option params [Integer] :page_size
    #   <p>Maximum number of contact lists to return at once. Use this parameter to paginate
    #               results. If additional contact lists exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               lists.</p>
    #
    # @option params [String] :next_token
    #   <p>A string token indicating that there might be additional contact lists available to be
    #               listed. Use the token provided in the Response to use in the subsequent call to
    #               ListContactLists with the same parameters to retrieve the next page of contact
    #               lists.</p>
    #
    # @return [Types::ListContactListsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_lists(
    #     page_size: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactListsOutput
    #   resp.data.contact_lists #=> Array<ContactList>
    #   resp.data.contact_lists[0] #=> Types::ContactList
    #   resp.data.contact_lists[0].contact_list_name #=> String
    #   resp.data.contact_lists[0].last_updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_contact_lists(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactListsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactListsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContactLists
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListContactLists
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContactLists,
        stubs: @stubs,
        params_class: Params::ListContactListsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contact_lists
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the contacts present in a specific contact list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContactsInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    #
    # @option params [ListContactsFilter] :filter
    #   <p>A filter that can be applied to a list of contacts.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of contacts that may be returned at once, which is dependent on if there
    #               are more or less contacts than the value of the PageSize. Use this parameter to
    #               paginate results. If additional contacts exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               contacts.</p>
    #
    # @option params [String] :next_token
    #   <p>A string token indicating that there might be additional contacts available to be
    #               listed. Use the token provided in the Response to use in the subsequent call to
    #               ListContacts with the same parameters to retrieve the next page of contacts.</p>
    #
    # @return [Types::ListContactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contacts(
    #     contact_list_name: 'ContactListName', # required
    #     filter: {
    #       filtered_status: 'OPT_IN', # accepts ["OPT_IN", "OPT_OUT"]
    #       topic_filter: {
    #         topic_name: 'TopicName',
    #         use_default_if_preference_unavailable: false
    #       }
    #     },
    #     page_size: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactsOutput
    #   resp.data.contacts #=> Array<Contact>
    #   resp.data.contacts[0] #=> Types::Contact
    #   resp.data.contacts[0].email_address #=> String
    #   resp.data.contacts[0].topic_preferences #=> Array<TopicPreference>
    #   resp.data.contacts[0].topic_preferences[0] #=> Types::TopicPreference
    #   resp.data.contacts[0].topic_preferences[0].topic_name #=> String
    #   resp.data.contacts[0].topic_preferences[0].subscription_status #=> String, one of ["OPT_IN", "OPT_OUT"]
    #   resp.data.contacts[0].topic_default_preferences #=> Array<TopicPreference>
    #   resp.data.contacts[0].unsubscribe_all #=> Boolean
    #   resp.data.contacts[0].last_updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_contacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactsInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
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

    # <p>Lists the existing custom verification email templates for your account in the current
    #             Amazon Web Services Region.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomVerificationEmailTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to
    #                   <code>ListCustomVerificationEmailTemplates</code> to indicate the position in the
    #               list of custom verification email templates.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListCustomVerificationEmailTemplates</code>. If the number of results is
    #               larger than the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #           <p>The value you specify has to be at least 1, and can be no more than 50.</p>
    #
    # @return [Types::ListCustomVerificationEmailTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_verification_email_templates(
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomVerificationEmailTemplatesOutput
    #   resp.data.custom_verification_email_templates #=> Array<CustomVerificationEmailTemplateMetadata>
    #   resp.data.custom_verification_email_templates[0] #=> Types::CustomVerificationEmailTemplateMetadata
    #   resp.data.custom_verification_email_templates[0].template_name #=> String
    #   resp.data.custom_verification_email_templates[0].from_email_address #=> String
    #   resp.data.custom_verification_email_templates[0].template_subject #=> String
    #   resp.data.custom_verification_email_templates[0].success_redirection_url #=> String
    #   resp.data.custom_verification_email_templates[0].failure_redirection_url #=> String
    #   resp.data.next_token #=> String
    #
    def list_custom_verification_email_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomVerificationEmailTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomVerificationEmailTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomVerificationEmailTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListCustomVerificationEmailTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomVerificationEmailTemplates,
        stubs: @stubs,
        params_class: Params::ListCustomVerificationEmailTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_verification_email_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all of the dedicated IP pools that exist in your Amazon Web Services account in the current
    #             Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDedicatedIpPoolsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate
    #               the position in the list of dedicated IP pools.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #
    # @return [Types::ListDedicatedIpPoolsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dedicated_ip_pools(
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDedicatedIpPoolsOutput
    #   resp.data.dedicated_ip_pools #=> Array<String>
    #   resp.data.dedicated_ip_pools[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_dedicated_ip_pools(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDedicatedIpPoolsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDedicatedIpPoolsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDedicatedIpPools
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListDedicatedIpPools
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDedicatedIpPools,
        stubs: @stubs,
        params_class: Params::ListDedicatedIpPoolsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dedicated_ip_pools
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For
    #             predictive inbox placement tests that are complete, you can use the <code>GetDeliverabilityTestReport</code>
    #             operation to view the results.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeliverabilityTestReportsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to
    #               indicate the position in the list of predictive inbox placement tests.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListDeliverabilityTestReports</code>. If the number of results is larger than
    #               the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    #
    # @return [Types::ListDeliverabilityTestReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deliverability_test_reports(
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeliverabilityTestReportsOutput
    #   resp.data.deliverability_test_reports #=> Array<DeliverabilityTestReport>
    #   resp.data.deliverability_test_reports[0] #=> Types::DeliverabilityTestReport
    #   resp.data.deliverability_test_reports[0].report_id #=> String
    #   resp.data.deliverability_test_reports[0].report_name #=> String
    #   resp.data.deliverability_test_reports[0].subject #=> String
    #   resp.data.deliverability_test_reports[0].from_email_address #=> String
    #   resp.data.deliverability_test_reports[0].create_date #=> Time
    #   resp.data.deliverability_test_reports[0].deliverability_test_status #=> String, one of ["IN_PROGRESS", "COMPLETED"]
    #   resp.data.next_token #=> String
    #
    def list_deliverability_test_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeliverabilityTestReportsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeliverabilityTestReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeliverabilityTestReports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListDeliverabilityTestReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeliverabilityTestReports,
        stubs: @stubs,
        params_class: Params::ListDeliverabilityTestReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deliverability_test_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve deliverability data for all the campaigns that used a specific domain to send
    #             email during a specified time range. This data is available for a domain only if you
    #             enabled the Deliverability dashboard for the domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainDeliverabilityCampaignsInput}.
    #
    # @option params [Time] :start_date
    #   <p>The first day, in Unix time format, that you want to obtain deliverability data
    #               for.</p>
    #
    # @option params [Time] :end_date
    #   <p>The last day, in Unix time format, that you want to obtain deliverability data for.
    #               This value has to be less than or equal to 30 days after the value of the
    #                   <code>StartDate</code> parameter.</p>
    #
    # @option params [String] :subscribed_domain
    #   <p>The domain to obtain deliverability data for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that’s returned from a previous call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the
    #               position of a campaign in the list of campaigns.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to include in response to a single call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results
    #               is larger than the number that you specify in this parameter, the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #
    # @return [Types::ListDomainDeliverabilityCampaignsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_deliverability_campaigns(
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     subscribed_domain: 'SubscribedDomain', # required
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainDeliverabilityCampaignsOutput
    #   resp.data.domain_deliverability_campaigns #=> Array<DomainDeliverabilityCampaign>
    #   resp.data.domain_deliverability_campaigns[0] #=> Types::DomainDeliverabilityCampaign
    #   resp.data.domain_deliverability_campaigns[0].campaign_id #=> String
    #   resp.data.domain_deliverability_campaigns[0].image_url #=> String
    #   resp.data.domain_deliverability_campaigns[0].subject #=> String
    #   resp.data.domain_deliverability_campaigns[0].from_address #=> String
    #   resp.data.domain_deliverability_campaigns[0].sending_ips #=> Array<String>
    #   resp.data.domain_deliverability_campaigns[0].sending_ips[0] #=> String
    #   resp.data.domain_deliverability_campaigns[0].first_seen_date_time #=> Time
    #   resp.data.domain_deliverability_campaigns[0].last_seen_date_time #=> Time
    #   resp.data.domain_deliverability_campaigns[0].inbox_count #=> Integer
    #   resp.data.domain_deliverability_campaigns[0].spam_count #=> Integer
    #   resp.data.domain_deliverability_campaigns[0].read_rate #=> Float
    #   resp.data.domain_deliverability_campaigns[0].delete_rate #=> Float
    #   resp.data.domain_deliverability_campaigns[0].read_delete_rate #=> Float
    #   resp.data.domain_deliverability_campaigns[0].projected_volume #=> Integer
    #   resp.data.domain_deliverability_campaigns[0].esps #=> Array<String>
    #   resp.data.domain_deliverability_campaigns[0].esps[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_domain_deliverability_campaigns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainDeliverabilityCampaignsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainDeliverabilityCampaignsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainDeliverabilityCampaigns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListDomainDeliverabilityCampaigns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainDeliverabilityCampaigns,
        stubs: @stubs,
        params_class: Params::ListDomainDeliverabilityCampaignsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domain_deliverability_campaigns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all of the email identities that are associated with your Amazon Web Services
    #             account. An identity can be either an email address or a domain. This operation returns
    #             identities that are verified as well as those that aren't. This operation returns
    #             identities that are associated with Amazon SES and Amazon Pinpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEmailIdentitiesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate
    #               the position in the list of identities.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If
    #               the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    #
    # @return [Types::ListEmailIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_email_identities(
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEmailIdentitiesOutput
    #   resp.data.email_identities #=> Array<IdentityInfo>
    #   resp.data.email_identities[0] #=> Types::IdentityInfo
    #   resp.data.email_identities[0].identity_type #=> String, one of ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"]
    #   resp.data.email_identities[0].identity_name #=> String
    #   resp.data.email_identities[0].sending_enabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_email_identities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEmailIdentitiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEmailIdentitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEmailIdentities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListEmailIdentities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEmailIdentities,
        stubs: @stubs,
        params_class: Params::ListEmailIdentitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_email_identities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the email templates present in your Amazon SES account in the current Amazon Web Services
    #             Region.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEmailTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListEmailTemplates</code> to indicate
    #               the position in the list of email templates.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to <code>ListEmailTemplates</code>. If the number of
    #               results is larger than the number you specified in this parameter, then the response
    #               includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #           <p>The value you specify has to be at least 1, and can be no more than 10.</p>
    #
    # @return [Types::ListEmailTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_email_templates(
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEmailTemplatesOutput
    #   resp.data.templates_metadata #=> Array<EmailTemplateMetadata>
    #   resp.data.templates_metadata[0] #=> Types::EmailTemplateMetadata
    #   resp.data.templates_metadata[0].template_name #=> String
    #   resp.data.templates_metadata[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_email_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEmailTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEmailTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEmailTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListEmailTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEmailTemplates,
        stubs: @stubs,
        params_class: Params::ListEmailTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_email_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the import jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImportJobsInput}.
    #
    # @option params [String] :import_destination_type
    #   <p>The destination of the import job, which can be used to list import jobs that have a
    #               certain <code>ImportDestinationType</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A string token indicating that there might be additional import jobs available to be
    #               listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the
    #               same parameters to retrieve the next page of import jobs.</p>
    #
    # @option params [Integer] :page_size
    #   <p>Maximum number of import jobs to return at once. Use this parameter to paginate
    #               results. If additional import jobs exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               addresses.</p>
    #
    # @return [Types::ListImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_jobs(
    #     import_destination_type: 'SUPPRESSION_LIST', # accepts ["SUPPRESSION_LIST", "CONTACT_LIST"]
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImportJobsOutput
    #   resp.data.import_jobs #=> Array<ImportJobSummary>
    #   resp.data.import_jobs[0] #=> Types::ImportJobSummary
    #   resp.data.import_jobs[0].job_id #=> String
    #   resp.data.import_jobs[0].import_destination #=> Types::ImportDestination
    #   resp.data.import_jobs[0].import_destination.suppression_list_destination #=> Types::SuppressionListDestination
    #   resp.data.import_jobs[0].import_destination.suppression_list_destination.suppression_list_import_action #=> String, one of ["DELETE", "PUT"]
    #   resp.data.import_jobs[0].import_destination.contact_list_destination #=> Types::ContactListDestination
    #   resp.data.import_jobs[0].import_destination.contact_list_destination.contact_list_name #=> String
    #   resp.data.import_jobs[0].import_destination.contact_list_destination.contact_list_import_action #=> String, one of ["DELETE", "PUT"]
    #   resp.data.import_jobs[0].job_status #=> String, one of ["CREATED", "PROCESSING", "COMPLETED", "FAILED"]
    #   resp.data.import_jobs[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImportJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImportJobs,
        stubs: @stubs,
        params_class: Params::ListImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of email addresses that are on the suppression list for your
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSuppressedDestinationsInput}.
    #
    # @option params [Array<String>] :reasons
    #   <p>The factors that caused the email address to be added to .</p>
    #
    # @option params [Time] :start_date
    #   <p>Used to filter the list of suppressed email destinations so that it only includes
    #               addresses that were added to the list after a specific date. The date that you specify
    #               should be in Unix time format.</p>
    #
    # @option params [Time] :end_date
    #   <p>Used to filter the list of suppressed email destinations so that it only includes
    #               addresses that were added to the list before a specific date. The date that you specify
    #               should be in Unix time format.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListSuppressedDestinations</code> to
    #               indicate the position in the list of suppressed email addresses.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListSuppressedDestinations</code>. If the number of results is larger than the
    #               number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #
    # @return [Types::ListSuppressedDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suppressed_destinations(
    #     reasons: [
    #       'BOUNCE' # accepts ["BOUNCE", "COMPLAINT"]
    #     ],
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     next_token: 'NextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSuppressedDestinationsOutput
    #   resp.data.suppressed_destination_summaries #=> Array<SuppressedDestinationSummary>
    #   resp.data.suppressed_destination_summaries[0] #=> Types::SuppressedDestinationSummary
    #   resp.data.suppressed_destination_summaries[0].email_address #=> String
    #   resp.data.suppressed_destination_summaries[0].reason #=> String, one of ["BOUNCE", "COMPLAINT"]
    #   resp.data.suppressed_destination_summaries[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_suppressed_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSuppressedDestinationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSuppressedDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSuppressedDestinations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InvalidNextTokenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListSuppressedDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSuppressedDestinations,
        stubs: @stubs,
        params_class: Params::ListSuppressedDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_suppressed_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve a list of the tags (keys and values) that are associated with a specified
    #             resource. A <i>tag</i> is a label that you optionally define and associate
    #             with a resource. Each tag consists of a required <i>tag key</i> and an
    #             optional associated <i>tag value</i>. A tag key is a general label that
    #             acts as a category for more specific tag values. A tag value acts as a descriptor within
    #             a tag key.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag
    #               information for.</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
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

    # <p>Enable or disable the automatic warm-up feature for dedicated IP addresses.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountDedicatedIpWarmupAttributesInput}.
    #
    # @option params [Boolean] :auto_warmup_enabled
    #   <p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are
    #               associated with your Amazon SES account in the current Amazon Web Services Region. Set to <code>true</code>
    #               to enable the automatic warm-up feature, or set to <code>false</code> to disable
    #               it.</p>
    #
    # @return [Types::PutAccountDedicatedIpWarmupAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_dedicated_ip_warmup_attributes(
    #     auto_warmup_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountDedicatedIpWarmupAttributesOutput
    #
    def put_account_dedicated_ip_warmup_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountDedicatedIpWarmupAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountDedicatedIpWarmupAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountDedicatedIpWarmupAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutAccountDedicatedIpWarmupAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountDedicatedIpWarmupAttributes,
        stubs: @stubs,
        params_class: Params::PutAccountDedicatedIpWarmupAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_dedicated_ip_warmup_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update your Amazon SES account details.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountDetailsInput}.
    #
    # @option params [String] :mail_type
    #   <p>The type of email your account will send.</p>
    #
    # @option params [String] :website_url
    #   <p>The URL of your website. This information helps us better understand the type of
    #               content that you plan to send.</p>
    #
    # @option params [String] :contact_language
    #   <p>The language you would prefer to be contacted with.</p>
    #
    # @option params [String] :use_case_description
    #   <p>A description of the types of email that you plan to send.</p>
    #
    # @option params [Array<String>] :additional_contact_email_addresses
    #   <p>Additional email addresses that you would like to be notified regarding Amazon SES
    #               matters.</p>
    #
    # @option params [Boolean] :production_access_enabled
    #   <p>Indicates whether or not your account should have production access in the current
    #               Amazon Web Services Region.</p>
    #           <p>If the value is <code>false</code>, then your account is in the
    #                   <i>sandbox</i>. When your account is in the sandbox, you can only send
    #               email to verified identities. Additionally, the maximum number of emails you can send in
    #               a 24-hour period (your sending quota) is 200, and the maximum number of emails you can
    #               send per second (your maximum sending rate) is 1.</p>
    #           <p>If the value is <code>true</code>, then your account has production access. When your
    #               account has production access, you can send email to any address. The sending quota and
    #               maximum sending rate for your account vary based on your specific use case.</p>
    #
    # @return [Types::PutAccountDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_details(
    #     mail_type: 'MARKETING', # required - accepts ["MARKETING", "TRANSACTIONAL"]
    #     website_url: 'WebsiteURL', # required
    #     contact_language: 'EN', # accepts ["EN", "JA"]
    #     use_case_description: 'UseCaseDescription', # required
    #     additional_contact_email_addresses: [
    #       'member'
    #     ],
    #     production_access_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountDetailsOutput
    #
    def put_account_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutAccountDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountDetails,
        stubs: @stubs,
        params_class: Params::PutAccountDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enable or disable the ability of your account to send email.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountSendingAttributesInput}.
    #
    # @option params [Boolean] :sending_enabled
    #   <p>Enables or disables your account's ability to send email. Set to <code>true</code> to
    #               enable email sending, or set to <code>false</code> to disable email sending.</p>
    #           <note>
    #               <p>If Amazon Web Services paused your account's ability to send email, you can't use this operation
    #                   to resume your account's ability to send email.</p>
    #           </note>
    #
    # @return [Types::PutAccountSendingAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_sending_attributes(
    #     sending_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountSendingAttributesOutput
    #
    def put_account_sending_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountSendingAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountSendingAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountSendingAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutAccountSendingAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountSendingAttributes,
        stubs: @stubs,
        params_class: Params::PutAccountSendingAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_sending_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Change the settings for the account-level suppression list.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountSuppressionAttributesInput}.
    #
    # @option params [Array<String>] :suppressed_reasons
    #   <p>A list that contains the reasons that email addresses will be automatically added to
    #               the suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutAccountSuppressionAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_suppression_attributes(
    #     suppressed_reasons: [
    #       'BOUNCE' # accepts ["BOUNCE", "COMPLAINT"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountSuppressionAttributesOutput
    #
    def put_account_suppression_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountSuppressionAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountSuppressionAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountSuppressionAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutAccountSuppressionAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountSuppressionAttributes,
        stubs: @stubs,
        params_class: Params::PutAccountSuppressionAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_suppression_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools
    #             to create groups of dedicated IP addresses for sending specific types of email.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetDeliveryOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to associate with a dedicated IP pool.</p>
    #
    # @option params [String] :tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #
    # @option params [String] :sending_pool_name
    #   <p>The name of the dedicated IP pool to associate with the configuration set.</p>
    #
    # @return [Types::PutConfigurationSetDeliveryOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_delivery_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     tls_policy: 'REQUIRE', # accepts ["REQUIRE", "OPTIONAL"]
    #     sending_pool_name: 'SendingPoolName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationSetDeliveryOptionsOutput
    #
    def put_configuration_set_delivery_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationSetDeliveryOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationSetDeliveryOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationSetDeliveryOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutConfigurationSetDeliveryOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationSetDeliveryOptions,
        stubs: @stubs,
        params_class: Params::PutConfigurationSetDeliveryOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_set_delivery_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enable or disable collection of reputation metrics for emails that you send using a
    #             particular configuration set in a specific Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetReputationOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    # @option params [Boolean] :reputation_metrics_enabled
    #   <p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration
    #               set. If <code>false</code>, tracking of reputation metrics is disabled for the
    #               configuration set.</p>
    #
    # @return [Types::PutConfigurationSetReputationOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_reputation_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     reputation_metrics_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationSetReputationOptionsOutput
    #
    def put_configuration_set_reputation_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationSetReputationOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationSetReputationOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationSetReputationOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutConfigurationSetReputationOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationSetReputationOptions,
        stubs: @stubs,
        params_class: Params::PutConfigurationSetReputationOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_set_reputation_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enable or disable email sending for messages that use a particular configuration set
    #             in a specific Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetSendingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to enable or disable email sending for.</p>
    #
    # @option params [Boolean] :sending_enabled
    #   <p>If <code>true</code>, email sending is enabled for the configuration set. If
    #                   <code>false</code>, email sending is disabled for the configuration set.</p>
    #
    # @return [Types::PutConfigurationSetSendingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_sending_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     sending_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationSetSendingOptionsOutput
    #
    def put_configuration_set_sending_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationSetSendingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationSetSendingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationSetSendingOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutConfigurationSetSendingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationSetSendingOptions,
        stubs: @stubs,
        params_class: Params::PutConfigurationSetSendingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_set_sending_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify the account suppression list preferences for a configuration set.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetSuppressionOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to change the suppression list preferences
    #               for.</p>
    #
    # @option params [Array<String>] :suppressed_reasons
    #   <p>A list that contains the reasons that email addresses are automatically added to the
    #               suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutConfigurationSetSuppressionOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_suppression_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     suppressed_reasons: [
    #       'BOUNCE' # accepts ["BOUNCE", "COMPLAINT"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationSetSuppressionOptionsOutput
    #
    def put_configuration_set_suppression_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationSetSuppressionOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationSetSuppressionOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationSetSuppressionOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutConfigurationSetSuppressionOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationSetSuppressionOptions,
        stubs: @stubs,
        params_class: Params::PutConfigurationSetSuppressionOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_set_suppression_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify a custom domain to use for open and click tracking elements in email that you
    #             send.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetTrackingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    # @option params [String] :custom_redirect_domain
    #   <p>The domain to use to track open and click events.</p>
    #
    # @return [Types::PutConfigurationSetTrackingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_tracking_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     custom_redirect_domain: 'CustomRedirectDomain'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationSetTrackingOptionsOutput
    #
    def put_configuration_set_tracking_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationSetTrackingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationSetTrackingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationSetTrackingOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutConfigurationSetTrackingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationSetTrackingOptions,
        stubs: @stubs,
        params_class: Params::PutConfigurationSetTrackingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_set_tracking_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Move a dedicated IP address to an existing dedicated IP pool.</p>
    #         <note>
    #             <p>The dedicated IP address that you specify must already exist, and must be
    #                 associated with your Amazon Web Services account.
    #
    #             </p>
    #             <p>The dedicated IP pool you specify must already exist. You can create a new pool by
    #                 using the <code>CreateDedicatedIpPool</code> operation.</p>
    #
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::PutDedicatedIpInPoolInput}.
    #
    # @option params [String] :ip
    #   <p>The IP address that you want to move to the dedicated IP pool. The value you specify
    #               has to be a dedicated IP address that's associated with your Amazon Web Services account.</p>
    #
    # @option params [String] :destination_pool_name
    #   <p>The name of the IP pool that you want to add the dedicated IP address to. You have to
    #               specify an IP pool that already exists.</p>
    #
    # @return [Types::PutDedicatedIpInPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_in_pool(
    #     ip: 'Ip', # required
    #     destination_pool_name: 'DestinationPoolName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDedicatedIpInPoolOutput
    #
    def put_dedicated_ip_in_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDedicatedIpInPoolInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDedicatedIpInPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDedicatedIpInPool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutDedicatedIpInPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDedicatedIpInPool,
        stubs: @stubs,
        params_class: Params::PutDedicatedIpInPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_dedicated_ip_in_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p></p>
    #
    # @param [Hash] params
    #   See {Types::PutDedicatedIpWarmupAttributesInput}.
    #
    # @option params [String] :ip
    #   <p>The dedicated IP address that you want to update the warm-up attributes for.</p>
    #
    # @option params [Integer] :warmup_percentage
    #   <p>The warm-up percentage that you want to associate with the dedicated IP
    #               address.</p>
    #
    # @return [Types::PutDedicatedIpWarmupAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_warmup_attributes(
    #     ip: 'Ip', # required
    #     warmup_percentage: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDedicatedIpWarmupAttributesOutput
    #
    def put_dedicated_ip_warmup_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDedicatedIpWarmupAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDedicatedIpWarmupAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDedicatedIpWarmupAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutDedicatedIpWarmupAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDedicatedIpWarmupAttributes,
        stubs: @stubs,
        params_class: Params::PutDedicatedIpWarmupAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_dedicated_ip_warmup_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain
    #             access to reputation, deliverability, and other metrics for the domains that you use to
    #             send email. You also gain the ability to perform predictive inbox placement tests.</p>
    #
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon SES and other Amazon Web Services services. For more
    #             information about the features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/ses/pricing/">Amazon SES Pricing</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDeliverabilityDashboardOptionInput}.
    #
    # @option params [Boolean] :dashboard_enabled
    #   <p>Specifies whether to enable the Deliverability dashboard. To enable the dashboard, set this
    #               value to <code>true</code>.</p>
    #
    # @option params [Array<DomainDeliverabilityTrackingOption>] :subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               enabled the Deliverability dashboard for.</p>
    #
    # @return [Types::PutDeliverabilityDashboardOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_deliverability_dashboard_option(
    #     dashboard_enabled: false, # required
    #     subscribed_domains: [
    #       {
    #         domain: 'Domain',
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: [
    #             'member'
    #           ]
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDeliverabilityDashboardOptionOutput
    #
    def put_deliverability_dashboard_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDeliverabilityDashboardOptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDeliverabilityDashboardOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDeliverabilityDashboardOption
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::AlreadyExistsException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutDeliverabilityDashboardOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDeliverabilityDashboardOption,
        stubs: @stubs,
        params_class: Params::PutDeliverabilityDashboardOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_deliverability_dashboard_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to associate a configuration set with an email identity.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityConfigurationSetAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email address or domain to associate with a configuration set.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to associate with an email identity.</p>
    #
    # @return [Types::PutEmailIdentityConfigurationSetAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_configuration_set_attributes(
    #     email_identity: 'EmailIdentity', # required
    #     configuration_set_name: 'ConfigurationSetName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEmailIdentityConfigurationSetAttributesOutput
    #
    def put_email_identity_configuration_set_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEmailIdentityConfigurationSetAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEmailIdentityConfigurationSetAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEmailIdentityConfigurationSetAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutEmailIdentityConfigurationSetAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEmailIdentityConfigurationSetAttributes,
        stubs: @stubs,
        params_class: Params::PutEmailIdentityConfigurationSetAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_email_identity_configuration_set_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to enable or disable DKIM authentication for an email identity.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityDkimAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @option params [Boolean] :signing_enabled
    #   <p>Sets the DKIM signing configuration for the identity.</p>
    #           <p>When you set this value <code>true</code>, then the messages that are sent from the
    #               identity are signed using DKIM. If you set this value to <code>false</code>, your
    #               messages are sent without DKIM signing.</p>
    #
    # @return [Types::PutEmailIdentityDkimAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_dkim_attributes(
    #     email_identity: 'EmailIdentity', # required
    #     signing_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEmailIdentityDkimAttributesOutput
    #
    def put_email_identity_dkim_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEmailIdentityDkimAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEmailIdentityDkimAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEmailIdentityDkimAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutEmailIdentityDkimAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEmailIdentityDkimAttributes,
        stubs: @stubs,
        params_class: Params::PutEmailIdentityDkimAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_email_identity_dkim_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to configure or change the DKIM authentication settings for an email domain
    #             identity. You can use this operation to do any of the following:</p>
    #         <ul>
    #             <li>
    #                 <p>Update the signing attributes for an identity that uses Bring Your Own DKIM
    #                     (BYODKIM).</p>
    #             </li>
    #             <li>
    #                 <p>Update the key length that should be used for Easy DKIM.</p>
    #             </li>
    #             <li>
    #                 <p>Change from using no DKIM authentication to using Easy DKIM.</p>
    #             </li>
    #             <li>
    #                 <p>Change from using no DKIM authentication to using BYODKIM.</p>
    #             </li>
    #             <li>
    #                 <p>Change from using Easy DKIM to using BYODKIM.</p>
    #             </li>
    #             <li>
    #                 <p>Change from using BYODKIM to using Easy DKIM.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityDkimSigningAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @option params [String] :signing_attributes_origin
    #   <p>The method to use to configure DKIM for the identity. There are the following possible
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AWS_SES</code> – Configure DKIM for the identity by using <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy
    #                           DKIM</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EXTERNAL</code> – Configure DKIM for the identity by using Bring
    #                       Your Own DKIM (BYODKIM).</p>
    #               </li>
    #            </ul>
    #
    # @option params [DkimSigningAttributes] :signing_attributes
    #   <p>An object that contains information about the private key and selector that you want
    #               to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the identity, or,
    #               configures the key length to be used for
    #               <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #
    # @return [Types::PutEmailIdentityDkimSigningAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_dkim_signing_attributes(
    #     email_identity: 'EmailIdentity', # required
    #     signing_attributes_origin: 'AWS_SES', # required - accepts ["AWS_SES", "EXTERNAL"]
    #     signing_attributes: {
    #       domain_signing_selector: 'DomainSigningSelector',
    #       domain_signing_private_key: 'DomainSigningPrivateKey',
    #       next_signing_key_length: 'RSA_1024_BIT' # accepts ["RSA_1024_BIT", "RSA_2048_BIT"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEmailIdentityDkimSigningAttributesOutput
    #   resp.data.dkim_status #=> String, one of ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"]
    #   resp.data.dkim_tokens #=> Array<String>
    #   resp.data.dkim_tokens[0] #=> String
    #
    def put_email_identity_dkim_signing_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEmailIdentityDkimSigningAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEmailIdentityDkimSigningAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEmailIdentityDkimSigningAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutEmailIdentityDkimSigningAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEmailIdentityDkimSigningAttributes,
        stubs: @stubs,
        params_class: Params::PutEmailIdentityDkimSigningAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_email_identity_dkim_signing_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to enable or disable feedback forwarding for an identity. This setting determines
    #             what happens when an identity is used to send an email that results in a bounce or
    #             complaint event.</p>
    #         <p>If the value is <code>true</code>, you receive email notifications when bounce or
    #             complaint events occur. These notifications are sent to the address that you specified
    #             in the <code>Return-Path</code> header of the original email.</p>
    #         <p>You're required to have a method of tracking bounces and complaints. If you haven't
    #             set up another mechanism for receiving bounce or complaint notifications (for example,
    #             by setting up an event destination), you receive an email notification when these events
    #             occur (even if this setting is disabled).</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityFeedbackAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @option params [Boolean] :email_forwarding_enabled
    #   <p>Sets the feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, you receive email notifications when bounce or
    #               complaint events occur. These notifications are sent to the address that you specified
    #               in the <code>Return-Path</code> header of the original email.</p>
    #           <p>You're required to have a method of tracking bounces and complaints. If you haven't
    #               set up another mechanism for receiving bounce or complaint notifications (for example,
    #               by setting up an event destination), you receive an email notification when these events
    #               occur (even if this setting is disabled).</p>
    #
    # @return [Types::PutEmailIdentityFeedbackAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_feedback_attributes(
    #     email_identity: 'EmailIdentity', # required
    #     email_forwarding_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEmailIdentityFeedbackAttributesOutput
    #
    def put_email_identity_feedback_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEmailIdentityFeedbackAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEmailIdentityFeedbackAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEmailIdentityFeedbackAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutEmailIdentityFeedbackAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEmailIdentityFeedbackAttributes,
        stubs: @stubs,
        params_class: Params::PutEmailIdentityFeedbackAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_email_identity_feedback_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to enable or disable the custom Mail-From domain configuration for an email
    #             identity.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityMailFromAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The verified email identity.</p>
    #
    # @option params [String] :mail_from_domain
    #   <p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It has to be a subdomain of the verified identity.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used to receive email.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used in a "From" address if the MAIL FROM domain is a destination
    #                       for feedback forwarding emails.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :behavior_on_mx_failure
    #   <p>The action to take if the required MX record isn't found when you send an email. When
    #               you set this value to <code>UseDefaultValue</code>, the mail is sent using
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, the Amazon SES API v2 returns a
    #                   <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the
    #               email.</p>
    #           <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>
    #               states.</p>
    #
    # @return [Types::PutEmailIdentityMailFromAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_mail_from_attributes(
    #     email_identity: 'EmailIdentity', # required
    #     mail_from_domain: 'MailFromDomain',
    #     behavior_on_mx_failure: 'USE_DEFAULT_VALUE' # accepts ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEmailIdentityMailFromAttributesOutput
    #
    def put_email_identity_mail_from_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEmailIdentityMailFromAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEmailIdentityMailFromAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEmailIdentityMailFromAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutEmailIdentityMailFromAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEmailIdentityMailFromAttributes,
        stubs: @stubs,
        params_class: Params::PutEmailIdentityMailFromAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_email_identity_mail_from_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an email address to the suppression list for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSuppressedDestinationInput}.
    #
    # @option params [String] :email_address
    #   <p>The email address that should be added to the suppression list for your
    #               account.</p>
    #
    # @option params [String] :reason
    #   <p>The factors that should cause the email address to be added to the suppression list
    #               for your account.</p>
    #
    # @return [Types::PutSuppressedDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_suppressed_destination(
    #     email_address: 'EmailAddress', # required
    #     reason: 'BOUNCE' # required - accepts ["BOUNCE", "COMPLAINT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSuppressedDestinationOutput
    #
    def put_suppressed_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSuppressedDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSuppressedDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSuppressedDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutSuppressedDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSuppressedDestination,
        stubs: @stubs,
        params_class: Params::PutSuppressedDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_suppressed_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Composes an email message to multiple destinations.</p>
    #
    # @param [Hash] params
    #   See {Types::SendBulkEmailInput}.
    #
    # @option params [String] :from_email_address
    #   <p>The email address to use as the "From" address for the email. The
    #               address that you specify has to be verified.</p>
    #
    # @option params [String] :from_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FromEmailAddress</code> parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use sender@example.com, then you would specify the
    #                   <code>FromEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FromEmailAddress</code> to be sender@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    #
    # @option params [String] :feedback_forwarding_email_address
    #   <p>The address that you want bounce and complaint notifications to be sent to.</p>
    #
    # @option params [String] :feedback_forwarding_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FeedbackForwardingEmailAddress</code>
    #               parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use feedback@example.com, then you would specify the
    #                   <code>FeedbackForwardingEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [Array<MessageTag>] :default_email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events.</p>
    #
    # @option params [BulkEmailContent] :default_content
    #   <p>An object that contains the body of the message. You can specify a template
    #               message.</p>
    #
    # @option params [Array<BulkEmailEntry>] :bulk_email_entries
    #   <p>The list of bulk email entry objects.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when sending the email.</p>
    #
    # @return [Types::SendBulkEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bulk_email(
    #     from_email_address: 'FromEmailAddress',
    #     from_email_address_identity_arn: 'FromEmailAddressIdentityArn',
    #     reply_to_addresses: [
    #       'member'
    #     ],
    #     feedback_forwarding_email_address: 'FeedbackForwardingEmailAddress',
    #     feedback_forwarding_email_address_identity_arn: 'FeedbackForwardingEmailAddressIdentityArn',
    #     default_email_tags: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     default_content: {
    #       template: {
    #         template_name: 'TemplateName',
    #         template_arn: 'TemplateArn',
    #         template_data: 'TemplateData'
    #       }
    #     }, # required
    #     bulk_email_entries: [
    #       {
    #         destination: {
    #         }, # required
    #         replacement_email_content: {
    #           replacement_template: {
    #             replacement_template_data: 'ReplacementTemplateData'
    #           }
    #         }
    #       }
    #     ], # required
    #     configuration_set_name: 'ConfigurationSetName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendBulkEmailOutput
    #   resp.data.bulk_email_entry_results #=> Array<BulkEmailEntryResult>
    #   resp.data.bulk_email_entry_results[0] #=> Types::BulkEmailEntryResult
    #   resp.data.bulk_email_entry_results[0].status #=> String, one of ["SUCCESS", "MESSAGE_REJECTED", "MAIL_FROM_DOMAIN_NOT_VERIFIED", "CONFIGURATION_SET_NOT_FOUND", "TEMPLATE_NOT_FOUND", "ACCOUNT_SUSPENDED", "ACCOUNT_THROTTLED", "ACCOUNT_DAILY_QUOTA_EXCEEDED", "INVALID_SENDING_POOL_NAME", "ACCOUNT_SENDING_PAUSED", "CONFIGURATION_SET_SENDING_PAUSED", "INVALID_PARAMETER", "TRANSIENT_FAILURE", "FAILED"]
    #   resp.data.bulk_email_entry_results[0].error #=> String
    #   resp.data.bulk_email_entry_results[0].message_id #=> String
    #
    def send_bulk_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendBulkEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendBulkEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendBulkEmail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MailFromDomainNotVerifiedException, Errors::NotFoundException, Errors::AccountSuspendedException, Errors::BadRequestException, Errors::LimitExceededException, Errors::SendingPausedException, Errors::TooManyRequestsException, Errors::MessageRejected]),
        data_parser: Parsers::SendBulkEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendBulkEmail,
        stubs: @stubs,
        params_class: Params::SendBulkEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_bulk_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an email address to the list of identities for your Amazon SES account in the current
    #             Amazon Web Services Region and attempts to verify it. As a result of executing this operation, a
    #             customized verification email is sent to the specified address.</p>
    #         <p>To use this operation, you must first create a custom verification email template. For
    #             more information about creating and using custom verification email templates, see
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::SendCustomVerificationEmailInput}.
    #
    # @option params [String] :email_address
    #   <p>The email address to verify.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template to use when sending the
    #               verification email.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>Name of a configuration set to use when sending the verification email.</p>
    #
    # @return [Types::SendCustomVerificationEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_custom_verification_email(
    #     email_address: 'EmailAddress', # required
    #     template_name: 'TemplateName', # required
    #     configuration_set_name: 'ConfigurationSetName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendCustomVerificationEmailOutput
    #   resp.data.message_id #=> String
    #
    def send_custom_verification_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendCustomVerificationEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendCustomVerificationEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendCustomVerificationEmail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MailFromDomainNotVerifiedException, Errors::NotFoundException, Errors::BadRequestException, Errors::LimitExceededException, Errors::SendingPausedException, Errors::TooManyRequestsException, Errors::MessageRejected]),
        data_parser: Parsers::SendCustomVerificationEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendCustomVerificationEmail,
        stubs: @stubs,
        params_class: Params::SendCustomVerificationEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_custom_verification_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an email message. You can use the Amazon SES API v2 to send the following types of
    #             messages:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Simple</b> – A standard email message. When
    #                     you create this type of message, you specify the sender, the recipient, and the
    #                     message body, and Amazon SES assembles the message for you.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Raw</b> – A raw, MIME-formatted email
    #                     message. When you send this type of email, you have to specify all of the
    #                     message headers, as well as the message body. You can use this message type to
    #                     send messages that contain attachments. The message that you specify has to be a
    #                     valid MIME message.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Templated</b> – A message that contains
    #                     personalization tags. When you send this type of email, Amazon SES API v2 automatically
    #                     replaces the tags with values that you specify.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::SendEmailInput}.
    #
    # @option params [String] :from_email_address
    #   <p>The email address to use as the "From" address for the email. The
    #               address that you specify has to be verified.
    #               </p>
    #
    # @option params [String] :from_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FromEmailAddress</code> parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use sender@example.com, then you would specify the
    #                   <code>FromEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FromEmailAddress</code> to be sender@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>For Raw emails, the <code>FromEmailAddressIdentityArn</code> value overrides the
    #               X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email message
    #               content.</p>
    #
    # @option params [Destination] :destination
    #   <p>An object that contains the recipients of the email message.</p>
    #
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    #
    # @option params [String] :feedback_forwarding_email_address
    #   <p>The address that you want bounce and complaint notifications to be sent to.</p>
    #
    # @option params [String] :feedback_forwarding_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FeedbackForwardingEmailAddress</code>
    #               parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use feedback@example.com, then you would specify the
    #                   <code>FeedbackForwardingEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [EmailContent] :content
    #   <p>An object that contains the body of the message. You can send either a Simple message
    #               Raw message or a template Message.</p>
    #
    # @option params [Array<MessageTag>] :email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events. </p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when sending the email.</p>
    #
    # @option params [ListManagementOptions] :list_management_options
    #   <p>An object used to specify a list or topic to which an email belongs, which will be
    #               used when a contact chooses to unsubscribe.</p>
    #
    # @return [Types::SendEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email(
    #     from_email_address: 'FromEmailAddress',
    #     from_email_address_identity_arn: 'FromEmailAddressIdentityArn',
    #     destination: {
    #       to_addresses: [
    #         'member'
    #       ],
    #     },
    #     feedback_forwarding_email_address: 'FeedbackForwardingEmailAddress',
    #     feedback_forwarding_email_address_identity_arn: 'FeedbackForwardingEmailAddressIdentityArn',
    #     content: {
    #       simple: {
    #         subject: {
    #           data: 'Data', # required
    #           charset: 'Charset'
    #         }, # required
    #         body: {
    #         } # required
    #       },
    #       raw: {
    #         data: 'Data' # required
    #       },
    #       template: {
    #         template_name: 'TemplateName',
    #         template_arn: 'TemplateArn',
    #         template_data: 'TemplateData'
    #       }
    #     }, # required
    #     email_tags: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     configuration_set_name: 'ConfigurationSetName',
    #     list_management_options: {
    #       contact_list_name: 'ContactListName', # required
    #       topic_name: 'TopicName'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendEmailOutput
    #   resp.data.message_id #=> String
    #
    def send_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendEmail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MailFromDomainNotVerifiedException, Errors::NotFoundException, Errors::AccountSuspendedException, Errors::BadRequestException, Errors::LimitExceededException, Errors::SendingPausedException, Errors::TooManyRequestsException, Errors::MessageRejected]),
        data_parser: Parsers::SendEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendEmail,
        stubs: @stubs,
        params_class: Params::SendEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add one or more tags (keys and values) to a specified resource. A
    #                 <i>tag</i> is a label that you optionally define and associate with a
    #             resource. Tags can help you categorize and manage resources in different ways, such as
    #             by purpose, owner, environment, or other criteria. A resource can have as many as 50
    #             tags.</p>
    #         <p>Each tag consists of a required <i>tag key</i> and an
    #                 associated <i>tag value</i>, both of which you define. A tag key is a
    #             general label that acts as a category for more specific tag values. A tag value acts as
    #             a descriptor within a tag key.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags
    #               to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tags that you want to add to the resource. A tag consists of a required
    #               tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum
    #               length of a tag key is 128 characters. The maximum length of a tag value is 256
    #               characters.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
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

    # <p>Creates a preview of the MIME content of an email when provided with a template and a
    #             set of replacement data.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::TestRenderEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    #
    # @option params [String] :template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    # @return [Types::TestRenderEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_render_email_template(
    #     template_name: 'TemplateName', # required
    #     template_data: 'TemplateData' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestRenderEmailTemplateOutput
    #   resp.data.rendered_template #=> String
    #
    def test_render_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestRenderEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestRenderEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestRenderEmailTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::TestRenderEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestRenderEmailTemplate,
        stubs: @stubs,
        params_class: Params::TestRenderEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_render_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove one or more tags (keys and values) from a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more
    #               tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #               key, the action removes both that key and its associated tag value.</p>
    #           <p>To remove more than one tag from the resource, append the <code>TagKeys</code>
    #               parameter and argument for each additional tag to remove, separated by an ampersand. For
    #               example:
    #                   <code>/v2/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>
    #           </p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
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

    # <p>Update the configuration of an event destination for a configuration set.</p>
    #         <p>
    #             <i>Events</i> include message sends, deliveries, opens, clicks, bounces,
    #             and complaints. <i>Event destinations</i> are places that you can send
    #             information about these events to. For example, you can send event data to Amazon SNS to
    #             receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to
    #             stream data to Amazon S3 for long-term storage.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination to
    #               modify.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination.</p>
    #
    # @option params [EventDestinationDefinition] :event_destination
    #   <p>An object that defines the event destination.</p>
    #
    # @return [Types::UpdateConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName', # required
    #     event_destination: {
    #       enabled: false,
    #       matching_event_types: [
    #         'SEND' # accepts ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"]
    #       ],
    #       kinesis_firehose_destination: {
    #         iam_role_arn: 'IamRoleArn', # required
    #         delivery_stream_arn: 'DeliveryStreamArn' # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [
    #           {
    #             dimension_name: 'DimensionName', # required
    #             dimension_value_source: 'MESSAGE_TAG', # required - accepts ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"]
    #             default_dimension_value: 'DefaultDimensionValue' # required
    #           }
    #         ] # required
    #       },
    #       sns_destination: {
    #         topic_arn: 'TopicArn' # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: 'ApplicationArn'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationSetEventDestinationOutput
    #
    def update_configuration_set_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationSetEventDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationSetEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationSetEventDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateConfigurationSetEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationSetEventDestination,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationSetEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_set_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a contact's preferences for a list. It is not necessary to specify all
    #             existing topic preferences in the TopicPreferences object, just the ones that need
    #             updating.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    #
    # @option params [String] :email_address
    #   <p>The contact's email addres.</p>
    #
    # @option params [Array<TopicPreference>] :topic_preferences
    #   <p>The contact's preference for being opted-in to or opted-out of a topic.</p>
    #
    # @option params [Boolean] :unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    #
    # @option params [String] :attributes_data
    #   <p>The attribute data attached to a contact.</p>
    #
    # @return [Types::UpdateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact(
    #     contact_list_name: 'ContactListName', # required
    #     email_address: 'EmailAddress', # required
    #     topic_preferences: [
    #       {
    #         topic_name: 'TopicName', # required
    #         subscription_status: 'OPT_IN' # required - accepts ["OPT_IN", "OPT_OUT"]
    #       }
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: 'AttributesData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactOutput
    #
    def update_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
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

    # <p>Updates contact list metadata. This operation does a complete replacement.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactListInput}.
    #
    # @option params [String] :contact_list_name
    #   <p>The name of the contact list.</p>
    #
    # @option params [Array<Topic>] :topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    #
    # @option params [String] :description
    #   <p>A description of what the contact list is about.</p>
    #
    # @return [Types::UpdateContactListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_list(
    #     contact_list_name: 'ContactListName', # required
    #     topics: [
    #       {
    #         topic_name: 'TopicName', # required
    #         display_name: 'DisplayName', # required
    #         description: 'Description',
    #         default_subscription_status: 'OPT_IN' # required - accepts ["OPT_IN", "OPT_OUT"]
    #       }
    #     ],
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactListOutput
    #
    def update_contact_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactListInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::UpdateContactList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactList,
        stubs: @stubs,
        params_class: Params::UpdateContactListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing custom verification email template.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCustomVerificationEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the custom verification email template that you want to update.</p>
    #
    # @option params [String] :from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    #
    # @option params [String] :template_subject
    #   <p>The subject line of the custom verification email.</p>
    #
    # @option params [String] :template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html#custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    # @option params [String] :success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    #
    # @option params [String] :failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    #
    # @return [Types::UpdateCustomVerificationEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_verification_email_template(
    #     template_name: 'TemplateName', # required
    #     from_email_address: 'FromEmailAddress', # required
    #     template_subject: 'TemplateSubject', # required
    #     template_content: 'TemplateContent', # required
    #     success_redirection_url: 'SuccessRedirectionURL', # required
    #     failure_redirection_url: 'FailureRedirectionURL' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCustomVerificationEmailTemplateOutput
    #
    def update_custom_verification_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCustomVerificationEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCustomVerificationEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCustomVerificationEmailTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateCustomVerificationEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCustomVerificationEmailTemplate,
        stubs: @stubs,
        params_class: Params::UpdateCustomVerificationEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_custom_verification_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified sending authorization policy for the given identity (an email
    #             address or a domain). This API returns successfully even if a policy with the specified
    #             name does not exist.</p>
    #         <note>
    #             <p>This API is for the identity owner only. If you have not verified the identity,
    #                 this API will return an error.</p>
    #         </note>
    #         <p>Sending authorization is a feature that enables an identity owner to authorize other
    #             senders to use its identities. For information about using sending authorization, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEmailIdentityPolicyInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    # @option params [String] :policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #           <p> For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @return [Types::UpdateEmailIdentityPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_identity_policy(
    #     email_identity: 'EmailIdentity', # required
    #     policy_name: 'PolicyName', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEmailIdentityPolicyOutput
    #
    def update_email_identity_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEmailIdentityPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEmailIdentityPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEmailIdentityPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateEmailIdentityPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEmailIdentityPolicy,
        stubs: @stubs,
        params_class: Params::UpdateEmailIdentityPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_email_identity_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an email template. Email templates enable you to send personalized email to
    #             one or more destinations in a single API operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    #
    # @option params [EmailTemplateContent] :template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    #
    # @return [Types::UpdateEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_template(
    #     template_name: 'TemplateName', # required
    #     template_content: {
    #       subject: 'Subject',
    #       text: 'Text',
    #       html: 'Html'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEmailTemplateOutput
    #
    def update_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEmailTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEmailTemplate,
        stubs: @stubs,
        params_class: Params::UpdateEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_email_template
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
