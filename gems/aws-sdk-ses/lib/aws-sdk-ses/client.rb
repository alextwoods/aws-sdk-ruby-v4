# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SES
  # An API client for SimpleEmailService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Simple Email Service</fullname>
  #         <p> This document contains reference information for the <a href="https://aws.amazon.com/ses/">Amazon Simple Email Service</a> (Amazon SES) API, version
  #             2010-12-01. This document is best used in conjunction with the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer
  #                 Guide</a>. </p>
  #         <note>
  #             <p> For a list of Amazon SES endpoints to use in service requests, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html">Regions and
  #                     Amazon SES</a> in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer
  #                 Guide</a>.</p>
  #         </note>
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
    def initialize(config = AWS::SDK::SES::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a receipt rule set by cloning an existing one. All receipt rules and
    #             configurations are copied to the new receipt rule set and are completely independent of
    #             the source rule set.</p>
    #         <p>For information about setting up rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CloneReceiptRuleSetInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the rule set to create. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :original_rule_set_name
    #   <p>The name of the rule set to clone.</p>
    #
    # @return [Types::CloneReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clone_receipt_rule_set(
    #     rule_set_name: 'RuleSetName', # required
    #     original_rule_set_name: 'OriginalRuleSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CloneReceiptRuleSetOutput
    #
    def clone_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CloneReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CloneReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CloneReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::RuleSetDoesNotExistException, Errors::LimitExceededException]),
        data_parser: Parsers::CloneReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CloneReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::CloneReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :clone_receipt_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a configuration set.</p>
    #         <p>Configuration sets enable you to publish email sending events. For information about
    #             using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetInput}.
    #
    # @option params [ConfigurationSet] :configuration_set
    #   <p>A data structure that contains the name of the configuration set.</p>
    #
    # @return [Types::CreateConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set(
    #     configuration_set: {
    #       name: 'Name' # required
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidConfigurationSetException, Errors::ConfigurationSetAlreadyExistsException, Errors::LimitExceededException]),
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

    # <p>Creates a configuration set event destination.</p>
    #         <note>
    #             <p>When you create or update an event destination, you must provide one, and only
    #                 one, destination. The destination can be CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).</p>
    #         </note>
    #         <p>An event destination is the AWS service to which Amazon SES publishes the email sending
    #             events associated with a configuration set. For information about using configuration
    #             sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that the event destination should be associated
    #               with.</p>
    #
    # @option params [EventDestination] :event_destination
    #   <p>An object that describes the AWS service that email sending event information will
    #               be published to.</p>
    #
    # @return [Types::CreateConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination: {
    #       name: 'Name', # required
    #       enabled: false,
    #       matching_event_types: [
    #         'send' # accepts ["send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"]
    #       ], # required
    #       kinesis_firehose_destination: {
    #         iam_role_arn: 'IAMRoleARN', # required
    #         delivery_stream_arn: 'DeliveryStreamARN' # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [
    #           {
    #             dimension_name: 'DimensionName', # required
    #             dimension_value_source: 'messageTag', # required - accepts ["messageTag", "emailHeader", "linkTag"]
    #             default_dimension_value: 'DefaultDimensionValue' # required
    #           }
    #         ] # required
    #       },
    #       sns_destination: {
    #         topic_arn: 'TopicARN' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFirehoseDestinationException, Errors::InvalidCloudWatchDestinationException, Errors::EventDestinationAlreadyExistsException, Errors::InvalidSNSDestinationException, Errors::ConfigurationSetDoesNotExistException, Errors::LimitExceededException]),
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

    # <p>Creates an association between a configuration set and a custom domain for open and
    #             click event tracking. </p>
    #         <p>By default, images and links used for tracking open and click events are hosted on
    #             domains operated by Amazon SES. You can configure a subdomain of your own to handle these
    #             events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetTrackingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that the tracking options should be associated
    #               with.</p>
    #
    # @option params [TrackingOptions] :tracking_options
    #   <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #               domain captures open and click events generated by Amazon SES emails.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring
    #                   Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    # @return [Types::CreateConfigurationSetTrackingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_tracking_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     tracking_options: {
    #       custom_redirect_domain: 'CustomRedirectDomain'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetTrackingOptionsOutput
    #
    def create_configuration_set_tracking_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationSetTrackingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationSetTrackingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationSetTrackingOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTrackingOptionsException, Errors::TrackingOptionsAlreadyExistsException, Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::CreateConfigurationSetTrackingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationSetTrackingOptions,
        stubs: @stubs,
        params_class: Params::CreateConfigurationSetTrackingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_set_tracking_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom verification email template.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
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
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CustomVerificationEmailInvalidContentException, Errors::FromEmailAddressNotVerifiedException, Errors::CustomVerificationEmailTemplateAlreadyExistsException, Errors::LimitExceededException]),
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

    # <p>Creates a new IP address filter.</p>
    #         <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReceiptFilterInput}.
    #
    # @option params [ReceiptFilter] :filter
    #   <p>A data structure that describes the IP address filter to create, which consists of a
    #               name, an IP address range, and whether to allow or block mail from it.</p>
    #
    # @return [Types::CreateReceiptFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_receipt_filter(
    #     filter: {
    #       name: 'Name', # required
    #       ip_filter: {
    #         policy: 'Block', # required - accepts ["Block", "Allow"]
    #         cidr: 'Cidr' # required
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReceiptFilterOutput
    #
    def create_receipt_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReceiptFilterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReceiptFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReceiptFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateReceiptFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReceiptFilter,
        stubs: @stubs,
        params_class: Params::CreateReceiptFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_receipt_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a receipt rule.</p>
    #         <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReceiptRuleInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the rule set that the receipt rule will be added to.</p>
    #
    # @option params [String] :after
    #   <p>The name of an existing rule after which the new rule will be placed. If this
    #               parameter is null, the new rule will be inserted at the beginning of the rule
    #               list.</p>
    #
    # @option params [ReceiptRule] :rule
    #   <p>A data structure that contains the specified rule's name, actions, recipients,
    #               domains, enabled status, scan status, and TLS policy.</p>
    #
    # @return [Types::CreateReceiptRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_receipt_rule(
    #     rule_set_name: 'RuleSetName', # required
    #     after: 'After',
    #     rule: {
    #       name: 'Name', # required
    #       enabled: false,
    #       tls_policy: 'Require', # accepts ["Require", "Optional"]
    #       recipients: [
    #         'member'
    #       ],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: 'TopicArn',
    #             bucket_name: 'BucketName', # required
    #             object_key_prefix: 'ObjectKeyPrefix',
    #             kms_key_arn: 'KmsKeyArn'
    #           },
    #           bounce_action: {
    #             topic_arn: 'TopicArn',
    #             smtp_reply_code: 'SmtpReplyCode', # required
    #             status_code: 'StatusCode',
    #             message: 'Message', # required
    #             sender: 'Sender' # required
    #           },
    #           workmail_action: {
    #             topic_arn: 'TopicArn',
    #             organization_arn: 'OrganizationArn' # required
    #           },
    #           lambda_action: {
    #             topic_arn: 'TopicArn',
    #             function_arn: 'FunctionArn', # required
    #             invocation_type: 'Event' # accepts ["Event", "RequestResponse"]
    #           },
    #           stop_action: {
    #             scope: 'RuleSet', # required - accepts ["RuleSet"]
    #             topic_arn: 'TopicArn'
    #           },
    #           add_header_action: {
    #             header_name: 'HeaderName', # required
    #             header_value: 'HeaderValue' # required
    #           },
    #           sns_action: {
    #             topic_arn: 'TopicArn', # required
    #             encoding: 'UTF-8' # accepts ["UTF-8", "Base64"]
    #           }
    #         }
    #       ],
    #       scan_enabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReceiptRuleOutput
    #
    def create_receipt_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReceiptRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReceiptRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReceiptRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSnsTopicException, Errors::InvalidS3ConfigurationException, Errors::RuleDoesNotExistException, Errors::AlreadyExistsException, Errors::InvalidLambdaFunctionException, Errors::RuleSetDoesNotExistException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateReceiptRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReceiptRule,
        stubs: @stubs,
        params_class: Params::CreateReceiptRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_receipt_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty receipt rule set.</p>
    #         <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReceiptRuleSetInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the rule set to create. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_receipt_rule_set(
    #     rule_set_name: 'RuleSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReceiptRuleSetOutput
    #
    def create_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::CreateReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_receipt_rule_set
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
    #   See {Types::CreateTemplateInput}.
    #
    # @option params [Template] :template
    #   <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #               part.</p>
    #
    # @return [Types::CreateTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template(
    #     template: {
    #       template_name: 'TemplateName', # required
    #       subject_part: 'SubjectPart',
    #       text_part: 'TextPart',
    #       html_part: 'HtmlPart'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTemplateOutput
    #
    def create_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidTemplateException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTemplate,
        stubs: @stubs,
        params_class: Params::CreateTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a configuration set. Configuration sets enable you to publish email sending
    #             events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to delete.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConfigurationSetDoesNotExistException]),
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

    # <p>Deletes a configuration set event destination. Configuration set event destinations
    #             are associated with configuration sets, which enable you to publish email sending
    #             events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set from which to delete the event destination.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EventDestinationDoesNotExistException, Errors::ConfigurationSetDoesNotExistException]),
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

    # <p>Deletes an association between a configuration set and a custom domain for open and
    #             click event tracking.</p>
    #         <p>By default, images and links used for tracking open and click events are hosted on
    #             domains operated by Amazon SES. You can configure a subdomain of your own to handle these
    #             events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>
    #         <note>
    #             <p>Deleting this kind of association will result in emails sent using the specified
    #                 configuration set to capture open and click events using the standard,
    #                 Amazon SES-operated domains.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetTrackingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set from which you want to delete the tracking
    #               options.</p>
    #
    # @return [Types::DeleteConfigurationSetTrackingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_tracking_options(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationSetTrackingOptionsOutput
    #
    def delete_configuration_set_tracking_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationSetTrackingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationSetTrackingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationSetTrackingOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TrackingOptionsDoesNotExistException, Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::DeleteConfigurationSetTrackingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationSetTrackingOptions,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationSetTrackingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_set_tracking_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing custom verification email template. </p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Deletes the specified identity (an email address or a domain) from the list of
    #             verified identities.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIdentityInput}.
    #
    # @option params [String] :identity
    #   <p>The identity to be removed from the list of identities for the AWS Account.</p>
    #
    # @return [Types::DeleteIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity(
    #     identity: 'Identity' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIdentityOutput
    #
    def delete_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIdentityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIdentity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIdentity,
        stubs: @stubs,
        params_class: Params::DeleteIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_identity
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
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIdentityPolicyInput}.
    #
    # @option params [String] :identity
    #   <p>The identity that is associated with the policy that you want to delete. You can
    #               specify the identity by using its name or by using its Amazon Resource Name (ARN).
    #               Examples: <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy to be deleted.</p>
    #
    # @return [Types::DeleteIdentityPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_policy(
    #     identity: 'Identity', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIdentityPolicyOutput
    #
    def delete_identity_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIdentityPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIdentityPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIdentityPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteIdentityPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIdentityPolicy,
        stubs: @stubs,
        params_class: Params::DeleteIdentityPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_identity_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified IP address filter.</p>
    #         <p>For information about managing IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReceiptFilterInput}.
    #
    # @option params [String] :filter_name
    #   <p>The name of the IP address filter to delete.</p>
    #
    # @return [Types::DeleteReceiptFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_receipt_filter(
    #     filter_name: 'FilterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReceiptFilterOutput
    #
    def delete_receipt_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReceiptFilterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReceiptFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReceiptFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteReceiptFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReceiptFilter,
        stubs: @stubs,
        params_class: Params::DeleteReceiptFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_receipt_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified receipt rule.</p>
    #         <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReceiptRuleInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that contains the receipt rule to delete.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the receipt rule to delete.</p>
    #
    # @return [Types::DeleteReceiptRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_receipt_rule(
    #     rule_set_name: 'RuleSetName', # required
    #     rule_name: 'RuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReceiptRuleOutput
    #
    def delete_receipt_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReceiptRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReceiptRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReceiptRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RuleSetDoesNotExistException]),
        data_parser: Parsers::DeleteReceiptRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReceiptRule,
        stubs: @stubs,
        params_class: Params::DeleteReceiptRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_receipt_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified receipt rule set and all of the receipt rules it
    #             contains.</p>
    #         <note>
    #             <p>The currently active rule set cannot be deleted.</p>
    #         </note>
    #         <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReceiptRuleSetInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to delete.</p>
    #
    # @return [Types::DeleteReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_receipt_rule_set(
    #     rule_set_name: 'RuleSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReceiptRuleSetOutput
    #
    def delete_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CannotDeleteException]),
        data_parser: Parsers::DeleteReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::DeleteReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_receipt_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an email template.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template to be deleted.</p>
    #
    # @return [Types::DeleteTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template(
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTemplateOutput
    #
    def delete_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTemplate,
        stubs: @stubs,
        params_class: Params::DeleteTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use the <code>DeleteIdentity</code> operation to delete email addresses
    #             and domains.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVerifiedEmailAddressInput}.
    #
    # @option params [String] :email_address
    #   <p>An email address to be removed from the list of verified addresses.</p>
    #
    # @return [Types::DeleteVerifiedEmailAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_verified_email_address(
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVerifiedEmailAddressOutput
    #
    def delete_verified_email_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVerifiedEmailAddressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVerifiedEmailAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVerifiedEmailAddress
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteVerifiedEmailAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVerifiedEmailAddress,
        stubs: @stubs,
        params_class: Params::DeleteVerifiedEmailAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_verified_email_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the metadata and receipt rules for the receipt rule set that is currently
    #             active.</p>
    #         <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeActiveReceiptRuleSetInput}.
    #
    # @return [Types::DescribeActiveReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_active_receipt_rule_set()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeActiveReceiptRuleSetOutput
    #   resp.data.metadata #=> Types::ReceiptRuleSetMetadata
    #   resp.data.metadata.name #=> String
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.rules #=> Array<ReceiptRule>
    #   resp.data.rules[0] #=> Types::ReceiptRule
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].enabled #=> Boolean
    #   resp.data.rules[0].tls_policy #=> String, one of ["Require", "Optional"]
    #   resp.data.rules[0].recipients #=> Array<String>
    #   resp.data.rules[0].recipients[0] #=> String
    #   resp.data.rules[0].actions #=> Array<ReceiptAction>
    #   resp.data.rules[0].actions[0] #=> Types::ReceiptAction
    #   resp.data.rules[0].actions[0].s3_action #=> Types::S3Action
    #   resp.data.rules[0].actions[0].s3_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].s3_action.bucket_name #=> String
    #   resp.data.rules[0].actions[0].s3_action.object_key_prefix #=> String
    #   resp.data.rules[0].actions[0].s3_action.kms_key_arn #=> String
    #   resp.data.rules[0].actions[0].bounce_action #=> Types::BounceAction
    #   resp.data.rules[0].actions[0].bounce_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].bounce_action.smtp_reply_code #=> String
    #   resp.data.rules[0].actions[0].bounce_action.status_code #=> String
    #   resp.data.rules[0].actions[0].bounce_action.message #=> String
    #   resp.data.rules[0].actions[0].bounce_action.sender #=> String
    #   resp.data.rules[0].actions[0].workmail_action #=> Types::WorkmailAction
    #   resp.data.rules[0].actions[0].workmail_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].workmail_action.organization_arn #=> String
    #   resp.data.rules[0].actions[0].lambda_action #=> Types::LambdaAction
    #   resp.data.rules[0].actions[0].lambda_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].lambda_action.function_arn #=> String
    #   resp.data.rules[0].actions[0].lambda_action.invocation_type #=> String, one of ["Event", "RequestResponse"]
    #   resp.data.rules[0].actions[0].stop_action #=> Types::StopAction
    #   resp.data.rules[0].actions[0].stop_action.scope #=> String, one of ["RuleSet"]
    #   resp.data.rules[0].actions[0].stop_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].add_header_action #=> Types::AddHeaderAction
    #   resp.data.rules[0].actions[0].add_header_action.header_name #=> String
    #   resp.data.rules[0].actions[0].add_header_action.header_value #=> String
    #   resp.data.rules[0].actions[0].sns_action #=> Types::SNSAction
    #   resp.data.rules[0].actions[0].sns_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].sns_action.encoding #=> String, one of ["UTF-8", "Base64"]
    #   resp.data.rules[0].scan_enabled #=> Boolean
    #
    def describe_active_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeActiveReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeActiveReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeActiveReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeActiveReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeActiveReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::DescribeActiveReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_active_receipt_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of the specified configuration set. For information about using
    #             configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to describe.</p>
    #
    # @option params [Array<String>] :configuration_set_attribute_names
    #   <p>A list of configuration set attributes to return.</p>
    #
    # @return [Types::DescribeConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     configuration_set_attribute_names: [
    #       'eventDestinations' # accepts ["eventDestinations", "trackingOptions", "deliveryOptions", "reputationOptions"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationSetOutput
    #   resp.data.configuration_set #=> Types::ConfigurationSet
    #   resp.data.configuration_set.name #=> String
    #   resp.data.event_destinations #=> Array<EventDestination>
    #   resp.data.event_destinations[0] #=> Types::EventDestination
    #   resp.data.event_destinations[0].name #=> String
    #   resp.data.event_destinations[0].enabled #=> Boolean
    #   resp.data.event_destinations[0].matching_event_types #=> Array<String>
    #   resp.data.event_destinations[0].matching_event_types[0] #=> String, one of ["send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"]
    #   resp.data.event_destinations[0].kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destinations[0].cloud_watch_destination #=> Types::CloudWatchDestination
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations #=> Array<CloudWatchDimensionConfiguration>
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0] #=> Types::CloudWatchDimensionConfiguration
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_name #=> String
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_value_source #=> String, one of ["messageTag", "emailHeader", "linkTag"]
    #   resp.data.event_destinations[0].cloud_watch_destination.dimension_configurations[0].default_dimension_value #=> String
    #   resp.data.event_destinations[0].sns_destination #=> Types::SNSDestination
    #   resp.data.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.data.tracking_options #=> Types::TrackingOptions
    #   resp.data.tracking_options.custom_redirect_domain #=> String
    #   resp.data.delivery_options #=> Types::DeliveryOptions
    #   resp.data.delivery_options.tls_policy #=> String, one of ["Require", "Optional"]
    #   resp.data.reputation_options #=> Types::ReputationOptions
    #   resp.data.reputation_options.sending_enabled #=> Boolean
    #   resp.data.reputation_options.reputation_metrics_enabled #=> Boolean
    #   resp.data.reputation_options.last_fresh_start #=> Time
    #
    def describe_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::DescribeConfigurationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationSet,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of the specified receipt rule.</p>
    #         <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReceiptRuleInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that the receipt rule belongs to.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the receipt rule.</p>
    #
    # @return [Types::DescribeReceiptRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_receipt_rule(
    #     rule_set_name: 'RuleSetName', # required
    #     rule_name: 'RuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReceiptRuleOutput
    #   resp.data.rule #=> Types::ReceiptRule
    #   resp.data.rule.name #=> String
    #   resp.data.rule.enabled #=> Boolean
    #   resp.data.rule.tls_policy #=> String, one of ["Require", "Optional"]
    #   resp.data.rule.recipients #=> Array<String>
    #   resp.data.rule.recipients[0] #=> String
    #   resp.data.rule.actions #=> Array<ReceiptAction>
    #   resp.data.rule.actions[0] #=> Types::ReceiptAction
    #   resp.data.rule.actions[0].s3_action #=> Types::S3Action
    #   resp.data.rule.actions[0].s3_action.topic_arn #=> String
    #   resp.data.rule.actions[0].s3_action.bucket_name #=> String
    #   resp.data.rule.actions[0].s3_action.object_key_prefix #=> String
    #   resp.data.rule.actions[0].s3_action.kms_key_arn #=> String
    #   resp.data.rule.actions[0].bounce_action #=> Types::BounceAction
    #   resp.data.rule.actions[0].bounce_action.topic_arn #=> String
    #   resp.data.rule.actions[0].bounce_action.smtp_reply_code #=> String
    #   resp.data.rule.actions[0].bounce_action.status_code #=> String
    #   resp.data.rule.actions[0].bounce_action.message #=> String
    #   resp.data.rule.actions[0].bounce_action.sender #=> String
    #   resp.data.rule.actions[0].workmail_action #=> Types::WorkmailAction
    #   resp.data.rule.actions[0].workmail_action.topic_arn #=> String
    #   resp.data.rule.actions[0].workmail_action.organization_arn #=> String
    #   resp.data.rule.actions[0].lambda_action #=> Types::LambdaAction
    #   resp.data.rule.actions[0].lambda_action.topic_arn #=> String
    #   resp.data.rule.actions[0].lambda_action.function_arn #=> String
    #   resp.data.rule.actions[0].lambda_action.invocation_type #=> String, one of ["Event", "RequestResponse"]
    #   resp.data.rule.actions[0].stop_action #=> Types::StopAction
    #   resp.data.rule.actions[0].stop_action.scope #=> String, one of ["RuleSet"]
    #   resp.data.rule.actions[0].stop_action.topic_arn #=> String
    #   resp.data.rule.actions[0].add_header_action #=> Types::AddHeaderAction
    #   resp.data.rule.actions[0].add_header_action.header_name #=> String
    #   resp.data.rule.actions[0].add_header_action.header_value #=> String
    #   resp.data.rule.actions[0].sns_action #=> Types::SNSAction
    #   resp.data.rule.actions[0].sns_action.topic_arn #=> String
    #   resp.data.rule.actions[0].sns_action.encoding #=> String, one of ["UTF-8", "Base64"]
    #   resp.data.rule.scan_enabled #=> Boolean
    #
    def describe_receipt_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReceiptRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReceiptRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReceiptRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RuleDoesNotExistException, Errors::RuleSetDoesNotExistException]),
        data_parser: Parsers::DescribeReceiptRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReceiptRule,
        stubs: @stubs,
        params_class: Params::DescribeReceiptRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_receipt_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of the specified receipt rule set.</p>
    #         <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReceiptRuleSetInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to describe.</p>
    #
    # @return [Types::DescribeReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_receipt_rule_set(
    #     rule_set_name: 'RuleSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReceiptRuleSetOutput
    #   resp.data.metadata #=> Types::ReceiptRuleSetMetadata
    #   resp.data.metadata.name #=> String
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.rules #=> Array<ReceiptRule>
    #   resp.data.rules[0] #=> Types::ReceiptRule
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].enabled #=> Boolean
    #   resp.data.rules[0].tls_policy #=> String, one of ["Require", "Optional"]
    #   resp.data.rules[0].recipients #=> Array<String>
    #   resp.data.rules[0].recipients[0] #=> String
    #   resp.data.rules[0].actions #=> Array<ReceiptAction>
    #   resp.data.rules[0].actions[0] #=> Types::ReceiptAction
    #   resp.data.rules[0].actions[0].s3_action #=> Types::S3Action
    #   resp.data.rules[0].actions[0].s3_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].s3_action.bucket_name #=> String
    #   resp.data.rules[0].actions[0].s3_action.object_key_prefix #=> String
    #   resp.data.rules[0].actions[0].s3_action.kms_key_arn #=> String
    #   resp.data.rules[0].actions[0].bounce_action #=> Types::BounceAction
    #   resp.data.rules[0].actions[0].bounce_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].bounce_action.smtp_reply_code #=> String
    #   resp.data.rules[0].actions[0].bounce_action.status_code #=> String
    #   resp.data.rules[0].actions[0].bounce_action.message #=> String
    #   resp.data.rules[0].actions[0].bounce_action.sender #=> String
    #   resp.data.rules[0].actions[0].workmail_action #=> Types::WorkmailAction
    #   resp.data.rules[0].actions[0].workmail_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].workmail_action.organization_arn #=> String
    #   resp.data.rules[0].actions[0].lambda_action #=> Types::LambdaAction
    #   resp.data.rules[0].actions[0].lambda_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].lambda_action.function_arn #=> String
    #   resp.data.rules[0].actions[0].lambda_action.invocation_type #=> String, one of ["Event", "RequestResponse"]
    #   resp.data.rules[0].actions[0].stop_action #=> Types::StopAction
    #   resp.data.rules[0].actions[0].stop_action.scope #=> String, one of ["RuleSet"]
    #   resp.data.rules[0].actions[0].stop_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].add_header_action #=> Types::AddHeaderAction
    #   resp.data.rules[0].actions[0].add_header_action.header_name #=> String
    #   resp.data.rules[0].actions[0].add_header_action.header_value #=> String
    #   resp.data.rules[0].actions[0].sns_action #=> Types::SNSAction
    #   resp.data.rules[0].actions[0].sns_action.topic_arn #=> String
    #   resp.data.rules[0].actions[0].sns_action.encoding #=> String, one of ["UTF-8", "Base64"]
    #   resp.data.rules[0].scan_enabled #=> Boolean
    #
    def describe_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RuleSetDoesNotExistException]),
        data_parser: Parsers::DescribeReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::DescribeReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_receipt_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the email sending status of the Amazon SES account for the current region.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountSendingEnabledInput}.
    #
    # @return [Types::GetAccountSendingEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_sending_enabled()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountSendingEnabledOutput
    #   resp.data.enabled #=> Boolean
    #
    def get_account_sending_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountSendingEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountSendingEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountSendingEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccountSendingEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountSendingEnabled,
        stubs: @stubs,
        params_class: Params::GetAccountSendingEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_sending_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the custom email verification template for the template name you
    #             specify.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CustomVerificationEmailTemplateDoesNotExistException]),
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

    # <p>Returns the current status of Easy DKIM signing for an entity. For domain name
    #             identities, this operation also returns the DKIM tokens that are required for Easy DKIM
    #             signing, and whether Amazon SES has successfully verified that these tokens have been
    #             published.</p>
    #         <p>This operation takes a list of identities as input and returns the following
    #             information for each:</p>
    #         <ul>
    #             <li>
    #                 <p>Whether Easy DKIM signing is enabled or disabled.</p>
    #             </li>
    #             <li>
    #                 <p>A set of DKIM tokens that represent the identity. If the identity is an email
    #                     address, the tokens represent the domain of that address.</p>
    #             </li>
    #             <li>
    #                 <p>Whether Amazon SES has successfully verified the DKIM tokens published in the
    #                     domain's DNS. This information is only returned for domain name identities, not
    #                     for email addresses.</p>
    #             </li>
    #          </ul>
    #         <p>This operation is throttled at one request per second and can only get DKIM attributes
    #             for up to 100 identities at a time.</p>
    #         <p>For more information about creating DNS records using DKIM tokens, go to the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityDkimAttributesInput}.
    #
    # @option params [Array<String>] :identities
    #   <p>A list of one or more verified identities - email addresses, domains, or both.</p>
    #
    # @return [Types::GetIdentityDkimAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_dkim_attributes(
    #     identities: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityDkimAttributesOutput
    #   resp.data.dkim_attributes #=> Hash<String, IdentityDkimAttributes>
    #   resp.data.dkim_attributes['key'] #=> Types::IdentityDkimAttributes
    #   resp.data.dkim_attributes['key'].dkim_enabled #=> Boolean
    #   resp.data.dkim_attributes['key'].dkim_verification_status #=> String, one of ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"]
    #   resp.data.dkim_attributes['key'].dkim_tokens #=> Array<String>
    #   resp.data.dkim_attributes['key'].dkim_tokens[0] #=> String
    #
    def get_identity_dkim_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityDkimAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityDkimAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityDkimAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetIdentityDkimAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityDkimAttributes,
        stubs: @stubs,
        params_class: Params::GetIdentityDkimAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_dkim_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the custom MAIL FROM attributes for a list of identities (email addresses :
    #             domains).</p>
    #         <p>This operation is throttled at one request per second and can only get custom MAIL
    #             FROM attributes for up to 100 identities at a time.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityMailFromDomainAttributesInput}.
    #
    # @option params [Array<String>] :identities
    #   <p>A list of one or more identities.</p>
    #
    # @return [Types::GetIdentityMailFromDomainAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_mail_from_domain_attributes(
    #     identities: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityMailFromDomainAttributesOutput
    #   resp.data.mail_from_domain_attributes #=> Hash<String, IdentityMailFromDomainAttributes>
    #   resp.data.mail_from_domain_attributes['key'] #=> Types::IdentityMailFromDomainAttributes
    #   resp.data.mail_from_domain_attributes['key'].mail_from_domain #=> String
    #   resp.data.mail_from_domain_attributes['key'].mail_from_domain_status #=> String, one of ["Pending", "Success", "Failed", "TemporaryFailure"]
    #   resp.data.mail_from_domain_attributes['key'].behavior_on_mx_failure #=> String, one of ["UseDefaultValue", "RejectMessage"]
    #
    def get_identity_mail_from_domain_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityMailFromDomainAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityMailFromDomainAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityMailFromDomainAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetIdentityMailFromDomainAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityMailFromDomainAttributes,
        stubs: @stubs,
        params_class: Params::GetIdentityMailFromDomainAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_mail_from_domain_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a list of verified identities (email addresses and/or domains), returns a
    #             structure describing identity notification attributes.</p>
    #         <p>This operation is throttled at one request per second and can only get notification
    #             attributes for up to 100 identities at a time.</p>
    #         <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityNotificationAttributesInput}.
    #
    # @option params [Array<String>] :identities
    #   <p>A list of one or more identities. You can specify an identity by using its name or by
    #               using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>,
    #                   <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #
    # @return [Types::GetIdentityNotificationAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_notification_attributes(
    #     identities: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityNotificationAttributesOutput
    #   resp.data.notification_attributes #=> Hash<String, IdentityNotificationAttributes>
    #   resp.data.notification_attributes['key'] #=> Types::IdentityNotificationAttributes
    #   resp.data.notification_attributes['key'].bounce_topic #=> String
    #   resp.data.notification_attributes['key'].complaint_topic #=> String
    #   resp.data.notification_attributes['key'].delivery_topic #=> String
    #   resp.data.notification_attributes['key'].forwarding_enabled #=> Boolean
    #   resp.data.notification_attributes['key'].headers_in_bounce_notifications_enabled #=> Boolean
    #   resp.data.notification_attributes['key'].headers_in_complaint_notifications_enabled #=> Boolean
    #   resp.data.notification_attributes['key'].headers_in_delivery_notifications_enabled #=> Boolean
    #
    def get_identity_notification_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityNotificationAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityNotificationAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityNotificationAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetIdentityNotificationAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityNotificationAttributes,
        stubs: @stubs,
        params_class: Params::GetIdentityNotificationAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_notification_attributes
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
    #   See {Types::GetIdentityPoliciesInput}.
    #
    # @option params [String] :identity
    #   <p>The identity for which the policies will be retrieved. You can specify an identity by
    #               using its name or by using its Amazon Resource Name (ARN). Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    # @option params [Array<String>] :policy_names
    #   <p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20
    #               policies at a time. If you do not know the names of the policies that are attached to
    #               the identity, you can use <code>ListIdentityPolicies</code>.</p>
    #
    # @return [Types::GetIdentityPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_policies(
    #     identity: 'Identity', # required
    #     policy_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityPoliciesOutput
    #   resp.data.policies #=> Hash<String, String>
    #   resp.data.policies['key'] #=> String
    #
    def get_identity_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetIdentityPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityPolicies,
        stubs: @stubs,
        params_class: Params::GetIdentityPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a list of identities (email addresses and/or domains), returns the verification
    #             status and (for domain identities) the verification token for each identity.</p>
    #         <p>The verification status of an email address is "Pending" until the email address owner
    #             clicks the link within the verification email that Amazon SES sent to that address. If the
    #             email address owner clicks the link within 24 hours, the verification status of the
    #             email address changes to "Success". If the link is not clicked within 24 hours, the
    #             verification status changes to "Failed." In that case, if you still want to verify the
    #             email address, you must restart the verification process from the beginning.</p>
    #         <p>For domain identities, the domain's verification status is "Pending" as Amazon SES searches
    #             for the required TXT record in the DNS settings of the domain. When Amazon SES detects the
    #             record, the domain's verification status changes to "Success". If Amazon SES is unable to
    #             detect the record within 72 hours, the domain's verification status changes to "Failed."
    #             In that case, if you still want to verify the domain, you must restart the verification
    #             process from the beginning.</p>
    #         <p>This operation is throttled at one request per second and can only get verification
    #             attributes for up to 100 identities at a time.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityVerificationAttributesInput}.
    #
    # @option params [Array<String>] :identities
    #   <p>A list of identities.</p>
    #
    # @return [Types::GetIdentityVerificationAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_verification_attributes(
    #     identities: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityVerificationAttributesOutput
    #   resp.data.verification_attributes #=> Hash<String, IdentityVerificationAttributes>
    #   resp.data.verification_attributes['key'] #=> Types::IdentityVerificationAttributes
    #   resp.data.verification_attributes['key'].verification_status #=> String, one of ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"]
    #   resp.data.verification_attributes['key'].verification_token #=> String
    #
    def get_identity_verification_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityVerificationAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityVerificationAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityVerificationAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetIdentityVerificationAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityVerificationAttributes,
        stubs: @stubs,
        params_class: Params::GetIdentityVerificationAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_verification_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the sending limits for the Amazon SES account. </p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSendQuotaInput}.
    #
    # @return [Types::GetSendQuotaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_send_quota()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSendQuotaOutput
    #   resp.data.max24_hour_send #=> Float
    #   resp.data.max_send_rate #=> Float
    #   resp.data.sent_last24_hours #=> Float
    #
    def get_send_quota(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSendQuotaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSendQuotaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSendQuota
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetSendQuota
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSendQuota,
        stubs: @stubs,
        params_class: Params::GetSendQuotaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_send_quota
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides sending statistics for the current AWS Region. The result is a list of data
    #             points, representing the last two weeks of sending activity. Each data point in the list
    #             contains statistics for a 15-minute period of time.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSendStatisticsInput}.
    #
    # @return [Types::GetSendStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_send_statistics()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSendStatisticsOutput
    #   resp.data.send_data_points #=> Array<SendDataPoint>
    #   resp.data.send_data_points[0] #=> Types::SendDataPoint
    #   resp.data.send_data_points[0].timestamp #=> Time
    #   resp.data.send_data_points[0].delivery_attempts #=> Integer
    #   resp.data.send_data_points[0].bounces #=> Integer
    #   resp.data.send_data_points[0].complaints #=> Integer
    #   resp.data.send_data_points[0].rejects #=> Integer
    #
    def get_send_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSendStatisticsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSendStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSendStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetSendStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSendStatistics,
        stubs: @stubs,
        params_class: Params::GetSendStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_send_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the template object (which includes the Subject line, HTML part and text
    #             part) for the template you specify.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template you want to retrieve.</p>
    #
    # @return [Types::GetTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template(
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemplateOutput
    #   resp.data.template #=> Types::Template
    #   resp.data.template.template_name #=> String
    #   resp.data.template.subject_part #=> String
    #   resp.data.template.text_part #=> String
    #   resp.data.template.html_part #=> String
    #
    def get_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TemplateDoesNotExistException]),
        data_parser: Parsers::GetTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemplate,
        stubs: @stubs,
        params_class: Params::GetTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of the configuration sets associated with your Amazon SES account in the
    #             current AWS Region. For information about using configuration sets, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer
    #                 Guide.</i>
    #          </p>
    #         <p>You can execute this operation no more than once per second. This operation will
    #             return up to 1,000 configuration sets each time it is run. If your Amazon SES account has
    #             more than 1,000 configuration sets, this operation will also return a NextToken element.
    #             You can then execute the <code>ListConfigurationSets</code> operation again, passing the
    #                 <code>NextToken</code> parameter and the value of the NextToken element to retrieve
    #             additional results.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationSetsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position of the configuration set in the configuration set list.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The number of configuration sets to return.</p>
    #
    # @return [Types::ListConfigurationSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_sets(
    #     next_token: 'NextToken',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationSetsOutput
    #   resp.data.configuration_sets #=> Array<ConfigurationSet>
    #   resp.data.configuration_sets[0] #=> Types::ConfigurationSet
    #   resp.data.configuration_sets[0].name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Lists the existing custom verification email templates for your account in the current
    #             AWS Region.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomVerificationEmailTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>An array the contains the name and creation time stamp for each template in your Amazon SES
    #               account.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom verification email templates to return. This value must
    #               be at least 1 and less than or equal to 50. If you do not specify a value, or if you
    #               specify a value less than 1 or greater than 50, the operation will return up to 50
    #               results.</p>
    #
    # @return [Types::ListCustomVerificationEmailTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_verification_email_templates(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomVerificationEmailTemplatesOutput
    #   resp.data.custom_verification_email_templates #=> Array<CustomVerificationEmailTemplate>
    #   resp.data.custom_verification_email_templates[0] #=> Types::CustomVerificationEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Returns a list containing all of the identities (email addresses and domains) for your
    #             AWS account in the current AWS Region, regardless of verification status.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentitiesInput}.
    #
    # @option params [String] :identity_type
    #   <p>The type of the identities to list. Possible values are "EmailAddress" and "Domain".
    #               If this parameter is omitted, then all identities will be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use for pagination.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of identities per page. Possible values are 1-1000
    #               inclusive.</p>
    #
    # @return [Types::ListIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identities(
    #     identity_type: 'EmailAddress', # accepts ["EmailAddress", "Domain"]
    #     next_token: 'NextToken',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentitiesOutput
    #   resp.data.identities #=> Array<String>
    #   resp.data.identities[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_identities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentitiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentities
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListIdentities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentities,
        stubs: @stubs,
        params_class: Params::ListIdentitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of sending authorization policies that are attached to the given
    #             identity (an email address or a domain). This API returns only a list. If you want the
    #             actual policy content, you can use <code>GetIdentityPolicies</code>.</p>
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
    #   See {Types::ListIdentityPoliciesInput}.
    #
    # @option params [String] :identity
    #   <p>The identity that is associated with the policy for which the policies will be listed.
    #               You can specify an identity by using its name or by using its Amazon Resource Name
    #               (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    # @return [Types::ListIdentityPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_policies(
    #     identity: 'Identity' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityPoliciesOutput
    #   resp.data.policy_names #=> Array<String>
    #   resp.data.policy_names[0] #=> String
    #
    def list_identity_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListIdentityPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityPolicies,
        stubs: @stubs,
        params_class: Params::ListIdentityPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IP address filters associated with your AWS account in the current AWS
    #             Region.</p>
    #         <p>For information about managing IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReceiptFiltersInput}.
    #
    # @return [Types::ListReceiptFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_receipt_filters()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReceiptFiltersOutput
    #   resp.data.filters #=> Array<ReceiptFilter>
    #   resp.data.filters[0] #=> Types::ReceiptFilter
    #   resp.data.filters[0].name #=> String
    #   resp.data.filters[0].ip_filter #=> Types::ReceiptIpFilter
    #   resp.data.filters[0].ip_filter.policy #=> String, one of ["Block", "Allow"]
    #   resp.data.filters[0].ip_filter.cidr #=> String
    #
    def list_receipt_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReceiptFiltersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReceiptFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReceiptFilters
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListReceiptFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReceiptFilters,
        stubs: @stubs,
        params_class: Params::ListReceiptFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_receipt_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the receipt rule sets that exist under your AWS account in the current AWS
    #             Region. If there are additional receipt rule sets to be retrieved, you will receive a
    #                 <code>NextToken</code> that you can provide to the next call to
    #                 <code>ListReceiptRuleSets</code> to retrieve the additional entries.</p>
    #         <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReceiptRuleSetsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate
    #               the position in the receipt rule set list.</p>
    #
    # @return [Types::ListReceiptRuleSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_receipt_rule_sets(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReceiptRuleSetsOutput
    #   resp.data.rule_sets #=> Array<ReceiptRuleSetMetadata>
    #   resp.data.rule_sets[0] #=> Types::ReceiptRuleSetMetadata
    #   resp.data.rule_sets[0].name #=> String
    #   resp.data.rule_sets[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_receipt_rule_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReceiptRuleSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReceiptRuleSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReceiptRuleSets
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListReceiptRuleSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReceiptRuleSets,
        stubs: @stubs,
        params_class: Params::ListReceiptRuleSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_receipt_rule_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the email templates present in your Amazon SES account in the current AWS
    #             Region.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from a previous call to <code>ListTemplates</code> to indicate the
    #               position in the list of email templates.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of templates to return. This value must be at least 1 and less than
    #               or equal to 10. If you do not specify a value, or if you specify a value less than 1 or
    #               greater than 10, the operation will return up to 10 results.</p>
    #
    # @return [Types::ListTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates(
    #     next_token: 'NextToken',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTemplatesOutput
    #   resp.data.templates_metadata #=> Array<TemplateMetadata>
    #   resp.data.templates_metadata[0] #=> Types::TemplateMetadata
    #   resp.data.templates_metadata[0].name #=> String
    #   resp.data.templates_metadata[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTemplates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTemplates,
        stubs: @stubs,
        params_class: Params::ListTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use the <code>ListIdentities</code> operation to list the email addresses
    #             and domains associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVerifiedEmailAddressesInput}.
    #
    # @return [Types::ListVerifiedEmailAddressesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_verified_email_addresses()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVerifiedEmailAddressesOutput
    #   resp.data.verified_email_addresses #=> Array<String>
    #   resp.data.verified_email_addresses[0] #=> String
    #
    def list_verified_email_addresses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVerifiedEmailAddressesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVerifiedEmailAddressesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVerifiedEmailAddresses
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListVerifiedEmailAddresses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVerifiedEmailAddresses,
        stubs: @stubs,
        params_class: Params::ListVerifiedEmailAddressesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_verified_email_addresses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates the delivery options for a configuration set.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationSetDeliveryOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to specify the delivery options
    #               for.</p>
    #
    # @option params [DeliveryOptions] :delivery_options
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS).</p>
    #
    # @return [Types::PutConfigurationSetDeliveryOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_delivery_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     delivery_options: {
    #       tls_policy: 'Require' # accepts ["Require", "Optional"]
    #     }
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConfigurationSetDoesNotExistException, Errors::InvalidDeliveryOptionsException]),
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

    # <p>Adds or updates a sending authorization policy for the specified identity (an email
    #             address or a domain).</p>
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
    #   See {Types::PutIdentityPolicyInput}.
    #
    # @option params [String] :identity
    #   <p>The identity that the policy will apply to. You can specify an identity by using its
    #               name or by using its Amazon Resource Name (ARN). Examples:
    #               <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    # @option params [String] :policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #           <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>. </p>
    #
    # @return [Types::PutIdentityPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_identity_policy(
    #     identity: 'Identity', # required
    #     policy_name: 'PolicyName', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutIdentityPolicyOutput
    #
    def put_identity_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutIdentityPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutIdentityPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutIdentityPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPolicyException]),
        data_parser: Parsers::PutIdentityPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutIdentityPolicy,
        stubs: @stubs,
        params_class: Params::PutIdentityPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_identity_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reorders the receipt rules within a receipt rule set.</p>
    #         <note>
    #             <p>All of the rules in the rule set must be represented in this request. That is,
    #                 this API will return an error if the reorder request doesn't explicitly position all
    #                 of the rules.</p>
    #         </note>
    #         <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ReorderReceiptRuleSetInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to reorder.</p>
    #
    # @option params [Array<String>] :rule_names
    #   <p>A list of the specified receipt rule set's receipt rules in the order that you want to
    #               put them.</p>
    #
    # @return [Types::ReorderReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reorder_receipt_rule_set(
    #     rule_set_name: 'RuleSetName', # required
    #     rule_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReorderReceiptRuleSetOutput
    #
    def reorder_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReorderReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReorderReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReorderReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RuleDoesNotExistException, Errors::RuleSetDoesNotExistException]),
        data_parser: Parsers::ReorderReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReorderReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::ReorderReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reorder_receipt_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates and sends a bounce message to the sender of an email you received through
    #             Amazon SES. You can only use this API on an email up to 24 hours after you receive it.</p>
    #         <note>
    #             <p>You cannot use this API to send generic bounces for mail that was not received by
    #                 Amazon SES.</p>
    #         </note>
    #         <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::SendBounceInput}.
    #
    # @option params [String] :original_message_id
    #   <p>The message ID of the message to be bounced.</p>
    #
    # @option params [String] :bounce_sender
    #   <p>The address to use in the "From" header of the bounce message. This must be an
    #               identity that you have verified with Amazon SES.</p>
    #
    # @option params [String] :explanation
    #   <p>Human-readable text for the bounce message to explain the failure. If not specified,
    #               the text will be auto-generated based on the bounced recipient information.</p>
    #
    # @option params [MessageDsn] :message_dsn
    #   <p>Message-related DSN fields. If not specified, Amazon SES will choose the values.</p>
    #
    # @option params [Array<BouncedRecipientInfo>] :bounced_recipient_info_list
    #   <p>A list of recipients of the bounced message, including the information required to
    #               create the Delivery Status Notifications (DSNs) for the recipients. You must specify at
    #               least one <code>BouncedRecipientInfo</code> in the list.</p>
    #
    # @option params [String] :bounce_sender_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               address in the "From" header of the bounce. For more information about sending
    #               authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @return [Types::SendBounceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bounce(
    #     original_message_id: 'OriginalMessageId', # required
    #     bounce_sender: 'BounceSender', # required
    #     explanation: 'Explanation',
    #     message_dsn: {
    #       reporting_mta: 'ReportingMta', # required
    #       arrival_date: Time.now,
    #       extension_fields: [
    #         {
    #           name: 'Name', # required
    #           value: 'Value' # required
    #         }
    #       ]
    #     },
    #     bounced_recipient_info_list: [
    #       {
    #         recipient: 'Recipient', # required
    #         recipient_arn: 'RecipientArn',
    #         bounce_type: 'DoesNotExist', # accepts ["DoesNotExist", "MessageTooLarge", "ExceededQuota", "ContentRejected", "Undefined", "TemporaryFailure"]
    #         recipient_dsn_fields: {
    #           final_recipient: 'FinalRecipient',
    #           action: 'failed', # required - accepts ["failed", "delayed", "delivered", "relayed", "expanded"]
    #           remote_mta: 'RemoteMta',
    #           status: 'Status', # required
    #           diagnostic_code: 'DiagnosticCode',
    #           last_attempt_date: Time.now,
    #         }
    #       }
    #     ], # required
    #     bounce_sender_arn: 'BounceSenderArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendBounceOutput
    #   resp.data.message_id #=> String
    #
    def send_bounce(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendBounceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendBounceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendBounce
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected]),
        data_parser: Parsers::SendBounce
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendBounce,
        stubs: @stubs,
        params_class: Params::SendBounceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_bounce
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Composes an email message to multiple destinations. The message body is created using
    #             an email template.</p>
    #         <p>In order to send email using the <code>SendBulkTemplatedEmail</code> operation, your
    #             call to the API must meet the following requirements:</p>
    #         <ul>
    #             <li>
    #                 <p>The call must refer to an existing email template. You can create email
    #                     templates using the <a>CreateTemplate</a> operation.</p>
    #             </li>
    #             <li>
    #                 <p>The message must be sent from a verified email address or domain.</p>
    #             </li>
    #             <li>
    #                 <p>If your account is still in the Amazon SES sandbox, you may only send to verified
    #                     addresses or domains, or to email addresses associated with the Amazon SES Mailbox
    #                     Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
    #                         Email Addresses and Domains</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>The maximum message size is 10 MB.</p>
    #             </li>
    #             <li>
    #                 <p>Each <code>Destination</code> parameter must include at least one recipient
    #                     email address. The recipient address can be a To: address, a CC: address, or a
    #                     BCC: address. If a recipient email address is invalid (that is, it is not in the
    #                     format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the
    #                     entire message will be rejected, even if the message contains other recipients
    #                     that are valid.</p>
    #             </li>
    #             <li>
    #                 <p>The message may not include more than 50 recipients, across the To:, CC: and
    #                     BCC: fields. If you need to send an email message to a larger audience, you can
    #                     divide your recipient list into groups of 50 or fewer, and then call the
    #                         <code>SendBulkTemplatedEmail</code> operation several times to send the
    #                     message to each group.</p>
    #             </li>
    #             <li>
    #                 <p>The number of destinations you can contact in a single call to the API may be
    #                     limited by your account's maximum sending rate.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::SendBulkTemplatedEmailInput}.
    #
    # @option params [String] :source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address will receive the reply.</p>
    #
    # @option params [String] :return_path
    #   <p>The email address that bounces and complaints will be forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message will be returned from the recipient's ISP; this message will then be
    #               forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    #
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendBulkTemplatedEmail</code>.</p>
    #
    # @option params [Array<MessageTag>] :default_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send to
    #               a destination using <code>SendBulkTemplatedEmail</code>.</p>
    #
    # @option params [String] :template
    #   <p>The template to use when sending this email.</p>
    #
    # @option params [String] :template_arn
    #   <p>The ARN of the template to use when sending this email.</p>
    #
    # @option params [String] :default_template_data
    #   <p>A list of replacement values to apply to the template when replacement data is not
    #               specified in a Destination object. These values act as a default or fallback option when
    #               no other data is available.</p>
    #           <p>The template data is a JSON object, typically consisting of key-value pairs in which
    #               the keys correspond to replacement tags in the email template.</p>
    #
    # @option params [Array<BulkEmailDestination>] :destinations
    #   <p>One or more <code>Destination</code> objects. All of the recipients in a
    #                   <code>Destination</code> will receive the same version of the email. You can specify
    #               up to 50 <code>Destination</code> objects within a <code>Destinations</code>
    #               array.</p>
    #
    # @return [Types::SendBulkTemplatedEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bulk_templated_email(
    #     source: 'Source', # required
    #     source_arn: 'SourceArn',
    #     reply_to_addresses: [
    #       'member'
    #     ],
    #     return_path: 'ReturnPath',
    #     return_path_arn: 'ReturnPathArn',
    #     configuration_set_name: 'ConfigurationSetName',
    #     default_tags: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     template: 'Template', # required
    #     template_arn: 'TemplateArn',
    #     default_template_data: 'DefaultTemplateData',
    #     destinations: [
    #       {
    #         destination: {
    #         }, # required
    #         replacement_template_data: 'ReplacementTemplateData'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendBulkTemplatedEmailOutput
    #   resp.data.status #=> Array<BulkEmailDestinationStatus>
    #   resp.data.status[0] #=> Types::BulkEmailDestinationStatus
    #   resp.data.status[0].status #=> String, one of ["Success", "MessageRejected", "MailFromDomainNotVerified", "ConfigurationSetDoesNotExist", "TemplateDoesNotExist", "AccountSuspended", "AccountThrottled", "AccountDailyQuotaExceeded", "InvalidSendingPoolName", "AccountSendingPaused", "ConfigurationSetSendingPaused", "InvalidParameterValue", "TransientFailure", "Failed"]
    #   resp.data.status[0].error #=> String
    #   resp.data.status[0].message_id #=> String
    #
    def send_bulk_templated_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendBulkTemplatedEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendBulkTemplatedEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendBulkTemplatedEmail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected, Errors::TemplateDoesNotExistException, Errors::MailFromDomainNotVerifiedException, Errors::AccountSendingPausedException, Errors::ConfigurationSetSendingPausedException, Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::SendBulkTemplatedEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendBulkTemplatedEmail,
        stubs: @stubs,
        params_class: Params::SendBulkTemplatedEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_bulk_templated_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an email address to the list of identities for your Amazon SES account in the current
    #             AWS Region and attempts to verify it. As a result of executing this operation, a
    #             customized verification email is sent to the specified address.</p>
    #         <p>To use this operation, you must first create a custom verification email template. For
    #             more information about creating and using custom verification email templates, see
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom
    #                 Verification Email Templates</a> in the <i>Amazon SES Developer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected, Errors::FromEmailAddressNotVerifiedException, Errors::ConfigurationSetDoesNotExistException, Errors::CustomVerificationEmailTemplateDoesNotExistException, Errors::ProductionAccessNotGrantedException]),
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

    # <p>Composes an email message and immediately queues it for sending. In order to send
    #             email using the <code>SendEmail</code> operation, your message must meet the following
    #             requirements:</p>
    #
    #         <ul>
    #             <li>
    #                 <p>The message must be sent from a verified email address or domain. If you
    #                     attempt to send email using a non-verified address or domain, the operation will
    #                     result in an "Email address not verified" error. </p>
    #             </li>
    #             <li>
    #                 <p>If your account is still in the Amazon SES sandbox, you may only send to verified
    #                     addresses or domains, or to email addresses associated with the Amazon SES Mailbox
    #                     Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
    #                         Email Addresses and Domains</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>The maximum message size is 10 MB.</p>
    #             </li>
    #             <li>
    #                 <p>The message must include at least one recipient email address. The recipient
    #                     address can be a To: address, a CC: address, or a BCC: address. If a recipient
    #                     email address is invalid (that is, it is not in the format
    #                         <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire
    #                     message will be rejected, even if the message contains other recipients that are
    #                     valid.</p>
    #             </li>
    #             <li>
    #                 <p>The message may not include more than 50 recipients, across the To:, CC: and
    #                     BCC: fields. If you need to send an email message to a larger audience, you can
    #                     divide your recipient list into groups of 50 or fewer, and then call the
    #                         <code>SendEmail</code> operation several times to send the message to each
    #                     group.</p>
    #             </li>
    #          </ul>
    #         <important>
    #             <p>For every message that you send, the total number of recipients (including each
    #                 recipient in the To:, CC: and BCC: fields) is counted against the maximum number of
    #                 emails you can send in a 24-hour period (your <i>sending quota</i>).
    #                 For more information about sending quotas in Amazon SES, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing Your Amazon SES
    #                     Sending Limits</a> in the <i>Amazon SES Developer Guide.</i>
    #             </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::SendEmailInput}.
    #
    # @option params [String] :source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    # @option params [Destination] :destination
    #   <p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>
    #
    # @option params [Message] :message
    #   <p>The message to be sent.</p>
    #
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address will receive the reply.</p>
    #
    # @option params [String] :return_path
    #   <p>The email address that bounces and complaints will be forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message will be returned from the recipient's ISP; this message will then be
    #               forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    #
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [Array<MessageTag>] :tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendEmail</code>. Tags correspond to characteristics of the email that you
    #               define, so that you can publish email sending events.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendEmail</code>.</p>
    #
    # @return [Types::SendEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email(
    #     source: 'Source', # required
    #     destination: {
    #       to_addresses: [
    #         'member'
    #       ],
    #     }, # required
    #     message: {
    #       subject: {
    #         data: 'Data', # required
    #         charset: 'Charset'
    #       }, # required
    #       body: {
    #       } # required
    #     }, # required
    #     return_path: 'ReturnPath',
    #     source_arn: 'SourceArn',
    #     return_path_arn: 'ReturnPathArn',
    #     tags: [
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected, Errors::MailFromDomainNotVerifiedException, Errors::AccountSendingPausedException, Errors::ConfigurationSetSendingPausedException, Errors::ConfigurationSetDoesNotExistException]),
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

    # <p>Composes an email message and immediately queues it for sending.</p>
    #
    #         <p>This operation is more flexible than the <code>SendEmail</code> API operation. When
    #             you use the <code>SendRawEmail</code> operation, you can specify the headers of the
    #             message as well as its content. This flexibility is useful, for example, when you want
    #             to send a multipart MIME email (such a message that contains both a text and an HTML
    #             version). You can also use this operation to send messages that include
    #             attachments.</p>
    #         <p>The <code>SendRawEmail</code> operation has the following requirements:</p>
    #         <ul>
    #             <li>
    #                 <p>You can only send email from <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">verified email addresses or domains</a>. If you try
    #                     to send email from an address that isn't verified, the operation results in an
    #                     "Email address not verified" error.</p>
    #             </li>
    #             <li>
    #                 <p>If your account is still in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html">Amazon SES sandbox</a>, you can only send email to other
    #                     verified addresses in your account, or to addresses that are associated with the
    #                         <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mailbox-simulator.html">Amazon SES mailbox simulator</a>.</p>
    #             </li>
    #             <li>
    #                 <p>The maximum message size, including attachments, is 10 MB.</p>
    #             </li>
    #             <li>
    #                 <p>Each message has to include at least one recipient address. A recipient
    #                     address includes any address on the To:, CC:, or BCC: lines.</p>
    #             </li>
    #             <li>
    #                 <p>If you send a single message to more than one recipient address, and one of
    #                     the recipient addresses isn't in a valid format (that is, it's not in the format
    #                         <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), Amazon SES
    #                     rejects the entire message, even if the other addresses are valid.</p>
    #             </li>
    #             <li>
    #                 <p>Each message can include up to 50 recipient addresses across the To:, CC:, or
    #                     BCC: lines. If you need to send a single message to more than 50 recipients, you
    #                     have to split the list of recipient addresses into groups of less than 50
    #                     recipients, and send separate messages to each group.</p>
    #             </li>
    #             <li>
    #                 <p>Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for MIME message
    #                     parts. However, if Amazon SES has to modify the contents of your message (for
    #                     example, if you use open and click tracking), 8-bit content isn't preserved. For
    #                     this reason, we highly recommend that you encode all content that isn't 7-bit
    #                     ASCII. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html#send-email-mime-encoding">MIME Encoding</a> in the <i>Amazon SES Developer
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    #
    #
    #
    #         <p>Additionally, keep the following considerations in mind when using the
    #                 <code>SendRawEmail</code> operation:</p>
    #
    #         <ul>
    #             <li>
    #                 <p>Although you can customize the message headers when using the
    #                         <code>SendRawEmail</code> operation, Amazon SES will automatically apply its own
    #                         <code>Message-ID</code> and <code>Date</code> headers; if you passed these
    #                     headers when creating the message, they will be overwritten by the values that
    #                     Amazon SES provides.</p>
    #             </li>
    #             <li>
    #                 <p>If you are using sending authorization to send on behalf of another user,
    #                         <code>SendRawEmail</code> enables you to specify the cross-account identity
    #                     for the email's Source, From, and Return-Path parameters in one of two ways: you
    #                     can pass optional parameters <code>SourceArn</code>, <code>FromArn</code>,
    #                     and/or <code>ReturnPathArn</code> to the API, or you can include the following
    #                     X-headers in the header of your raw email:</p>
    #                 <ul>
    #                   <li>
    #                         <p>
    #                             <code>X-SES-SOURCE-ARN</code>
    #                         </p>
    #                     </li>
    #                   <li>
    #                         <p>
    #                             <code>X-SES-FROM-ARN</code>
    #                         </p>
    #                     </li>
    #                   <li>
    #                         <p>
    #                             <code>X-SES-RETURN-PATH-ARN</code>
    #                         </p>
    #                     </li>
    #                </ul>
    #                 <important>
    #                     <p>Don't include these X-headers in the DKIM signature. Amazon SES removes these
    #                         before it sends the email.</p>
    #                 </important>
    #                 <p>If you only specify the <code>SourceIdentityArn</code> parameter, Amazon SES sets
    #                     the From and Return-Path addresses to the same identity that you
    #                     specified.</p>
    #                 <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Using Sending
    #                         Authorization with Amazon SES</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>For every message that you send, the total number of recipients (including
    #                     each recipient in the To:, CC: and BCC: fields) is counted against the maximum
    #                     number of emails you can send in a 24-hour period (your <i>sending
    #                         quota</i>). For more information about sending quotas in Amazon SES, see
    #                         <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing Your
    #                         Amazon SES Sending Limits</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::SendRawEmailInput}.
    #
    # @option params [String] :source
    #   <p>The identity's email address. If you do not provide a value for this parameter, you
    #               must specify a "From" address in the raw text of the message. (You can also specify
    #               both.)</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in<a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    #           <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled,
    #               then bounces and complaints will be sent to this email address. This takes precedence
    #               over any Return-Path header that you might include in the raw text of the
    #               message.</p>
    #
    # @option params [Array<String>] :destinations
    #   <p>A list of destinations for the message, consisting of To:, CC:, and BCC:
    #               addresses.</p>
    #
    # @option params [RawMessage] :raw_message
    #   <p>The raw email message itself. The message has to meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>The message has to contain a header and a body, separated by a blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                   <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                   <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                   <p>Attachments must be of a content type that Amazon SES supports. For a list on
    #                       unsupported content types, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html">Unsupported Attachment
    #                           Types</a> in the <i>Amazon SES Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>The entire message must be base64-encoded.</p>
    #               </li>
    #               <li>
    #                   <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, we highly recommend that you encode that
    #                       content. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Sending Raw Email</a> in the <i>Amazon SES Developer
    #                       Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>Per <a href="https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6">RFC
    #                           5321</a>, the maximum length of each line of text, including the
    #                       <CRLF>, must not exceed 1,000 characters.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :from_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to specify a
    #               particular "From" address in the header of the raw email.</p>
    #           <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code>
    #               in the raw message of the email. If you use both the <code>FromArn</code> parameter and
    #               the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code>
    #               parameter.</p>
    #           <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p>
    #           </note>
    #
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>Instead of using this parameter, you can use the X-header
    #                   <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the
    #                   <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the
    #               value of the <code>SourceArn</code> parameter.</p>
    #           <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p>
    #           </note>
    #
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>Instead of using this parameter, you can use the X-header
    #                   <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both
    #               the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the
    #               value of the <code>ReturnPathArn</code> parameter.</p>
    #           <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p>
    #           </note>
    #
    # @option params [Array<MessageTag>] :tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that
    #               you define, so that you can publish email sending events.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendRawEmail</code>.</p>
    #
    # @return [Types::SendRawEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_raw_email(
    #     source: 'Source',
    #     destinations: [
    #       'member'
    #     ],
    #     raw_message: {
    #       data: 'Data' # required
    #     }, # required
    #     from_arn: 'FromArn',
    #     source_arn: 'SourceArn',
    #     return_path_arn: 'ReturnPathArn',
    #     tags: [
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
    #   resp.data #=> Types::SendRawEmailOutput
    #   resp.data.message_id #=> String
    #
    def send_raw_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendRawEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendRawEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendRawEmail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected, Errors::MailFromDomainNotVerifiedException, Errors::AccountSendingPausedException, Errors::ConfigurationSetSendingPausedException, Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::SendRawEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendRawEmail,
        stubs: @stubs,
        params_class: Params::SendRawEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_raw_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Composes an email message using an email template and immediately queues it for
    #             sending.</p>
    #         <p>In order to send email using the <code>SendTemplatedEmail</code> operation, your call
    #             to the API must meet the following requirements:</p>
    #         <ul>
    #             <li>
    #                 <p>The call must refer to an existing email template. You can create email
    #                     templates using the <a>CreateTemplate</a> operation.</p>
    #             </li>
    #             <li>
    #                 <p>The message must be sent from a verified email address or domain.</p>
    #             </li>
    #             <li>
    #                 <p>If your account is still in the Amazon SES sandbox, you may only send to verified
    #                     addresses or domains, or to email addresses associated with the Amazon SES Mailbox
    #                     Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
    #                         Email Addresses and Domains</a> in the <i>Amazon SES Developer
    #                         Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>The maximum message size is 10 MB.</p>
    #             </li>
    #             <li>
    #                 <p>Calls to the <code>SendTemplatedEmail</code> operation may only include one
    #                         <code>Destination</code> parameter. A destination is a set of recipients who
    #                     will receive the same version of the email. The <code>Destination</code>
    #                     parameter can include up to 50 recipients, across the To:, CC: and BCC:
    #                     fields.</p>
    #             </li>
    #             <li>
    #                 <p>The <code>Destination</code> parameter must include at least one recipient
    #                     email address. The recipient address can be a To: address, a CC: address, or a
    #                     BCC: address. If a recipient email address is invalid (that is, it is not in the
    #                     format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the
    #                     entire message will be rejected, even if the message contains other recipients
    #                     that are valid.</p>
    #             </li>
    #          </ul>
    #         <important>
    #             <p>If your call to the <code>SendTemplatedEmail</code> operation includes all of the
    #                 required parameters, Amazon SES accepts it and returns a Message ID. However, if Amazon SES
    #                 can't render the email because the template contains errors, it doesn't send the
    #                 email. Additionally, because it already accepted the message, Amazon SES doesn't return a
    #                 message stating that it was unable to send the email.</p>
    #             <p>For these reasons, we highly recommend that you set up Amazon SES to send you
    #                 notifications when Rendering Failure events occur. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Sending
    #                     Personalized Email Using the Amazon SES API</a> in the <i>Amazon Simple Email Service
    #                     Developer Guide</i>.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::SendTemplatedEmailInput}.
    #
    # @option params [String] :source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in<a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    # @option params [Destination] :destination
    #   <p>The destination for this email, composed of To:, CC:, and BCC: fields. A Destination
    #               can include up to 50 recipients across these three fields.</p>
    #
    # @option params [Array<String>] :reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address will receive the reply.</p>
    #
    # @option params [String] :return_path
    #   <p>The email address that bounces and complaints will be forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message will be returned from the recipient's ISP; this message will then be
    #               forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    #
    # @option params [String] :source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [String] :return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    # @option params [Array<MessageTag>] :tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendTemplatedEmail</code>. Tags correspond to characteristics of the email
    #               that you define, so that you can publish email sending events.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendTemplatedEmail</code>.</p>
    #
    # @option params [String] :template
    #   <p>The template to use when sending this email.</p>
    #
    # @option params [String] :template_arn
    #   <p>The ARN of the template to use when sending this email.</p>
    #
    # @option params [String] :template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    # @return [Types::SendTemplatedEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_templated_email(
    #     source: 'Source', # required
    #     destination: {
    #       to_addresses: [
    #         'member'
    #       ],
    #     }, # required
    #     return_path: 'ReturnPath',
    #     source_arn: 'SourceArn',
    #     return_path_arn: 'ReturnPathArn',
    #     tags: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     configuration_set_name: 'ConfigurationSetName',
    #     template: 'Template', # required
    #     template_arn: 'TemplateArn',
    #     template_data: 'TemplateData' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendTemplatedEmailOutput
    #   resp.data.message_id #=> String
    #
    def send_templated_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendTemplatedEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendTemplatedEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendTemplatedEmail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected, Errors::TemplateDoesNotExistException, Errors::MailFromDomainNotVerifiedException, Errors::AccountSendingPausedException, Errors::ConfigurationSetSendingPausedException, Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::SendTemplatedEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendTemplatedEmail,
        stubs: @stubs,
        params_class: Params::SendTemplatedEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_templated_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the specified receipt rule set as the active receipt rule set.</p>
    #         <note>
    #             <p>To disable your email-receiving through Amazon SES completely, you can call this API
    #                 with RuleSetName set to null.</p>
    #         </note>
    #         <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::SetActiveReceiptRuleSetInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set to make active. Setting this value to null disables
    #               all email receiving.</p>
    #
    # @return [Types::SetActiveReceiptRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_active_receipt_rule_set(
    #     rule_set_name: 'RuleSetName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetActiveReceiptRuleSetOutput
    #
    def set_active_receipt_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetActiveReceiptRuleSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetActiveReceiptRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetActiveReceiptRuleSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RuleSetDoesNotExistException]),
        data_parser: Parsers::SetActiveReceiptRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetActiveReceiptRuleSet,
        stubs: @stubs,
        params_class: Params::SetActiveReceiptRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_active_receipt_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or disables Easy DKIM signing of email sent from an identity. If Easy DKIM
    #             signing is enabled for a domain, then Amazon SES uses DKIM to sign all email that it sends
    #             from addresses on that domain. If Easy DKIM signing is enabled for an email address,
    #             then Amazon SES uses DKIM to sign all email it sends from that address.</p>
    #         <note>
    #             <p>For email addresses (for example, <code>user@example.com</code>), you can only
    #                 enable DKIM signing if the corresponding domain (in this case,
    #                     <code>example.com</code>) has been set up to use Easy DKIM.</p>
    #         </note>
    #         <p>You can enable DKIM signing for an identity at any time after you start the
    #             verification process for the identity, even if the verification process isn't complete. </p>
    #         <p>You can execute this operation no more than once per second.</p>
    #         <p>For more information about Easy DKIM signing, go to the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityDkimEnabledInput}.
    #
    # @option params [String] :identity
    #   <p>The identity for which DKIM signing should be enabled or disabled.</p>
    #
    # @option params [Boolean] :dkim_enabled
    #   <p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to
    #               enable DKIM signing for this identity; <code>false</code> to disable it. </p>
    #
    # @return [Types::SetIdentityDkimEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_dkim_enabled(
    #     identity: 'Identity', # required
    #     dkim_enabled: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityDkimEnabledOutput
    #
    def set_identity_dkim_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityDkimEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityDkimEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityDkimEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SetIdentityDkimEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityDkimEnabled,
        stubs: @stubs,
        params_class: Params::SetIdentityDkimEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_dkim_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given an identity (an email address or a domain), enables or disables whether Amazon SES
    #             forwards bounce and complaint notifications as email. Feedback forwarding can only be
    #             disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and
    #             complaints.</p>
    #         <note>
    #             <p>Feedback forwarding does not apply to delivery notifications. Delivery
    #                 notifications are only available through Amazon SNS.</p>
    #         </note>
    #         <p>You can execute this operation no more than once per second.</p>
    #         <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityFeedbackForwardingEnabledInput}.
    #
    # @option params [String] :identity
    #   <p>The identity for which to set bounce and complaint notification forwarding. Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>.</p>
    #
    # @option params [Boolean] :forwarding_enabled
    #   <p>Sets whether Amazon SES will forward bounce and complaint notifications as email.
    #                   <code>true</code> specifies that Amazon SES will forward bounce and complaint
    #               notifications as email, in addition to any Amazon SNS topic publishing otherwise specified.
    #                   <code>false</code> specifies that Amazon SES will publish bounce and complaint
    #               notifications only through Amazon SNS. This value can only be set to <code>false</code> when
    #               Amazon SNS topics are set for both <code>Bounce</code> and <code>Complaint</code>
    #               notification types.</p>
    #
    # @return [Types::SetIdentityFeedbackForwardingEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_feedback_forwarding_enabled(
    #     identity: 'Identity', # required
    #     forwarding_enabled: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityFeedbackForwardingEnabledOutput
    #
    def set_identity_feedback_forwarding_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityFeedbackForwardingEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityFeedbackForwardingEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityFeedbackForwardingEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SetIdentityFeedbackForwardingEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityFeedbackForwardingEnabled,
        stubs: @stubs,
        params_class: Params::SetIdentityFeedbackForwardingEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_feedback_forwarding_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given an identity (an email address or a domain), sets whether Amazon SES includes the
    #             original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified
    #             type.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #         <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityHeadersInNotificationsEnabledInput}.
    #
    # @option params [String] :identity
    #   <p>The identity for which to enable or disable headers in notifications. Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>.</p>
    #
    # @option params [String] :notification_type
    #   <p>The notification type for which to enable or disable headers in notifications. </p>
    #
    # @option params [Boolean] :enabled
    #   <p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the
    #               specified notification type. A value of <code>true</code> specifies that Amazon SES will
    #               include headers in notifications, and a value of <code>false</code> specifies that Amazon SES
    #               will not include headers in notifications.</p>
    #           <p>This value can only be set when <code>NotificationType</code> is already set to use a
    #               particular Amazon SNS topic.</p>
    #
    # @return [Types::SetIdentityHeadersInNotificationsEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_headers_in_notifications_enabled(
    #     identity: 'Identity', # required
    #     notification_type: 'Bounce', # required - accepts ["Bounce", "Complaint", "Delivery"]
    #     enabled: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityHeadersInNotificationsEnabledOutput
    #
    def set_identity_headers_in_notifications_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityHeadersInNotificationsEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityHeadersInNotificationsEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityHeadersInNotificationsEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SetIdentityHeadersInNotificationsEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityHeadersInNotificationsEnabled,
        stubs: @stubs,
        params_class: Params::SetIdentityHeadersInNotificationsEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_headers_in_notifications_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or disables the custom MAIL FROM domain setup for a verified identity (an
    #             email address or a domain).</p>
    #         <important>
    #             <p>To send emails using the specified MAIL FROM domain, you must add an MX record to
    #                 your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy
    #                 Framework (SPF) checks, you must also add or update an SPF record. For more
    #                 information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         </important>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityMailFromDomainInput}.
    #
    # @option params [String] :identity
    #   <p>The verified identity for which you want to enable or disable the specified custom
    #               MAIL FROM domain.</p>
    #
    # @option params [String] :mail_from_domain
    #   <p>The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must 1) be a subdomain of the verified identity, 2) not be used in a "From"
    #               address if the MAIL FROM domain is the destination of email feedback forwarding (for
    #               more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>), and
    #               3) not be used to receive emails. A value of <code>null</code> disables the custom MAIL
    #               FROM setting for the identity.</p>
    #
    # @option params [String] :behavior_on_mx_failure
    #   <p>The action that you want Amazon SES to take if it cannot successfully read the required MX
    #               record when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES will
    #               use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose
    #                   <code>RejectMessage</code>, Amazon SES will return a
    #                   <code>MailFromDomainNotVerified</code> error and not send the email.</p>
    #           <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL
    #               FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and
    #                   <code>TemporaryFailure</code> states.</p>
    #
    # @return [Types::SetIdentityMailFromDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_mail_from_domain(
    #     identity: 'Identity', # required
    #     mail_from_domain: 'MailFromDomain',
    #     behavior_on_mx_failure: 'UseDefaultValue' # accepts ["UseDefaultValue", "RejectMessage"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityMailFromDomainOutput
    #
    def set_identity_mail_from_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityMailFromDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityMailFromDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityMailFromDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SetIdentityMailFromDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityMailFromDomain,
        stubs: @stubs,
        params_class: Params::SetIdentityMailFromDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_mail_from_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when delivering notifications. When you use
    #             this operation, you specify a verified identity, such as an email address or domain.
    #             When you send an email that uses the chosen identity in the Source field, Amazon SES sends
    #             notifications to the topic you specified. You can send bounce, complaint, or delivery
    #             notifications (or any combination of the three) to the Amazon SNS topic that you
    #             specify.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #         <p>For more information about feedback notification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer
    #             Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityNotificationTopicInput}.
    #
    # @option params [String] :identity
    #   <p>The identity (email address or domain) that you want to set the Amazon SNS topic
    #               for.</p>
    #           <important>
    #               <p>You can only specify a verified identity for this parameter.</p>
    #           </important>
    #           <p>You can specify an identity by using its name or by using its Amazon Resource Name
    #               (ARN). The following examples are all valid identities: <code>sender@example.com</code>,
    #                   <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #
    # @option params [String] :notification_type
    #   <p>The type of notifications that will be published to the specified Amazon SNS topic.</p>
    #
    # @option params [String] :sns_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from
    #               the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing
    #               is disabled.</p>
    #
    # @return [Types::SetIdentityNotificationTopicOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_notification_topic(
    #     identity: 'Identity', # required
    #     notification_type: 'Bounce', # required - accepts ["Bounce", "Complaint", "Delivery"]
    #     sns_topic: 'SnsTopic'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityNotificationTopicOutput
    #
    def set_identity_notification_topic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityNotificationTopicInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityNotificationTopicInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityNotificationTopic
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SetIdentityNotificationTopic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityNotificationTopic,
        stubs: @stubs,
        params_class: Params::SetIdentityNotificationTopicOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_notification_topic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the position of the specified receipt rule in the receipt rule set.</p>
    #         <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::SetReceiptRulePositionInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that contains the receipt rule to reposition.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the receipt rule to reposition.</p>
    #
    # @option params [String] :after
    #   <p>The name of the receipt rule after which to place the specified receipt rule.</p>
    #
    # @return [Types::SetReceiptRulePositionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_receipt_rule_position(
    #     rule_set_name: 'RuleSetName', # required
    #     rule_name: 'RuleName', # required
    #     after: 'After'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetReceiptRulePositionOutput
    #
    def set_receipt_rule_position(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetReceiptRulePositionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetReceiptRulePositionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetReceiptRulePosition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RuleDoesNotExistException, Errors::RuleSetDoesNotExistException]),
        data_parser: Parsers::SetReceiptRulePosition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetReceiptRulePosition,
        stubs: @stubs,
        params_class: Params::SetReceiptRulePositionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_receipt_rule_position
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a preview of the MIME content of an email when provided with a template and a
    #             set of replacement data.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::TestRenderTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the template that you want to render.</p>
    #
    # @option params [String] :template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    # @return [Types::TestRenderTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_render_template(
    #     template_name: 'TemplateName', # required
    #     template_data: 'TemplateData' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestRenderTemplateOutput
    #   resp.data.rendered_template #=> String
    #
    def test_render_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestRenderTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestRenderTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestRenderTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TemplateDoesNotExistException, Errors::MissingRenderingAttributeException, Errors::InvalidRenderingParameterException]),
        data_parser: Parsers::TestRenderTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestRenderTemplate,
        stubs: @stubs,
        params_class: Params::TestRenderTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_render_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or disables email sending across your entire Amazon SES account in the current
    #             AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms to
    #             temporarily pause email sending across your Amazon SES account in a given AWS Region when
    #             reputation metrics (such as your bounce or complaint rates) reach certain
    #             thresholds.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountSendingEnabledInput}.
    #
    # @option params [Boolean] :enabled
    #   <p>Describes whether email sending is enabled or disabled for your Amazon SES account in the
    #               current AWS Region.</p>
    #
    # @return [Types::UpdateAccountSendingEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_sending_enabled(
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountSendingEnabledOutput
    #
    def update_account_sending_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountSendingEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountSendingEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountSendingEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::UpdateAccountSendingEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountSendingEnabled,
        stubs: @stubs,
        params_class: Params::UpdateAccountSendingEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_sending_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the event destination of a configuration set. Event destinations are
    #             associated with configuration sets, which enable you to publish email sending events to
    #             Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets,
    #             see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring Your Amazon SES
    #                 Sending Activity</a> in the <i>Amazon SES Developer Guide.</i>
    #          </p>
    #         <note>
    #             <p>When you create or update an event destination, you must provide one, and only
    #                 one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service
    #                 (Amazon SNS).</p>
    #         </note>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               update.</p>
    #
    # @option params [EventDestination] :event_destination
    #   <p>The event destination object that you want to apply to the specified configuration
    #               set.</p>
    #
    # @return [Types::UpdateConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination: {
    #       name: 'Name', # required
    #       enabled: false,
    #       matching_event_types: [
    #         'send' # accepts ["send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"]
    #       ], # required
    #       kinesis_firehose_destination: {
    #         iam_role_arn: 'IAMRoleARN', # required
    #         delivery_stream_arn: 'DeliveryStreamARN' # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [
    #           {
    #             dimension_name: 'DimensionName', # required
    #             dimension_value_source: 'messageTag', # required - accepts ["messageTag", "emailHeader", "linkTag"]
    #             default_dimension_value: 'DefaultDimensionValue' # required
    #           }
    #         ] # required
    #       },
    #       sns_destination: {
    #         topic_arn: 'TopicARN' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFirehoseDestinationException, Errors::InvalidCloudWatchDestinationException, Errors::EventDestinationDoesNotExistException, Errors::InvalidSNSDestinationException, Errors::ConfigurationSetDoesNotExistException]),
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

    # <p>Enables or disables the publishing of reputation metrics for emails sent using a
    #             specific configuration set in a given AWS Region. Reputation metrics include bounce
    #             and complaint rates. These metrics are published to Amazon CloudWatch. By using CloudWatch, you can
    #             create alarms when bounce or complaint rates exceed certain thresholds.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetReputationMetricsEnabledInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to update.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Describes whether or not Amazon SES will publish reputation metrics for the configuration
    #               set, such as bounce and complaint rates, to Amazon CloudWatch.</p>
    #
    # @return [Types::UpdateConfigurationSetReputationMetricsEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_reputation_metrics_enabled(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     enabled: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationSetReputationMetricsEnabledOutput
    #
    def update_configuration_set_reputation_metrics_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationSetReputationMetricsEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationSetReputationMetricsEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationSetReputationMetricsEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::UpdateConfigurationSetReputationMetricsEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationSetReputationMetricsEnabled,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationSetReputationMetricsEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_set_reputation_metrics_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or disables email sending for messages sent using a specific configuration set
    #             in a given AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms
    #             to temporarily pause email sending for a configuration set when the reputation metrics
    #             for that configuration set (such as your bounce on complaint rate) exceed certain
    #             thresholds.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetSendingEnabledInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set that you want to update.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Describes whether email sending is enabled or disabled for the configuration set.
    #           </p>
    #
    # @return [Types::UpdateConfigurationSetSendingEnabledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_sending_enabled(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     enabled: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationSetSendingEnabledOutput
    #
    def update_configuration_set_sending_enabled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationSetSendingEnabledInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationSetSendingEnabledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationSetSendingEnabled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::UpdateConfigurationSetSendingEnabled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationSetSendingEnabled,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationSetSendingEnabledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_set_sending_enabled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an association between a configuration set and a custom domain for open and
    #             click event tracking. </p>
    #         <p>By default, images and links used for tracking open and click events are hosted on
    #             domains operated by Amazon SES. You can configure a subdomain of your own to handle these
    #             events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetTrackingOptionsInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set for which you want to update the custom tracking
    #               domain.</p>
    #
    # @option params [TrackingOptions] :tracking_options
    #   <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #               domain captures open and click events generated by Amazon SES emails.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring
    #                   Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    # @return [Types::UpdateConfigurationSetTrackingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_tracking_options(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     tracking_options: {
    #       custom_redirect_domain: 'CustomRedirectDomain'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationSetTrackingOptionsOutput
    #
    def update_configuration_set_tracking_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationSetTrackingOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationSetTrackingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationSetTrackingOptions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTrackingOptionsException, Errors::TrackingOptionsDoesNotExistException, Errors::ConfigurationSetDoesNotExistException]),
        data_parser: Parsers::UpdateConfigurationSetTrackingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationSetTrackingOptions,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationSetTrackingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_set_tracking_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing custom verification email template.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer
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
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
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
    #     from_email_address: 'FromEmailAddress',
    #     template_subject: 'TemplateSubject',
    #     template_content: 'TemplateContent',
    #     success_redirection_url: 'SuccessRedirectionURL',
    #     failure_redirection_url: 'FailureRedirectionURL'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CustomVerificationEmailInvalidContentException, Errors::FromEmailAddressNotVerifiedException, Errors::CustomVerificationEmailTemplateDoesNotExistException]),
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

    # <p>Updates a receipt rule.</p>
    #         <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReceiptRuleInput}.
    #
    # @option params [String] :rule_set_name
    #   <p>The name of the receipt rule set that the receipt rule belongs to.</p>
    #
    # @option params [ReceiptRule] :rule
    #   <p>A data structure that contains the updated receipt rule information.</p>
    #
    # @return [Types::UpdateReceiptRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_receipt_rule(
    #     rule_set_name: 'RuleSetName', # required
    #     rule: {
    #       name: 'Name', # required
    #       enabled: false,
    #       tls_policy: 'Require', # accepts ["Require", "Optional"]
    #       recipients: [
    #         'member'
    #       ],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: 'TopicArn',
    #             bucket_name: 'BucketName', # required
    #             object_key_prefix: 'ObjectKeyPrefix',
    #             kms_key_arn: 'KmsKeyArn'
    #           },
    #           bounce_action: {
    #             topic_arn: 'TopicArn',
    #             smtp_reply_code: 'SmtpReplyCode', # required
    #             status_code: 'StatusCode',
    #             message: 'Message', # required
    #             sender: 'Sender' # required
    #           },
    #           workmail_action: {
    #             topic_arn: 'TopicArn',
    #             organization_arn: 'OrganizationArn' # required
    #           },
    #           lambda_action: {
    #             topic_arn: 'TopicArn',
    #             function_arn: 'FunctionArn', # required
    #             invocation_type: 'Event' # accepts ["Event", "RequestResponse"]
    #           },
    #           stop_action: {
    #             scope: 'RuleSet', # required - accepts ["RuleSet"]
    #             topic_arn: 'TopicArn'
    #           },
    #           add_header_action: {
    #             header_name: 'HeaderName', # required
    #             header_value: 'HeaderValue' # required
    #           },
    #           sns_action: {
    #             topic_arn: 'TopicArn', # required
    #             encoding: 'UTF-8' # accepts ["UTF-8", "Base64"]
    #           }
    #         }
    #       ],
    #       scan_enabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReceiptRuleOutput
    #
    def update_receipt_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReceiptRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReceiptRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReceiptRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidSnsTopicException, Errors::InvalidS3ConfigurationException, Errors::RuleDoesNotExistException, Errors::InvalidLambdaFunctionException, Errors::RuleSetDoesNotExistException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateReceiptRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReceiptRule,
        stubs: @stubs,
        params_class: Params::UpdateReceiptRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_receipt_rule
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
    #   See {Types::UpdateTemplateInput}.
    #
    # @option params [Template] :template
    #   <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #               part.</p>
    #
    # @return [Types::UpdateTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template(
    #     template: {
    #       template_name: 'TemplateName', # required
    #       subject_part: 'SubjectPart',
    #       text_part: 'TextPart',
    #       html_part: 'HtmlPart'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTemplateOutput
    #
    def update_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TemplateDoesNotExistException, Errors::InvalidTemplateException]),
        data_parser: Parsers::UpdateTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTemplate,
        stubs: @stubs,
        params_class: Params::UpdateTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a set of DKIM tokens for a domain identity.</p>
    #         <important>
    #             <p>When you execute the <code>VerifyDomainDkim</code> operation, the domain that you
    #                 specify is added to the list of identities that are associated with your account.
    #                 This is true even if you haven't already associated the domain with your account by
    #                 using the <code>VerifyDomainIdentity</code> operation. However, you can't send email
    #                 from the domain until you either successfully <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">verify it</a> or you
    #                 successfully <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">set up DKIM for
    #                 it</a>.</p>
    #         </important>
    #         <p>You use the tokens that are generated by this operation to create CNAME records. When
    #             Amazon SES detects that you've added these records to the DNS configuration for a domain, you
    #             can start sending email from that domain. You can start sending email even if you
    #             haven't added the TXT record provided by the VerifyDomainIdentity operation to the DNS
    #             configuration for your domain. All email that you send from the domain is authenticated
    #             using DKIM.</p>
    #         <p>To create the CNAME records for DKIM authentication, use the following values:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Name</b>:
    #                         <i>token</i>._domainkey.<i>example.com</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Type</b>: CNAME</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Value</b>:
    #                     <i>token</i>.dkim.amazonses.com</p>
    #             </li>
    #          </ul>
    #         <p>In the preceding example, replace <i>token</i> with one of the tokens
    #             that are generated when you execute this operation. Replace
    #                 <i>example.com</i> with your domain. Repeat this process for each
    #             token that's generated by this operation.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifyDomainDkimInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain to be verified for Easy DKIM signing.</p>
    #
    # @return [Types::VerifyDomainDkimOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_domain_dkim(
    #     domain: 'Domain' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyDomainDkimOutput
    #   resp.data.dkim_tokens #=> Array<String>
    #   resp.data.dkim_tokens[0] #=> String
    #
    def verify_domain_dkim(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyDomainDkimInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyDomainDkimInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyDomainDkim
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::VerifyDomainDkim
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyDomainDkim,
        stubs: @stubs,
        params_class: Params::VerifyDomainDkimOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_domain_dkim
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a domain to the list of identities for your Amazon SES account in the current AWS
    #             Region and attempts to verify it. For more information about verifying domains, see
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email
    #                 Addresses and Domains</a> in the <i>Amazon SES Developer
    #             Guide.</i>
    #          </p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifyDomainIdentityInput}.
    #
    # @option params [String] :domain
    #   <p>The domain to be verified.</p>
    #
    # @return [Types::VerifyDomainIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_domain_identity(
    #     domain: 'Domain' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyDomainIdentityOutput
    #   resp.data.verification_token #=> String
    #
    def verify_domain_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyDomainIdentityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyDomainIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyDomainIdentity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::VerifyDomainIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyDomainIdentity,
        stubs: @stubs,
        params_class: Params::VerifyDomainIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_domain_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use the <code>VerifyEmailIdentity</code> operation to verify a new email
    #             address.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifyEmailAddressInput}.
    #
    # @option params [String] :email_address
    #   <p>The email address to be verified.</p>
    #
    # @return [Types::VerifyEmailAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_email_address(
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyEmailAddressOutput
    #
    def verify_email_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyEmailAddressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyEmailAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyEmailAddress
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::VerifyEmailAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyEmailAddress,
        stubs: @stubs,
        params_class: Params::VerifyEmailAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_email_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an email address to the list of identities for your Amazon SES account in the current
    #             AWS region and attempts to verify it. As a result of executing this operation, a
    #             verification email is sent to the specified address.</p>
    #         <p>You can execute this operation no more than once per second.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifyEmailIdentityInput}.
    #
    # @option params [String] :email_address
    #   <p>The email address to be verified.</p>
    #
    # @return [Types::VerifyEmailIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_email_identity(
    #     email_address: 'EmailAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyEmailIdentityOutput
    #
    def verify_email_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyEmailIdentityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyEmailIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyEmailIdentity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::VerifyEmailIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyEmailIdentity,
        stubs: @stubs,
        params_class: Params::VerifyEmailIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_email_identity
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
