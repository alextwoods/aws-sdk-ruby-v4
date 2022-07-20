# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::PinpointEmail
  # An API client for AmazonPinpointEmailService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Pinpoint Email Service</fullname>
  #         <p>Welcome to the <i>Amazon Pinpoint Email API Reference</i>. This guide provides
  #             information about the Amazon Pinpoint Email API (version 1.0), including supported
  #             operations, data types, parameters, and schemas.</p>
  #         <p>
  #             <a href="https://aws.amazon.com/pinpoint">Amazon Pinpoint</a> is an AWS service that you
  #             can use to engage with your customers across multiple messaging channels. You can use
  #             Amazon Pinpoint to send email, SMS text messages, voice messages, and push notifications. The
  #             Amazon Pinpoint Email API provides programmatic access to options that are unique to the
  #             email channel and supplement the options provided by the Amazon Pinpoint API.</p>
  #         <p>If you're new to Amazon Pinpoint, you might find it helpful to also review the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html">Amazon
  #                 Pinpoint Developer Guide</a>. The <i>Amazon Pinpoint Developer
  #                 Guide</i> provides tutorials, code samples, and procedures that demonstrate
  #             how to use Amazon Pinpoint features programmatically and how to integrate Amazon Pinpoint functionality into
  #             mobile apps and other types of applications. The guide also provides information about
  #             key topics such as Amazon Pinpoint integration with other AWS services and the limits that apply
  #             to using the service.</p>
  #         <p>The Amazon Pinpoint Email API is available in several AWS Regions and it provides an endpoint
  #             for each of these Regions. For a list of all the Regions and endpoints where the API is
  #             currently available, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region">AWS Service Endpoints</a> in
  #             the <i>Amazon Web Services General Reference</i>. To learn more about AWS Regions, see
  #                 <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html">Managing AWS
  #                 Regions</a> in the <i>Amazon Web Services General Reference</i>.</p>
  #         <p>In each Region, AWS maintains multiple Availability Zones. These Availability Zones
  #             are physically isolated from each other, but are united by private, low-latency,
  #             high-throughput, and highly redundant network connections. These Availability Zones
  #             enable us to provide very high levels of availability and redundancy, while also
  #             minimizing latency. To learn more about the number of Availability Zones that are
  #             available in each Region, see <a href="http://aws.amazon.com/about-aws/global-infrastructure/">AWS Global Infrastructure</a>.</p>
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
    def initialize(config = AWS::SDK::PinpointEmail::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Create a configuration set. <i>Configuration sets</i> are groups of
    #             rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration
    #             set to an email by including a reference to the configuration set in the headers of the
    #             email. When you apply a configuration set to an email, all of the rules in that
    #             configuration set are applied to the email. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set.</p>
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
    #   <p>An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    #
    # @option params [SendingOptions] :sending_options
    #   <p>An object that defines whether or not Amazon Pinpoint can send email that you send using the
    #               configuration set.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the configuration set.</p>
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
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetOutput
    #
    def create_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationSetInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::AlreadyExistsException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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

    # <p>Create an event destination. In Amazon Pinpoint, <i>events</i> include message
    #             sends, deliveries, opens, clicks, bounces, and complaints. <i>Event
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
    #   <p>The name of the configuration set that you want to add an event destination to.</p>
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
    #         'SEND' # accepts ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"]
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::AlreadyExistsException, Errors::LimitExceededException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Create a new pool of dedicated IP addresses. A pool can include one or more dedicated
    #             IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with
    #             a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint
    #             sends it using only the IP addresses in the associated pool.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::AlreadyExistsException, Errors::LimitExceededException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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
    #             sample message that contains the content that you plan to send to your customers. Amazon Pinpoint
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SendingPausedException, Errors::TooManyRequestsException, Errors::LimitExceededException, Errors::MessageRejected, Errors::NotFoundException, Errors::AccountSuspendedException, Errors::ConcurrentModificationException, Errors::BadRequestException, Errors::MailFromDomainNotVerifiedException]),
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

    # <p>Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email
    #             address or domain that you use when you send email. Before you can use an identity to
    #             send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you
    #             demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission
    #             to send email from the address.</p>
    #         <p>When you verify an email address, Amazon Pinpoint sends an email to the address. Your email
    #             address is verified as soon as you follow the link in the verification email.
    #
    #         </p>
    #         <p>When you verify a domain, this operation provides a set of DKIM tokens, which you can
    #             convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your
    #             domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS
    #             configuration for your domain. It usually takes around 72 hours to complete the domain
    #             verification process.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEmailIdentityInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email address or domain that you want to verify.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the email identity.</p>
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
    #     ]
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
    #
    def create_email_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEmailIdentityInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::LimitExceededException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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

    # <p>Delete an existing configuration set.</p>
    #         <p>In Amazon Pinpoint, <i>configuration sets</i> are groups of rules that you can
    #             apply to the emails you send. You apply a configuration set to an email by including a
    #             reference to the configuration set in the headers of the email. When you apply a
    #             configuration set to an email, all of the rules in that configuration set are applied to
    #             the email.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to delete.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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
    #         <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               delete.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination that you want to delete.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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

    # <p>Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity
    #             can be either an email address or a domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailIdentityInput}.
    #
    # @option params [String] :email_identity
    #   <p>The identity (that is, the email address or domain) that you want to delete from your
    #               Amazon Pinpoint account.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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

    # <p>Obtain information about the email-sending status and capabilities of your Amazon Pinpoint
    #             account in the current AWS Region.</p>
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
    #   resp.data.send_quota #=> Types::SendQuota
    #   resp.data.send_quota.max24_hour_send #=> Float
    #   resp.data.send_quota.max_send_rate #=> Float
    #   resp.data.send_quota.sent_last24_hours #=> Float
    #   resp.data.sending_enabled #=> Boolean
    #   resp.data.dedicated_ip_auto_warmup_enabled #=> Boolean
    #   resp.data.enforcement_status #=> String
    #   resp.data.production_access_enabled #=> Boolean
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
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
    #               only specify the dedicated IP addresses that you use to send email using Amazon Pinpoint or
    #               Amazon SES.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #         <p>In Amazon Pinpoint, <i>configuration sets</i> are groups of rules that you can
    #             apply to the emails you send. You apply a configuration set to an email by including a
    #             reference to the configuration set in the headers of the email. When you apply a
    #             configuration set to an email, all of the rules in that configuration set are applied to
    #             the email.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to obtain more information
    #               about.</p>
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
    #
    def get_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigurationSetInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #         <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
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
    #   resp.data.event_destinations[0].matching_event_types[0] #=> String, one of ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"]
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Get information about a dedicated IP address, including the name of the dedicated IP
    #             pool that it's associated with, as well information about the automatic warm-up process
    #             for the address.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDedicatedIpInput}.
    #
    # @option params [String] :ip
    #   <p>The IP address that you want to obtain more information about. The value you specify
    #               has to be a dedicated IP address that's assocaited with your Amazon Pinpoint account.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>List the dedicated IP addresses that are associated with your Amazon Pinpoint
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account.
    #             When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and
    #             other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the
    #             ability to perform predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon Pinpoint. For more information about the
    #             features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::LimitExceededException, Errors::BadRequestException]),
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainDeliverabilityCampaignInput}.
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this
    #               identifier to a campaign. This value is not the same as the campaign identifier that
    #               Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the
    #               Amazon Pinpoint console.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Provides information about a specific identity associated with your Amazon Pinpoint account,
    #             including the identity's verification status, its DKIM authentication status, and its
    #             custom Mail-From settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEmailIdentityInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity that you want to retrieve details for.</p>
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
    #   resp.data.mail_from_attributes #=> Types::MailFromAttributes
    #   resp.data.mail_from_attributes.mail_from_domain #=> String
    #   resp.data.mail_from_attributes.mail_from_domain_status #=> String, one of ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"]
    #   resp.data.mail_from_attributes.behavior_on_mx_failure #=> String, one of ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_email_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEmailIdentityInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>List all of the configuration sets associated with your Amazon Pinpoint account in the current
    #             region.</p>
    #         <p>In Amazon Pinpoint, <i>configuration sets</i> are groups of rules that you can
    #             apply to the emails you send. You apply a configuration set to an email by including a
    #             reference to the configuration set in the headers of the email. When you apply a
    #             configuration set to an email, all of the rules in that configuration set are applied to
    #             the email.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
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

    # <p>List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current
    #             AWS Region.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #             enabled the Deliverability dashboard (<code>PutDeliverabilityDashboardOption</code> operation)
    #             for the domain.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Returns a list of all of the email identities that are associated with your Amazon Pinpoint
    #             account. An identity can be either an email address or a domain. This operation returns
    #             identities that are verified as well as those that aren't.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
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

    # <p>Retrieve a list of the tags (keys and values) that are associated with a specified
    #             resource. A <i>tag</i> is a label that you optionally define and associate
    #             with a resource in Amazon Pinpoint. Each tag consists of a required <i>tag
    #                 key</i> and an optional associated <i>tag value</i>. A tag key
    #             is a general label that acts as a category for more specific tag values. A tag value
    #             acts as a descriptor within a tag key.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #               associated with your Amazon Pinpoint account in the current AWS Region. Set to <code>true</code>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
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

    # <p>Enable or disable the ability of your account to send email.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountSendingAttributesInput}.
    #
    # @option params [Boolean] :sending_enabled
    #   <p>Enables or disables your account's ability to send email. Set to <code>true</code> to
    #               enable email sending, or set to <code>false</code> to disable email sending.</p>
    #           <note>
    #               <p>If AWS paused your account's ability to send email, you can't use this operation
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
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

    # <p>Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools
    #             to create groups of dedicated IP addresses for sending specific types of email.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetDeliveryOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to associate with a dedicated IP
    #               pool.</p>
    #
    # @option params [String] :tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #
    # @option params [String] :sending_pool_name
    #   <p>The name of the dedicated IP pool that you want to associate with the configuration
    #               set.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #             particular configuration set in a specific AWS Region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetReputationOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to enable or disable reputation metric
    #               tracking for.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #             in a specific AWS Region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetSendingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to enable or disable email sending
    #               for.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Specify a custom domain to use for open and click tracking elements in email that you
    #             send using Amazon Pinpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetTrackingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to add a custom tracking domain
    #               to.</p>
    #
    # @option params [String] :custom_redirect_domain
    #   <p>The domain that you want to use to track open and click events.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #                 associated with your Amazon Pinpoint account.
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
    #               has to be a dedicated IP address that's associated with your Amazon Pinpoint account.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the
    #             Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for
    #             the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform
    #             predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon Pinpoint. For more information about the
    #             features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDeliverabilityDashboardOptionInput}.
    #
    # @option params [Boolean] :dashboard_enabled
    #   <p>Specifies whether to enable the Deliverability dashboard for your Amazon Pinpoint account. To enable the
    #               dashboard, set this value to <code>true</code>.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::AlreadyExistsException, Errors::LimitExceededException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Used to enable or disable DKIM authentication for an email identity.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityDkimAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity that you want to change the DKIM settings for.</p>
    #
    # @option params [Boolean] :signing_enabled
    #   <p>Sets the DKIM signing configuration for the identity.</p>
    #           <p>When you set this value <code>true</code>, then the messages that Amazon Pinpoint sends from the
    #               identity are DKIM-signed. When you set this value to <code>false</code>, then the
    #               messages that Amazon Pinpoint sends from the identity aren't DKIM-signed.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Used to enable or disable feedback forwarding for an identity. This setting determines
    #             what happens when an identity is used to send an email that results in a bounce or
    #             complaint event.</p>
    #         <p>When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce
    #             or complaint events occur. Amazon Pinpoint sends this notification to the address that you
    #             specified in the Return-Path header of the original email.</p>
    #         <p>When you disable feedback forwarding, Amazon Pinpoint sends notifications through other
    #             mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of
    #             tracking bounces and complaints. If you haven't set up another mechanism for receiving
    #             bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events
    #             occur (even if this setting is disabled).</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailIdentityFeedbackAttributesInput}.
    #
    # @option params [String] :email_identity
    #   <p>The email identity that you want to configure bounce and complaint feedback forwarding
    #               for.</p>
    #
    # @option params [Boolean] :email_forwarding_enabled
    #   <p>Sets the feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, Amazon Pinpoint sends you email notifications when bounce or
    #               complaint events occur. Amazon Pinpoint sends this notification to the address that you specified
    #               in the Return-Path header of the original email.</p>
    #           <p>When you set this value to <code>false</code>, Amazon Pinpoint sends notifications through other
    #               mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're
    #               required to have a method of tracking bounces and complaints. If you haven't set up
    #               another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email
    #               notification when these events occur (even if this setting is disabled).</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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
    #   <p>The verified email identity that you want to set up the custom MAIL FROM domain
    #               for.</p>
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
    #   <p>The action that you want Amazon Pinpoint to take if it can't read the required MX record when
    #               you send an email. When you set this value to <code>UseDefaultValue</code>, Amazon Pinpoint uses
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, Amazon Pinpoint returns a <code>MailFromDomainNotVerified</code>
    #               error, and doesn't attempt to deliver the email.</p>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Sends an email message. You can use the Amazon Pinpoint Email API to send two types of
    #             messages:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Simple</b> – A standard email message. When
    #                     you create this type of message, you specify the sender, the recipient, and the
    #                     message body, and Amazon Pinpoint assembles the message for you.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Raw</b> –  A raw, MIME-formatted email
    #                     message. When you send this type of email, you have to specify all of the
    #                     message headers, as well as the message body. You can use this message type to
    #                     send messages that contain attachments. The message that you specify has to be a
    #                     valid MIME message.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::SendEmailInput}.
    #
    # @option params [String] :from_email_address
    #   <p>The email address that you want to use as the "From" address for the email. The
    #               address that you specify has to be verified.
    #               </p>
    #
    # @option params [Destination] :destination
    #   <p>An object that contains the recipients of the email message.</p>
    #
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    #
    # @option params [String] :feedback_forwarding_email_address
    #   <p>The address that Amazon Pinpoint should send bounce and complaint notifications to.</p>
    #
    # @option params [EmailContent] :content
    #   <p>An object that contains the body of the message. You can send either a Simple message
    #               or a Raw message.</p>
    #
    # @option params [Array<MessageTag>] :email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events. </p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to use when sending the email.</p>
    #
    # @return [Types::SendEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email(
    #     from_email_address: 'FromEmailAddress',
    #     destination: {
    #       to_addresses: [
    #         'member'
    #       ],
    #     }, # required
    #     feedback_forwarding_email_address: 'FeedbackForwardingEmailAddress',
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
    #     configuration_set_name: 'ConfigurationSetName'
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SendingPausedException, Errors::TooManyRequestsException, Errors::LimitExceededException, Errors::MessageRejected, Errors::NotFoundException, Errors::AccountSuspendedException, Errors::BadRequestException, Errors::MailFromDomainNotVerifiedException]),
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
    #             resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways,
    #             such as by purpose, owner, environment, or other criteria. A resource can have as many
    #             as 50 tags.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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
    #                   <code>/v1/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::BadRequestException]),
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
    #         <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               modify.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination that you want to modify.</p>
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
    #         'SEND' # accepts ["SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"]
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
