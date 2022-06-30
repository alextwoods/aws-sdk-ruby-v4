# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SecurityHub
  # An API client for SecurityHubAPIService
  # See {#initialize} for a full list of supported configuration options
  # <p>Security Hub provides you with a comprehensive view of the security state of your Amazon Web Services environment and resources. It also provides you with the readiness status
  #          of your environment based on controls from supported security standards. Security Hub collects
  #          security data from Amazon Web Services accounts, services, and integrated third-party products and helps
  #          you analyze security trends in your environment to identify the highest priority security
  #          issues. For more information about Security Hub, see the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html">
  #                <i>Security HubUser
  #             Guide</i>
  #             </a>.</p>
  #          <p>When you use operations in the Security Hub API, the requests are executed only in the Amazon Web Services
  #          Region that is currently active or in the specific Amazon Web Services Region that you specify in your
  #          request. Any configuration or settings change that results from the operation is applied
  #          only to that Region. To make the same change in other Regions, execute the same command for
  #          each Region to apply the change to.</p>
  #          <p>For example, if your Region is set to <code>us-west-2</code>, when you use <code>CreateMembers</code> to add a member account to Security Hub, the association of
  #          the member account with the administrator account is created only in the <code>us-west-2</code>
  #          Region. Security Hub must be enabled for the member account in the same Region that the invitation
  #          was sent from.</p>
  #          <p>The following throttling limits apply to using Security Hub API operations.</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>BatchEnableStandards</code> - <code>RateLimit</code> of 1
  #                request per second, <code>BurstLimit</code> of 1 request per second.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetFindings</code> - <code>RateLimit</code> of 3 requests per second.
  #                   <code>BurstLimit</code> of 6 requests per second.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>BatchImportFindings</code> - <code>RateLimit</code> of 10 requests per second.
  #             <code>BurstLimit</code> of 30 requests per second.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>BatchUpdateFindings</code> - <code>RateLimit</code> of 10 requests per second.
  #             <code>BurstLimit</code> of 30 requests per second.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateStandardsControl</code> - <code>RateLimit</code> of
  #                1 request per second, <code>BurstLimit</code> of 5 requests per second.</p>
  #             </li>
  #             <li>
  #                <p>All other operations - <code>RateLimit</code> of 10 requests per second.
  #                   <code>BurstLimit</code> of 30 requests per second.</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::SecurityHub::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts the invitation to be a member account and be monitored by the Security Hub administrator
    #          account that the invitation was sent from.</p>
    #          <p>This operation is only used by member accounts that are not added through
    #          Organizations.</p>
    #          <p>When the member account accepts the invitation, permission is granted to the administrator
    #          account to view findings generated in the member account.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptAdministratorInvitationInput}.
    #
    # @option params [String] :administrator_id
    #   <p>The account ID of the Security Hub administrator account that sent the invitation.</p>
    #
    # @option params [String] :invitation_id
    #   <p>The identifier of the invitation sent from the Security Hub administrator account.</p>
    #
    # @return [Types::AcceptAdministratorInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_administrator_invitation(
    #     administrator_id: 'AdministratorId', # required
    #     invitation_id: 'InvitationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptAdministratorInvitationOutput
    #
    def accept_administrator_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptAdministratorInvitationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptAdministratorInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptAdministratorInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::AcceptAdministratorInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptAdministratorInvitation,
        stubs: @stubs,
        params_class: Params::AcceptAdministratorInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_administrator_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This method is deprecated. Instead, use <code>AcceptAdministratorInvitation</code>.</p>
    #          <p>The Security Hub console continues to use <code>AcceptInvitation</code>. It will eventually change to use <code>AcceptAdministratorInvitation</code>. Any IAM policies that specifically control access to this function must continue to use <code>AcceptInvitation</code>. You should also add <code>AcceptAdministratorInvitation</code> to your policies to ensure that the correct permissions are in place after the console begins to use <code>AcceptAdministratorInvitation</code>.</p>
    #          <p>Accepts the invitation to be a member account and be monitored by the Security Hub administrator
    #          account that the invitation was sent from.</p>
    #          <p>This operation is only used by member accounts that are not added through
    #          Organizations.</p>
    #          <p>When the member account accepts the invitation, permission is granted to the administrator
    #          account to view findings generated in the member account.</p>
    #
    # @deprecated
    #   This API has been deprecated, use AcceptAdministratorInvitation API instead.
    #
    # @param [Hash] params
    #   See {Types::AcceptInvitationInput}.
    #
    # @option params [String] :master_id
    #   <p>The account ID of the Security Hub administrator account that sent the invitation.</p>
    #
    # @option params [String] :invitation_id
    #   <p>The identifier of the invitation sent from the Security Hub administrator account.</p>
    #
    # @return [Types::AcceptInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation(
    #     master_id: 'MasterId', # required
    #     invitation_id: 'InvitationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptInvitationOutput
    #
    def accept_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptInvitationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::AcceptInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptInvitation,
        stubs: @stubs,
        params_class: Params::AcceptInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the standards specified by the provided
    #          <code>StandardsSubscriptionArns</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html">Security Standards</a> section of the <i>Security Hub User
    #          Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisableStandardsInput}.
    #
    # @option params [Array<String>] :standards_subscription_arns
    #   <p>The ARNs of the standards subscriptions to disable.</p>
    #
    # @return [Types::BatchDisableStandardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disable_standards(
    #     standards_subscription_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisableStandardsOutput
    #   resp.data.standards_subscriptions #=> Array<StandardsSubscription>
    #   resp.data.standards_subscriptions[0] #=> Types::StandardsSubscription
    #   resp.data.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.data.standards_subscriptions[0].standards_arn #=> String
    #   resp.data.standards_subscriptions[0].standards_input #=> Hash<String, String>
    #   resp.data.standards_subscriptions[0].standards_input['key'] #=> String
    #   resp.data.standards_subscriptions[0].standards_status #=> String, one of ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"]
    #   resp.data.standards_subscriptions[0].standards_status_reason #=> Types::StandardsStatusReason
    #   resp.data.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of ["NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"]
    #
    def batch_disable_standards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisableStandardsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisableStandardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisableStandards
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::BatchDisableStandards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisableStandards,
        stubs: @stubs,
        params_class: Params::BatchDisableStandardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disable_standards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the standards specified by the provided <code>StandardsArn</code>. To obtain the
    #          ARN for a standard, use the <code>DescribeStandards</code>
    #          operation.</p>
    #          <p>For more information, see the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html">Security Standards</a>
    #          section of the <i>Security Hub User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchEnableStandardsInput}.
    #
    # @option params [Array<StandardsSubscriptionRequest>] :standards_subscription_requests
    #   <p>The list of standards checks to enable.</p>
    #
    # @return [Types::BatchEnableStandardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_enable_standards(
    #     standards_subscription_requests: [
    #       {
    #         standards_arn: 'StandardsArn', # required
    #         standards_input: {
    #           'key' => 'value'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchEnableStandardsOutput
    #   resp.data.standards_subscriptions #=> Array<StandardsSubscription>
    #   resp.data.standards_subscriptions[0] #=> Types::StandardsSubscription
    #   resp.data.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.data.standards_subscriptions[0].standards_arn #=> String
    #   resp.data.standards_subscriptions[0].standards_input #=> Hash<String, String>
    #   resp.data.standards_subscriptions[0].standards_input['key'] #=> String
    #   resp.data.standards_subscriptions[0].standards_status #=> String, one of ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"]
    #   resp.data.standards_subscriptions[0].standards_status_reason #=> Types::StandardsStatusReason
    #   resp.data.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of ["NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"]
    #
    def batch_enable_standards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchEnableStandardsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchEnableStandardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchEnableStandards
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::BatchEnableStandards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchEnableStandards,
        stubs: @stubs,
        params_class: Params::BatchEnableStandardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_enable_standards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports security findings generated by a finding provider into Security Hub.
    #          This action is requested by the finding provider to import its findings into
    #          Security Hub.</p>
    #          <p>
    #             <code>BatchImportFindings</code> must be called by one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The Amazon Web Services account that is associated with a finding if you are using
    #                the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs">default product ARN</a>
    #                or are a partner sending findings from within a customer's Amazon Web Services account.
    #                In these cases, the identifier of the account that you are calling <code>BatchImportFindings</code>
    #                from needs to be the same as the <code>AwsAccountId</code> attribute for the finding.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon Web Services account that Security Hub has allow-listed for an official partner
    #                integration. In this case, you can call <code>BatchImportFindings</code> from the allow-listed
    #                account and send findings from different customer accounts in the same batch.</p>
    #             </li>
    #          </ul>
    #          <p>The maximum allowed size for a finding is 240 Kb. An error is returned for any finding
    #          larger than 240 Kb.</p>
    #          <p>After a finding is created, <code>BatchImportFindings</code> cannot be used to update
    #          the following finding fields and objects, which Security Hub customers use to manage their
    #          investigation workflow.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Note</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UserDefinedFields</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>VerificationState</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Workflow</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Finding providers also should not use <code>BatchImportFindings</code> to update the following attributes.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Confidence</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Criticality</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RelatedFindings</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Severity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Types</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Instead, finding providers use <code>FindingProviderFields</code> to provide values for these attributes.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchImportFindingsInput}.
    #
    # @option params [Array<AwsSecurityFinding>] :findings
    #   <p>A list of findings to import. To successfully import a finding, it must follow the
    #               <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html">Amazon Web Services Security Finding Format</a>. Maximum of 100 findings per request.</p>
    #
    # @return [Types::BatchImportFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_import_findings(
    #     findings: [
    #       {
    #         schema_version: 'SchemaVersion', # required
    #         id: 'Id', # required
    #         product_arn: 'ProductArn', # required
    #         product_name: 'ProductName',
    #         company_name: 'CompanyName',
    #         region: 'Region',
    #         generator_id: 'GeneratorId', # required
    #         aws_account_id: 'AwsAccountId', # required
    #         types: [
    #           'member'
    #         ],
    #         first_observed_at: 'FirstObservedAt',
    #         last_observed_at: 'LastObservedAt',
    #         created_at: 'CreatedAt', # required
    #         updated_at: 'UpdatedAt', # required
    #         severity: {
    #           product: 1.0,
    #           label: 'INFORMATIONAL', # accepts ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #           normalized: 1,
    #           original: 'Original'
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: 'Title', # required
    #         description: 'Description', # required
    #         remediation: {
    #           recommendation: {
    #             text: 'Text',
    #             url: 'Url'
    #           }
    #         },
    #         source_url: 'SourceUrl',
    #         product_fields: {
    #           'key' => 'value'
    #         },
    #         malware: [
    #           {
    #             name: 'Name', # required
    #             type: 'ADWARE', # accepts ["ADWARE", "BLENDED_THREAT", "BOTNET_AGENT", "COIN_MINER", "EXPLOIT_KIT", "KEYLOGGER", "MACRO", "POTENTIALLY_UNWANTED", "SPYWARE", "RANSOMWARE", "REMOTE_ACCESS", "ROOTKIT", "TROJAN", "VIRUS", "WORM"]
    #             path: 'Path',
    #             state: 'OBSERVED' # accepts ["OBSERVED", "REMOVAL_FAILED", "REMOVED"]
    #           }
    #         ],
    #         network: {
    #           direction: 'IN', # accepts ["IN", "OUT"]
    #           protocol: 'Protocol',
    #           open_port_range: {
    #             begin: 1,
    #             end: 1
    #           },
    #           source_ip_v4: 'SourceIpV4',
    #           source_ip_v6: 'SourceIpV6',
    #           source_port: 1,
    #           source_domain: 'SourceDomain',
    #           source_mac: 'SourceMac',
    #           destination_ip_v4: 'DestinationIpV4',
    #           destination_ip_v6: 'DestinationIpV6',
    #           destination_port: 1,
    #           destination_domain: 'DestinationDomain'
    #         },
    #         network_path: [
    #           {
    #             component_id: 'ComponentId',
    #             component_type: 'ComponentType',
    #             egress: {
    #               protocol: 'Protocol',
    #               destination: {
    #                 address: [
    #                   'member'
    #                 ],
    #               },
    #             },
    #           }
    #         ],
    #         process: {
    #           name: 'Name',
    #           path: 'Path',
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: 'LaunchedAt',
    #           terminated_at: 'TerminatedAt'
    #         },
    #         threat_intel_indicators: [
    #           {
    #             type: 'DOMAIN', # accepts ["DOMAIN", "EMAIL_ADDRESS", "HASH_MD5", "HASH_SHA1", "HASH_SHA256", "HASH_SHA512", "IPV4_ADDRESS", "IPV6_ADDRESS", "MUTEX", "PROCESS", "URL"]
    #             value: 'Value',
    #             category: 'BACKDOOR', # accepts ["BACKDOOR", "CARD_STEALER", "COMMAND_AND_CONTROL", "DROP_SITE", "EXPLOIT_SITE", "KEYLOGGER"]
    #             last_observed_at: 'LastObservedAt',
    #             source: 'Source',
    #             source_url: 'SourceUrl'
    #           }
    #         ],
    #         resources: [
    #           {
    #             type: 'Type', # required
    #             id: 'Id', # required
    #             partition: 'aws', # accepts ["aws", "aws-cn", "aws-us-gov"]
    #             region: 'Region',
    #             resource_role: 'ResourceRole',
    #             data_classification: {
    #               detailed_results_location: 'DetailedResultsLocation',
    #               result: {
    #                 mime_type: 'MimeType',
    #                 size_classified: 1,
    #                 additional_occurrences: false,
    #                 status: {
    #                   code: 'Code',
    #                   reason: 'Reason'
    #                 },
    #                 sensitive_data: [
    #                   {
    #                     category: 'Category',
    #                     detections: [
    #                       {
    #                         count: 1,
    #                         type: 'Type',
    #                         occurrences: {
    #                           line_ranges: [
    #                             {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           ],
    #                           pages: [
    #                             {
    #                               page_number: 1,
    #                             }
    #                           ],
    #                           records: [
    #                             {
    #                               json_path: 'JsonPath',
    #                               record_index: 1
    #                             }
    #                           ],
    #                           cells: [
    #                             {
    #                               column: 1,
    #                               row: 1,
    #                               column_name: 'ColumnName',
    #                               cell_reference: 'CellReference'
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     ],
    #                     total_count: 1
    #                   }
    #                 ],
    #                 custom_data_identifiers: {
    #                   detections: [
    #                     {
    #                       count: 1,
    #                       arn: 'Arn',
    #                       name: 'Name',
    #                     }
    #                   ],
    #                   total_count: 1
    #                 }
    #               }
    #             },
    #             details: {
    #               aws_auto_scaling_auto_scaling_group: {
    #                 launch_configuration_name: 'LaunchConfigurationName',
    #                 health_check_type: 'HealthCheckType',
    #                 health_check_grace_period: 1,
    #                 created_time: 'CreatedTime',
    #                 mixed_instances_policy: {
    #                   instances_distribution: {
    #                     on_demand_allocation_strategy: 'OnDemandAllocationStrategy',
    #                     on_demand_base_capacity: 1,
    #                     on_demand_percentage_above_base_capacity: 1,
    #                     spot_allocation_strategy: 'SpotAllocationStrategy',
    #                     spot_instance_pools: 1,
    #                     spot_max_price: 'SpotMaxPrice'
    #                   },
    #                   launch_template: {
    #                     launch_template_specification: {
    #                       launch_template_id: 'LaunchTemplateId',
    #                       launch_template_name: 'LaunchTemplateName',
    #                       version: 'Version'
    #                     },
    #                     overrides: [
    #                       {
    #                         instance_type: 'InstanceType',
    #                         weighted_capacity: 'WeightedCapacity'
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 availability_zones: [
    #                   {
    #                     value: 'Value'
    #                   }
    #                 ],
    #                 launch_template: {
    #                   launch_template_id: 'LaunchTemplateId',
    #                   launch_template_name: 'LaunchTemplateName',
    #                   version: 'Version'
    #                 },
    #                 capacity_rebalance: false
    #               },
    #               aws_code_build_project: {
    #                 encryption_key: 'EncryptionKey',
    #                 artifacts: [
    #                   {
    #                     artifact_identifier: 'ArtifactIdentifier',
    #                     encryption_disabled: false,
    #                     location: 'Location',
    #                     name: 'Name',
    #                     namespace_type: 'NamespaceType',
    #                     override_artifact_name: false,
    #                     packaging: 'Packaging',
    #                     path: 'Path',
    #                     type: 'Type'
    #                   }
    #                 ],
    #                 environment: {
    #                   certificate: 'Certificate',
    #                   environment_variables: [
    #                     {
    #                       name: 'Name',
    #                       type: 'Type',
    #                       value: 'Value'
    #                     }
    #                   ],
    #                   privileged_mode: false,
    #                   image_pull_credentials_type: 'ImagePullCredentialsType',
    #                   registry_credential: {
    #                     credential: 'Credential',
    #                     credential_provider: 'CredentialProvider'
    #                   },
    #                   type: 'Type'
    #                 },
    #                 name: 'Name',
    #                 source: {
    #                   type: 'Type',
    #                   location: 'Location',
    #                   git_clone_depth: 1,
    #                   insecure_ssl: false
    #                 },
    #                 service_role: 'ServiceRole',
    #                 logs_config: {
    #                   cloud_watch_logs: {
    #                     group_name: 'GroupName',
    #                     status: 'Status',
    #                     stream_name: 'StreamName'
    #                   },
    #                   s3_logs: {
    #                     encryption_disabled: false,
    #                     location: 'Location',
    #                     status: 'Status'
    #                   }
    #                 },
    #                 vpc_config: {
    #                   vpc_id: 'VpcId',
    #                   subnets: [
    #                     'member'
    #                   ],
    #                 },
    #               },
    #               aws_cloud_front_distribution: {
    #                 cache_behaviors: {
    #                   items: [
    #                     {
    #                       viewer_protocol_policy: 'ViewerProtocolPolicy'
    #                     }
    #                   ]
    #                 },
    #                 default_cache_behavior: {
    #                   viewer_protocol_policy: 'ViewerProtocolPolicy'
    #                 },
    #                 default_root_object: 'DefaultRootObject',
    #                 domain_name: 'DomainName',
    #                 e_tag: 'ETag',
    #                 last_modified_time: 'LastModifiedTime',
    #                 logging: {
    #                   bucket: 'Bucket',
    #                   enabled: false,
    #                   include_cookies: false,
    #                   prefix: 'Prefix'
    #                 },
    #                 origins: {
    #                   items: [
    #                     {
    #                       domain_name: 'DomainName',
    #                       id: 'Id',
    #                       origin_path: 'OriginPath',
    #                       s3_origin_config: {
    #                         origin_access_identity: 'OriginAccessIdentity'
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 origin_groups: {
    #                   items: [
    #                     {
    #                       failover_criteria: {
    #                         status_codes: {
    #                           items: [
    #                             1
    #                           ],
    #                           quantity: 1
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 viewer_certificate: {
    #                   acm_certificate_arn: 'AcmCertificateArn',
    #                   certificate: 'Certificate',
    #                   certificate_source: 'CertificateSource',
    #                   cloud_front_default_certificate: false,
    #                   iam_certificate_id: 'IamCertificateId',
    #                   minimum_protocol_version: 'MinimumProtocolVersion',
    #                   ssl_support_method: 'SslSupportMethod'
    #                 },
    #                 status: 'Status',
    #                 web_acl_id: 'WebAclId'
    #               },
    #               aws_ec2_instance: {
    #                 type: 'Type',
    #                 image_id: 'ImageId',
    #                 key_name: 'KeyName',
    #                 iam_instance_profile_arn: 'IamInstanceProfileArn',
    #                 vpc_id: 'VpcId',
    #                 subnet_id: 'SubnetId',
    #                 launched_at: 'LaunchedAt',
    #                 network_interfaces: [
    #                   {
    #                     network_interface_id: 'NetworkInterfaceId'
    #                   }
    #                 ]
    #               },
    #               aws_ec2_network_interface: {
    #                 attachment: {
    #                   attach_time: 'AttachTime',
    #                   attachment_id: 'AttachmentId',
    #                   delete_on_termination: false,
    #                   device_index: 1,
    #                   instance_id: 'InstanceId',
    #                   instance_owner_id: 'InstanceOwnerId',
    #                   status: 'Status'
    #                 },
    #                 network_interface_id: 'NetworkInterfaceId',
    #                 security_groups: [
    #                   {
    #                     group_name: 'GroupName',
    #                     group_id: 'GroupId'
    #                   }
    #                 ],
    #                 source_dest_check: false,
    #                 ip_v6_addresses: [
    #                   {
    #                     ip_v6_address: 'IpV6Address'
    #                   }
    #                 ],
    #                 private_ip_addresses: [
    #                   {
    #                     private_ip_address: 'PrivateIpAddress',
    #                     private_dns_name: 'PrivateDnsName'
    #                   }
    #                 ],
    #                 public_dns_name: 'PublicDnsName',
    #                 public_ip: 'PublicIp'
    #               },
    #               aws_ec2_security_group: {
    #                 group_name: 'GroupName',
    #                 group_id: 'GroupId',
    #                 owner_id: 'OwnerId',
    #                 vpc_id: 'VpcId',
    #                 ip_permissions: [
    #                   {
    #                     ip_protocol: 'IpProtocol',
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: 'GroupId',
    #                         group_name: 'GroupName',
    #                         peering_status: 'PeeringStatus',
    #                         user_id: 'UserId',
    #                         vpc_id: 'VpcId',
    #                         vpc_peering_connection_id: 'VpcPeeringConnectionId'
    #                       }
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: 'CidrIp'
    #                       }
    #                     ],
    #                     ipv6_ranges: [
    #                       {
    #                         cidr_ipv6: 'CidrIpv6'
    #                       }
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: 'PrefixListId'
    #                       }
    #                     ]
    #                   }
    #                 ],
    #               },
    #               aws_ec2_volume: {
    #                 create_time: 'CreateTime',
    #                 encrypted: false,
    #                 size: 1,
    #                 snapshot_id: 'SnapshotId',
    #                 status: 'Status',
    #                 kms_key_id: 'KmsKeyId',
    #                 attachments: [
    #                   {
    #                     attach_time: 'AttachTime',
    #                     delete_on_termination: false,
    #                     instance_id: 'InstanceId',
    #                     status: 'Status'
    #                   }
    #                 ]
    #               },
    #               aws_ec2_vpc: {
    #                 cidr_block_association_set: [
    #                   {
    #                     association_id: 'AssociationId',
    #                     cidr_block: 'CidrBlock',
    #                     cidr_block_state: 'CidrBlockState'
    #                   }
    #                 ],
    #                 ipv6_cidr_block_association_set: [
    #                   {
    #                     association_id: 'AssociationId',
    #                     ipv6_cidr_block: 'Ipv6CidrBlock',
    #                     cidr_block_state: 'CidrBlockState'
    #                   }
    #                 ],
    #                 dhcp_options_id: 'DhcpOptionsId',
    #                 state: 'State'
    #               },
    #               aws_ec2_eip: {
    #                 instance_id: 'InstanceId',
    #                 public_ip: 'PublicIp',
    #                 allocation_id: 'AllocationId',
    #                 association_id: 'AssociationId',
    #                 domain: 'Domain',
    #                 public_ipv4_pool: 'PublicIpv4Pool',
    #                 network_border_group: 'NetworkBorderGroup',
    #                 network_interface_id: 'NetworkInterfaceId',
    #                 network_interface_owner_id: 'NetworkInterfaceOwnerId',
    #                 private_ip_address: 'PrivateIpAddress'
    #               },
    #               aws_ec2_subnet: {
    #                 assign_ipv6_address_on_creation: false,
    #                 availability_zone: 'AvailabilityZone',
    #                 availability_zone_id: 'AvailabilityZoneId',
    #                 available_ip_address_count: 1,
    #                 cidr_block: 'CidrBlock',
    #                 default_for_az: false,
    #                 map_public_ip_on_launch: false,
    #                 owner_id: 'OwnerId',
    #                 state: 'State',
    #                 subnet_arn: 'SubnetArn',
    #                 subnet_id: 'SubnetId',
    #                 vpc_id: 'VpcId',
    #               },
    #               aws_ec2_network_acl: {
    #                 is_default: false,
    #                 network_acl_id: 'NetworkAclId',
    #                 owner_id: 'OwnerId',
    #                 vpc_id: 'VpcId',
    #                 associations: [
    #                   {
    #                     network_acl_association_id: 'NetworkAclAssociationId',
    #                     network_acl_id: 'NetworkAclId',
    #                     subnet_id: 'SubnetId'
    #                   }
    #                 ],
    #                 entries: [
    #                   {
    #                     cidr_block: 'CidrBlock',
    #                     egress: false,
    #                     icmp_type_code: {
    #                       code: 1,
    #                       type: 1
    #                     },
    #                     ipv6_cidr_block: 'Ipv6CidrBlock',
    #                     port_range: {
    #                       from: 1,
    #                       to: 1
    #                     },
    #                     protocol: 'Protocol',
    #                     rule_action: 'RuleAction',
    #                     rule_number: 1
    #                   }
    #                 ]
    #               },
    #               aws_elbv2_load_balancer: {
    #                 availability_zones: [
    #                   {
    #                     zone_name: 'ZoneName',
    #                     subnet_id: 'SubnetId'
    #                   }
    #                 ],
    #                 canonical_hosted_zone_id: 'CanonicalHostedZoneId',
    #                 created_time: 'CreatedTime',
    #                 dns_name: 'DNSName',
    #                 ip_address_type: 'IpAddressType',
    #                 scheme: 'Scheme',
    #                 security_groups: [
    #                   'member'
    #                 ],
    #                 state: {
    #                   code: 'Code',
    #                   reason: 'Reason'
    #                 },
    #                 type: 'Type',
    #                 vpc_id: 'VpcId',
    #                 load_balancer_attributes: [
    #                   {
    #                     key: 'Key',
    #                     value: 'Value'
    #                   }
    #                 ]
    #               },
    #               aws_elastic_beanstalk_environment: {
    #                 application_name: 'ApplicationName',
    #                 cname: 'Cname',
    #                 date_created: 'DateCreated',
    #                 date_updated: 'DateUpdated',
    #                 description: 'Description',
    #                 endpoint_url: 'EndpointUrl',
    #                 environment_arn: 'EnvironmentArn',
    #                 environment_id: 'EnvironmentId',
    #                 environment_links: [
    #                   {
    #                     environment_name: 'EnvironmentName',
    #                     link_name: 'LinkName'
    #                   }
    #                 ],
    #                 environment_name: 'EnvironmentName',
    #                 option_settings: [
    #                   {
    #                     namespace: 'Namespace',
    #                     option_name: 'OptionName',
    #                     resource_name: 'ResourceName',
    #                     value: 'Value'
    #                   }
    #                 ],
    #                 platform_arn: 'PlatformArn',
    #                 solution_stack_name: 'SolutionStackName',
    #                 status: 'Status',
    #                 tier: {
    #                   name: 'Name',
    #                   type: 'Type',
    #                   version: 'Version'
    #                 },
    #                 version_label: 'VersionLabel'
    #               },
    #               aws_elasticsearch_domain: {
    #                 access_policies: 'AccessPolicies',
    #                 domain_endpoint_options: {
    #                   enforce_https: false,
    #                   tls_security_policy: 'TLSSecurityPolicy'
    #                 },
    #                 domain_id: 'DomainId',
    #                 domain_name: 'DomainName',
    #                 endpoint: 'Endpoint',
    #                 elasticsearch_version: 'ElasticsearchVersion',
    #                 elasticsearch_cluster_config: {
    #                   dedicated_master_count: 1,
    #                   dedicated_master_enabled: false,
    #                   dedicated_master_type: 'DedicatedMasterType',
    #                   instance_count: 1,
    #                   instance_type: 'InstanceType',
    #                   zone_awareness_config: {
    #                     availability_zone_count: 1
    #                   },
    #                   zone_awareness_enabled: false
    #                 },
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: 'KmsKeyId'
    #                 },
    #                 log_publishing_options: {
    #                   index_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #                     enabled: false
    #                   },
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false
    #                 },
    #                 service_software_options: {
    #                   automated_update_date: 'AutomatedUpdateDate',
    #                   cancellable: false,
    #                   current_version: 'CurrentVersion',
    #                   description: 'Description',
    #                   new_version: 'NewVersion',
    #                   update_available: false,
    #                   update_status: 'UpdateStatus'
    #                 },
    #                 vpc_options: {
    #                   vpc_id: 'VPCId'
    #                 }
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: 'OwnerId',
    #                 owner_name: 'OwnerName',
    #                 owner_account_id: 'OwnerAccountId',
    #                 created_at: 'CreatedAt',
    #                 server_side_encryption_configuration: {
    #                   rules: [
    #                     {
    #                       apply_server_side_encryption_by_default: {
    #                         sse_algorithm: 'SSEAlgorithm',
    #                         kms_master_key_id: 'KMSMasterKeyID'
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 bucket_lifecycle_configuration: {
    #                   rules: [
    #                     {
    #                       abort_incomplete_multipart_upload: {
    #                         days_after_initiation: 1
    #                       },
    #                       expiration_date: 'ExpirationDate',
    #                       expiration_in_days: 1,
    #                       expired_object_delete_marker: false,
    #                       filter: {
    #                         predicate: {
    #                           operands: [
    #                             {
    #                               prefix: 'Prefix',
    #                               tag: {
    #                                 key: 'Key',
    #                                 value: 'Value'
    #                               },
    #                               type: 'Type'
    #                             }
    #                           ],
    #                           prefix: 'Prefix',
    #                           tag: {
    #                             key: 'Key',
    #                             value: 'Value'
    #                           },
    #                           type: 'Type'
    #                         }
    #                       },
    #                       id: 'ID',
    #                       noncurrent_version_expiration_in_days: 1,
    #                       noncurrent_version_transitions: [
    #                         {
    #                           days: 1,
    #                           storage_class: 'StorageClass'
    #                         }
    #                       ],
    #                       prefix: 'Prefix',
    #                       status: 'Status',
    #                       transitions: [
    #                         {
    #                           date: 'Date',
    #                           days: 1,
    #                           storage_class: 'StorageClass'
    #                         }
    #                       ]
    #                     }
    #                   ]
    #                 },
    #                 public_access_block_configuration: {
    #                   block_public_acls: false,
    #                   block_public_policy: false,
    #                   ignore_public_acls: false,
    #                   restrict_public_buckets: false
    #                 },
    #                 access_control_list: 'AccessControlList',
    #                 bucket_logging_configuration: {
    #                   destination_bucket_name: 'DestinationBucketName',
    #                   log_file_prefix: 'LogFilePrefix'
    #                 },
    #                 bucket_website_configuration: {
    #                   error_document: 'ErrorDocument',
    #                   index_document_suffix: 'IndexDocumentSuffix',
    #                   redirect_all_requests_to: {
    #                     hostname: 'Hostname',
    #                     protocol: 'Protocol'
    #                   },
    #                   routing_rules: [
    #                     {
    #                       condition: {
    #                         http_error_code_returned_equals: 'HttpErrorCodeReturnedEquals',
    #                         key_prefix_equals: 'KeyPrefixEquals'
    #                       },
    #                       redirect: {
    #                         hostname: 'Hostname',
    #                         http_redirect_code: 'HttpRedirectCode',
    #                         protocol: 'Protocol',
    #                         replace_key_prefix_with: 'ReplaceKeyPrefixWith',
    #                         replace_key_with: 'ReplaceKeyWith'
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 bucket_notification_configuration: {
    #                   configurations: [
    #                     {
    #                       events: [
    #                         'member'
    #                       ],
    #                       filter: {
    #                         s3_key_filter: {
    #                           filter_rules: [
    #                             {
    #                               name: 'Prefix', # accepts ["Prefix", "Suffix"]
    #                               value: 'Value'
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       destination: 'Destination',
    #                       type: 'Type'
    #                     }
    #                   ]
    #                 },
    #                 bucket_versioning_configuration: {
    #                   is_mfa_delete_enabled: false,
    #                   status: 'Status'
    #                 }
    #               },
    #               aws_s3_object: {
    #                 last_modified: 'LastModified',
    #                 e_tag: 'ETag',
    #                 version_id: 'VersionId',
    #                 content_type: 'ContentType',
    #                 server_side_encryption: 'ServerSideEncryption',
    #                 ssekms_key_id: 'SSEKMSKeyId'
    #               },
    #               aws_secrets_manager_secret: {
    #                 rotation_rules: {
    #                   automatically_after_days: 1
    #                 },
    #                 rotation_occurred_within_frequency: false,
    #                 kms_key_id: 'KmsKeyId',
    #                 rotation_enabled: false,
    #                 rotation_lambda_arn: 'RotationLambdaArn',
    #                 deleted: false,
    #                 name: 'Name',
    #                 description: 'Description'
    #               },
    #               aws_iam_access_key: {
    #                 user_name: 'UserName',
    #                 status: 'Active', # accepts ["Active", "Inactive"]
    #                 created_at: 'CreatedAt',
    #                 principal_id: 'PrincipalId',
    #                 principal_type: 'PrincipalType',
    #                 principal_name: 'PrincipalName',
    #                 account_id: 'AccountId',
    #                 access_key_id: 'AccessKeyId',
    #                 session_context: {
    #                   attributes: {
    #                     mfa_authenticated: false,
    #                     creation_date: 'CreationDate'
    #                   },
    #                   session_issuer: {
    #                     type: 'Type',
    #                     principal_id: 'PrincipalId',
    #                     arn: 'Arn',
    #                     account_id: 'AccountId',
    #                     user_name: 'UserName'
    #                   }
    #                 }
    #               },
    #               aws_iam_user: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: 'PolicyName',
    #                     policy_arn: 'PolicyArn'
    #                   }
    #                 ],
    #                 create_date: 'CreateDate',
    #                 path: 'Path',
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: 'PermissionsBoundaryArn',
    #                   permissions_boundary_type: 'PermissionsBoundaryType'
    #                 },
    #                 user_id: 'UserId',
    #                 user_name: 'UserName',
    #                 user_policy_list: [
    #                   {
    #                     policy_name: 'PolicyName'
    #                   }
    #                 ]
    #               },
    #               aws_iam_policy: {
    #                 attachment_count: 1,
    #                 create_date: 'CreateDate',
    #                 default_version_id: 'DefaultVersionId',
    #                 description: 'Description',
    #                 is_attachable: false,
    #                 path: 'Path',
    #                 permissions_boundary_usage_count: 1,
    #                 policy_id: 'PolicyId',
    #                 policy_name: 'PolicyName',
    #                 policy_version_list: [
    #                   {
    #                     version_id: 'VersionId',
    #                     is_default_version: false,
    #                     create_date: 'CreateDate'
    #                   }
    #                 ],
    #                 update_date: 'UpdateDate'
    #               },
    #               aws_api_gateway_v2_stage: {
    #                 client_certificate_id: 'ClientCertificateId',
    #                 created_date: 'CreatedDate',
    #                 description: 'Description',
    #                 default_route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: 'LoggingLevel',
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0
    #                 },
    #                 deployment_id: 'DeploymentId',
    #                 last_updated_date: 'LastUpdatedDate',
    #                 stage_name: 'StageName',
    #                 access_log_settings: {
    #                   format: 'Format',
    #                   destination_arn: 'DestinationArn'
    #                 },
    #                 auto_deploy: false,
    #                 last_deployment_status_message: 'LastDeploymentStatusMessage',
    #                 api_gateway_managed: false
    #               },
    #               aws_api_gateway_v2_api: {
    #                 api_endpoint: 'ApiEndpoint',
    #                 api_id: 'ApiId',
    #                 api_key_selection_expression: 'ApiKeySelectionExpression',
    #                 created_date: 'CreatedDate',
    #                 description: 'Description',
    #                 version: 'Version',
    #                 name: 'Name',
    #                 protocol_type: 'ProtocolType',
    #                 route_selection_expression: 'RouteSelectionExpression',
    #                 cors_configuration: {
    #                   allow_credentials: false,
    #                   max_age: 1,
    #                 }
    #               },
    #               aws_dynamo_db_table: {
    #                 attribute_definitions: [
    #                   {
    #                     attribute_name: 'AttributeName',
    #                     attribute_type: 'AttributeType'
    #                   }
    #                 ],
    #                 billing_mode_summary: {
    #                   billing_mode: 'BillingMode',
    #                   last_update_to_pay_per_request_date_time: 'LastUpdateToPayPerRequestDateTime'
    #                 },
    #                 creation_date_time: 'CreationDateTime',
    #                 global_secondary_indexes: [
    #                   {
    #                     backfilling: false,
    #                     index_arn: 'IndexArn',
    #                     index_name: 'IndexName',
    #                     index_size_bytes: 1,
    #                     index_status: 'IndexStatus',
    #                     item_count: 1,
    #                     key_schema: [
    #                       {
    #                         attribute_name: 'AttributeName',
    #                         key_type: 'KeyType'
    #                       }
    #                     ],
    #                     projection: {
    #                       projection_type: 'ProjectionType'
    #                     },
    #                     provisioned_throughput: {
    #                       last_decrease_date_time: 'LastDecreaseDateTime',
    #                       last_increase_date_time: 'LastIncreaseDateTime',
    #                       number_of_decreases_today: 1,
    #                       read_capacity_units: 1,
    #                       write_capacity_units: 1
    #                     }
    #                   }
    #                 ],
    #                 global_table_version: 'GlobalTableVersion',
    #                 item_count: 1,
    #                 latest_stream_arn: 'LatestStreamArn',
    #                 latest_stream_label: 'LatestStreamLabel',
    #                 local_secondary_indexes: [
    #                   {
    #                     index_arn: 'IndexArn',
    #                     index_name: 'IndexName',
    #                   }
    #                 ],
    #                 replicas: [
    #                   {
    #                     global_secondary_indexes: [
    #                       {
    #                         index_name: 'IndexName',
    #                         provisioned_throughput_override: {
    #                           read_capacity_units: 1
    #                         }
    #                       }
    #                     ],
    #                     kms_master_key_id: 'KmsMasterKeyId',
    #                     region_name: 'RegionName',
    #                     replica_status: 'ReplicaStatus',
    #                     replica_status_description: 'ReplicaStatusDescription'
    #                   }
    #                 ],
    #                 restore_summary: {
    #                   source_backup_arn: 'SourceBackupArn',
    #                   source_table_arn: 'SourceTableArn',
    #                   restore_date_time: 'RestoreDateTime',
    #                   restore_in_progress: false
    #                 },
    #                 sse_description: {
    #                   inaccessible_encryption_date_time: 'InaccessibleEncryptionDateTime',
    #                   status: 'Status',
    #                   sse_type: 'SseType',
    #                   kms_master_key_arn: 'KmsMasterKeyArn'
    #                 },
    #                 stream_specification: {
    #                   stream_enabled: false,
    #                   stream_view_type: 'StreamViewType'
    #                 },
    #                 table_id: 'TableId',
    #                 table_name: 'TableName',
    #                 table_size_bytes: 1,
    #                 table_status: 'TableStatus'
    #               },
    #               aws_api_gateway_stage: {
    #                 deployment_id: 'DeploymentId',
    #                 client_certificate_id: 'ClientCertificateId',
    #                 stage_name: 'StageName',
    #                 description: 'Description',
    #                 cache_cluster_enabled: false,
    #                 cache_cluster_size: 'CacheClusterSize',
    #                 cache_cluster_status: 'CacheClusterStatus',
    #                 method_settings: [
    #                   {
    #                     metrics_enabled: false,
    #                     logging_level: 'LoggingLevel',
    #                     data_trace_enabled: false,
    #                     throttling_burst_limit: 1,
    #                     throttling_rate_limit: 1.0,
    #                     caching_enabled: false,
    #                     cache_ttl_in_seconds: 1,
    #                     cache_data_encrypted: false,
    #                     require_authorization_for_cache_control: false,
    #                     unauthorized_cache_control_header_strategy: 'UnauthorizedCacheControlHeaderStrategy',
    #                     http_method: 'HttpMethod',
    #                     resource_path: 'ResourcePath'
    #                   }
    #                 ],
    #                 documentation_version: 'DocumentationVersion',
    #                 canary_settings: {
    #                   percent_traffic: 1.0,
    #                   deployment_id: 'DeploymentId',
    #                   use_stage_cache: false
    #                 },
    #                 tracing_enabled: false,
    #                 created_date: 'CreatedDate',
    #                 last_updated_date: 'LastUpdatedDate',
    #                 web_acl_arn: 'WebAclArn'
    #               },
    #               aws_api_gateway_rest_api: {
    #                 id: 'Id',
    #                 name: 'Name',
    #                 description: 'Description',
    #                 created_date: 'CreatedDate',
    #                 version: 'Version',
    #                 minimum_compression_size: 1,
    #                 api_key_source: 'ApiKeySource',
    #                 endpoint_configuration: {
    #                 }
    #               },
    #               aws_cloud_trail_trail: {
    #                 cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #                 cloud_watch_logs_role_arn: 'CloudWatchLogsRoleArn',
    #                 has_custom_event_selectors: false,
    #                 home_region: 'HomeRegion',
    #                 include_global_service_events: false,
    #                 is_multi_region_trail: false,
    #                 is_organization_trail: false,
    #                 kms_key_id: 'KmsKeyId',
    #                 log_file_validation_enabled: false,
    #                 name: 'Name',
    #                 s3_bucket_name: 'S3BucketName',
    #                 s3_key_prefix: 'S3KeyPrefix',
    #                 sns_topic_arn: 'SnsTopicArn',
    #                 sns_topic_name: 'SnsTopicName',
    #                 trail_arn: 'TrailArn'
    #               },
    #               aws_ssm_patch_compliance: {
    #                 patch: {
    #                   compliance_summary: {
    #                     status: 'Status',
    #                     compliant_critical_count: 1,
    #                     compliant_high_count: 1,
    #                     compliant_medium_count: 1,
    #                     execution_type: 'ExecutionType',
    #                     non_compliant_critical_count: 1,
    #                     compliant_informational_count: 1,
    #                     non_compliant_informational_count: 1,
    #                     compliant_unspecified_count: 1,
    #                     non_compliant_low_count: 1,
    #                     non_compliant_high_count: 1,
    #                     compliant_low_count: 1,
    #                     compliance_type: 'ComplianceType',
    #                     patch_baseline_id: 'PatchBaselineId',
    #                     overall_severity: 'OverallSeverity',
    #                     non_compliant_medium_count: 1,
    #                     non_compliant_unspecified_count: 1,
    #                     patch_group: 'PatchGroup'
    #                   }
    #                 }
    #               },
    #               aws_certificate_manager_certificate: {
    #                 certificate_authority_arn: 'CertificateAuthorityArn',
    #                 created_at: 'CreatedAt',
    #                 domain_name: 'DomainName',
    #                 domain_validation_options: [
    #                   {
    #                     domain_name: 'DomainName',
    #                     resource_record: {
    #                       name: 'Name',
    #                       type: 'Type',
    #                       value: 'Value'
    #                     },
    #                     validation_domain: 'ValidationDomain',
    #                     validation_method: 'ValidationMethod',
    #                     validation_status: 'ValidationStatus'
    #                   }
    #                 ],
    #                 extended_key_usages: [
    #                   {
    #                     name: 'Name',
    #                     o_id: 'OId'
    #                   }
    #                 ],
    #                 failure_reason: 'FailureReason',
    #                 imported_at: 'ImportedAt',
    #                 issued_at: 'IssuedAt',
    #                 issuer: 'Issuer',
    #                 key_algorithm: 'KeyAlgorithm',
    #                 key_usages: [
    #                   {
    #                     name: 'Name'
    #                   }
    #                 ],
    #                 not_after: 'NotAfter',
    #                 not_before: 'NotBefore',
    #                 options: {
    #                   certificate_transparency_logging_preference: 'CertificateTransparencyLoggingPreference'
    #                 },
    #                 renewal_eligibility: 'RenewalEligibility',
    #                 renewal_summary: {
    #                   renewal_status: 'RenewalStatus',
    #                   renewal_status_reason: 'RenewalStatusReason',
    #                   updated_at: 'UpdatedAt'
    #                 },
    #                 serial: 'Serial',
    #                 signature_algorithm: 'SignatureAlgorithm',
    #                 status: 'Status',
    #                 subject: 'Subject',
    #                 type: 'Type'
    #               },
    #               aws_redshift_cluster: {
    #                 allow_version_upgrade: false,
    #                 automated_snapshot_retention_period: 1,
    #                 availability_zone: 'AvailabilityZone',
    #                 cluster_availability_status: 'ClusterAvailabilityStatus',
    #                 cluster_create_time: 'ClusterCreateTime',
    #                 cluster_identifier: 'ClusterIdentifier',
    #                 cluster_nodes: [
    #                   {
    #                     node_role: 'NodeRole',
    #                     private_ip_address: 'PrivateIpAddress',
    #                     public_ip_address: 'PublicIpAddress'
    #                   }
    #                 ],
    #                 cluster_parameter_groups: [
    #                   {
    #                     cluster_parameter_status_list: [
    #                       {
    #                         parameter_name: 'ParameterName',
    #                         parameter_apply_status: 'ParameterApplyStatus',
    #                         parameter_apply_error_description: 'ParameterApplyErrorDescription'
    #                       }
    #                     ],
    #                     parameter_apply_status: 'ParameterApplyStatus',
    #                     parameter_group_name: 'ParameterGroupName'
    #                   }
    #                 ],
    #                 cluster_public_key: 'ClusterPublicKey',
    #                 cluster_revision_number: 'ClusterRevisionNumber',
    #                 cluster_security_groups: [
    #                   {
    #                     cluster_security_group_name: 'ClusterSecurityGroupName',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 cluster_snapshot_copy_status: {
    #                   destination_region: 'DestinationRegion',
    #                   manual_snapshot_retention_period: 1,
    #                   retention_period: 1,
    #                   snapshot_copy_grant_name: 'SnapshotCopyGrantName'
    #                 },
    #                 cluster_status: 'ClusterStatus',
    #                 cluster_subnet_group_name: 'ClusterSubnetGroupName',
    #                 cluster_version: 'ClusterVersion',
    #                 db_name: 'DBName',
    #                 deferred_maintenance_windows: [
    #                   {
    #                     defer_maintenance_end_time: 'DeferMaintenanceEndTime',
    #                     defer_maintenance_identifier: 'DeferMaintenanceIdentifier',
    #                     defer_maintenance_start_time: 'DeferMaintenanceStartTime'
    #                   }
    #                 ],
    #                 elastic_ip_status: {
    #                   elastic_ip: 'ElasticIp',
    #                   status: 'Status'
    #                 },
    #                 elastic_resize_number_of_node_options: 'ElasticResizeNumberOfNodeOptions',
    #                 encrypted: false,
    #                 endpoint: {
    #                   address: 'Address',
    #                   port: 1
    #                 },
    #                 enhanced_vpc_routing: false,
    #                 expected_next_snapshot_schedule_time: 'ExpectedNextSnapshotScheduleTime',
    #                 expected_next_snapshot_schedule_time_status: 'ExpectedNextSnapshotScheduleTimeStatus',
    #                 hsm_status: {
    #                   hsm_client_certificate_identifier: 'HsmClientCertificateIdentifier',
    #                   hsm_configuration_identifier: 'HsmConfigurationIdentifier',
    #                   status: 'Status'
    #                 },
    #                 iam_roles: [
    #                   {
    #                     apply_status: 'ApplyStatus',
    #                     iam_role_arn: 'IamRoleArn'
    #                   }
    #                 ],
    #                 kms_key_id: 'KmsKeyId',
    #                 maintenance_track_name: 'MaintenanceTrackName',
    #                 manual_snapshot_retention_period: 1,
    #                 master_username: 'MasterUsername',
    #                 next_maintenance_window_start_time: 'NextMaintenanceWindowStartTime',
    #                 node_type: 'NodeType',
    #                 number_of_nodes: 1,
    #                 pending_modified_values: {
    #                   automated_snapshot_retention_period: 1,
    #                   cluster_identifier: 'ClusterIdentifier',
    #                   cluster_type: 'ClusterType',
    #                   cluster_version: 'ClusterVersion',
    #                   encryption_type: 'EncryptionType',
    #                   enhanced_vpc_routing: false,
    #                   maintenance_track_name: 'MaintenanceTrackName',
    #                   master_user_password: 'MasterUserPassword',
    #                   node_type: 'NodeType',
    #                   number_of_nodes: 1,
    #                   publicly_accessible: false
    #                 },
    #                 preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #                 publicly_accessible: false,
    #                 resize_info: {
    #                   allow_cancel_resize: false,
    #                   resize_type: 'ResizeType'
    #                 },
    #                 restore_status: {
    #                   current_restore_rate_in_mega_bytes_per_second: 1.0,
    #                   elapsed_time_in_seconds: 1,
    #                   estimated_time_to_completion_in_seconds: 1,
    #                   progress_in_mega_bytes: 1,
    #                   snapshot_size_in_mega_bytes: 1,
    #                   status: 'Status'
    #                 },
    #                 snapshot_schedule_identifier: 'SnapshotScheduleIdentifier',
    #                 snapshot_schedule_state: 'SnapshotScheduleState',
    #                 vpc_id: 'VpcId',
    #                 vpc_security_groups: [
    #                   {
    #                     status: 'Status',
    #                     vpc_security_group_id: 'VpcSecurityGroupId'
    #                   }
    #                 ],
    #                 logging_status: {
    #                   bucket_name: 'BucketName',
    #                   last_failure_message: 'LastFailureMessage',
    #                   last_failure_time: 'LastFailureTime',
    #                   last_successful_delivery_time: 'LastSuccessfulDeliveryTime',
    #                   logging_enabled: false,
    #                   s3_key_prefix: 'S3KeyPrefix'
    #                 }
    #               },
    #               aws_elb_load_balancer: {
    #                 backend_server_descriptions: [
    #                   {
    #                     instance_port: 1,
    #                   }
    #                 ],
    #                 canonical_hosted_zone_name: 'CanonicalHostedZoneName',
    #                 canonical_hosted_zone_name_id: 'CanonicalHostedZoneNameID',
    #                 created_time: 'CreatedTime',
    #                 dns_name: 'DnsName',
    #                 health_check: {
    #                   healthy_threshold: 1,
    #                   interval: 1,
    #                   target: 'Target',
    #                   timeout: 1,
    #                   unhealthy_threshold: 1
    #                 },
    #                 instances: [
    #                   {
    #                     instance_id: 'InstanceId'
    #                   }
    #                 ],
    #                 listener_descriptions: [
    #                   {
    #                     listener: {
    #                       instance_port: 1,
    #                       instance_protocol: 'InstanceProtocol',
    #                       load_balancer_port: 1,
    #                       protocol: 'Protocol',
    #                       ssl_certificate_id: 'SslCertificateId'
    #                     },
    #                   }
    #                 ],
    #                 load_balancer_attributes: {
    #                   access_log: {
    #                     emit_interval: 1,
    #                     enabled: false,
    #                     s3_bucket_name: 'S3BucketName',
    #                     s3_bucket_prefix: 'S3BucketPrefix'
    #                   },
    #                   connection_draining: {
    #                     enabled: false,
    #                     timeout: 1
    #                   },
    #                   connection_settings: {
    #                     idle_timeout: 1
    #                   },
    #                   cross_zone_load_balancing: {
    #                     enabled: false
    #                   },
    #                   additional_attributes: [
    #                     {
    #                       key: 'Key',
    #                       value: 'Value'
    #                     }
    #                   ]
    #                 },
    #                 load_balancer_name: 'LoadBalancerName',
    #                 policies: {
    #                   app_cookie_stickiness_policies: [
    #                     {
    #                       cookie_name: 'CookieName',
    #                       policy_name: 'PolicyName'
    #                     }
    #                   ],
    #                   lb_cookie_stickiness_policies: [
    #                     {
    #                       cookie_expiration_period: 1,
    #                       policy_name: 'PolicyName'
    #                     }
    #                   ],
    #                 },
    #                 scheme: 'Scheme',
    #                 source_security_group: {
    #                   group_name: 'GroupName',
    #                   owner_alias: 'OwnerAlias'
    #                 },
    #                 vpc_id: 'VpcId'
    #               },
    #               aws_iam_group: {
    #                 create_date: 'CreateDate',
    #                 group_id: 'GroupId',
    #                 group_name: 'GroupName',
    #                 group_policy_list: [
    #                   {
    #                     policy_name: 'PolicyName'
    #                   }
    #                 ],
    #                 path: 'Path'
    #               },
    #               aws_iam_role: {
    #                 assume_role_policy_document: 'AssumeRolePolicyDocument',
    #                 create_date: 'CreateDate',
    #                 instance_profile_list: [
    #                   {
    #                     arn: 'Arn',
    #                     create_date: 'CreateDate',
    #                     instance_profile_id: 'InstanceProfileId',
    #                     instance_profile_name: 'InstanceProfileName',
    #                     path: 'Path',
    #                     roles: [
    #                       {
    #                         arn: 'Arn',
    #                         assume_role_policy_document: 'AssumeRolePolicyDocument',
    #                         create_date: 'CreateDate',
    #                         path: 'Path',
    #                         role_id: 'RoleId',
    #                         role_name: 'RoleName'
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 role_id: 'RoleId',
    #                 role_name: 'RoleName',
    #                 role_policy_list: [
    #                   {
    #                     policy_name: 'PolicyName'
    #                   }
    #                 ],
    #                 max_session_duration: 1,
    #                 path: 'Path'
    #               },
    #               aws_kms_key: {
    #                 aws_account_id: 'AWSAccountId',
    #                 creation_date: 1.0,
    #                 key_id: 'KeyId',
    #                 key_manager: 'KeyManager',
    #                 key_state: 'KeyState',
    #                 origin: 'Origin',
    #                 description: 'Description',
    #                 key_rotation_status: false
    #               },
    #               aws_lambda_function: {
    #                 code: {
    #                   s3_bucket: 'S3Bucket',
    #                   s3_key: 'S3Key',
    #                   s3_object_version: 'S3ObjectVersion',
    #                   zip_file: 'ZipFile'
    #                 },
    #                 code_sha256: 'CodeSha256',
    #                 dead_letter_config: {
    #                   target_arn: 'TargetArn'
    #                 },
    #                 environment: {
    #                   error: {
    #                     error_code: 'ErrorCode',
    #                     message: 'Message'
    #                   }
    #                 },
    #                 function_name: 'FunctionName',
    #                 handler: 'Handler',
    #                 kms_key_arn: 'KmsKeyArn',
    #                 last_modified: 'LastModified',
    #                 layers: [
    #                   {
    #                     arn: 'Arn',
    #                     code_size: 1
    #                   }
    #                 ],
    #                 master_arn: 'MasterArn',
    #                 memory_size: 1,
    #                 revision_id: 'RevisionId',
    #                 role: 'Role',
    #                 runtime: 'Runtime',
    #                 timeout: 1,
    #                 tracing_config: {
    #                   mode: 'Mode'
    #                 },
    #                 vpc_config: {
    #                   vpc_id: 'VpcId'
    #                 },
    #                 version: 'Version'
    #               },
    #               aws_lambda_layer_version: {
    #                 version: 1,
    #                 created_date: 'CreatedDate'
    #               },
    #               aws_rds_db_instance: {
    #                 associated_roles: [
    #                   {
    #                     role_arn: 'RoleArn',
    #                     feature_name: 'FeatureName',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 ca_certificate_identifier: 'CACertificateIdentifier',
    #                 db_cluster_identifier: 'DBClusterIdentifier',
    #                 db_instance_identifier: 'DBInstanceIdentifier',
    #                 db_instance_class: 'DBInstanceClass',
    #                 db_instance_port: 1,
    #                 dbi_resource_id: 'DbiResourceId',
    #                 db_name: 'DBName',
    #                 deletion_protection: false,
    #                 endpoint: {
    #                   address: 'Address',
    #                   port: 1,
    #                   hosted_zone_id: 'HostedZoneId'
    #                 },
    #                 engine: 'Engine',
    #                 engine_version: 'EngineVersion',
    #                 iam_database_authentication_enabled: false,
    #                 instance_create_time: 'InstanceCreateTime',
    #                 kms_key_id: 'KmsKeyId',
    #                 publicly_accessible: false,
    #                 storage_encrypted: false,
    #                 tde_credential_arn: 'TdeCredentialArn',
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: 'VpcSecurityGroupId',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 multi_az: false,
    #                 enhanced_monitoring_resource_arn: 'EnhancedMonitoringResourceArn',
    #                 db_instance_status: 'DbInstanceStatus',
    #                 master_username: 'MasterUsername',
    #                 allocated_storage: 1,
    #                 preferred_backup_window: 'PreferredBackupWindow',
    #                 backup_retention_period: 1,
    #                 db_parameter_groups: [
    #                   {
    #                     db_parameter_group_name: 'DbParameterGroupName',
    #                     parameter_apply_status: 'ParameterApplyStatus'
    #                   }
    #                 ],
    #                 availability_zone: 'AvailabilityZone',
    #                 db_subnet_group: {
    #                   db_subnet_group_name: 'DbSubnetGroupName',
    #                   db_subnet_group_description: 'DbSubnetGroupDescription',
    #                   vpc_id: 'VpcId',
    #                   subnet_group_status: 'SubnetGroupStatus',
    #                   subnets: [
    #                     {
    #                       subnet_identifier: 'SubnetIdentifier',
    #                       subnet_availability_zone: {
    #                         name: 'Name'
    #                       },
    #                       subnet_status: 'SubnetStatus'
    #                     }
    #                   ],
    #                   db_subnet_group_arn: 'DbSubnetGroupArn'
    #                 },
    #                 preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #                 pending_modified_values: {
    #                   db_instance_class: 'DbInstanceClass',
    #                   allocated_storage: 1,
    #                   master_user_password: 'MasterUserPassword',
    #                   port: 1,
    #                   backup_retention_period: 1,
    #                   multi_az: false,
    #                   engine_version: 'EngineVersion',
    #                   license_model: 'LicenseModel',
    #                   iops: 1,
    #                   db_instance_identifier: 'DbInstanceIdentifier',
    #                   storage_type: 'StorageType',
    #                   ca_certificate_identifier: 'CaCertificateIdentifier',
    #                   db_subnet_group_name: 'DbSubnetGroupName',
    #                   pending_cloud_watch_logs_exports: {
    #                   },
    #                   processor_features: [
    #                     {
    #                       name: 'Name',
    #                       value: 'Value'
    #                     }
    #                   ]
    #                 },
    #                 latest_restorable_time: 'LatestRestorableTime',
    #                 auto_minor_version_upgrade: false,
    #                 read_replica_source_db_instance_identifier: 'ReadReplicaSourceDBInstanceIdentifier',
    #                 license_model: 'LicenseModel',
    #                 iops: 1,
    #                 option_group_memberships: [
    #                   {
    #                     option_group_name: 'OptionGroupName',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 character_set_name: 'CharacterSetName',
    #                 secondary_availability_zone: 'SecondaryAvailabilityZone',
    #                 status_infos: [
    #                   {
    #                     status_type: 'StatusType',
    #                     normal: false,
    #                     status: 'Status',
    #                     message: 'Message'
    #                   }
    #                 ],
    #                 storage_type: 'StorageType',
    #                 domain_memberships: [
    #                   {
    #                     domain: 'Domain',
    #                     status: 'Status',
    #                     fqdn: 'Fqdn',
    #                     iam_role_name: 'IamRoleName'
    #                   }
    #                 ],
    #                 copy_tags_to_snapshot: false,
    #                 monitoring_interval: 1,
    #                 monitoring_role_arn: 'MonitoringRoleArn',
    #                 promotion_tier: 1,
    #                 timezone: 'Timezone',
    #                 performance_insights_enabled: false,
    #                 performance_insights_kms_key_id: 'PerformanceInsightsKmsKeyId',
    #                 performance_insights_retention_period: 1,
    #                 max_allocated_storage: 1
    #               },
    #               aws_sns_topic: {
    #                 kms_master_key_id: 'KmsMasterKeyId',
    #                 subscription: [
    #                   {
    #                     endpoint: 'Endpoint',
    #                     protocol: 'Protocol'
    #                   }
    #                 ],
    #                 topic_name: 'TopicName',
    #                 owner: 'Owner'
    #               },
    #               aws_sqs_queue: {
    #                 kms_data_key_reuse_period_seconds: 1,
    #                 kms_master_key_id: 'KmsMasterKeyId',
    #                 queue_name: 'QueueName',
    #                 dead_letter_target_arn: 'DeadLetterTargetArn'
    #               },
    #               aws_waf_web_acl: {
    #                 name: 'Name',
    #                 default_action: 'DefaultAction',
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: 'Type'
    #                     },
    #                     excluded_rules: [
    #                       {
    #                         rule_id: 'RuleId'
    #                       }
    #                     ],
    #                     override_action: {
    #                       type: 'Type'
    #                     },
    #                     priority: 1,
    #                     rule_id: 'RuleId',
    #                     type: 'Type'
    #                   }
    #                 ],
    #                 web_acl_id: 'WebAclId'
    #               },
    #               aws_rds_db_snapshot: {
    #                 db_snapshot_identifier: 'DbSnapshotIdentifier',
    #                 db_instance_identifier: 'DbInstanceIdentifier',
    #                 snapshot_create_time: 'SnapshotCreateTime',
    #                 engine: 'Engine',
    #                 allocated_storage: 1,
    #                 status: 'Status',
    #                 port: 1,
    #                 availability_zone: 'AvailabilityZone',
    #                 vpc_id: 'VpcId',
    #                 instance_create_time: 'InstanceCreateTime',
    #                 master_username: 'MasterUsername',
    #                 engine_version: 'EngineVersion',
    #                 license_model: 'LicenseModel',
    #                 snapshot_type: 'SnapshotType',
    #                 iops: 1,
    #                 option_group_name: 'OptionGroupName',
    #                 percent_progress: 1,
    #                 source_region: 'SourceRegion',
    #                 source_db_snapshot_identifier: 'SourceDbSnapshotIdentifier',
    #                 storage_type: 'StorageType',
    #                 tde_credential_arn: 'TdeCredentialArn',
    #                 encrypted: false,
    #                 kms_key_id: 'KmsKeyId',
    #                 timezone: 'Timezone',
    #                 iam_database_authentication_enabled: false,
    #                 dbi_resource_id: 'DbiResourceId'
    #               },
    #               aws_rds_db_cluster_snapshot: {
    #                 snapshot_create_time: 'SnapshotCreateTime',
    #                 engine: 'Engine',
    #                 allocated_storage: 1,
    #                 status: 'Status',
    #                 port: 1,
    #                 vpc_id: 'VpcId',
    #                 cluster_create_time: 'ClusterCreateTime',
    #                 master_username: 'MasterUsername',
    #                 engine_version: 'EngineVersion',
    #                 license_model: 'LicenseModel',
    #                 snapshot_type: 'SnapshotType',
    #                 percent_progress: 1,
    #                 storage_encrypted: false,
    #                 kms_key_id: 'KmsKeyId',
    #                 db_cluster_identifier: 'DbClusterIdentifier',
    #                 db_cluster_snapshot_identifier: 'DbClusterSnapshotIdentifier',
    #                 iam_database_authentication_enabled: false
    #               },
    #               aws_rds_db_cluster: {
    #                 allocated_storage: 1,
    #                 backup_retention_period: 1,
    #                 database_name: 'DatabaseName',
    #                 status: 'Status',
    #                 endpoint: 'Endpoint',
    #                 reader_endpoint: 'ReaderEndpoint',
    #                 multi_az: false,
    #                 engine: 'Engine',
    #                 engine_version: 'EngineVersion',
    #                 port: 1,
    #                 master_username: 'MasterUsername',
    #                 preferred_backup_window: 'PreferredBackupWindow',
    #                 preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #                 hosted_zone_id: 'HostedZoneId',
    #                 storage_encrypted: false,
    #                 kms_key_id: 'KmsKeyId',
    #                 db_cluster_resource_id: 'DbClusterResourceId',
    #                 associated_roles: [
    #                   {
    #                     role_arn: 'RoleArn',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 cluster_create_time: 'ClusterCreateTime',
    #                 engine_mode: 'EngineMode',
    #                 deletion_protection: false,
    #                 http_endpoint_enabled: false,
    #                 activity_stream_status: 'ActivityStreamStatus',
    #                 copy_tags_to_snapshot: false,
    #                 cross_account_clone: false,
    #                 db_cluster_parameter_group: 'DbClusterParameterGroup',
    #                 db_subnet_group: 'DbSubnetGroup',
    #                 db_cluster_option_group_memberships: [
    #                   {
    #                     db_cluster_option_group_name: 'DbClusterOptionGroupName',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 db_cluster_identifier: 'DbClusterIdentifier',
    #                 db_cluster_members: [
    #                   {
    #                     is_cluster_writer: false,
    #                     promotion_tier: 1,
    #                     db_instance_identifier: 'DbInstanceIdentifier',
    #                     db_cluster_parameter_group_status: 'DbClusterParameterGroupStatus'
    #                   }
    #                 ],
    #                 iam_database_authentication_enabled: false
    #               },
    #               aws_ecs_cluster: {
    #                 cluster_settings: [
    #                   {
    #                     name: 'Name',
    #                     value: 'Value'
    #                   }
    #                 ],
    #                 configuration: {
    #                   execute_command_configuration: {
    #                     kms_key_id: 'KmsKeyId',
    #                     log_configuration: {
    #                       cloud_watch_encryption_enabled: false,
    #                       cloud_watch_log_group_name: 'CloudWatchLogGroupName',
    #                       s3_bucket_name: 'S3BucketName',
    #                       s3_encryption_enabled: false,
    #                       s3_key_prefix: 'S3KeyPrefix'
    #                     },
    #                     logging: 'Logging'
    #                   }
    #                 },
    #                 default_capacity_provider_strategy: [
    #                   {
    #                     base: 1,
    #                     capacity_provider: 'CapacityProvider',
    #                     weight: 1
    #                   }
    #                 ]
    #               },
    #               aws_ecs_task_definition: {
    #                 container_definitions: [
    #                   {
    #                     cpu: 1,
    #                     depends_on: [
    #                       {
    #                         condition: 'Condition',
    #                         container_name: 'ContainerName'
    #                       }
    #                     ],
    #                     disable_networking: false,
    #                     environment: [
    #                       {
    #                         name: 'Name',
    #                         value: 'Value'
    #                       }
    #                     ],
    #                     environment_files: [
    #                       {
    #                         type: 'Type',
    #                         value: 'Value'
    #                       }
    #                     ],
    #                     essential: false,
    #                     extra_hosts: [
    #                       {
    #                         hostname: 'Hostname',
    #                         ip_address: 'IpAddress'
    #                       }
    #                     ],
    #                     firelens_configuration: {
    #                       type: 'Type'
    #                     },
    #                     health_check: {
    #                       interval: 1,
    #                       retries: 1,
    #                       start_period: 1,
    #                       timeout: 1
    #                     },
    #                     hostname: 'Hostname',
    #                     image: 'Image',
    #                     interactive: false,
    #                     linux_parameters: {
    #                       capabilities: {
    #                       },
    #                       devices: [
    #                         {
    #                           container_path: 'ContainerPath',
    #                           host_path: 'HostPath',
    #                         }
    #                       ],
    #                       init_process_enabled: false,
    #                       max_swap: 1,
    #                       shared_memory_size: 1,
    #                       swappiness: 1,
    #                       tmpfs: [
    #                         {
    #                           container_path: 'ContainerPath',
    #                           size: 1
    #                         }
    #                       ]
    #                     },
    #                     log_configuration: {
    #                       log_driver: 'LogDriver',
    #                       secret_options: [
    #                         {
    #                           name: 'Name',
    #                           value_from: 'ValueFrom'
    #                         }
    #                       ]
    #                     },
    #                     memory: 1,
    #                     memory_reservation: 1,
    #                     mount_points: [
    #                       {
    #                         container_path: 'ContainerPath',
    #                         read_only: false,
    #                         source_volume: 'SourceVolume'
    #                       }
    #                     ],
    #                     name: 'Name',
    #                     port_mappings: [
    #                       {
    #                         container_port: 1,
    #                         host_port: 1,
    #                         protocol: 'Protocol'
    #                       }
    #                     ],
    #                     privileged: false,
    #                     pseudo_terminal: false,
    #                     readonly_root_filesystem: false,
    #                     repository_credentials: {
    #                       credentials_parameter: 'CredentialsParameter'
    #                     },
    #                     resource_requirements: [
    #                       {
    #                         type: 'Type',
    #                         value: 'Value'
    #                       }
    #                     ],
    #                     secrets: [
    #                       {
    #                         name: 'Name',
    #                         value_from: 'ValueFrom'
    #                       }
    #                     ],
    #                     start_timeout: 1,
    #                     stop_timeout: 1,
    #                     system_controls: [
    #                       {
    #                         namespace: 'Namespace',
    #                         value: 'Value'
    #                       }
    #                     ],
    #                     ulimits: [
    #                       {
    #                         hard_limit: 1,
    #                         name: 'Name',
    #                         soft_limit: 1
    #                       }
    #                     ],
    #                     user: 'User',
    #                     volumes_from: [
    #                       {
    #                         read_only: false,
    #                         source_container: 'SourceContainer'
    #                       }
    #                     ],
    #                     working_directory: 'WorkingDirectory'
    #                   }
    #                 ],
    #                 cpu: 'Cpu',
    #                 execution_role_arn: 'ExecutionRoleArn',
    #                 family: 'Family',
    #                 inference_accelerators: [
    #                   {
    #                     device_name: 'DeviceName',
    #                     device_type: 'DeviceType'
    #                   }
    #                 ],
    #                 ipc_mode: 'IpcMode',
    #                 memory: 'Memory',
    #                 network_mode: 'NetworkMode',
    #                 pid_mode: 'PidMode',
    #                 placement_constraints: [
    #                   {
    #                     expression: 'Expression',
    #                     type: 'Type'
    #                   }
    #                 ],
    #                 proxy_configuration: {
    #                   container_name: 'ContainerName',
    #                   proxy_configuration_properties: [
    #                     {
    #                       name: 'Name',
    #                       value: 'Value'
    #                     }
    #                   ],
    #                   type: 'Type'
    #                 },
    #                 task_role_arn: 'TaskRoleArn',
    #                 volumes: [
    #                   {
    #                     docker_volume_configuration: {
    #                       autoprovision: false,
    #                       driver: 'Driver',
    #                       scope: 'Scope'
    #                     },
    #                     efs_volume_configuration: {
    #                       authorization_config: {
    #                         access_point_id: 'AccessPointId',
    #                         iam: 'Iam'
    #                       },
    #                       filesystem_id: 'FilesystemId',
    #                       root_directory: 'RootDirectory',
    #                       transit_encryption: 'TransitEncryption',
    #                       transit_encryption_port: 1
    #                     },
    #                     host: {
    #                       source_path: 'SourcePath'
    #                     },
    #                     name: 'Name'
    #                   }
    #                 ]
    #               },
    #               container: {
    #                 name: 'Name',
    #                 image_id: 'ImageId',
    #                 image_name: 'ImageName',
    #                 launched_at: 'LaunchedAt'
    #               },
    #               aws_rds_event_subscription: {
    #                 cust_subscription_id: 'CustSubscriptionId',
    #                 customer_aws_id: 'CustomerAwsId',
    #                 enabled: false,
    #                 event_subscription_arn: 'EventSubscriptionArn',
    #                 sns_topic_arn: 'SnsTopicArn',
    #                 source_type: 'SourceType',
    #                 status: 'Status',
    #                 subscription_creation_time: 'SubscriptionCreationTime'
    #               },
    #               aws_ecs_service: {
    #                 capacity_provider_strategy: [
    #                   {
    #                     base: 1,
    #                     capacity_provider: 'CapacityProvider',
    #                     weight: 1
    #                   }
    #                 ],
    #                 cluster: 'Cluster',
    #                 deployment_configuration: {
    #                   deployment_circuit_breaker: {
    #                     enable: false,
    #                     rollback: false
    #                   },
    #                   maximum_percent: 1,
    #                   minimum_healthy_percent: 1
    #                 },
    #                 deployment_controller: {
    #                   type: 'Type'
    #                 },
    #                 desired_count: 1,
    #                 enable_ecs_managed_tags: false,
    #                 enable_execute_command: false,
    #                 health_check_grace_period_seconds: 1,
    #                 launch_type: 'LaunchType',
    #                 load_balancers: [
    #                   {
    #                     container_name: 'ContainerName',
    #                     container_port: 1,
    #                     load_balancer_name: 'LoadBalancerName',
    #                     target_group_arn: 'TargetGroupArn'
    #                   }
    #                 ],
    #                 name: 'Name',
    #                 network_configuration: {
    #                   aws_vpc_configuration: {
    #                     assign_public_ip: 'AssignPublicIp',
    #                   }
    #                 },
    #                 placement_constraints: [
    #                   {
    #                     expression: 'Expression',
    #                     type: 'Type'
    #                   }
    #                 ],
    #                 placement_strategies: [
    #                   {
    #                     field: 'Field',
    #                     type: 'Type'
    #                   }
    #                 ],
    #                 platform_version: 'PlatformVersion',
    #                 propagate_tags: 'PropagateTags',
    #                 role: 'Role',
    #                 scheduling_strategy: 'SchedulingStrategy',
    #                 service_arn: 'ServiceArn',
    #                 service_name: 'ServiceName',
    #                 service_registries: [
    #                   {
    #                     container_name: 'ContainerName',
    #                     container_port: 1,
    #                     port: 1,
    #                     registry_arn: 'RegistryArn'
    #                   }
    #                 ],
    #                 task_definition: 'TaskDefinition'
    #               },
    #               aws_auto_scaling_launch_configuration: {
    #                 associate_public_ip_address: false,
    #                 block_device_mappings: [
    #                   {
    #                     device_name: 'DeviceName',
    #                     ebs: {
    #                       delete_on_termination: false,
    #                       encrypted: false,
    #                       iops: 1,
    #                       snapshot_id: 'SnapshotId',
    #                       volume_size: 1,
    #                       volume_type: 'VolumeType'
    #                     },
    #                     no_device: false,
    #                     virtual_name: 'VirtualName'
    #                   }
    #                 ],
    #                 classic_link_vpc_id: 'ClassicLinkVpcId',
    #                 created_time: 'CreatedTime',
    #                 ebs_optimized: false,
    #                 iam_instance_profile: 'IamInstanceProfile',
    #                 image_id: 'ImageId',
    #                 instance_monitoring: {
    #                   enabled: false
    #                 },
    #                 instance_type: 'InstanceType',
    #                 kernel_id: 'KernelId',
    #                 key_name: 'KeyName',
    #                 launch_configuration_name: 'LaunchConfigurationName',
    #                 placement_tenancy: 'PlacementTenancy',
    #                 ramdisk_id: 'RamdiskId',
    #                 spot_price: 'SpotPrice',
    #                 user_data: 'UserData',
    #                 metadata_options: {
    #                   http_endpoint: 'HttpEndpoint',
    #                   http_put_response_hop_limit: 1,
    #                   http_tokens: 'HttpTokens'
    #                 }
    #               },
    #               aws_ec2_vpn_connection: {
    #                 vpn_connection_id: 'VpnConnectionId',
    #                 state: 'State',
    #                 customer_gateway_id: 'CustomerGatewayId',
    #                 customer_gateway_configuration: 'CustomerGatewayConfiguration',
    #                 type: 'Type',
    #                 vpn_gateway_id: 'VpnGatewayId',
    #                 category: 'Category',
    #                 vgw_telemetry: [
    #                   {
    #                     accepted_route_count: 1,
    #                     certificate_arn: 'CertificateArn',
    #                     last_status_change: 'LastStatusChange',
    #                     outside_ip_address: 'OutsideIpAddress',
    #                     status: 'Status',
    #                     status_message: 'StatusMessage'
    #                   }
    #                 ],
    #                 options: {
    #                   static_routes_only: false,
    #                   tunnel_options: [
    #                     {
    #                       dpd_timeout_seconds: 1,
    #                       outside_ip_address: 'OutsideIpAddress',
    #                       phase1_dh_group_numbers: [
    #                         1
    #                       ],
    #                       phase1_lifetime_seconds: 1,
    #                       phase2_lifetime_seconds: 1,
    #                       pre_shared_key: 'PreSharedKey',
    #                       rekey_fuzz_percentage: 1,
    #                       rekey_margin_time_seconds: 1,
    #                       replay_window_size: 1,
    #                       tunnel_inside_cidr: 'TunnelInsideCidr'
    #                     }
    #                   ]
    #                 },
    #                 routes: [
    #                   {
    #                     destination_cidr_block: 'DestinationCidrBlock',
    #                     state: 'State'
    #                   }
    #                 ],
    #                 transit_gateway_id: 'TransitGatewayId'
    #               },
    #               aws_ecr_container_image: {
    #                 registry_id: 'RegistryId',
    #                 repository_name: 'RepositoryName',
    #                 architecture: 'Architecture',
    #                 image_digest: 'ImageDigest',
    #                 image_published_at: 'ImagePublishedAt'
    #               },
    #               aws_open_search_service_domain: {
    #                 arn: 'Arn',
    #                 access_policies: 'AccessPolicies',
    #                 domain_name: 'DomainName',
    #                 id: 'Id',
    #                 domain_endpoint: 'DomainEndpoint',
    #                 engine_version: 'EngineVersion',
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: 'KmsKeyId'
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false
    #                 },
    #                 service_software_options: {
    #                   automated_update_date: 'AutomatedUpdateDate',
    #                   cancellable: false,
    #                   current_version: 'CurrentVersion',
    #                   description: 'Description',
    #                   new_version: 'NewVersion',
    #                   update_available: false,
    #                   update_status: 'UpdateStatus',
    #                   optional_deployment: false
    #                 },
    #                 cluster_config: {
    #                   instance_count: 1,
    #                   warm_enabled: false,
    #                   warm_count: 1,
    #                   dedicated_master_enabled: false,
    #                   zone_awareness_config: {
    #                     availability_zone_count: 1
    #                   },
    #                   dedicated_master_count: 1,
    #                   instance_type: 'InstanceType',
    #                   warm_type: 'WarmType',
    #                   zone_awareness_enabled: false,
    #                   dedicated_master_type: 'DedicatedMasterType'
    #                 },
    #                 domain_endpoint_options: {
    #                   custom_endpoint_certificate_arn: 'CustomEndpointCertificateArn',
    #                   custom_endpoint_enabled: false,
    #                   enforce_https: false,
    #                   custom_endpoint: 'CustomEndpoint',
    #                   tls_security_policy: 'TLSSecurityPolicy'
    #                 },
    #                 vpc_options: {
    #                 },
    #                 log_publishing_options: {
    #                   index_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #                     enabled: false
    #                   },
    #                 },
    #               },
    #               aws_ec2_vpc_endpoint_service: {
    #                 acceptance_required: false,
    #                 manages_vpc_endpoints: false,
    #                 private_dns_name: 'PrivateDnsName',
    #                 service_id: 'ServiceId',
    #                 service_name: 'ServiceName',
    #                 service_state: 'ServiceState',
    #                 service_type: [
    #                   {
    #                     service_type: 'ServiceType'
    #                   }
    #                 ]
    #               },
    #               aws_xray_encryption_config: {
    #                 key_id: 'KeyId',
    #                 status: 'Status',
    #                 type: 'Type'
    #               },
    #               aws_waf_rate_based_rule: {
    #                 metric_name: 'MetricName',
    #                 name: 'Name',
    #                 rate_key: 'RateKey',
    #                 rate_limit: 1,
    #                 rule_id: 'RuleId',
    #                 match_predicates: [
    #                   {
    #                     data_id: 'DataId',
    #                     negated: false,
    #                     type: 'Type'
    #                   }
    #                 ]
    #               },
    #               aws_waf_regional_rate_based_rule: {
    #                 metric_name: 'MetricName',
    #                 name: 'Name',
    #                 rate_key: 'RateKey',
    #                 rate_limit: 1,
    #                 rule_id: 'RuleId',
    #                 match_predicates: [
    #                   {
    #                     data_id: 'DataId',
    #                     negated: false,
    #                     type: 'Type'
    #                   }
    #                 ]
    #               },
    #               aws_ecr_repository: {
    #                 arn: 'Arn',
    #                 image_scanning_configuration: {
    #                   scan_on_push: false
    #                 },
    #                 image_tag_mutability: 'ImageTagMutability',
    #                 lifecycle_policy: {
    #                   lifecycle_policy_text: 'LifecyclePolicyText',
    #                   registry_id: 'RegistryId'
    #                 },
    #                 repository_name: 'RepositoryName',
    #                 repository_policy_text: 'RepositoryPolicyText'
    #               },
    #               aws_eks_cluster: {
    #                 arn: 'Arn',
    #                 certificate_authority_data: 'CertificateAuthorityData',
    #                 cluster_status: 'ClusterStatus',
    #                 endpoint: 'Endpoint',
    #                 name: 'Name',
    #                 resources_vpc_config: {
    #                 },
    #                 role_arn: 'RoleArn',
    #                 version: 'Version',
    #                 logging: {
    #                   cluster_logging: [
    #                     {
    #                       enabled: false,
    #                     }
    #                   ]
    #                 }
    #               },
    #               aws_network_firewall_firewall_policy: {
    #                 firewall_policy: {
    #                   stateful_rule_group_references: [
    #                     {
    #                       resource_arn: 'ResourceArn'
    #                     }
    #                   ],
    #                   stateless_custom_actions: [
    #                     {
    #                       action_definition: {
    #                         publish_metric_action: {
    #                           dimensions: [
    #                             {
    #                               value: 'Value'
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       action_name: 'ActionName'
    #                     }
    #                   ],
    #                   stateless_rule_group_references: [
    #                     {
    #                       priority: 1,
    #                       resource_arn: 'ResourceArn'
    #                     }
    #                   ]
    #                 },
    #                 firewall_policy_arn: 'FirewallPolicyArn',
    #                 firewall_policy_id: 'FirewallPolicyId',
    #                 firewall_policy_name: 'FirewallPolicyName',
    #                 description: 'Description'
    #               },
    #               aws_network_firewall_firewall: {
    #                 delete_protection: false,
    #                 description: 'Description',
    #                 firewall_arn: 'FirewallArn',
    #                 firewall_id: 'FirewallId',
    #                 firewall_name: 'FirewallName',
    #                 firewall_policy_arn: 'FirewallPolicyArn',
    #                 firewall_policy_change_protection: false,
    #                 subnet_change_protection: false,
    #                 subnet_mappings: [
    #                   {
    #                     subnet_id: 'SubnetId'
    #                   }
    #                 ],
    #                 vpc_id: 'VpcId'
    #               },
    #               aws_network_firewall_rule_group: {
    #                 capacity: 1,
    #                 description: 'Description',
    #                 rule_group: {
    #                   rule_variables: {
    #                     ip_sets: {
    #                     },
    #                     port_sets: {
    #                     }
    #                   },
    #                   rules_source: {
    #                     rules_source_list: {
    #                       generated_rules_type: 'GeneratedRulesType',
    #                     },
    #                     rules_string: 'RulesString',
    #                     stateful_rules: [
    #                       {
    #                         action: 'Action',
    #                         header: {
    #                           destination: 'Destination',
    #                           destination_port: 'DestinationPort',
    #                           direction: 'Direction',
    #                           protocol: 'Protocol',
    #                           source: 'Source',
    #                           source_port: 'SourcePort'
    #                         },
    #                         rule_options: [
    #                           {
    #                             keyword: 'Keyword',
    #                             settings: [
    #                               'member'
    #                             ]
    #                           }
    #                         ]
    #                       }
    #                     ],
    #                     stateless_rules_and_custom_actions: {
    #                       custom_actions: [
    #                         {
    #                           action_name: 'ActionName'
    #                         }
    #                       ],
    #                       stateless_rules: [
    #                         {
    #                           priority: 1,
    #                           rule_definition: {
    #                             match_attributes: {
    #                               destination_ports: [
    #                                 {
    #                                   from_port: 1,
    #                                   to_port: 1
    #                                 }
    #                               ],
    #                               destinations: [
    #                                 {
    #                                   address_definition: 'AddressDefinition'
    #                                 }
    #                               ],
    #                               protocols: [
    #                                 1
    #                               ],
    #                               source_ports: [
    #                                 {
    #                                   from_port: 1,
    #                                   to_port: 1
    #                                 }
    #                               ],
    #                               sources: [
    #                                 {
    #                                   address_definition: 'AddressDefinition'
    #                                 }
    #                               ],
    #                               tcp_flags: [
    #                                 {
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 },
    #                 rule_group_arn: 'RuleGroupArn',
    #                 rule_group_id: 'RuleGroupId',
    #                 rule_group_name: 'RuleGroupName',
    #                 type: 'Type'
    #               },
    #               aws_rds_db_security_group: {
    #                 db_security_group_arn: 'DbSecurityGroupArn',
    #                 db_security_group_description: 'DbSecurityGroupDescription',
    #                 db_security_group_name: 'DbSecurityGroupName',
    #                 ec2_security_groups: [
    #                   {
    #                     ec2_security_group_id: 'Ec2SecurityGroupId',
    #                     ec2_security_group_name: 'Ec2SecurityGroupName',
    #                     ec2_security_group_owner_id: 'Ec2SecurityGroupOwnerId',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: 'CidrIp',
    #                     status: 'Status'
    #                   }
    #                 ],
    #                 owner_id: 'OwnerId',
    #                 vpc_id: 'VpcId'
    #               }
    #             }
    #           }
    #         ], # required
    #         compliance: {
    #           status: 'PASSED', # accepts ["PASSED", "WARNING", "FAILED", "NOT_AVAILABLE"]
    #           related_requirements: [
    #             'member'
    #           ],
    #           status_reasons: [
    #             {
    #               reason_code: 'ReasonCode', # required
    #               description: 'Description'
    #             }
    #           ]
    #         },
    #         verification_state: 'UNKNOWN', # accepts ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"]
    #         workflow_state: 'NEW', # accepts ["NEW", "ASSIGNED", "IN_PROGRESS", "DEFERRED", "RESOLVED"]
    #         workflow: {
    #           status: 'NEW' # accepts ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #         },
    #         record_state: 'ACTIVE', # accepts ["ACTIVE", "ARCHIVED"]
    #         related_findings: [
    #           {
    #             product_arn: 'ProductArn', # required
    #             id: 'Id' # required
    #           }
    #         ],
    #         note: {
    #           text: 'Text', # required
    #           updated_by: 'UpdatedBy', # required
    #           updated_at: 'UpdatedAt' # required
    #         },
    #         vulnerabilities: [
    #           {
    #             id: 'Id', # required
    #             vulnerable_packages: [
    #               {
    #                 name: 'Name',
    #                 version: 'Version',
    #                 epoch: 'Epoch',
    #                 release: 'Release',
    #                 architecture: 'Architecture',
    #                 package_manager: 'PackageManager',
    #                 file_path: 'FilePath'
    #               }
    #             ],
    #             cvss: [
    #               {
    #                 version: 'Version',
    #                 base_score: 1.0,
    #                 base_vector: 'BaseVector',
    #                 source: 'Source',
    #                 adjustments: [
    #                   {
    #                     metric: 'Metric',
    #                     reason: 'Reason'
    #                   }
    #                 ]
    #               }
    #             ],
    #             vendor: {
    #               name: 'Name', # required
    #               url: 'Url',
    #               vendor_severity: 'VendorSeverity',
    #               vendor_created_at: 'VendorCreatedAt',
    #               vendor_updated_at: 'VendorUpdatedAt'
    #             },
    #           }
    #         ],
    #         patch_summary: {
    #           id: 'Id', # required
    #           installed_count: 1,
    #           missing_count: 1,
    #           failed_count: 1,
    #           installed_other_count: 1,
    #           installed_rejected_count: 1,
    #           installed_pending_reboot: 1,
    #           operation_start_time: 'OperationStartTime',
    #           operation_end_time: 'OperationEndTime',
    #           reboot_option: 'RebootOption',
    #           operation: 'Operation'
    #         },
    #         action: {
    #           action_type: 'ActionType',
    #           network_connection_action: {
    #             connection_direction: 'ConnectionDirection',
    #             remote_ip_details: {
    #               ip_address_v4: 'IpAddressV4',
    #               organization: {
    #                 asn: 1,
    #                 asn_org: 'AsnOrg',
    #                 isp: 'Isp',
    #                 org: 'Org'
    #               },
    #               country: {
    #                 country_code: 'CountryCode',
    #                 country_name: 'CountryName'
    #               },
    #               city: {
    #                 city_name: 'CityName'
    #               },
    #               geo_location: {
    #                 lon: 1.0,
    #                 lat: 1.0
    #               }
    #             },
    #             remote_port_details: {
    #               port: 1,
    #               port_name: 'PortName'
    #             },
    #             local_port_details: {
    #               port: 1,
    #               port_name: 'PortName'
    #             },
    #             protocol: 'Protocol',
    #             blocked: false
    #           },
    #           aws_api_call_action: {
    #             api: 'Api',
    #             service_name: 'ServiceName',
    #             caller_type: 'CallerType',
    #             domain_details: {
    #               domain: 'Domain'
    #             },
    #             first_seen: 'FirstSeen',
    #             last_seen: 'LastSeen'
    #           },
    #           dns_request_action: {
    #             domain: 'Domain',
    #             protocol: 'Protocol',
    #             blocked: false
    #           },
    #           port_probe_action: {
    #             port_probe_details: [
    #               {
    #                 local_ip_details: {
    #                   ip_address_v4: 'IpAddressV4'
    #                 },
    #               }
    #             ],
    #             blocked: false
    #           }
    #         },
    #         finding_provider_fields: {
    #           confidence: 1,
    #           criticality: 1,
    #           severity: {
    #             label: 'INFORMATIONAL', # accepts ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #             original: 'Original'
    #           },
    #         },
    #         sample: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchImportFindingsOutput
    #   resp.data.failed_count #=> Integer
    #   resp.data.success_count #=> Integer
    #   resp.data.failed_findings #=> Array<ImportFindingsError>
    #   resp.data.failed_findings[0] #=> Types::ImportFindingsError
    #   resp.data.failed_findings[0].id #=> String
    #   resp.data.failed_findings[0].error_code #=> String
    #   resp.data.failed_findings[0].error_message #=> String
    #
    def batch_import_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchImportFindingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchImportFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchImportFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::BatchImportFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchImportFindings,
        stubs: @stubs,
        params_class: Params::BatchImportFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_import_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by Security Hub customers to update information about their investigation into a finding.
    #          Requested by administrator accounts or member accounts. Administrator accounts can update findings for
    #          their account and their member accounts. Member accounts can update findings for their
    #          account.</p>
    #          <p>Updates from <code>BatchUpdateFindings</code> do not affect the value of
    #             <code>UpdatedAt</code> for a finding.</p>
    #          <p>Administrator and member accounts can use <code>BatchUpdateFindings</code> to update the
    #          following finding fields and objects.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Confidence</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Criticality</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Note</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RelatedFindings</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Severity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Types</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UserDefinedFields</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>VerificationState</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Workflow</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You can configure IAM policies to restrict access to fields and field values. For
    #          example, you might not want member accounts to be able to suppress findings or change the
    #          finding severity. See <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access">Configuring access to BatchUpdateFindings</a> in the
    #          <i>Security Hub User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateFindingsInput}.
    #
    # @option params [Array<AwsSecurityFindingIdentifier>] :finding_identifiers
    #   <p>The list of findings to update. <code>BatchUpdateFindings</code> can be used to update
    #            up to 100 findings at a time.</p>
    #            <p>For each finding, the list provides the finding identifier and the ARN of the finding
    #            provider.</p>
    #
    # @option params [NoteUpdate] :note
    #   <p>The updated note.</p>
    #
    # @option params [SeverityUpdate] :severity
    #   <p>Used to update the finding severity.</p>
    #
    # @option params [String] :verification_state
    #   <p>Indicates the veracity of a finding.</p>
    #            <p>The available values for <code>VerificationState</code> are  as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> – The default disposition of a security finding</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRUE_POSITIVE</code> – The security finding is confirmed</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FALSE_POSITIVE</code> – The security finding was determined to be a false
    #                  alarm</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BENIGN_POSITIVE</code> – A special case of <code>TRUE_POSITIVE</code> where
    #                  the finding doesn't pose any threat, is expected, or both</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :confidence
    #   <p>The updated value for the finding confidence. Confidence is defined as the likelihood
    #            that a finding accurately identifies the behavior or issue that it was intended to
    #            identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    #
    # @option params [Integer] :criticality
    #   <p>The updated value for the level of importance assigned to the resources associated with
    #            the findings.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources. </p>
    #
    # @option params [Array<String>] :types
    #   <p>One or more finding types in the format of namespace/category/classifier that classify a
    #            finding.</p>
    #            <p>Valid namespace values are as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>Software and Configuration Checks</p>
    #               </li>
    #               <li>
    #                  <p>TTPs</p>
    #               </li>
    #               <li>
    #                  <p>Effects</p>
    #               </li>
    #               <li>
    #                  <p>Unusual Behaviors</p>
    #               </li>
    #               <li>
    #                  <p>Sensitive Data Identifications </p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :user_defined_fields
    #   <p>A list of name/value string pairs associated with the finding. These are custom,
    #            user-defined fields added to a finding.</p>
    #
    # @option params [WorkflowUpdate] :workflow
    #   <p>Used to update the workflow status of a finding.</p>
    #            <p>The workflow status indicates the progress of the investigation into the finding. </p>
    #
    # @option params [Array<RelatedFinding>] :related_findings
    #   <p>A list of findings that are related to the updated findings.</p>
    #
    # @return [Types::BatchUpdateFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_findings(
    #     finding_identifiers: [
    #       {
    #         id: 'Id', # required
    #         product_arn: 'ProductArn' # required
    #       }
    #     ], # required
    #     note: {
    #       text: 'Text', # required
    #       updated_by: 'UpdatedBy' # required
    #     },
    #     severity: {
    #       normalized: 1,
    #       product: 1.0,
    #       label: 'INFORMATIONAL' # accepts ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #     },
    #     verification_state: 'UNKNOWN', # accepts ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"]
    #     confidence: 1,
    #     criticality: 1,
    #     types: [
    #       'member'
    #     ],
    #     user_defined_fields: {
    #       'key' => 'value'
    #     },
    #     workflow: {
    #       status: 'NEW' # accepts ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #     },
    #     related_findings: [
    #       {
    #         product_arn: 'ProductArn', # required
    #         id: 'Id' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateFindingsOutput
    #   resp.data.processed_findings #=> Array<AwsSecurityFindingIdentifier>
    #   resp.data.processed_findings[0] #=> Types::AwsSecurityFindingIdentifier
    #   resp.data.processed_findings[0].id #=> String
    #   resp.data.processed_findings[0].product_arn #=> String
    #   resp.data.unprocessed_findings #=> Array<BatchUpdateFindingsUnprocessedFinding>
    #   resp.data.unprocessed_findings[0] #=> Types::BatchUpdateFindingsUnprocessedFinding
    #   resp.data.unprocessed_findings[0].finding_identifier #=> Types::AwsSecurityFindingIdentifier
    #   resp.data.unprocessed_findings[0].error_code #=> String
    #   resp.data.unprocessed_findings[0].error_message #=> String
    #
    def batch_update_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateFindingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::BatchUpdateFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateFindings,
        stubs: @stubs,
        params_class: Params::BatchUpdateFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom action target in Security Hub.</p>
    #          <p>You can use custom actions on findings and insights in Security Hub to trigger target actions
    #          in Amazon CloudWatch Events.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateActionTargetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the custom action target. Can contain up to 20 characters.</p>
    #
    # @option params [String] :description
    #   <p>The description for the custom action target.</p>
    #
    # @option params [String] :id
    #   <p>The ID for the custom action target. Can contain up to 20 alphanumeric characters.</p>
    #
    # @return [Types::CreateActionTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_action_target(
    #     name: 'Name', # required
    #     description: 'Description', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateActionTargetOutput
    #   resp.data.action_target_arn #=> String
    #
    def create_action_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateActionTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateActionTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateActionTarget
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceConflictException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateActionTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateActionTarget,
        stubs: @stubs,
        params_class: Params::CreateActionTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_action_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to enable finding aggregation. Must be called from the aggregation Region.</p>
    #          <p>For more details about cross-Region replication, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html">Configuring finding aggregation</a> in the <i>Security Hub User Guide</i>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFindingAggregatorInput}.
    #
    # @option params [String] :region_linking_mode
    #   <p>Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.</p>
    #            <p>The selected option also determines how to use the Regions provided in the Regions list.</p>
    #            <p>The options are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the <code>Regions</code> parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIED_REGIONS</code> - Indicates to aggregate findings only from the Regions listed in the <code>Regions</code> parameter. Security Hub does not automatically aggregate findings from new Regions.
    #            </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :regions
    #   <p>If <code>RegionLinkingMode</code> is <code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a comma-separated list of Regions that do not aggregate findings to the aggregation Region.</p>
    #            <p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>, then this is a comma-separated list of Regions that do aggregate findings to the aggregation Region.
    #         </p>
    #
    # @return [Types::CreateFindingAggregatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_finding_aggregator(
    #     region_linking_mode: 'RegionLinkingMode', # required
    #     regions: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFindingAggregatorOutput
    #   resp.data.finding_aggregator_arn #=> String
    #   resp.data.finding_aggregation_region #=> String
    #   resp.data.region_linking_mode #=> String
    #   resp.data.regions #=> Array<String>
    #   resp.data.regions[0] #=> String
    #
    def create_finding_aggregator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFindingAggregatorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFindingAggregatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFindingAggregator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateFindingAggregator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFindingAggregator,
        stubs: @stubs,
        params_class: Params::CreateFindingAggregatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_finding_aggregator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate
    #          to a security issue that requires attention or remediation.</p>
    #          <p>To group the related findings in the insight, use the
    #          <code>GroupByAttribute</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInsightInput}.
    #
    # @option params [String] :name
    #   <p>The name of the custom insight to create.</p>
    #
    # @option params [AwsSecurityFindingFilters] :filters
    #   <p>One or more attributes used to filter the findings included in the insight. The insight
    #            only includes findings that match the criteria defined in the filters.</p>
    #
    # @option params [String] :group_by_attribute
    #   <p>The attribute used to group the findings for the insight. The grouping attribute
    #            identifies the type of item that the insight applies to. For example, if an insight is
    #            grouped by resource identifier, then the insight produces a list of resource
    #            identifiers.</p>
    #
    # @return [Types::CreateInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_insight(
    #     name: 'Name', # required
    #     filters: {
    #       product_arn: [
    #         {
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: 'Start',
    #           end: 'End',
    #           date_range: {
    #             value: 1,
    #             unit: 'DAYS' # accepts ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: 'Key',
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "NOT_EQUALS"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: 'Cidr'
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: 'Value'
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ]
    #     }, # required
    #     group_by_attribute: 'GroupByAttribute' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInsightOutput
    #   resp.data.insight_arn #=> String
    #
    def create_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInsightInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInsight
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceConflictException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInsight,
        stubs: @stubs,
        params_class: Params::CreateInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a member association in Security Hub between the specified accounts and the account
    #          used to make the request, which is the administrator account. If you are integrated with
    #          Organizations, then the administrator account is designated by the organization management account.</p>
    #          <p>
    #             <code>CreateMembers</code> is always used to add accounts that are not organization
    #          members.</p>
    #          <p>For accounts that are managed using Organizations, <code>CreateMembers</code> is only used
    #          in the following cases:</p>
    #          <ul>
    #             <li>
    #                <p>Security Hub is not configured to automatically add new organization accounts.</p>
    #             </li>
    #             <li>
    #                <p>The account was disassociated or deleted in Security Hub.</p>
    #             </li>
    #          </ul>
    #          <p>This action can only be used by an account that has Security Hub enabled. To enable Security Hub, you
    #          can use the <code>EnableSecurityHub</code> operation.</p>
    #          <p>For accounts that are not organization members, you create the account association and
    #          then send an invitation to the member account. To send the invitation, you use the
    #                <code>InviteMembers</code> operation. If the account owner accepts
    #          the invitation, the account becomes a member account in Security Hub.</p>
    #          <p>Accounts that are managed using Organizations do not receive an invitation. They
    #          automatically become a member account in Security Hub.</p>
    #          <ul>
    #             <li>
    #                <p>If the organization account does not have Security Hub enabled, then Security Hub and the default standards are automatically enabled. Note that Security Hub cannot be enabled automatically for the organization management account. The organization management account must enable Security Hub before the administrator account enables it as a member account.</p>
    #             </li>
    #             <li>
    #                <p>For organization accounts that already have Security Hub enabled, Security Hub does not make any other changes to those accounts. It does not change their enabled standards or controls.</p>
    #             </li>
    #          </ul>
    #          <p>A permissions policy is added that permits the administrator account to view the findings
    #          generated in the member account.</p>
    #          <p>To remove the association between the administrator and member accounts, use the <code>DisassociateFromMasterAccount</code> or <code>DisassociateMembers</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMembersInput}.
    #
    # @option params [Array<AccountDetails>] :account_details
    #   <p>The list of accounts to associate with the Security Hub administrator account. For each account, the
    #            list includes the account ID and optionally the email address.</p>
    #
    # @return [Types::CreateMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members(
    #     account_details: [
    #       {
    #         account_id: 'AccountId', # required
    #         email: 'Email'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<Result>
    #   resp.data.unprocessed_accounts[0] #=> Types::Result
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].processing_result #=> String
    #
    def create_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMembersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceConflictException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMembers,
        stubs: @stubs,
        params_class: Params::CreateMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Declines invitations to become a member account.</p>
    #          <p>This operation is only used by accounts that are not part of an organization.
    #          Organization accounts do not receive invitations.</p>
    #
    # @param [Hash] params
    #   See {Types::DeclineInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs for the accounts from which to decline the invitations to
    #            Security Hub.</p>
    #
    # @return [Types::DeclineInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeclineInvitationsOutput
    #   resp.data.unprocessed_accounts #=> Array<Result>
    #   resp.data.unprocessed_accounts[0] #=> Types::Result
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].processing_result #=> String
    #
    def decline_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeclineInvitationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeclineInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeclineInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::DeclineInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeclineInvitations,
        stubs: @stubs,
        params_class: Params::DeclineInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decline_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom action target from Security Hub.</p>
    #          <p>Deleting a custom action target does not affect any findings or insights that were
    #          already sent to Amazon CloudWatch Events using the custom action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteActionTargetInput}.
    #
    # @option params [String] :action_target_arn
    #   <p>The ARN of the custom action target to delete.</p>
    #
    # @return [Types::DeleteActionTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_action_target(
    #     action_target_arn: 'ActionTargetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteActionTargetOutput
    #   resp.data.action_target_arn #=> String
    #
    def delete_action_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteActionTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteActionTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteActionTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::DeleteActionTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteActionTarget,
        stubs: @stubs,
        params_class: Params::DeleteActionTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_action_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a finding aggregator. When you delete the finding aggregator, you stop finding aggregation.</p>
    #          <p>When you stop finding aggregation, findings that were already aggregated to the aggregation Region are still visible from the aggregation Region. New findings and finding updates are not aggregated.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFindingAggregatorInput}.
    #
    # @option params [String] :finding_aggregator_arn
    #   <p>The ARN of the finding aggregator to delete. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    #
    # @return [Types::DeleteFindingAggregatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_finding_aggregator(
    #     finding_aggregator_arn: 'FindingAggregatorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFindingAggregatorOutput
    #
    def delete_finding_aggregator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFindingAggregatorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFindingAggregatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFindingAggregator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteFindingAggregator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFindingAggregator,
        stubs: @stubs,
        params_class: Params::DeleteFindingAggregatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_finding_aggregator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the insight specified by the <code>InsightArn</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInsightInput}.
    #
    # @option params [String] :insight_arn
    #   <p>The ARN of the insight to delete.</p>
    #
    # @return [Types::DeleteInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_insight(
    #     insight_arn: 'InsightArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInsightOutput
    #   resp.data.insight_arn #=> String
    #
    def delete_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInsightInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInsight
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInsight,
        stubs: @stubs,
        params_class: Params::DeleteInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes invitations received by the Amazon Web Services account to become a member account.</p>
    #          <p>This operation is only used by accounts that are not part of an organization.
    #          Organization accounts do not receive invitations.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of the account IDs that sent the invitations to delete.</p>
    #
    # @return [Types::DeleteInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInvitationsOutput
    #   resp.data.unprocessed_accounts #=> Array<Result>
    #   resp.data.unprocessed_accounts[0] #=> Types::Result
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].processing_result #=> String
    #
    def delete_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInvitationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInvitations,
        stubs: @stubs,
        params_class: Params::DeleteInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified member accounts from Security Hub.</p>
    #          <p>Can be used to delete member accounts that belong to an organization as well as member
    #          accounts that were invited manually.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMembersInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs for the member accounts to delete.</p>
    #
    # @return [Types::DeleteMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<Result>
    #   resp.data.unprocessed_accounts[0] #=> Types::Result
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].processing_result #=> String
    #
    def delete_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMembersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMembers,
        stubs: @stubs,
        params_class: Params::DeleteMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the custom action targets in Security Hub in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeActionTargetsInput}.
    #
    # @option params [Array<String>] :action_target_arns
    #   <p>A list of custom action target ARNs for the custom action targets to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeActionTargets</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::DescribeActionTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_action_targets(
    #     action_target_arns: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeActionTargetsOutput
    #   resp.data.action_targets #=> Array<ActionTarget>
    #   resp.data.action_targets[0] #=> Types::ActionTarget
    #   resp.data.action_targets[0].action_target_arn #=> String
    #   resp.data.action_targets[0].name #=> String
    #   resp.data.action_targets[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def describe_action_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeActionTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeActionTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeActionTargets
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::DescribeActionTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeActionTargets,
        stubs: @stubs,
        params_class: Params::DescribeActionTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_action_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about the Hub resource in your account, including the
    #          <code>HubArn</code> and the time when you enabled Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHubInput}.
    #
    # @option params [String] :hub_arn
    #   <p>The ARN of the Hub resource to retrieve.</p>
    #
    # @return [Types::DescribeHubOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hub(
    #     hub_arn: 'HubArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHubOutput
    #   resp.data.hub_arn #=> String
    #   resp.data.subscribed_at #=> String
    #   resp.data.auto_enable_controls #=> Boolean
    #
    def describe_hub(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHubInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHubInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHub
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DescribeHub
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHub,
        stubs: @stubs,
        params_class: Params::DescribeHubOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hub
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the Organizations configuration for Security Hub. Can only be
    #          called from a Security Hub administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigurationInput}.
    #
    # @return [Types::DescribeOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigurationOutput
    #   resp.data.auto_enable #=> Boolean
    #   resp.data.member_account_limit_reached #=> Boolean
    #   resp.data.auto_enable_standards #=> String, one of ["NONE", "DEFAULT"]
    #
    def describe_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DescribeOrganizationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about product integrations in Security Hub.</p>
    #          <p>You can optionally provide an integration ARN. If you provide an integration ARN, then
    #          the results only include that integration.</p>
    #          <p>If you do not provide an integration ARN, then the results include all of the available
    #          product integrations. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProductsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeProducts</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :product_arn
    #   <p>The ARN of the integration to return.</p>
    #
    # @return [Types::DescribeProductsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_products(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     product_arn: 'ProductArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProductsOutput
    #   resp.data.products #=> Array<Product>
    #   resp.data.products[0] #=> Types::Product
    #   resp.data.products[0].product_arn #=> String
    #   resp.data.products[0].product_name #=> String
    #   resp.data.products[0].company_name #=> String
    #   resp.data.products[0].description #=> String
    #   resp.data.products[0].categories #=> Array<String>
    #   resp.data.products[0].categories[0] #=> String
    #   resp.data.products[0].integration_types #=> Array<String>
    #   resp.data.products[0].integration_types[0] #=> String, one of ["SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB", "UPDATE_FINDINGS_IN_SECURITY_HUB"]
    #   resp.data.products[0].marketplace_url #=> String
    #   resp.data.products[0].activation_url #=> String
    #   resp.data.products[0].product_subscription_resource_policy #=> String
    #   resp.data.next_token #=> String
    #
    def describe_products(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProductsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProductsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProducts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DescribeProducts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProducts,
        stubs: @stubs,
        params_class: Params::DescribeProductsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_products
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available standards in Security Hub.</p>
    #          <p>For each standard, the results include the standard ARN, the name, and a description. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStandardsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeStandards</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of standards to return.</p>
    #
    # @return [Types::DescribeStandardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_standards(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStandardsOutput
    #   resp.data.standards #=> Array<Standard>
    #   resp.data.standards[0] #=> Types::Standard
    #   resp.data.standards[0].standards_arn #=> String
    #   resp.data.standards[0].name #=> String
    #   resp.data.standards[0].description #=> String
    #   resp.data.standards[0].enabled_by_default #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_standards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStandardsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStandardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStandards
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::DescribeStandards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStandards,
        stubs: @stubs,
        params_class: Params::DescribeStandardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_standards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of security standards controls.</p>
    #          <p>For each control, the results include information about whether it is currently enabled,
    #          the severity, and a link to remediation information.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStandardsControlsInput}.
    #
    # @option params [String] :standards_subscription_arn
    #   <p>The ARN of a resource that represents your subscription to a supported standard. To get
    #            the subscription ARNs of the standards you have enabled, use the <code>GetEnabledStandards</code> operation.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeStandardsControls</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of security standard controls to return.</p>
    #
    # @return [Types::DescribeStandardsControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_standards_controls(
    #     standards_subscription_arn: 'StandardsSubscriptionArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStandardsControlsOutput
    #   resp.data.controls #=> Array<StandardsControl>
    #   resp.data.controls[0] #=> Types::StandardsControl
    #   resp.data.controls[0].standards_control_arn #=> String
    #   resp.data.controls[0].control_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.controls[0].disabled_reason #=> String
    #   resp.data.controls[0].control_status_updated_at #=> Time
    #   resp.data.controls[0].control_id #=> String
    #   resp.data.controls[0].title #=> String
    #   resp.data.controls[0].description #=> String
    #   resp.data.controls[0].remediation_url #=> String
    #   resp.data.controls[0].severity_rating #=> String, one of ["LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #   resp.data.controls[0].related_requirements #=> Array<String>
    #   resp.data.controls[0].related_requirements[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_standards_controls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStandardsControlsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStandardsControlsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStandardsControls
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::DescribeStandardsControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStandardsControls,
        stubs: @stubs,
        params_class: Params::DescribeStandardsControlsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_standards_controls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the integration of the specified product with Security Hub. After the integration is
    #          disabled, findings from that product are no longer sent to Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableImportFindingsForProductInput}.
    #
    # @option params [String] :product_subscription_arn
    #   <p>The ARN of the integrated product to disable the integration for.</p>
    #
    # @return [Types::DisableImportFindingsForProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_import_findings_for_product(
    #     product_subscription_arn: 'ProductSubscriptionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableImportFindingsForProductOutput
    #
    def disable_import_findings_for_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableImportFindingsForProductInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableImportFindingsForProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableImportFindingsForProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DisableImportFindingsForProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableImportFindingsForProduct,
        stubs: @stubs,
        params_class: Params::DisableImportFindingsForProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_import_findings_for_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables a Security Hub administrator account. Can only be called by the organization
    #          management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account identifier of the Security Hub administrator account.</p>
    #
    # @return [Types::DisableOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account(
    #     admin_account_id: 'AdminAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableOrganizationAdminAccountOutput
    #
    def disable_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableOrganizationAdminAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableOrganizationAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DisableOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::DisableOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables Security Hub in your account only in the current Region. To disable Security Hub in all
    #          Regions, you must submit one request per Region where you have enabled Security Hub.</p>
    #          <p>When you disable Security Hub for an administrator account, it doesn't disable Security Hub for any associated
    #          member accounts.</p>
    #          <p>When you disable Security Hub, your existing findings and insights and any Security Hub configuration
    #          settings are deleted after 90 days and cannot be recovered. Any standards that were enabled
    #          are disabled, and your administrator and member account associations are removed.</p>
    #          <p>If you want to save your existing findings, you must export them before you disable
    #          Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableSecurityHubInput}.
    #
    # @return [Types::DisableSecurityHubOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_security_hub()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableSecurityHubOutput
    #
    def disable_security_hub(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableSecurityHubInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableSecurityHubInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableSecurityHub
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DisableSecurityHub
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableSecurityHub,
        stubs: @stubs,
        params_class: Params::DisableSecurityHubOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_security_hub
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the current Security Hub member account from the associated administrator
    #          account.</p>
    #          <p>This operation is only used by accounts that are not part of an organization. For
    #          organization accounts, only the administrator account can
    #          disassociate a member account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFromAdministratorAccountInput}.
    #
    # @return [Types::DisassociateFromAdministratorAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_administrator_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFromAdministratorAccountOutput
    #
    def disassociate_from_administrator_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFromAdministratorAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFromAdministratorAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFromAdministratorAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DisassociateFromAdministratorAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFromAdministratorAccount,
        stubs: @stubs,
        params_class: Params::DisassociateFromAdministratorAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_from_administrator_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This method is deprecated. Instead, use <code>DisassociateFromAdministratorAccount</code>.</p>
    #          <p>The Security Hub console continues to use <code>DisassociateFromMasterAccount</code>. It will eventually change to use <code>DisassociateFromAdministratorAccount</code>. Any IAM policies that specifically control access to this function must continue to use <code>DisassociateFromMasterAccount</code>. You should also add <code>DisassociateFromAdministratorAccount</code> to your policies to ensure that the correct permissions are in place after the console begins to use <code>DisassociateFromAdministratorAccount</code>.</p>
    #          <p>Disassociates the current Security Hub member account from the associated administrator
    #          account.</p>
    #          <p>This operation is only used by accounts that are not part of an organization. For
    #          organization accounts, only the administrator account can
    #          disassociate a member account.</p>
    #
    # @deprecated
    #   This API has been deprecated, use DisassociateFromAdministratorAccount API instead.
    #
    # @param [Hash] params
    #   See {Types::DisassociateFromMasterAccountInput}.
    #
    # @return [Types::DisassociateFromMasterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_master_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFromMasterAccountOutput
    #
    def disassociate_from_master_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFromMasterAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFromMasterAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFromMasterAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DisassociateFromMasterAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFromMasterAccount,
        stubs: @stubs,
        params_class: Params::DisassociateFromMasterAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_from_master_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified member accounts from the associated administrator account.</p>
    #          <p>Can be used to disassociate both accounts that are managed using Organizations and accounts that
    #          were invited manually.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMembersInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The account IDs of the member accounts to disassociate from the administrator account.</p>
    #
    # @return [Types::DisassociateMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMembersOutput
    #
    def disassociate_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMembersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::DisassociateMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMembers,
        stubs: @stubs,
        params_class: Params::DisassociateMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the integration of a partner product with Security Hub. Integrated products send
    #          findings to Security Hub.</p>
    #          <p>When you enable a product integration, a permissions policy that grants permission for
    #          the product to send findings to Security Hub is applied.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableImportFindingsForProductInput}.
    #
    # @option params [String] :product_arn
    #   <p>The ARN of the product to enable the integration for.</p>
    #
    # @return [Types::EnableImportFindingsForProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_import_findings_for_product(
    #     product_arn: 'ProductArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableImportFindingsForProductOutput
    #   resp.data.product_subscription_arn #=> String
    #
    def enable_import_findings_for_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableImportFindingsForProductInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableImportFindingsForProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableImportFindingsForProduct
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceConflictException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::EnableImportFindingsForProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableImportFindingsForProduct,
        stubs: @stubs,
        params_class: Params::EnableImportFindingsForProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_import_findings_for_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Designates the Security Hub administrator account for an organization. Can only be called by
    #          the organization management account.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Security Hub administrator
    #            account.</p>
    #
    # @return [Types::EnableOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account(
    #     admin_account_id: 'AdminAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableOrganizationAdminAccountOutput
    #
    def enable_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableOrganizationAdminAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableOrganizationAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::EnableOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::EnableOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables Security Hub for your account in the current Region or the Region you specify in the
    #          request.</p>
    #          <p>When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings
    #          from other services that are integrated with Security Hub.</p>
    #          <p>When you use the <code>EnableSecurityHub</code> operation to enable Security Hub, you also
    #          automatically enable the following standards.</p>
    #          <ul>
    #             <li>
    #                <p>CIS Amazon Web Services Foundations</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services Foundational Security Best Practices</p>
    #             </li>
    #          </ul>
    #          <p>You do not enable the Payment Card Industry Data Security Standard (PCI DSS) standard. </p>
    #          <p>To not enable the automatically enabled standards, set
    #             <code>EnableDefaultStandards</code> to <code>false</code>.</p>
    #          <p>After you enable Security Hub, to enable a standard, use the <code>BatchEnableStandards</code> operation. To disable a standard, use the
    #                <code>BatchDisableStandards</code> operation.</p>
    #          <p>To learn more, see the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html">setup information</a> in the <i>Security Hub User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableSecurityHubInput}.
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the hub resource when you enable Security Hub.</p>
    #
    # @option params [Boolean] :enable_default_standards
    #   <p>Whether to enable the security standards that Security Hub has designated as automatically
    #            enabled. If you do not provide a value for <code>EnableDefaultStandards</code>, it is set
    #            to <code>true</code>. To not enable the automatically enabled standards, set
    #               <code>EnableDefaultStandards</code> to <code>false</code>.</p>
    #
    # @return [Types::EnableSecurityHubOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_security_hub(
    #     tags: {
    #       'key' => 'value'
    #     },
    #     enable_default_standards: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableSecurityHubOutput
    #
    def enable_security_hub(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableSecurityHubInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableSecurityHubInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableSecurityHub
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::AccessDeniedException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::EnableSecurityHub
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableSecurityHub,
        stubs: @stubs,
        params_class: Params::EnableSecurityHubOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_security_hub
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the details for the Security Hub administrator account for the current member account.</p>
    #          <p>Can be used by both member accounts that are managed using Organizations and accounts that were
    #          invited manually.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAdministratorAccountInput}.
    #
    # @return [Types::GetAdministratorAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_administrator_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAdministratorAccountOutput
    #   resp.data.administrator #=> Types::Invitation
    #   resp.data.administrator.account_id #=> String
    #   resp.data.administrator.invitation_id #=> String
    #   resp.data.administrator.invited_at #=> Time
    #   resp.data.administrator.member_status #=> String
    #
    def get_administrator_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAdministratorAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAdministratorAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAdministratorAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetAdministratorAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAdministratorAccount,
        stubs: @stubs,
        params_class: Params::GetAdministratorAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_administrator_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the standards that are currently enabled.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnabledStandardsInput}.
    #
    # @option params [Array<String>] :standards_subscription_arns
    #   <p>The list of the standards subscription ARNs for the standards to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetEnabledStandards</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::GetEnabledStandardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enabled_standards(
    #     standards_subscription_arns: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnabledStandardsOutput
    #   resp.data.standards_subscriptions #=> Array<StandardsSubscription>
    #   resp.data.standards_subscriptions[0] #=> Types::StandardsSubscription
    #   resp.data.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.data.standards_subscriptions[0].standards_arn #=> String
    #   resp.data.standards_subscriptions[0].standards_input #=> Hash<String, String>
    #   resp.data.standards_subscriptions[0].standards_input['key'] #=> String
    #   resp.data.standards_subscriptions[0].standards_status #=> String, one of ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"]
    #   resp.data.standards_subscriptions[0].standards_status_reason #=> Types::StandardsStatusReason
    #   resp.data.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of ["NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"]
    #   resp.data.next_token #=> String
    #
    def get_enabled_standards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnabledStandardsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnabledStandardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnabledStandards
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetEnabledStandards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnabledStandards,
        stubs: @stubs,
        params_class: Params::GetEnabledStandardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_enabled_standards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current finding aggregation configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingAggregatorInput}.
    #
    # @option params [String] :finding_aggregator_arn
    #   <p>The ARN of the finding aggregator to return details for. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    #
    # @return [Types::GetFindingAggregatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_aggregator(
    #     finding_aggregator_arn: 'FindingAggregatorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingAggregatorOutput
    #   resp.data.finding_aggregator_arn #=> String
    #   resp.data.finding_aggregation_region #=> String
    #   resp.data.region_linking_mode #=> String
    #   resp.data.regions #=> Array<String>
    #   resp.data.regions[0] #=> String
    #
    def get_finding_aggregator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingAggregatorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingAggregatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingAggregator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetFindingAggregator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingAggregator,
        stubs: @stubs,
        params_class: Params::GetFindingAggregatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_finding_aggregator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of findings that match the specified criteria.</p>
    #          <p>If finding aggregation is enabled, then when you call <code>GetFindings</code> from the aggregation Region, the results include all of the matching findings from both the aggregation Region and the linked Regions.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsInput}.
    #
    # @option params [AwsSecurityFindingFilters] :filters
    #   <p>The finding attributes used to define a condition to filter the returned
    #            findings.</p>
    #            <p>You can filter by up to 10 finding attributes. For each attribute, you can provide up to
    #            20 filter values.</p>
    #            <p>Note that in the available filter fields, <code>WorkflowState</code> is deprecated. To
    #            search for a finding based on its workflow status, use <code>WorkflowStatus</code>.</p>
    #
    # @option params [Array<SortCriterion>] :sort_criteria
    #   <p>The finding attributes used to sort the list of returned findings.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetFindings</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of findings to return.</p>
    #
    # @return [Types::GetFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings(
    #     filters: {
    #       product_arn: [
    #         {
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: 'Start',
    #           end: 'End',
    #           date_range: {
    #             value: 1,
    #             unit: 'DAYS' # accepts ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: 'Key',
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "NOT_EQUALS"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: 'Cidr'
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: 'Value'
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ]
    #     },
    #     sort_criteria: [
    #       {
    #         field: 'Field',
    #         sort_order: 'asc' # accepts ["asc", "desc"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsOutput
    #   resp.data.findings #=> Array<AwsSecurityFinding>
    #   resp.data.findings[0] #=> Types::AwsSecurityFinding
    #   resp.data.findings[0].schema_version #=> String
    #   resp.data.findings[0].id #=> String
    #   resp.data.findings[0].product_arn #=> String
    #   resp.data.findings[0].product_name #=> String
    #   resp.data.findings[0].company_name #=> String
    #   resp.data.findings[0].region #=> String
    #   resp.data.findings[0].generator_id #=> String
    #   resp.data.findings[0].aws_account_id #=> String
    #   resp.data.findings[0].types #=> Array<String>
    #   resp.data.findings[0].types[0] #=> String
    #   resp.data.findings[0].first_observed_at #=> String
    #   resp.data.findings[0].last_observed_at #=> String
    #   resp.data.findings[0].created_at #=> String
    #   resp.data.findings[0].updated_at #=> String
    #   resp.data.findings[0].severity #=> Types::Severity
    #   resp.data.findings[0].severity.product #=> Float
    #   resp.data.findings[0].severity.label #=> String, one of ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #   resp.data.findings[0].severity.normalized #=> Integer
    #   resp.data.findings[0].severity.original #=> String
    #   resp.data.findings[0].confidence #=> Integer
    #   resp.data.findings[0].criticality #=> Integer
    #   resp.data.findings[0].title #=> String
    #   resp.data.findings[0].description #=> String
    #   resp.data.findings[0].remediation #=> Types::Remediation
    #   resp.data.findings[0].remediation.recommendation #=> Types::Recommendation
    #   resp.data.findings[0].remediation.recommendation.text #=> String
    #   resp.data.findings[0].remediation.recommendation.url #=> String
    #   resp.data.findings[0].source_url #=> String
    #   resp.data.findings[0].product_fields #=> Hash<String, String>
    #   resp.data.findings[0].product_fields['key'] #=> String
    #   resp.data.findings[0].user_defined_fields #=> Hash<String, String>
    #   resp.data.findings[0].malware #=> Array<Malware>
    #   resp.data.findings[0].malware[0] #=> Types::Malware
    #   resp.data.findings[0].malware[0].name #=> String
    #   resp.data.findings[0].malware[0].type #=> String, one of ["ADWARE", "BLENDED_THREAT", "BOTNET_AGENT", "COIN_MINER", "EXPLOIT_KIT", "KEYLOGGER", "MACRO", "POTENTIALLY_UNWANTED", "SPYWARE", "RANSOMWARE", "REMOTE_ACCESS", "ROOTKIT", "TROJAN", "VIRUS", "WORM"]
    #   resp.data.findings[0].malware[0].path #=> String
    #   resp.data.findings[0].malware[0].state #=> String, one of ["OBSERVED", "REMOVAL_FAILED", "REMOVED"]
    #   resp.data.findings[0].network #=> Types::Network
    #   resp.data.findings[0].network.direction #=> String, one of ["IN", "OUT"]
    #   resp.data.findings[0].network.protocol #=> String
    #   resp.data.findings[0].network.open_port_range #=> Types::PortRange
    #   resp.data.findings[0].network.open_port_range.begin #=> Integer
    #   resp.data.findings[0].network.open_port_range.end #=> Integer
    #   resp.data.findings[0].network.source_ip_v4 #=> String
    #   resp.data.findings[0].network.source_ip_v6 #=> String
    #   resp.data.findings[0].network.source_port #=> Integer
    #   resp.data.findings[0].network.source_domain #=> String
    #   resp.data.findings[0].network.source_mac #=> String
    #   resp.data.findings[0].network.destination_ip_v4 #=> String
    #   resp.data.findings[0].network.destination_ip_v6 #=> String
    #   resp.data.findings[0].network.destination_port #=> Integer
    #   resp.data.findings[0].network.destination_domain #=> String
    #   resp.data.findings[0].network_path #=> Array<NetworkPathComponent>
    #   resp.data.findings[0].network_path[0] #=> Types::NetworkPathComponent
    #   resp.data.findings[0].network_path[0].component_id #=> String
    #   resp.data.findings[0].network_path[0].component_type #=> String
    #   resp.data.findings[0].network_path[0].egress #=> Types::NetworkHeader
    #   resp.data.findings[0].network_path[0].egress.protocol #=> String
    #   resp.data.findings[0].network_path[0].egress.destination #=> Types::NetworkPathComponentDetails
    #   resp.data.findings[0].network_path[0].egress.destination.address #=> Array<String>
    #   resp.data.findings[0].network_path[0].egress.destination.address[0] #=> String
    #   resp.data.findings[0].network_path[0].egress.destination.port_ranges #=> Array<PortRange>
    #   resp.data.findings[0].network_path[0].egress.source #=> Types::NetworkPathComponentDetails
    #   resp.data.findings[0].network_path[0].ingress #=> Types::NetworkHeader
    #   resp.data.findings[0].process #=> Types::ProcessDetails
    #   resp.data.findings[0].process.name #=> String
    #   resp.data.findings[0].process.path #=> String
    #   resp.data.findings[0].process.pid #=> Integer
    #   resp.data.findings[0].process.parent_pid #=> Integer
    #   resp.data.findings[0].process.launched_at #=> String
    #   resp.data.findings[0].process.terminated_at #=> String
    #   resp.data.findings[0].threat_intel_indicators #=> Array<ThreatIntelIndicator>
    #   resp.data.findings[0].threat_intel_indicators[0] #=> Types::ThreatIntelIndicator
    #   resp.data.findings[0].threat_intel_indicators[0].type #=> String, one of ["DOMAIN", "EMAIL_ADDRESS", "HASH_MD5", "HASH_SHA1", "HASH_SHA256", "HASH_SHA512", "IPV4_ADDRESS", "IPV6_ADDRESS", "MUTEX", "PROCESS", "URL"]
    #   resp.data.findings[0].threat_intel_indicators[0].value #=> String
    #   resp.data.findings[0].threat_intel_indicators[0].category #=> String, one of ["BACKDOOR", "CARD_STEALER", "COMMAND_AND_CONTROL", "DROP_SITE", "EXPLOIT_SITE", "KEYLOGGER"]
    #   resp.data.findings[0].threat_intel_indicators[0].last_observed_at #=> String
    #   resp.data.findings[0].threat_intel_indicators[0].source #=> String
    #   resp.data.findings[0].threat_intel_indicators[0].source_url #=> String
    #   resp.data.findings[0].resources #=> Array<Resource>
    #   resp.data.findings[0].resources[0] #=> Types::Resource
    #   resp.data.findings[0].resources[0].type #=> String
    #   resp.data.findings[0].resources[0].id #=> String
    #   resp.data.findings[0].resources[0].partition #=> String, one of ["aws", "aws-cn", "aws-us-gov"]
    #   resp.data.findings[0].resources[0].region #=> String
    #   resp.data.findings[0].resources[0].resource_role #=> String
    #   resp.data.findings[0].resources[0].tags #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].data_classification #=> Types::DataClassificationDetails
    #   resp.data.findings[0].resources[0].data_classification.detailed_results_location #=> String
    #   resp.data.findings[0].resources[0].data_classification.result #=> Types::ClassificationResult
    #   resp.data.findings[0].resources[0].data_classification.result.mime_type #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.size_classified #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.additional_occurrences #=> Boolean
    #   resp.data.findings[0].resources[0].data_classification.result.status #=> Types::ClassificationStatus
    #   resp.data.findings[0].resources[0].data_classification.result.status.code #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.status.reason #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data #=> Array<SensitiveDataResult>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0] #=> Types::SensitiveDataResult
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].category #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections #=> Array<SensitiveDataDetections>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0] #=> Types::SensitiveDataDetections
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].count #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].type #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences #=> Types::Occurrences
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.line_ranges #=> Array<Range>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.line_ranges[0] #=> Types::Range
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.line_ranges[0].start #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.line_ranges[0].end #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.line_ranges[0].start_column #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.offset_ranges #=> Array<Range>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.pages #=> Array<Page>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.pages[0] #=> Types::Page
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.pages[0].page_number #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.pages[0].line_range #=> Types::Range
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.pages[0].offset_range #=> Types::Range
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.records #=> Array<Record>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.records[0] #=> Types::Record
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.records[0].json_path #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.records[0].record_index #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.cells #=> Array<Cell>
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.cells[0] #=> Types::Cell
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.cells[0].column #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.cells[0].row #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.cells[0].column_name #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].detections[0].occurrences.cells[0].cell_reference #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.sensitive_data[0].total_count #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers #=> Types::CustomDataIdentifiersResult
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.detections #=> Array<CustomDataIdentifiersDetections>
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.detections[0] #=> Types::CustomDataIdentifiersDetections
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.detections[0].count #=> Integer
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.detections[0].arn #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.detections[0].name #=> String
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.detections[0].occurrences #=> Types::Occurrences
    #   resp.data.findings[0].resources[0].data_classification.result.custom_data_identifiers.total_count #=> Integer
    #   resp.data.findings[0].resources[0].details #=> Types::ResourceDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group #=> Types::AwsAutoScalingAutoScalingGroupDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.launch_configuration_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.load_balancer_names #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.health_check_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.health_check_grace_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.created_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy #=> Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution #=> Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution.on_demand_allocation_strategy #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution.on_demand_base_capacity #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution.spot_allocation_strategy #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution.spot_instance_pools #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.instances_distribution.spot_max_price #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template #=> Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.launch_template_specification #=> Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.launch_template_specification.launch_template_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.launch_template_specification.launch_template_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.launch_template_specification.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.overrides #=> Array<AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails>
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.overrides[0] #=> Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.overrides[0].instance_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.mixed_instances_policy.launch_template.overrides[0].weighted_capacity #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.availability_zones #=> Array<AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails>
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.availability_zones[0] #=> Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.availability_zones[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.launch_template #=> Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.launch_template.launch_template_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.launch_template.launch_template_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.launch_template.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.capacity_rebalance #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_code_build_project #=> Types::AwsCodeBuildProjectDetails
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.encryption_key #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts #=> Array<AwsCodeBuildProjectArtifactsDetails>
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0] #=> Types::AwsCodeBuildProjectArtifactsDetails
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].artifact_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].encryption_disabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].location #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].namespace_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].override_artifact_name #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].packaging #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].path #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.artifacts[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment #=> Types::AwsCodeBuildProjectEnvironment
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.certificate #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.environment_variables #=> Array<AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails>
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.environment_variables[0] #=> Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.environment_variables[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.environment_variables[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.environment_variables[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.privileged_mode #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.image_pull_credentials_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.registry_credential #=> Types::AwsCodeBuildProjectEnvironmentRegistryCredential
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.registry_credential.credential #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.registry_credential.credential_provider #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.environment.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.source #=> Types::AwsCodeBuildProjectSource
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.source.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.source.location #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.source.git_clone_depth #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.source.insecure_ssl #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.service_role #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config #=> Types::AwsCodeBuildProjectLogsConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.cloud_watch_logs #=> Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.cloud_watch_logs.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.s3_logs #=> Types::AwsCodeBuildProjectLogsConfigS3LogsDetails
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.s3_logs.location #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.logs_config.s3_logs.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.vpc_config #=> Types::AwsCodeBuildProjectVpcConfig
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.vpc_config.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.vpc_config.subnets #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.vpc_config.subnets[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_code_build_project.secondary_artifacts #=> Array<AwsCodeBuildProjectArtifactsDetails>
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution #=> Types::AwsCloudFrontDistributionDetails
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.cache_behaviors #=> Types::AwsCloudFrontDistributionCacheBehaviors
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.cache_behaviors.items #=> Array<AwsCloudFrontDistributionCacheBehavior>
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.cache_behaviors.items[0] #=> Types::AwsCloudFrontDistributionCacheBehavior
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.cache_behaviors.items[0].viewer_protocol_policy #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.default_cache_behavior #=> Types::AwsCloudFrontDistributionDefaultCacheBehavior
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.default_cache_behavior.viewer_protocol_policy #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.default_root_object #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.domain_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.e_tag #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.last_modified_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.logging #=> Types::AwsCloudFrontDistributionLogging
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.logging.bucket #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.logging.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.logging.include_cookies #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.logging.prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins #=> Types::AwsCloudFrontDistributionOrigins
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items #=> Array<AwsCloudFrontDistributionOriginItem>
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0] #=> Types::AwsCloudFrontDistributionOriginItem
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].domain_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].id #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].origin_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].s3_origin_config #=> Types::AwsCloudFrontDistributionOriginS3OriginConfig
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups #=> Types::AwsCloudFrontDistributionOriginGroups
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items #=> Array<AwsCloudFrontDistributionOriginGroup>
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0] #=> Types::AwsCloudFrontDistributionOriginGroup
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria #=> Types::AwsCloudFrontDistributionOriginGroupFailover
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes #=> Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate #=> Types::AwsCloudFrontDistributionViewerCertificate
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.acm_certificate_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.certificate #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.certificate_source #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.iam_certificate_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.minimum_protocol_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.viewer_certificate.ssl_support_method #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_front_distribution.web_acl_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance #=> Types::AwsEc2InstanceDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.image_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.key_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.iam_instance_profile_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.subnet_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.launched_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.network_interfaces #=> Array<AwsEc2InstanceNetworkInterfacesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.network_interfaces[0] #=> Types::AwsEc2InstanceNetworkInterfacesDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.network_interfaces[0].network_interface_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface #=> Types::AwsEc2NetworkInterfaceDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment #=> Types::AwsEc2NetworkInterfaceAttachment
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.attach_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.attachment_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.delete_on_termination #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.device_index #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.instance_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.instance_owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.attachment.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.network_interface_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.security_groups #=> Array<AwsEc2NetworkInterfaceSecurityGroup>
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.security_groups[0] #=> Types::AwsEc2NetworkInterfaceSecurityGroup
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.security_groups[0].group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.security_groups[0].group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.source_dest_check #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.ip_v6_addresses #=> Array<AwsEc2NetworkInterfaceIpV6AddressDetail>
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.ip_v6_addresses[0] #=> Types::AwsEc2NetworkInterfaceIpV6AddressDetail
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.ip_v6_addresses[0].ip_v6_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.private_ip_addresses #=> Array<AwsEc2NetworkInterfacePrivateIpAddressDetail>
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.private_ip_addresses[0] #=> Types::AwsEc2NetworkInterfacePrivateIpAddressDetail
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.private_ip_addresses[0].private_ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.private_ip_addresses[0].private_dns_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.public_dns_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_interface.public_ip #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group #=> Types::AwsEc2SecurityGroupDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions #=> Array<AwsEc2SecurityGroupIpPermission>
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0] #=> Types::AwsEc2SecurityGroupIpPermission
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].from_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].to_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs #=> Array<AwsEc2SecurityGroupUserIdGroupPair>
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0] #=> Types::AwsEc2SecurityGroupUserIdGroupPair
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].user_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_ranges #=> Array<AwsEc2SecurityGroupIpRange>
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_ranges[0] #=> Types::AwsEc2SecurityGroupIpRange
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_ranges[0].cidr_ip #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ipv6_ranges #=> Array<AwsEc2SecurityGroupIpv6Range>
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ipv6_ranges[0] #=> Types::AwsEc2SecurityGroupIpv6Range
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ipv6_ranges[0].cidr_ipv6 #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].prefix_list_ids #=> Array<AwsEc2SecurityGroupPrefixListId>
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].prefix_list_ids[0] #=> Types::AwsEc2SecurityGroupPrefixListId
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].prefix_list_ids[0].prefix_list_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress #=> Array<AwsEc2SecurityGroupIpPermission>
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume #=> Types::AwsEc2VolumeDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.snapshot_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.attachments #=> Array<AwsEc2VolumeAttachment>
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.attachments[0] #=> Types::AwsEc2VolumeAttachment
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.attachments[0].attach_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.attachments[0].delete_on_termination #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.attachments[0].instance_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_volume.attachments[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc #=> Types::AwsEc2VpcDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set #=> Array<CidrBlockAssociation>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0] #=> Types::CidrBlockAssociation
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0].association_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0].cidr_block #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0].cidr_block_state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.ipv6_cidr_block_association_set #=> Array<Ipv6CidrBlockAssociation>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.ipv6_cidr_block_association_set[0] #=> Types::Ipv6CidrBlockAssociation
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.ipv6_cidr_block_association_set[0].association_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.ipv6_cidr_block_association_set[0].ipv6_cidr_block #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.ipv6_cidr_block_association_set[0].cidr_block_state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.dhcp_options_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc.state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip #=> Types::AwsEc2EipDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.instance_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.public_ip #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.allocation_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.association_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.domain #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.public_ipv4_pool #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.network_border_group #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.network_interface_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.network_interface_owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_eip.private_ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet #=> Types::AwsEc2SubnetDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.assign_ipv6_address_on_creation #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.availability_zone #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.availability_zone_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.available_ip_address_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.cidr_block #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.default_for_az #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.map_public_ip_on_launch #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.subnet_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.subnet_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_subnet.ipv6_cidr_block_association_set #=> Array<Ipv6CidrBlockAssociation>
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl #=> Types::AwsEc2NetworkAclDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.is_default #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.network_acl_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.associations #=> Array<AwsEc2NetworkAclAssociation>
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.associations[0] #=> Types::AwsEc2NetworkAclAssociation
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.associations[0].network_acl_association_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.associations[0].network_acl_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.associations[0].subnet_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries #=> Array<AwsEc2NetworkAclEntry>
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0] #=> Types::AwsEc2NetworkAclEntry
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].cidr_block #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].egress #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].icmp_type_code #=> Types::IcmpTypeCode
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].icmp_type_code.code #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].icmp_type_code.type #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].ipv6_cidr_block #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].port_range #=> Types::PortRangeFromTo
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].port_range.from #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].port_range.to #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].rule_action #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_network_acl.entries[0].rule_number #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer #=> Types::AwsElbv2LoadBalancerDetails
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.availability_zones #=> Array<AvailabilityZone>
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.availability_zones[0].zone_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.availability_zones[0].subnet_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.canonical_hosted_zone_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.created_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.dns_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.ip_address_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.scheme #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.security_groups #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.security_groups[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.state #=> Types::LoadBalancerState
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.state.code #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.state.reason #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.load_balancer_attributes #=> Array<AwsElbv2LoadBalancerAttribute>
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.load_balancer_attributes[0] #=> Types::AwsElbv2LoadBalancerAttribute
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.load_balancer_attributes[0].key #=> String
    #   resp.data.findings[0].resources[0].details.aws_elbv2_load_balancer.load_balancer_attributes[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment #=> Types::AwsElasticBeanstalkEnvironmentDetails
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.application_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.cname #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.date_created #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.date_updated #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.endpoint_url #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_links #=> Array<AwsElasticBeanstalkEnvironmentEnvironmentLink>
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_links[0] #=> Types::AwsElasticBeanstalkEnvironmentEnvironmentLink
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_links[0].environment_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_links[0].link_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.environment_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.option_settings #=> Array<AwsElasticBeanstalkEnvironmentOptionSetting>
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.option_settings[0] #=> Types::AwsElasticBeanstalkEnvironmentOptionSetting
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.option_settings[0].namespace #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.option_settings[0].option_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.option_settings[0].resource_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.option_settings[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.platform_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.solution_stack_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.tier #=> Types::AwsElasticBeanstalkEnvironmentTier
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.tier.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.tier.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.tier.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_elastic_beanstalk_environment.version_label #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain #=> Types::AwsElasticsearchDomainDetails
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.access_policies #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.domain_endpoint_options #=> Types::AwsElasticsearchDomainDomainEndpointOptions
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.domain_endpoint_options.tls_security_policy #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.domain_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.domain_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.endpoints #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config #=> Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.dedicated_master_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.instance_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.zone_awareness_config #=> Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.encryption_at_rest_options #=> Types::AwsElasticsearchDomainEncryptionAtRestOptions
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.encryption_at_rest_options.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.encryption_at_rest_options.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.log_publishing_options #=> Types::AwsElasticsearchDomainLogPublishingOptions
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.log_publishing_options.index_slow_logs #=> Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.log_publishing_options.index_slow_logs.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.log_publishing_options.index_slow_logs.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.log_publishing_options.search_slow_logs #=> Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.log_publishing_options.audit_logs #=> Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.node_to_node_encryption_options #=> Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options #=> Types::AwsElasticsearchDomainServiceSoftwareOptions
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.automated_update_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.cancellable #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.current_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.new_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.update_available #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.service_software_options.update_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options #=> Types::AwsElasticsearchDomainVPCOptions
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.availability_zones #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.security_group_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.subnet_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket #=> Types::AwsS3BucketDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.owner_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.owner_account_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.created_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration #=> Types::AwsS3BucketServerSideEncryptionConfiguration
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules #=> Array<AwsS3BucketServerSideEncryptionRule>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules[0] #=> Types::AwsS3BucketServerSideEncryptionRule
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default #=> Types::AwsS3BucketServerSideEncryptionByDefault
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.sse_algorithm #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.kms_master_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration #=> Types::AwsS3BucketBucketLifecycleConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules #=> Array<AwsS3BucketBucketLifecycleConfigurationRulesDetails>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0] #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].abort_incomplete_multipart_upload #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].abort_incomplete_multipart_upload.days_after_initiation #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].expiration_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].expiration_in_days #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].expired_object_delete_marker #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands #=> Array<AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands[0] #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands[0].prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands[0].tag #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands[0].tag.key #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands[0].tag.value #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.operands[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.tag #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.tag.key #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.tag.value #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].filter.predicate.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].id #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].noncurrent_version_expiration_in_days #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].noncurrent_version_transitions #=> Array<AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].noncurrent_version_transitions[0] #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].noncurrent_version_transitions[0].days #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].noncurrent_version_transitions[0].storage_class #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].transitions #=> Array<AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].transitions[0] #=> Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].transitions[0].date #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].transitions[0].days #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_lifecycle_configuration.rules[0].transitions[0].storage_class #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.public_access_block_configuration #=> Types::AwsS3AccountPublicAccessBlockDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.access_control_list #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_logging_configuration #=> Types::AwsS3BucketLoggingConfiguration
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_logging_configuration.destination_bucket_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_logging_configuration.log_file_prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration #=> Types::AwsS3BucketWebsiteConfiguration
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.error_document #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.index_document_suffix #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.redirect_all_requests_to #=> Types::AwsS3BucketWebsiteConfigurationRedirectTo
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.redirect_all_requests_to.hostname #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.redirect_all_requests_to.protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules #=> Array<AwsS3BucketWebsiteConfigurationRoutingRule>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0] #=> Types::AwsS3BucketWebsiteConfigurationRoutingRule
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].condition #=> Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].condition.http_error_code_returned_equals #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].condition.key_prefix_equals #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].redirect #=> Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].redirect.hostname #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].redirect.http_redirect_code #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].redirect.protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].redirect.replace_key_prefix_with #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_website_configuration.routing_rules[0].redirect.replace_key_with #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration #=> Types::AwsS3BucketNotificationConfiguration
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations #=> Array<AwsS3BucketNotificationConfigurationDetail>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0] #=> Types::AwsS3BucketNotificationConfigurationDetail
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].events #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].events[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].filter #=> Types::AwsS3BucketNotificationConfigurationFilter
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].filter.s3_key_filter #=> Types::AwsS3BucketNotificationConfigurationS3KeyFilter
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].filter.s3_key_filter.filter_rules #=> Array<AwsS3BucketNotificationConfigurationS3KeyFilterRule>
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].filter.s3_key_filter.filter_rules[0] #=> Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].filter.s3_key_filter.filter_rules[0].name #=> String, one of ["Prefix", "Suffix"]
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].filter.s3_key_filter.filter_rules[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].destination #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_notification_configuration.configurations[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_versioning_configuration #=> Types::AwsS3BucketBucketVersioningConfiguration
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_versioning_configuration.is_mfa_delete_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_s3_bucket.bucket_versioning_configuration.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_account_public_access_block #=> Types::AwsS3AccountPublicAccessBlockDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_object #=> Types::AwsS3ObjectDetails
    #   resp.data.findings[0].resources[0].details.aws_s3_object.last_modified #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_object.e_tag #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_object.version_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_object.content_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_object.server_side_encryption #=> String
    #   resp.data.findings[0].resources[0].details.aws_s3_object.ssekms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret #=> Types::AwsSecretsManagerSecretDetails
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_rules #=> Types::AwsSecretsManagerSecretRotationRules
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_rules.automatically_after_days #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_occurred_within_frequency #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_lambda_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.deleted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_secrets_manager_secret.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key #=> Types::AwsIamAccessKeyDetails
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.user_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.status #=> String, one of ["Active", "Inactive"]
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.created_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.principal_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.principal_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.principal_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.account_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.access_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context #=> Types::AwsIamAccessKeySessionContext
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.attributes #=> Types::AwsIamAccessKeySessionContextAttributes
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.attributes.mfa_authenticated #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.attributes.creation_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer #=> Types::AwsIamAccessKeySessionContextSessionIssuer
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.principal_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.account_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.user_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user #=> Types::AwsIamUserDetails
    #   resp.data.findings[0].resources[0].details.aws_iam_user.attached_managed_policies #=> Array<AwsIamAttachedManagedPolicy>
    #   resp.data.findings[0].resources[0].details.aws_iam_user.attached_managed_policies[0] #=> Types::AwsIamAttachedManagedPolicy
    #   resp.data.findings[0].resources[0].details.aws_iam_user.attached_managed_policies[0].policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.attached_managed_policies[0].policy_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.group_list #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_iam_user.path #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.permissions_boundary #=> Types::AwsIamPermissionsBoundary
    #   resp.data.findings[0].resources[0].details.aws_iam_user.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.permissions_boundary.permissions_boundary_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.user_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.user_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_user.user_policy_list #=> Array<AwsIamUserPolicy>
    #   resp.data.findings[0].resources[0].details.aws_iam_user.user_policy_list[0] #=> Types::AwsIamUserPolicy
    #   resp.data.findings[0].resources[0].details.aws_iam_user.user_policy_list[0].policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy #=> Types::AwsIamPolicyDetails
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.attachment_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.default_version_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.is_attachable #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.path #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.permissions_boundary_usage_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_version_list #=> Array<AwsIamPolicyVersion>
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0] #=> Types::AwsIamPolicyVersion
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0].version_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0].is_default_version #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0].create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_policy.update_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage #=> Types::AwsApiGatewayV2StageDetails
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.client_certificate_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.created_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings #=> Types::AwsApiGatewayV2RouteSettings
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.logging_level #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.throttling_rate_limit #=> Float
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.deployment_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.last_updated_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.route_settings #=> Types::AwsApiGatewayV2RouteSettings
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.stage_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.stage_variables #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.access_log_settings #=> Types::AwsApiGatewayAccessLogSettings
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.access_log_settings.format #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.access_log_settings.destination_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.auto_deploy #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.last_deployment_status_message #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_stage.api_gateway_managed #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api #=> Types::AwsApiGatewayV2ApiDetails
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.api_endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.api_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.api_key_selection_expression #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.created_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.protocol_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.route_selection_expression #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration #=> Types::AwsCorsConfiguration
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_origins #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_credentials #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.expose_headers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.max_age #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_methods #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_headers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table #=> Types::AwsDynamoDbTableDetails
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions #=> Array<AwsDynamoDbTableAttributeDefinition>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions[0] #=> Types::AwsDynamoDbTableAttributeDefinition
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions[0].attribute_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions[0].attribute_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.billing_mode_summary #=> Types::AwsDynamoDbTableBillingModeSummary
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.billing_mode_summary.billing_mode #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.billing_mode_summary.last_update_to_pay_per_request_date_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.creation_date_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes #=> Array<AwsDynamoDbTableGlobalSecondaryIndex>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0] #=> Types::AwsDynamoDbTableGlobalSecondaryIndex
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema #=> Array<AwsDynamoDbTableKeySchema>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema[0] #=> Types::AwsDynamoDbTableKeySchema
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema[0].key_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].projection #=> Types::AwsDynamoDbTableProjection
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].projection.projection_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput #=> Types::AwsDynamoDbTableProvisionedThroughput
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.global_table_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.item_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.key_schema #=> Array<AwsDynamoDbTableKeySchema>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.latest_stream_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.latest_stream_label #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes #=> Array<AwsDynamoDbTableLocalSecondaryIndex>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0] #=> Types::AwsDynamoDbTableLocalSecondaryIndex
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].index_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].key_schema #=> Array<AwsDynamoDbTableKeySchema>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].projection #=> Types::AwsDynamoDbTableProjection
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.provisioned_throughput #=> Types::AwsDynamoDbTableProvisionedThroughput
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas #=> Array<AwsDynamoDbTableReplica>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0] #=> Types::AwsDynamoDbTableReplica
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes #=> Array<AwsDynamoDbTableReplicaGlobalSecondaryIndex>
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes[0] #=> Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::AwsDynamoDbTableProvisionedThroughputOverride
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].kms_master_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].provisioned_throughput_override #=> Types::AwsDynamoDbTableProvisionedThroughputOverride
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].region_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].replica_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].replica_status_description #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary #=> Types::AwsDynamoDbTableRestoreSummary
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.source_backup_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.source_table_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.restore_date_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.sse_description #=> Types::AwsDynamoDbTableSseDescription
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.inaccessible_encryption_date_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.sse_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.kms_master_key_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.stream_specification #=> Types::AwsDynamoDbTableStreamSpecification
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.stream_specification.stream_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.stream_specification.stream_view_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.table_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.table_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.table_size_bytes #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_dynamo_db_table.table_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage #=> Types::AwsApiGatewayStageDetails
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.deployment_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.client_certificate_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.stage_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.cache_cluster_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.cache_cluster_size #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.cache_cluster_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings #=> Array<AwsApiGatewayMethodSettings>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0] #=> Types::AwsApiGatewayMethodSettings
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].metrics_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].logging_level #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].data_trace_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].throttling_burst_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].throttling_rate_limit #=> Float
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].caching_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].cache_ttl_in_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].cache_data_encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].require_authorization_for_cache_control #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].unauthorized_cache_control_header_strategy #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].http_method #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].resource_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.variables #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.documentation_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.access_log_settings #=> Types::AwsApiGatewayAccessLogSettings
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings #=> Types::AwsApiGatewayCanarySettings
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.percent_traffic #=> Float
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.deployment_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.stage_variable_overrides #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.use_stage_cache #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.tracing_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.created_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.last_updated_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_stage.web_acl_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api #=> Types::AwsApiGatewayRestApiDetails
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.id #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.created_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.binary_media_types #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.minimum_compression_size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.api_key_source #=> String
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.endpoint_configuration #=> Types::AwsApiGatewayEndpointConfiguration
    #   resp.data.findings[0].resources[0].details.aws_api_gateway_rest_api.endpoint_configuration.types #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail #=> Types::AwsCloudTrailTrailDetails
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.cloud_watch_logs_role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.has_custom_event_selectors #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.home_region #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.include_global_service_events #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.is_multi_region_trail #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.is_organization_trail #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.log_file_validation_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.s3_bucket_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.s3_key_prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.sns_topic_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.sns_topic_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_cloud_trail_trail.trail_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance #=> Types::AwsSsmPatchComplianceDetails
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch #=> Types::AwsSsmPatch
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary #=> Types::AwsSsmComplianceSummary
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliant_critical_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliant_high_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliant_medium_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.execution_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.non_compliant_critical_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliant_informational_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.non_compliant_informational_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliant_unspecified_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.non_compliant_low_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.non_compliant_high_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliant_low_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.compliance_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.patch_baseline_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.overall_severity #=> String
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.non_compliant_medium_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.non_compliant_unspecified_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ssm_patch_compliance.patch.compliance_summary.patch_group #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate #=> Types::AwsCertificateManagerCertificateDetails
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.certificate_authority_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.created_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options #=> Array<AwsCertificateManagerCertificateDomainValidationOption>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0] #=> Types::AwsCertificateManagerCertificateDomainValidationOption
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].domain_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record #=> Types::AwsCertificateManagerCertificateResourceRecord
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record.value #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_domain #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_emails #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_method #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages #=> Array<AwsCertificateManagerCertificateExtendedKeyUsage>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages[0] #=> Types::AwsCertificateManagerCertificateExtendedKeyUsage
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages[0].o_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.failure_reason #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.imported_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.in_use_by #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.issued_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.issuer #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.key_algorithm #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.key_usages #=> Array<AwsCertificateManagerCertificateKeyUsage>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.key_usages[0] #=> Types::AwsCertificateManagerCertificateKeyUsage
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.key_usages[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.not_after #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.not_before #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.options #=> Types::AwsCertificateManagerCertificateOptions
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.options.certificate_transparency_logging_preference #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_eligibility #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary #=> Types::AwsCertificateManagerCertificateRenewalSummary
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options #=> Array<AwsCertificateManagerCertificateDomainValidationOption>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.renewal_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.renewal_status_reason #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.updated_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.serial #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.signature_algorithm #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.subject #=> String
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.subject_alternative_names #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_certificate_manager_certificate.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster #=> Types::AwsRedshiftClusterDetails
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.allow_version_upgrade #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.automated_snapshot_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.availability_zone #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_availability_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes #=> Array<AwsRedshiftClusterClusterNode>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0] #=> Types::AwsRedshiftClusterClusterNode
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0].node_role #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups #=> Array<AwsRedshiftClusterClusterParameterGroup>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0] #=> Types::AwsRedshiftClusterClusterParameterGroup
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array<AwsRedshiftClusterClusterParameterStatus>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0] #=> Types::AwsRedshiftClusterClusterParameterStatus
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_public_key #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_revision_number #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups #=> Array<AwsRedshiftClusterClusterSecurityGroup>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups[0] #=> Types::AwsRedshiftClusterClusterSecurityGroup
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status #=> Types::AwsRedshiftClusterClusterSnapshotCopyStatus
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_subnet_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.cluster_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.db_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows #=> Array<AwsRedshiftClusterDeferredMaintenanceWindow>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0] #=> Types::AwsRedshiftClusterDeferredMaintenanceWindow
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.elastic_ip_status #=> Types::AwsRedshiftClusterElasticIpStatus
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.elastic_ip_status.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.elastic_resize_number_of_node_options #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.endpoint #=> Types::AwsRedshiftClusterEndpoint
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.endpoint.address #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.endpoint.port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.enhanced_vpc_routing #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.expected_next_snapshot_schedule_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.hsm_status #=> Types::AwsRedshiftClusterHsmStatus
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.hsm_status.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.iam_roles #=> Array<AwsRedshiftClusterIamRole>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.iam_roles[0] #=> Types::AwsRedshiftClusterIamRole
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.iam_roles[0].apply_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.maintenance_track_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.manual_snapshot_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.master_username #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.next_maintenance_window_start_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.node_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.number_of_nodes #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_actions #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values #=> Types::AwsRedshiftClusterPendingModifiedValues
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.cluster_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.cluster_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.encryption_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.master_user_password #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.node_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.preferred_maintenance_window #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.publicly_accessible #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.resize_info #=> Types::AwsRedshiftClusterResizeInfo
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.resize_info.resize_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status #=> Types::AwsRedshiftClusterRestoreStatus
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.restore_status.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.snapshot_schedule_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.snapshot_schedule_state #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups #=> Array<AwsRedshiftClusterVpcSecurityGroup>
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups[0] #=> Types::AwsRedshiftClusterVpcSecurityGroup
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status #=> Types::AwsRedshiftClusterLoggingStatus
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status.bucket_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status.last_failure_message #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status.last_failure_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status.last_successful_delivery_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status.logging_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_redshift_cluster.logging_status.s3_key_prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer #=> Types::AwsElbLoadBalancerDetails
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.availability_zones #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions #=> Array<AwsElbLoadBalancerBackendServerDescription>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions[0] #=> Types::AwsElbLoadBalancerBackendServerDescription
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions[0].instance_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions[0].policy_names #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.canonical_hosted_zone_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.canonical_hosted_zone_name_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.created_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.dns_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.health_check #=> Types::AwsElbLoadBalancerHealthCheck
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.health_check.healthy_threshold #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.health_check.interval #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.health_check.target #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.health_check.timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.health_check.unhealthy_threshold #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.instances #=> Array<AwsElbLoadBalancerInstance>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.instances[0] #=> Types::AwsElbLoadBalancerInstance
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.instances[0].instance_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions #=> Array<AwsElbLoadBalancerListenerDescription>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0] #=> Types::AwsElbLoadBalancerListenerDescription
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener #=> Types::AwsElbLoadBalancerListener
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.instance_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.instance_protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.load_balancer_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.ssl_certificate_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].policy_names #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes #=> Types::AwsElbLoadBalancerAttributes
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log #=> Types::AwsElbLoadBalancerAccessLog
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.emit_interval #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.s3_bucket_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.s3_bucket_prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_draining #=> Types::AwsElbLoadBalancerConnectionDraining
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_draining.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_draining.timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_settings #=> Types::AwsElbLoadBalancerConnectionSettings
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_settings.idle_timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.cross_zone_load_balancing #=> Types::AwsElbLoadBalancerCrossZoneLoadBalancing
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.cross_zone_load_balancing.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.additional_attributes #=> Array<AwsElbLoadBalancerAdditionalAttribute>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.additional_attributes[0] #=> Types::AwsElbLoadBalancerAdditionalAttribute
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.additional_attributes[0].key #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.additional_attributes[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies #=> Types::AwsElbLoadBalancerPolicies
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies #=> Array<AwsElbAppCookieStickinessPolicy>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies[0] #=> Types::AwsElbAppCookieStickinessPolicy
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies[0].cookie_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies #=> Array<AwsElbLbCookieStickinessPolicy>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies[0] #=> Types::AwsElbLbCookieStickinessPolicy
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies[0].cookie_expiration_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.policies.other_policies #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.scheme #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.security_groups #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.source_security_group #=> Types::AwsElbLoadBalancerSourceSecurityGroup
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.source_security_group.group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.source_security_group.owner_alias #=> String
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.subnets #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_elb_load_balancer.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_group #=> Types::AwsIamGroupDetails
    #   resp.data.findings[0].resources[0].details.aws_iam_group.attached_managed_policies #=> Array<AwsIamAttachedManagedPolicy>
    #   resp.data.findings[0].resources[0].details.aws_iam_group.create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_group.group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_group.group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_group.group_policy_list #=> Array<AwsIamGroupPolicy>
    #   resp.data.findings[0].resources[0].details.aws_iam_group.group_policy_list[0] #=> Types::AwsIamGroupPolicy
    #   resp.data.findings[0].resources[0].details.aws_iam_group.group_policy_list[0].policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_group.path #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role #=> Types::AwsIamRoleDetails
    #   resp.data.findings[0].resources[0].details.aws_iam_role.assume_role_policy_document #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.attached_managed_policies #=> Array<AwsIamAttachedManagedPolicy>
    #   resp.data.findings[0].resources[0].details.aws_iam_role.create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list #=> Array<AwsIamInstanceProfile>
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0] #=> Types::AwsIamInstanceProfile
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].instance_profile_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].instance_profile_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].path #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles #=> Array<AwsIamInstanceProfileRole>
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0] #=> Types::AwsIamInstanceProfileRole
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].assume_role_policy_document #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].create_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].path #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].role_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].role_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.permissions_boundary #=> Types::AwsIamPermissionsBoundary
    #   resp.data.findings[0].resources[0].details.aws_iam_role.role_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.role_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.role_policy_list #=> Array<AwsIamRolePolicy>
    #   resp.data.findings[0].resources[0].details.aws_iam_role.role_policy_list[0] #=> Types::AwsIamRolePolicy
    #   resp.data.findings[0].resources[0].details.aws_iam_role.role_policy_list[0].policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_iam_role.max_session_duration #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_iam_role.path #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key #=> Types::AwsKmsKeyDetails
    #   resp.data.findings[0].resources[0].details.aws_kms_key.aws_account_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key.creation_date #=> Float
    #   resp.data.findings[0].resources[0].details.aws_kms_key.key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key.key_manager #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key.key_state #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key.origin #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_kms_key.key_rotation_status #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_lambda_function #=> Types::AwsLambdaFunctionDetails
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.code #=> Types::AwsLambdaFunctionCode
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.code.s3_bucket #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.code.s3_key #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.code.s3_object_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.code.zip_file #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.code_sha256 #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.dead_letter_config #=> Types::AwsLambdaFunctionDeadLetterConfig
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.dead_letter_config.target_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.environment #=> Types::AwsLambdaFunctionEnvironment
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.environment.variables #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.environment.error #=> Types::AwsLambdaFunctionEnvironmentError
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.environment.error.error_code #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.environment.error.message #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.function_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.handler #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.kms_key_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.last_modified #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.layers #=> Array<AwsLambdaFunctionLayer>
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.layers[0] #=> Types::AwsLambdaFunctionLayer
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.layers[0].arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.layers[0].code_size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.master_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.memory_size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.revision_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.role #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.runtime #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.tracing_config #=> Types::AwsLambdaFunctionTracingConfig
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.tracing_config.mode #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.vpc_config #=> Types::AwsLambdaFunctionVpcConfig
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.vpc_config.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_function.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_lambda_layer_version #=> Types::AwsLambdaLayerVersionDetails
    #   resp.data.findings[0].resources[0].details.aws_lambda_layer_version.version #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_lambda_layer_version.compatible_runtimes #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_lambda_layer_version.created_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance #=> Types::AwsRdsDbInstanceDetails
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.associated_roles #=> Array<AwsRdsDbInstanceAssociatedRole>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0] #=> Types::AwsRdsDbInstanceAssociatedRole
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0].role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0].feature_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.ca_certificate_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_cluster_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_instance_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_instance_class #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_instance_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.dbi_resource_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.deletion_protection #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.endpoint #=> Types::AwsRdsDbInstanceEndpoint
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.endpoint.address #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.endpoint.port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.endpoint.hosted_zone_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.engine #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.engine_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.instance_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.publicly_accessible #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.storage_encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.tde_credential_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups #=> Array<AwsRdsDbInstanceVpcSecurityGroup>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups[0] #=> Types::AwsRdsDbInstanceVpcSecurityGroup
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.multi_az #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_instance_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.master_username #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.allocated_storage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.preferred_backup_window #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.backup_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_security_groups #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups #=> Array<AwsRdsDbParameterGroup>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups[0] #=> Types::AwsRdsDbParameterGroup
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.availability_zone #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group #=> Types::AwsRdsDbSubnetGroup
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets #=> Array<AwsRdsDbSubnetGroupSubnet>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0] #=> Types::AwsRdsDbSubnetGroupSubnet
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_availability_zone #=> Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.preferred_maintenance_window #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values #=> Types::AwsRdsDbPendingModifiedValues
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.master_user_password #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.engine_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.license_model #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.iops #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.storage_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports #=> Types::AwsRdsPendingCloudWatchLogsExports
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports.log_types_to_enable #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports.log_types_to_disable #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features #=> Array<AwsRdsDbProcessorFeature>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features[0] #=> Types::AwsRdsDbProcessorFeature
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.latest_restorable_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.read_replica_db_instance_identifiers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.read_replica_db_cluster_identifiers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.license_model #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.iops #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships #=> Array<AwsRdsDbOptionGroupMembership>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships[0] #=> Types::AwsRdsDbOptionGroupMembership
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.character_set_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.secondary_availability_zone #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.status_infos #=> Array<AwsRdsDbStatusInfo>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0] #=> Types::AwsRdsDbStatusInfo
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].status_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].normal #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].message #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.storage_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships #=> Array<AwsRdsDbDomainMembership>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0] #=> Types::AwsRdsDbDomainMembership
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].domain #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].fqdn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.monitoring_interval #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.monitoring_role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.promotion_tier #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.timezone #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.performance_insights_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.performance_insights_kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.performance_insights_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.enabled_cloud_watch_logs_exports #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.processor_features #=> Array<AwsRdsDbProcessorFeature>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.listener_endpoint #=> Types::AwsRdsDbInstanceEndpoint
    #   resp.data.findings[0].resources[0].details.aws_rds_db_instance.max_allocated_storage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_sns_topic #=> Types::AwsSnsTopicDetails
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.kms_master_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.subscription #=> Array<AwsSnsTopicSubscription>
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.subscription[0] #=> Types::AwsSnsTopicSubscription
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.subscription[0].endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.subscription[0].protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.topic_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_sns_topic.owner #=> String
    #   resp.data.findings[0].resources[0].details.aws_sqs_queue #=> Types::AwsSqsQueueDetails
    #   resp.data.findings[0].resources[0].details.aws_sqs_queue.kms_data_key_reuse_period_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_sqs_queue.kms_master_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_sqs_queue.queue_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_sqs_queue.dead_letter_target_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl #=> Types::AwsWafWebAclDetails
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.default_action #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules #=> Array<AwsWafWebAclRule>
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0] #=> Types::AwsWafWebAclRule
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].action #=> Types::WafAction
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].action.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].excluded_rules #=> Array<WafExcludedRule>
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].excluded_rules[0] #=> Types::WafExcludedRule
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].excluded_rules[0].rule_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].override_action #=> Types::WafOverrideAction
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].override_action.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].priority #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].rule_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.rules[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_web_acl.web_acl_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot #=> Types::AwsRdsDbSnapshotDetails
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.db_snapshot_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.db_instance_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.snapshot_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.engine #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.allocated_storage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.availability_zone #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.instance_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.master_username #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.engine_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.license_model #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.snapshot_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.iops #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.option_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.percent_progress #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.source_region #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.source_db_snapshot_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.storage_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.tde_credential_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.timezone #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.processor_features #=> Array<AwsRdsDbProcessorFeature>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_snapshot.dbi_resource_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot #=> Types::AwsRdsDbClusterSnapshotDetails
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.availability_zones #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.snapshot_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.engine #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.cluster_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.master_username #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.engine_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.license_model #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.snapshot_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.percent_progress #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster #=> Types::AwsRdsDbClusterDetails
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.allocated_storage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.availability_zones #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.backup_retention_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.database_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.reader_endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.custom_endpoints #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.multi_az #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.engine #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.engine_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.master_username #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.preferred_backup_window #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.preferred_maintenance_window #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.read_replica_identifiers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.vpc_security_groups #=> Array<AwsRdsDbInstanceVpcSecurityGroup>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.hosted_zone_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.storage_encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_resource_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles #=> Array<AwsRdsDbClusterAssociatedRole>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles[0] #=> Types::AwsRdsDbClusterAssociatedRole
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles[0].role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.cluster_create_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.enabled_cloud_watch_logs_exports #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.engine_mode #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.deletion_protection #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.http_endpoint_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.activity_stream_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.cross_account_clone #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.domain_memberships #=> Array<AwsRdsDbDomainMembership>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_parameter_group #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_subnet_group #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships #=> Array<AwsRdsDbClusterOptionGroupMembership>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships[0] #=> Types::AwsRdsDbClusterOptionGroupMembership
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members #=> Array<AwsRdsDbClusterMember>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0] #=> Types::AwsRdsDbClusterMember
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster #=> Types::AwsEcsClusterDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.capacity_providers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.cluster_settings #=> Array<AwsEcsClusterClusterSettingsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.cluster_settings[0] #=> Types::AwsEcsClusterClusterSettingsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.cluster_settings[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.cluster_settings[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration #=> Types::AwsEcsClusterConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration #=> Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.log_configuration #=> Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.configuration.execute_command_configuration.logging #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.default_capacity_provider_strategy #=> Array<AwsEcsClusterDefaultCapacityProviderStrategyDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.default_capacity_provider_strategy[0] #=> Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition #=> Types::AwsEcsTaskDefinitionDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions #=> Array<AwsEcsTaskDefinitionContainerDefinitionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].command #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].cpu #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].depends_on #=> Array<AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].depends_on[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].depends_on[0].condition #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].dns_search_domains #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].dns_servers #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].docker_labels #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].docker_security_options #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].entry_point #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment #=> Array<AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment_files #=> Array<AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment_files[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment_files[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].essential #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].extra_hosts #=> Array<AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].extra_hosts[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].firelens_configuration #=> Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].firelens_configuration.options #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].firelens_configuration.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].health_check #=> Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].health_check.command #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].hostname #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].image #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].links #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters #=> Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.capabilities #=> Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.devices #=> Array<AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.devices[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array<AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.tmpfs[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration #=> Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration.log_driver #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration.options #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration.secret_options #=> Array<AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration.secret_options[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration.secret_options[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].log_configuration.secret_options[0].value_from #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].memory #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].mount_points #=> Array<AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].mount_points[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].port_mappings #=> Array<AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].port_mappings[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].port_mappings[0].protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].repository_credentials #=> Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].resource_requirements #=> Array<AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].resource_requirements[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].resource_requirements[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].secrets #=> Array<AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].secrets[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].system_controls #=> Array<AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].system_controls[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].ulimits #=> Array<AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].ulimits[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].ulimits[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].user #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].volumes_from #=> Array<AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].volumes_from[0] #=> Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.container_definitions[0].working_directory #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.cpu #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.execution_role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.family #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.inference_accelerators #=> Array<AwsEcsTaskDefinitionInferenceAcceleratorsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.inference_accelerators[0] #=> Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.inference_accelerators[0].device_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.inference_accelerators[0].device_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.ipc_mode #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.memory #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.network_mode #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.pid_mode #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.placement_constraints #=> Array<AwsEcsTaskDefinitionPlacementConstraintsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.placement_constraints[0] #=> Types::AwsEcsTaskDefinitionPlacementConstraintsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.placement_constraints[0].expression #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.placement_constraints[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration #=> Types::AwsEcsTaskDefinitionProxyConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration.container_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration.proxy_configuration_properties #=> Array<AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration.proxy_configuration_properties[0] #=> Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration.proxy_configuration_properties[0].name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration.proxy_configuration_properties[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.proxy_configuration.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.requires_compatibilities #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.task_role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes #=> Array<AwsEcsTaskDefinitionVolumesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0] #=> Types::AwsEcsTaskDefinitionVolumesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].docker_volume_configuration #=> Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].docker_volume_configuration.labels #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].docker_volume_configuration.scope #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration #=> Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.authorization_config #=> Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.filesystem_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].host #=> Types::AwsEcsTaskDefinitionVolumesHostDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].host.source_path #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_task_definition.volumes[0].name #=> String
    #   resp.data.findings[0].resources[0].details.container #=> Types::ContainerDetails
    #   resp.data.findings[0].resources[0].details.container.name #=> String
    #   resp.data.findings[0].resources[0].details.container.image_id #=> String
    #   resp.data.findings[0].resources[0].details.container.image_name #=> String
    #   resp.data.findings[0].resources[0].details.container.launched_at #=> String
    #   resp.data.findings[0].resources[0].details.other #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription #=> Types::AwsRdsEventSubscriptionDetails
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.cust_subscription_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.customer_aws_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.event_categories_list #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.event_subscription_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.sns_topic_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.source_ids_list #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.source_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_event_subscription.subscription_creation_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service #=> Types::AwsEcsServiceDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.capacity_provider_strategy #=> Array<AwsEcsServiceCapacityProviderStrategyDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.capacity_provider_strategy[0] #=> Types::AwsEcsServiceCapacityProviderStrategyDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.cluster #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_configuration #=> Types::AwsEcsServiceDeploymentConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_configuration.deployment_circuit_breaker #=> Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_configuration.maximum_percent #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_controller #=> Types::AwsEcsServiceDeploymentControllerDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.deployment_controller.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.desired_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.enable_ecs_managed_tags #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.enable_execute_command #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.health_check_grace_period_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.launch_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.load_balancers #=> Array<AwsEcsServiceLoadBalancersDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.load_balancers[0] #=> Types::AwsEcsServiceLoadBalancersDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.load_balancers[0].container_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.load_balancers[0].container_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.load_balancers[0].load_balancer_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.load_balancers[0].target_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.network_configuration #=> Types::AwsEcsServiceNetworkConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.network_configuration.aws_vpc_configuration #=> Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.network_configuration.aws_vpc_configuration.assign_public_ip #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.network_configuration.aws_vpc_configuration.security_groups #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.network_configuration.aws_vpc_configuration.subnets #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_constraints #=> Array<AwsEcsServicePlacementConstraintsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_constraints[0] #=> Types::AwsEcsServicePlacementConstraintsDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_constraints[0].expression #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_constraints[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_strategies #=> Array<AwsEcsServicePlacementStrategiesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_strategies[0] #=> Types::AwsEcsServicePlacementStrategiesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_strategies[0].field #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.placement_strategies[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.platform_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.propagate_tags #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.role #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.scheduling_strategy #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_registries #=> Array<AwsEcsServiceServiceRegistriesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_registries[0] #=> Types::AwsEcsServiceServiceRegistriesDetails
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_registries[0].container_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_registries[0].container_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_registries[0].port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.service_registries[0].registry_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecs_service.task_definition #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration #=> Types::AwsAutoScalingLaunchConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.associate_public_ip_address #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings #=> Array<AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails>
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0] #=> Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].device_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs #=> Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].ebs.volume_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].no_device #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.block_device_mappings[0].virtual_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.classic_link_vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.classic_link_vpc_security_groups #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.created_time #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.ebs_optimized #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.iam_instance_profile #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.image_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.instance_monitoring #=> Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.instance_monitoring.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.instance_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.kernel_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.key_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.launch_configuration_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.placement_tenancy #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.ramdisk_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.security_groups #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.spot_price #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.user_data #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.metadata_options #=> Types::AwsAutoScalingLaunchConfigurationMetadataOptions
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.metadata_options.http_endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_auto_scaling_launch_configuration.metadata_options.http_tokens #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection #=> Types::AwsEc2VpnConnectionDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vpn_connection_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.customer_gateway_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.customer_gateway_configuration #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vpn_gateway_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.category #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry #=> Array<AwsEc2VpnConnectionVgwTelemetryDetails>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0] #=> Types::AwsEc2VpnConnectionVgwTelemetryDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0].accepted_route_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0].certificate_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0].last_status_change #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0].outside_ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.vgw_telemetry[0].status_message #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options #=> Types::AwsEc2VpnConnectionOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.static_routes_only #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options #=> Array<AwsEc2VpnConnectionOptionsTunnelOptionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0] #=> Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].dpd_timeout_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].ike_versions #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].outside_ip_address #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase1_dh_group_numbers #=> Array<Integer>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase1_dh_group_numbers[0] #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase1_encryption_algorithms #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase1_integrity_algorithms #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase1_lifetime_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase2_dh_group_numbers #=> Array<Integer>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase2_encryption_algorithms #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase2_integrity_algorithms #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].phase2_lifetime_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].pre_shared_key #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].rekey_fuzz_percentage #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].rekey_margin_time_seconds #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].replay_window_size #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.options.tunnel_options[0].tunnel_inside_cidr #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.routes #=> Array<AwsEc2VpnConnectionRoutesDetails>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.routes[0] #=> Types::AwsEc2VpnConnectionRoutesDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.routes[0].destination_cidr_block #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.routes[0].state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpn_connection.transit_gateway_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image #=> Types::AwsEcrContainerImageDetails
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.registry_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.repository_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.architecture #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.image_digest #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.image_tags #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.image_published_at #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain #=> Types::AwsOpenSearchServiceDomainDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.access_policies #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.id #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.engine_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.encryption_at_rest_options #=> Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.encryption_at_rest_options.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.encryption_at_rest_options.kms_key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.node_to_node_encryption_options #=> Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options #=> Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.automated_update_date #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.cancellable #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.current_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.new_version #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.update_available #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.update_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.service_software_options.optional_deployment #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config #=> Types::AwsOpenSearchServiceDomainClusterConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.instance_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.warm_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.warm_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.zone_awareness_config #=> Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.dedicated_master_count #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.instance_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.warm_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.cluster_config.dedicated_master_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint_options #=> Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint_options.custom_endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoint_options.tls_security_policy #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.vpc_options #=> Types::AwsOpenSearchServiceDomainVpcOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.vpc_options.security_group_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.vpc_options.subnet_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.log_publishing_options #=> Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.log_publishing_options.index_slow_logs #=> Types::AwsOpenSearchServiceDomainLogPublishingOption
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.log_publishing_options.index_slow_logs.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.log_publishing_options.index_slow_logs.enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.log_publishing_options.search_slow_logs #=> Types::AwsOpenSearchServiceDomainLogPublishingOption
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.log_publishing_options.audit_logs #=> Types::AwsOpenSearchServiceDomainLogPublishingOption
    #   resp.data.findings[0].resources[0].details.aws_open_search_service_domain.domain_endpoints #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service #=> Types::AwsEc2VpcEndpointServiceDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.acceptance_required #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.availability_zones #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.base_endpoint_dns_names #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.manages_vpc_endpoints #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.gateway_load_balancer_arns #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.network_load_balancer_arns #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.private_dns_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.service_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.service_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.service_state #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.service_type #=> Array<AwsEc2VpcEndpointServiceServiceTypeDetails>
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.service_type[0] #=> Types::AwsEc2VpcEndpointServiceServiceTypeDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_vpc_endpoint_service.service_type[0].service_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_xray_encryption_config #=> Types::AwsXrayEncryptionConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_xray_encryption_config.key_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_xray_encryption_config.status #=> String
    #   resp.data.findings[0].resources[0].details.aws_xray_encryption_config.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule #=> Types::AwsWafRateBasedRuleDetails
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.metric_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.rate_key #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.rate_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.rule_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.match_predicates #=> Array<AwsWafRateBasedRuleMatchPredicate>
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.match_predicates[0] #=> Types::AwsWafRateBasedRuleMatchPredicate
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.match_predicates[0].data_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.match_predicates[0].negated #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_waf_rate_based_rule.match_predicates[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule #=> Types::AwsWafRegionalRateBasedRuleDetails
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.metric_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.rate_key #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.rate_limit #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.rule_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.match_predicates #=> Array<AwsWafRegionalRateBasedRuleMatchPredicate>
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.match_predicates[0] #=> Types::AwsWafRegionalRateBasedRuleMatchPredicate
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.match_predicates[0].data_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.match_predicates[0].negated #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_waf_regional_rate_based_rule.match_predicates[0].type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository #=> Types::AwsEcrRepositoryDetails
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.image_scanning_configuration #=> Types::AwsEcrRepositoryImageScanningConfigurationDetails
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.image_tag_mutability #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.lifecycle_policy #=> Types::AwsEcrRepositoryLifecyclePolicyDetails
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.lifecycle_policy.lifecycle_policy_text #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.lifecycle_policy.registry_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.repository_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_repository.repository_policy_text #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster #=> Types::AwsEksClusterDetails
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.certificate_authority_data #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.cluster_status #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.endpoint #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.name #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.resources_vpc_config #=> Types::AwsEksClusterResourcesVpcConfigDetails
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.resources_vpc_config.security_group_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.resources_vpc_config.subnet_ids #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.role_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.version #=> String
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.logging #=> Types::AwsEksClusterLoggingDetails
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.logging.cluster_logging #=> Array<AwsEksClusterLoggingClusterLoggingDetails>
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.logging.cluster_logging[0] #=> Types::AwsEksClusterLoggingClusterLoggingDetails
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_eks_cluster.logging.cluster_logging[0].types #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy #=> Types::AwsNetworkFirewallFirewallPolicyDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy #=> Types::FirewallPolicyDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateful_rule_group_references #=> Array<FirewallPolicyStatefulRuleGroupReferencesDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateful_rule_group_references[0] #=> Types::FirewallPolicyStatefulRuleGroupReferencesDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateful_rule_group_references[0].resource_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions #=> Array<FirewallPolicyStatelessCustomActionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0] #=> Types::FirewallPolicyStatelessCustomActionsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0].action_definition #=> Types::StatelessCustomActionDefinition
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action #=> Types::StatelessCustomPublishMetricAction
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions #=> Array<StatelessCustomPublishMetricActionDimension>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions[0] #=> Types::StatelessCustomPublishMetricActionDimension
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions[0].value #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_custom_actions[0].action_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_default_actions #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_fragment_default_actions #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_rule_group_references #=> Array<FirewallPolicyStatelessRuleGroupReferencesDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_rule_group_references[0] #=> Types::FirewallPolicyStatelessRuleGroupReferencesDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_rule_group_references[0].priority #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy.stateless_rule_group_references[0].resource_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.firewall_policy_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall_policy.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall #=> Types::AwsNetworkFirewallFirewallDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.delete_protection #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.firewall_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.firewall_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.firewall_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.firewall_policy_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.firewall_policy_change_protection #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.subnet_change_protection #=> Boolean
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.subnet_mappings #=> Array<AwsNetworkFirewallFirewallSubnetMappingsDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.subnet_mappings[0] #=> Types::AwsNetworkFirewallFirewallSubnetMappingsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_firewall.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group #=> Types::AwsNetworkFirewallRuleGroupDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.capacity #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.description #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group #=> Types::RuleGroupDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rule_variables #=> Types::RuleGroupVariables
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rule_variables.ip_sets #=> Types::RuleGroupVariablesIpSetsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rule_variables.ip_sets.definition #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rule_variables.port_sets #=> Types::RuleGroupVariablesPortSetsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rule_variables.port_sets.definition #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source #=> Types::RuleGroupSource
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.rules_source_list #=> Types::RuleGroupSourceListDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.rules_source_list.generated_rules_type #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.rules_source_list.target_types #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.rules_source_list.targets #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.rules_string #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules #=> Array<RuleGroupSourceStatefulRulesDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0] #=> Types::RuleGroupSourceStatefulRulesDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].action #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header #=> Types::RuleGroupSourceStatefulRulesHeaderDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header.destination #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header.destination_port #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header.direction #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header.protocol #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header.source #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].header.source_port #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].rule_options #=> Array<RuleGroupSourceStatefulRulesOptionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].rule_options[0] #=> Types::RuleGroupSourceStatefulRulesOptionsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].rule_options[0].keyword #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].rule_options[0].settings #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateful_rules[0].rule_options[0].settings[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions #=> Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions #=> Array<RuleGroupSourceCustomActionsDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0] #=> Types::RuleGroupSourceCustomActionsDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition #=> Types::StatelessCustomActionDefinition
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules #=> Array<RuleGroupSourceStatelessRulesDetails>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0] #=> Types::RuleGroupSourceStatelessRulesDetails
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].priority #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition #=> Types::RuleGroupSourceStatelessRuleDefinition
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.actions #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes #=> Types::RuleGroupSourceStatelessRuleMatchAttributes
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports #=> Array<RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports[0] #=> Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports[0].from_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports[0].to_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destinations #=> Array<RuleGroupSourceStatelessRuleMatchAttributesDestinations>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destinations[0] #=> Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destinations[0].address_definition #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.protocols #=> Array<Integer>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.protocols[0] #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports #=> Array<RuleGroupSourceStatelessRuleMatchAttributesSourcePorts>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0] #=> Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0].from_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0].to_port #=> Integer
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources #=> Array<RuleGroupSourceStatelessRuleMatchAttributesSources>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources[0] #=> Types::RuleGroupSourceStatelessRuleMatchAttributesSources
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources[0].address_definition #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags #=> Array<RuleGroupSourceStatelessRuleMatchAttributesTcpFlags>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0] #=> Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].flags #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].masks #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.rule_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_network_firewall_rule_group.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group #=> Types::AwsRdsDbSecurityGroupDetails
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.db_security_group_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.db_security_group_description #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.db_security_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ec2_security_groups #=> Array<AwsRdsDbSecurityGroupEc2SecurityGroup>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ec2_security_groups[0] #=> Types::AwsRdsDbSecurityGroupEc2SecurityGroup
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ec2_security_groups[0].ec2_security_group_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ec2_security_groups[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ip_ranges #=> Array<AwsRdsDbSecurityGroupIpRange>
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ip_ranges[0] #=> Types::AwsRdsDbSecurityGroupIpRange
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ip_ranges[0].cidr_ip #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.ip_ranges[0].status #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.owner_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_rds_db_security_group.vpc_id #=> String
    #   resp.data.findings[0].compliance #=> Types::Compliance
    #   resp.data.findings[0].compliance.status #=> String, one of ["PASSED", "WARNING", "FAILED", "NOT_AVAILABLE"]
    #   resp.data.findings[0].compliance.related_requirements #=> Array<String>
    #   resp.data.findings[0].compliance.related_requirements[0] #=> String
    #   resp.data.findings[0].compliance.status_reasons #=> Array<StatusReason>
    #   resp.data.findings[0].compliance.status_reasons[0] #=> Types::StatusReason
    #   resp.data.findings[0].compliance.status_reasons[0].reason_code #=> String
    #   resp.data.findings[0].compliance.status_reasons[0].description #=> String
    #   resp.data.findings[0].verification_state #=> String, one of ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"]
    #   resp.data.findings[0].workflow_state #=> String, one of ["NEW", "ASSIGNED", "IN_PROGRESS", "DEFERRED", "RESOLVED"]
    #   resp.data.findings[0].workflow #=> Types::Workflow
    #   resp.data.findings[0].workflow.status #=> String, one of ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #   resp.data.findings[0].record_state #=> String, one of ["ACTIVE", "ARCHIVED"]
    #   resp.data.findings[0].related_findings #=> Array<RelatedFinding>
    #   resp.data.findings[0].related_findings[0] #=> Types::RelatedFinding
    #   resp.data.findings[0].related_findings[0].product_arn #=> String
    #   resp.data.findings[0].related_findings[0].id #=> String
    #   resp.data.findings[0].note #=> Types::Note
    #   resp.data.findings[0].note.text #=> String
    #   resp.data.findings[0].note.updated_by #=> String
    #   resp.data.findings[0].note.updated_at #=> String
    #   resp.data.findings[0].vulnerabilities #=> Array<Vulnerability>
    #   resp.data.findings[0].vulnerabilities[0] #=> Types::Vulnerability
    #   resp.data.findings[0].vulnerabilities[0].id #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages #=> Array<SoftwarePackage>
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0] #=> Types::SoftwarePackage
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].name #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].version #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].epoch #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].release #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].architecture #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].package_manager #=> String
    #   resp.data.findings[0].vulnerabilities[0].vulnerable_packages[0].file_path #=> String
    #   resp.data.findings[0].vulnerabilities[0].cvss #=> Array<Cvss>
    #   resp.data.findings[0].vulnerabilities[0].cvss[0] #=> Types::Cvss
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].version #=> String
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].base_score #=> Float
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].base_vector #=> String
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].source #=> String
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].adjustments #=> Array<Adjustment>
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].adjustments[0] #=> Types::Adjustment
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].adjustments[0].metric #=> String
    #   resp.data.findings[0].vulnerabilities[0].cvss[0].adjustments[0].reason #=> String
    #   resp.data.findings[0].vulnerabilities[0].related_vulnerabilities #=> Array<String>
    #   resp.data.findings[0].vulnerabilities[0].vendor #=> Types::VulnerabilityVendor
    #   resp.data.findings[0].vulnerabilities[0].vendor.name #=> String
    #   resp.data.findings[0].vulnerabilities[0].vendor.url #=> String
    #   resp.data.findings[0].vulnerabilities[0].vendor.vendor_severity #=> String
    #   resp.data.findings[0].vulnerabilities[0].vendor.vendor_created_at #=> String
    #   resp.data.findings[0].vulnerabilities[0].vendor.vendor_updated_at #=> String
    #   resp.data.findings[0].vulnerabilities[0].reference_urls #=> Array<String>
    #   resp.data.findings[0].patch_summary #=> Types::PatchSummary
    #   resp.data.findings[0].patch_summary.id #=> String
    #   resp.data.findings[0].patch_summary.installed_count #=> Integer
    #   resp.data.findings[0].patch_summary.missing_count #=> Integer
    #   resp.data.findings[0].patch_summary.failed_count #=> Integer
    #   resp.data.findings[0].patch_summary.installed_other_count #=> Integer
    #   resp.data.findings[0].patch_summary.installed_rejected_count #=> Integer
    #   resp.data.findings[0].patch_summary.installed_pending_reboot #=> Integer
    #   resp.data.findings[0].patch_summary.operation_start_time #=> String
    #   resp.data.findings[0].patch_summary.operation_end_time #=> String
    #   resp.data.findings[0].patch_summary.reboot_option #=> String
    #   resp.data.findings[0].patch_summary.operation #=> String
    #   resp.data.findings[0].action #=> Types::Action
    #   resp.data.findings[0].action.action_type #=> String
    #   resp.data.findings[0].action.network_connection_action #=> Types::NetworkConnectionAction
    #   resp.data.findings[0].action.network_connection_action.connection_direction #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details #=> Types::ActionRemoteIpDetails
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.organization #=> Types::IpOrganizationDetails
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.organization.asn #=> Integer
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.organization.asn_org #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.organization.isp #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.organization.org #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.country #=> Types::Country
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.country.country_code #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.country.country_name #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.city #=> Types::City
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.city.city_name #=> String
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.geo_location #=> Types::GeoLocation
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.data.findings[0].action.network_connection_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.data.findings[0].action.network_connection_action.remote_port_details #=> Types::ActionRemotePortDetails
    #   resp.data.findings[0].action.network_connection_action.remote_port_details.port #=> Integer
    #   resp.data.findings[0].action.network_connection_action.remote_port_details.port_name #=> String
    #   resp.data.findings[0].action.network_connection_action.local_port_details #=> Types::ActionLocalPortDetails
    #   resp.data.findings[0].action.network_connection_action.local_port_details.port #=> Integer
    #   resp.data.findings[0].action.network_connection_action.local_port_details.port_name #=> String
    #   resp.data.findings[0].action.network_connection_action.protocol #=> String
    #   resp.data.findings[0].action.network_connection_action.blocked #=> Boolean
    #   resp.data.findings[0].action.aws_api_call_action #=> Types::AwsApiCallAction
    #   resp.data.findings[0].action.aws_api_call_action.api #=> String
    #   resp.data.findings[0].action.aws_api_call_action.service_name #=> String
    #   resp.data.findings[0].action.aws_api_call_action.caller_type #=> String
    #   resp.data.findings[0].action.aws_api_call_action.remote_ip_details #=> Types::ActionRemoteIpDetails
    #   resp.data.findings[0].action.aws_api_call_action.domain_details #=> Types::AwsApiCallActionDomainDetails
    #   resp.data.findings[0].action.aws_api_call_action.domain_details.domain #=> String
    #   resp.data.findings[0].action.aws_api_call_action.affected_resources #=> Hash<String, String>
    #   resp.data.findings[0].action.aws_api_call_action.first_seen #=> String
    #   resp.data.findings[0].action.aws_api_call_action.last_seen #=> String
    #   resp.data.findings[0].action.dns_request_action #=> Types::DnsRequestAction
    #   resp.data.findings[0].action.dns_request_action.domain #=> String
    #   resp.data.findings[0].action.dns_request_action.protocol #=> String
    #   resp.data.findings[0].action.dns_request_action.blocked #=> Boolean
    #   resp.data.findings[0].action.port_probe_action #=> Types::PortProbeAction
    #   resp.data.findings[0].action.port_probe_action.port_probe_details #=> Array<PortProbeDetail>
    #   resp.data.findings[0].action.port_probe_action.port_probe_details[0] #=> Types::PortProbeDetail
    #   resp.data.findings[0].action.port_probe_action.port_probe_details[0].local_port_details #=> Types::ActionLocalPortDetails
    #   resp.data.findings[0].action.port_probe_action.port_probe_details[0].local_ip_details #=> Types::ActionLocalIpDetails
    #   resp.data.findings[0].action.port_probe_action.port_probe_details[0].local_ip_details.ip_address_v4 #=> String
    #   resp.data.findings[0].action.port_probe_action.port_probe_details[0].remote_ip_details #=> Types::ActionRemoteIpDetails
    #   resp.data.findings[0].action.port_probe_action.blocked #=> Boolean
    #   resp.data.findings[0].finding_provider_fields #=> Types::FindingProviderFields
    #   resp.data.findings[0].finding_provider_fields.confidence #=> Integer
    #   resp.data.findings[0].finding_provider_fields.criticality #=> Integer
    #   resp.data.findings[0].finding_provider_fields.related_findings #=> Array<RelatedFinding>
    #   resp.data.findings[0].finding_provider_fields.severity #=> Types::FindingProviderSeverity
    #   resp.data.findings[0].finding_provider_fields.severity.label #=> String, one of ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #   resp.data.findings[0].finding_provider_fields.severity.original #=> String
    #   resp.data.findings[0].finding_provider_fields.types #=> Array<String>
    #   resp.data.findings[0].sample #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindings,
        stubs: @stubs,
        params_class: Params::GetFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the results of the Security Hub insight specified by the insight ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightResultsInput}.
    #
    # @option params [String] :insight_arn
    #   <p>The ARN of the insight for which to return results.</p>
    #
    # @return [Types::GetInsightResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_results(
    #     insight_arn: 'InsightArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightResultsOutput
    #   resp.data.insight_results #=> Types::InsightResults
    #   resp.data.insight_results.insight_arn #=> String
    #   resp.data.insight_results.group_by_attribute #=> String
    #   resp.data.insight_results.result_values #=> Array<InsightResultValue>
    #   resp.data.insight_results.result_values[0] #=> Types::InsightResultValue
    #   resp.data.insight_results.result_values[0].group_by_attribute_value #=> String
    #   resp.data.insight_results.result_values[0].count #=> Integer
    #
    def get_insight_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightResultsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetInsightResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsightResults,
        stubs: @stubs,
        params_class: Params::GetInsightResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insight_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists and describes insights for the specified insight ARNs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightsInput}.
    #
    # @option params [Array<String>] :insight_arns
    #   <p>The ARNs of the insights to describe. If you do not provide any insight ARNs, then
    #               <code>GetInsights</code> returns all of your custom insights. It does not return any
    #            managed insights.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetInsights</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    #
    # @return [Types::GetInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insights(
    #     insight_arns: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightsOutput
    #   resp.data.insights #=> Array<Insight>
    #   resp.data.insights[0] #=> Types::Insight
    #   resp.data.insights[0].insight_arn #=> String
    #   resp.data.insights[0].name #=> String
    #   resp.data.insights[0].filters #=> Types::AwsSecurityFindingFilters
    #   resp.data.insights[0].filters.product_arn #=> Array<StringFilter>
    #   resp.data.insights[0].filters.product_arn[0] #=> Types::StringFilter
    #   resp.data.insights[0].filters.product_arn[0].value #=> String
    #   resp.data.insights[0].filters.product_arn[0].comparison #=> String, one of ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"]
    #   resp.data.insights[0].filters.aws_account_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.generator_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.region #=> Array<StringFilter>
    #   resp.data.insights[0].filters.type #=> Array<StringFilter>
    #   resp.data.insights[0].filters.first_observed_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.first_observed_at[0] #=> Types::DateFilter
    #   resp.data.insights[0].filters.first_observed_at[0].start #=> String
    #   resp.data.insights[0].filters.first_observed_at[0].end #=> String
    #   resp.data.insights[0].filters.first_observed_at[0].date_range #=> Types::DateRange
    #   resp.data.insights[0].filters.first_observed_at[0].date_range.value #=> Integer
    #   resp.data.insights[0].filters.first_observed_at[0].date_range.unit #=> String, one of ["DAYS"]
    #   resp.data.insights[0].filters.last_observed_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.created_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.updated_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.severity_product #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.severity_product[0] #=> Types::NumberFilter
    #   resp.data.insights[0].filters.severity_product[0].gte #=> Float
    #   resp.data.insights[0].filters.severity_product[0].lte #=> Float
    #   resp.data.insights[0].filters.severity_product[0].eq #=> Float
    #   resp.data.insights[0].filters.severity_normalized #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.severity_label #=> Array<StringFilter>
    #   resp.data.insights[0].filters.confidence #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.criticality #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.title #=> Array<StringFilter>
    #   resp.data.insights[0].filters.description #=> Array<StringFilter>
    #   resp.data.insights[0].filters.recommendation_text #=> Array<StringFilter>
    #   resp.data.insights[0].filters.source_url #=> Array<StringFilter>
    #   resp.data.insights[0].filters.product_fields #=> Array<MapFilter>
    #   resp.data.insights[0].filters.product_fields[0] #=> Types::MapFilter
    #   resp.data.insights[0].filters.product_fields[0].key #=> String
    #   resp.data.insights[0].filters.product_fields[0].value #=> String
    #   resp.data.insights[0].filters.product_fields[0].comparison #=> String, one of ["EQUALS", "NOT_EQUALS"]
    #   resp.data.insights[0].filters.product_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.company_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.user_defined_fields #=> Array<MapFilter>
    #   resp.data.insights[0].filters.malware_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.malware_type #=> Array<StringFilter>
    #   resp.data.insights[0].filters.malware_path #=> Array<StringFilter>
    #   resp.data.insights[0].filters.malware_state #=> Array<StringFilter>
    #   resp.data.insights[0].filters.network_direction #=> Array<StringFilter>
    #   resp.data.insights[0].filters.network_protocol #=> Array<StringFilter>
    #   resp.data.insights[0].filters.network_source_ip_v4 #=> Array<IpFilter>
    #   resp.data.insights[0].filters.network_source_ip_v4[0] #=> Types::IpFilter
    #   resp.data.insights[0].filters.network_source_ip_v4[0].cidr #=> String
    #   resp.data.insights[0].filters.network_source_ip_v6 #=> Array<IpFilter>
    #   resp.data.insights[0].filters.network_source_port #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.network_source_domain #=> Array<StringFilter>
    #   resp.data.insights[0].filters.network_source_mac #=> Array<StringFilter>
    #   resp.data.insights[0].filters.network_destination_ip_v4 #=> Array<IpFilter>
    #   resp.data.insights[0].filters.network_destination_ip_v6 #=> Array<IpFilter>
    #   resp.data.insights[0].filters.network_destination_port #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.network_destination_domain #=> Array<StringFilter>
    #   resp.data.insights[0].filters.process_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.process_path #=> Array<StringFilter>
    #   resp.data.insights[0].filters.process_pid #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.process_parent_pid #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.process_launched_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.process_terminated_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.threat_intel_indicator_type #=> Array<StringFilter>
    #   resp.data.insights[0].filters.threat_intel_indicator_value #=> Array<StringFilter>
    #   resp.data.insights[0].filters.threat_intel_indicator_category #=> Array<StringFilter>
    #   resp.data.insights[0].filters.threat_intel_indicator_last_observed_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.threat_intel_indicator_source #=> Array<StringFilter>
    #   resp.data.insights[0].filters.threat_intel_indicator_source_url #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_type #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_partition #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_region #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_tags #=> Array<MapFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_type #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_image_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_ip_v4_addresses #=> Array<IpFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_ip_v6_addresses #=> Array<IpFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_key_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_vpc_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_subnet_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_ec2_instance_launched_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.resource_aws_s3_bucket_owner_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_s3_bucket_owner_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_iam_access_key_user_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_iam_access_key_principal_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_iam_access_key_status #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_aws_iam_access_key_created_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.resource_aws_iam_user_user_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_container_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_container_image_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_container_image_name #=> Array<StringFilter>
    #   resp.data.insights[0].filters.resource_container_launched_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.resource_details_other #=> Array<MapFilter>
    #   resp.data.insights[0].filters.compliance_status #=> Array<StringFilter>
    #   resp.data.insights[0].filters.verification_state #=> Array<StringFilter>
    #   resp.data.insights[0].filters.workflow_state #=> Array<StringFilter>
    #   resp.data.insights[0].filters.workflow_status #=> Array<StringFilter>
    #   resp.data.insights[0].filters.record_state #=> Array<StringFilter>
    #   resp.data.insights[0].filters.related_findings_product_arn #=> Array<StringFilter>
    #   resp.data.insights[0].filters.related_findings_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.note_text #=> Array<StringFilter>
    #   resp.data.insights[0].filters.note_updated_at #=> Array<DateFilter>
    #   resp.data.insights[0].filters.note_updated_by #=> Array<StringFilter>
    #   resp.data.insights[0].filters.keyword #=> Array<KeywordFilter>
    #   resp.data.insights[0].filters.keyword[0] #=> Types::KeywordFilter
    #   resp.data.insights[0].filters.keyword[0].value #=> String
    #   resp.data.insights[0].filters.finding_provider_fields_confidence #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.finding_provider_fields_criticality #=> Array<NumberFilter>
    #   resp.data.insights[0].filters.finding_provider_fields_related_findings_id #=> Array<StringFilter>
    #   resp.data.insights[0].filters.finding_provider_fields_related_findings_product_arn #=> Array<StringFilter>
    #   resp.data.insights[0].filters.finding_provider_fields_severity_label #=> Array<StringFilter>
    #   resp.data.insights[0].filters.finding_provider_fields_severity_original #=> Array<StringFilter>
    #   resp.data.insights[0].filters.finding_provider_fields_types #=> Array<StringFilter>
    #   resp.data.insights[0].filters.sample #=> Array<BooleanFilter>
    #   resp.data.insights[0].filters.sample[0] #=> Types::BooleanFilter
    #   resp.data.insights[0].filters.sample[0].value #=> Boolean
    #   resp.data.insights[0].group_by_attribute #=> String
    #   resp.data.next_token #=> String
    #
    def get_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsights
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsights,
        stubs: @stubs,
        params_class: Params::GetInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the count of all Security Hub membership invitations that were sent to the
    #          current member account, not including the currently accepted invitation. </p>
    #
    # @param [Hash] params
    #   See {Types::GetInvitationsCountInput}.
    #
    # @return [Types::GetInvitationsCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invitations_count()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInvitationsCountOutput
    #   resp.data.invitations_count #=> Integer
    #
    def get_invitations_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInvitationsCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInvitationsCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInvitationsCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetInvitationsCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInvitationsCount,
        stubs: @stubs,
        params_class: Params::GetInvitationsCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_invitations_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This method is deprecated. Instead, use <code>GetAdministratorAccount</code>.</p>
    #          <p>The Security Hub console continues to use <code>GetMasterAccount</code>. It will eventually change to use <code>GetAdministratorAccount</code>. Any IAM policies that specifically control access to this function must continue to use <code>GetMasterAccount</code>. You should also add <code>GetAdministratorAccount</code> to your policies to ensure that the correct permissions are in place after the console begins to use <code>GetAdministratorAccount</code>.</p>
    #          <p>Provides the details for the Security Hub administrator account for the current member account.</p>
    #          <p>Can be used by both member accounts that are managed using Organizations and accounts that were
    #          invited manually.</p>
    #
    # @deprecated
    #   This API has been deprecated, use GetAdministratorAccount API instead.
    #
    # @param [Hash] params
    #   See {Types::GetMasterAccountInput}.
    #
    # @return [Types::GetMasterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_master_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMasterAccountOutput
    #   resp.data.master #=> Types::Invitation
    #   resp.data.master.account_id #=> String
    #   resp.data.master.invitation_id #=> String
    #   resp.data.master.invited_at #=> Time
    #   resp.data.master.member_status #=> String
    #
    def get_master_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMasterAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMasterAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMasterAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetMasterAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMasterAccount,
        stubs: @stubs,
        params_class: Params::GetMasterAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_master_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details for the Security Hub member accounts for the specified account IDs.</p>
    #          <p>An administrator account can be either the delegated Security Hub administrator account for an
    #          organization or an administrator account that enabled Security Hub manually.</p>
    #          <p>The results include both member accounts that are managed using Organizations and accounts that
    #          were invited manually.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMembersInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs for the Security Hub member accounts to return the details for. </p>
    #
    # @return [Types::GetMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMembersOutput
    #   resp.data.members #=> Array<Member>
    #   resp.data.members[0] #=> Types::Member
    #   resp.data.members[0].account_id #=> String
    #   resp.data.members[0].email #=> String
    #   resp.data.members[0].master_id #=> String
    #   resp.data.members[0].administrator_id #=> String
    #   resp.data.members[0].member_status #=> String
    #   resp.data.members[0].invited_at #=> Time
    #   resp.data.members[0].updated_at #=> Time
    #   resp.data.unprocessed_accounts #=> Array<Result>
    #   resp.data.unprocessed_accounts[0] #=> Types::Result
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].processing_result #=> String
    #
    def get_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMembersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::GetMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMembers,
        stubs: @stubs,
        params_class: Params::GetMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Invites other Amazon Web Services accounts to become member accounts for the Security Hub administrator account that
    #          the invitation is sent from.</p>
    #          <p>This operation is only used to invite accounts that do not belong to an organization.
    #          Organization accounts do not receive invitations.</p>
    #          <p>Before you can use this action to invite a member, you must first use the <code>CreateMembers</code> action to create the member account in Security Hub.</p>
    #          <p>When the account owner enables Security Hub and accepts the invitation to become a member
    #          account, the administrator account can view the findings generated from the member account.</p>
    #
    # @param [Hash] params
    #   See {Types::InviteMembersInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs of the Amazon Web Services accounts to invite to Security Hub as members. </p>
    #
    # @return [Types::InviteMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InviteMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<Result>
    #   resp.data.unprocessed_accounts[0] #=> Types::Result
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].processing_result #=> String
    #
    def invite_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InviteMembersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InviteMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InviteMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::InviteMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InviteMembers,
        stubs: @stubs,
        params_class: Params::InviteMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invite_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all findings-generating solutions (products) that you are subscribed to receive
    #          findings from in Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnabledProductsForImportInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListEnabledProductsForImport</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    #
    # @return [Types::ListEnabledProductsForImportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enabled_products_for_import(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnabledProductsForImportOutput
    #   resp.data.product_subscriptions #=> Array<String>
    #   resp.data.product_subscriptions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_enabled_products_for_import(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnabledProductsForImportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnabledProductsForImportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnabledProductsForImport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::ListEnabledProductsForImport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnabledProductsForImport,
        stubs: @stubs,
        params_class: Params::ListEnabledProductsForImportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_enabled_products_for_import
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If finding aggregation is enabled, then <code>ListFindingAggregators</code> returns the ARN of the finding aggregator. You can run this operation from any Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingAggregatorsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token returned with the previous set of results. Identifies the next set of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. This operation currently only returns a single result.</p>
    #
    # @return [Types::ListFindingAggregatorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_finding_aggregators(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingAggregatorsOutput
    #   resp.data.finding_aggregators #=> Array<FindingAggregator>
    #   resp.data.finding_aggregators[0] #=> Types::FindingAggregator
    #   resp.data.finding_aggregators[0].finding_aggregator_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_finding_aggregators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingAggregatorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingAggregatorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindingAggregators
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::ListFindingAggregators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindingAggregators,
        stubs: @stubs,
        params_class: Params::ListFindingAggregatorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_finding_aggregators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Security Hub membership invitations that were sent to the current Amazon Web Services account.</p>
    #          <p>This operation is only used by accounts that are managed by invitation.
    #          Accounts that are managed using the integration with Organizations do not receive invitations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInvitationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. </p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListInvitations</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @return [Types::ListInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInvitationsOutput
    #   resp.data.invitations #=> Array<Invitation>
    #   resp.data.invitations[0] #=> Types::Invitation
    #   resp.data.invitations[0].account_id #=> String
    #   resp.data.invitations[0].invitation_id #=> String
    #   resp.data.invitations[0].invited_at #=> Time
    #   resp.data.invitations[0].member_status #=> String
    #   resp.data.next_token #=> String
    #
    def list_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInvitationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInvitations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::ListInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInvitations,
        stubs: @stubs,
        params_class: Params::ListInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists details about all member accounts for the current Security Hub administrator
    #          account.</p>
    #          <p>The results include both member accounts that belong to an organization and member
    #          accounts that were invited manually.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMembersInput}.
    #
    # @option params [Boolean] :only_associated
    #   <p>Specifies which member accounts to include in the response based on their relationship
    #            status with the administrator account. The default value is <code>TRUE</code>.</p>
    #            <p>If <code>OnlyAssociated</code> is set to <code>TRUE</code>, the response includes member
    #            accounts whose relationship status with the administrator account is set to <code>ENABLED</code>.</p>
    #            <p>If <code>OnlyAssociated</code> is set to <code>FALSE</code>, the response includes all
    #            existing member accounts. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. </p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListMembers</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    #
    # @return [Types::ListMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members(
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMembersOutput
    #   resp.data.members #=> Array<Member>
    #   resp.data.members[0] #=> Types::Member
    #   resp.data.members[0].account_id #=> String
    #   resp.data.members[0].email #=> String
    #   resp.data.members[0].master_id #=> String
    #   resp.data.members[0].administrator_id #=> String
    #   resp.data.members[0].member_status #=> String
    #   resp.data.members[0].invited_at #=> Time
    #   resp.data.members[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMembersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMembers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::ListMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMembers,
        stubs: @stubs,
        params_class: Params::ListMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Security Hub administrator accounts. Can only be called by the organization
    #          management account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationAdminAccountsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListOrganizationAdminAccounts</code> operation, set the value of this parameter to
    #               <code>NULL</code>. For subsequent calls to the operation, to continue listing data, set
    #            the value of this parameter to the value returned from the previous response. </p>
    #
    # @return [Types::ListOrganizationAdminAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationAdminAccountsOutput
    #   resp.data.admin_accounts #=> Array<AdminAccount>
    #   resp.data.admin_accounts[0] #=> Types::AdminAccount
    #   resp.data.admin_accounts[0].account_id #=> String
    #   resp.data.admin_accounts[0].status #=> String, one of ["ENABLED", "DISABLE_IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def list_organization_admin_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationAdminAccountsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationAdminAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationAdminAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::ListOrganizationAdminAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationAdminAccounts,
        stubs: @stubs,
        params_class: Params::ListOrganizationAdminAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organization_admin_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags associated with a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to retrieve tags for.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException]),
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

    # <p>Adds one or more tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to apply the tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. You can add up to 50 tags at a time. The tag keys can be no longer than 128 characters. The tag values can be no longer than 256 characters.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException]),
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

    # <p>Removes one or more tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove the tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys associated with the tags to remove from the resource. You can remove up to 50 tags at a time.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException]),
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

    # <p>Updates the name and description of a custom action target in Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateActionTargetInput}.
    #
    # @option params [String] :action_target_arn
    #   <p>The ARN of the custom action target to update.</p>
    #
    # @option params [String] :name
    #   <p>The updated name of the custom action target.</p>
    #
    # @option params [String] :description
    #   <p>The updated description for the custom action target.</p>
    #
    # @return [Types::UpdateActionTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_action_target(
    #     action_target_arn: 'ActionTargetArn', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateActionTargetOutput
    #
    def update_action_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateActionTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateActionTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateActionTarget
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::UpdateActionTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateActionTarget,
        stubs: @stubs,
        params_class: Params::UpdateActionTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_action_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the finding aggregation configuration. Used to update the Region linking mode and the list of included or excluded Regions. You cannot use <code>UpdateFindingAggregator</code> to change the aggregation Region.</p>
    #          <p>You must run <code>UpdateFindingAggregator</code> from the current aggregation Region.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFindingAggregatorInput}.
    #
    # @option params [String] :finding_aggregator_arn
    #   <p>The ARN of the finding aggregator. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    #
    # @option params [String] :region_linking_mode
    #   <p>Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.</p>
    #            <p>The selected option also determines how to use the Regions provided in the Regions list.</p>
    #            <p>The options are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Indicates to aggregate findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the <code>Regions</code> parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIED_REGIONS</code> - Indicates to aggregate findings only from the Regions listed in the <code>Regions</code> parameter. Security Hub does not automatically aggregate findings from new Regions.
    #            </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :regions
    #   <p>If <code>RegionLinkingMode</code> is <code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a comma-separated list of Regions that do not aggregate findings to the aggregation Region.</p>
    #            <p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>, then this is a comma-separated list of Regions that do aggregate findings to the aggregation Region.</p>
    #
    # @return [Types::UpdateFindingAggregatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_finding_aggregator(
    #     finding_aggregator_arn: 'FindingAggregatorArn', # required
    #     region_linking_mode: 'RegionLinkingMode', # required
    #     regions: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFindingAggregatorOutput
    #   resp.data.finding_aggregator_arn #=> String
    #   resp.data.finding_aggregation_region #=> String
    #   resp.data.region_linking_mode #=> String
    #   resp.data.regions #=> Array<String>
    #   resp.data.regions[0] #=> String
    #
    def update_finding_aggregator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFindingAggregatorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFindingAggregatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFindingAggregator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateFindingAggregator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFindingAggregator,
        stubs: @stubs,
        params_class: Params::UpdateFindingAggregatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_finding_aggregator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>UpdateFindings</code> is deprecated. Instead of <code>UpdateFindings</code>, use
    #             <code>BatchUpdateFindings</code>.</p>
    #          <p>Updates the <code>Note</code> and <code>RecordState</code> of the Security Hub-aggregated
    #          findings that the filter attributes specify. Any member account that can view the finding
    #          also sees the update to the finding.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFindingsInput}.
    #
    # @option params [AwsSecurityFindingFilters] :filters
    #   <p>A collection of attributes that specify which findings you want to update.</p>
    #
    # @option params [NoteUpdate] :note
    #   <p>The updated note for the finding.</p>
    #
    # @option params [String] :record_state
    #   <p>The updated record state for the finding.</p>
    #
    # @return [Types::UpdateFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings(
    #     filters: {
    #       product_arn: [
    #         {
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: 'Start',
    #           end: 'End',
    #           date_range: {
    #             value: 1,
    #             unit: 'DAYS' # accepts ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: 'Key',
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "NOT_EQUALS"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: 'Cidr'
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: 'Value'
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ]
    #     }, # required
    #     note: {
    #       text: 'Text', # required
    #       updated_by: 'UpdatedBy' # required
    #     },
    #     record_state: 'ACTIVE' # accepts ["ACTIVE", "ARCHIVED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFindingsOutput
    #
    def update_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFindingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFindings,
        stubs: @stubs,
        params_class: Params::UpdateFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Security Hub insight identified by the specified insight ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInsightInput}.
    #
    # @option params [String] :insight_arn
    #   <p>The ARN of the insight that you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The updated name for the insight.</p>
    #
    # @option params [AwsSecurityFindingFilters] :filters
    #   <p>The updated filters that define this insight.</p>
    #
    # @option params [String] :group_by_attribute
    #   <p>The updated <code>GroupBy</code> attribute that defines this insight.</p>
    #
    # @return [Types::UpdateInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_insight(
    #     insight_arn: 'InsightArn', # required
    #     name: 'Name',
    #     filters: {
    #       product_arn: [
    #         {
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: 'Start',
    #           end: 'End',
    #           date_range: {
    #             value: 1,
    #             unit: 'DAYS' # accepts ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: 'Key',
    #           value: 'Value',
    #           comparison: 'EQUALS' # accepts ["EQUALS", "NOT_EQUALS"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: 'Cidr'
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: 'Value'
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ]
    #     },
    #     group_by_attribute: 'GroupByAttribute'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInsightOutput
    #
    def update_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInsightInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInsight
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInsight,
        stubs: @stubs,
        params_class: Params::UpdateInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to update the configuration related to Organizations. Can only be called from a
    #          Security Hub administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOrganizationConfigurationInput}.
    #
    # @option params [Boolean] :auto_enable
    #   <p>Whether to automatically enable Security Hub for new accounts in the organization.</p>
    #            <p>By default, this is <code>false</code>, and new accounts are not added
    #            automatically.</p>
    #            <p>To automatically enable Security Hub for new accounts, set this to <code>true</code>.</p>
    #
    # @option params [String] :auto_enable_standards
    #   <p>Whether to automatically enable Security Hub <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html">default standards</a>
    #            for new member accounts in the organization.</p>
    #            <p>By default, this parameter is equal to <code>DEFAULT</code>, and new member accounts are automatically enabled with default Security Hub standards.</p>
    #            <p>To opt out of enabling default standards for new member accounts, set this parameter equal to <code>NONE</code>.</p>
    #
    # @return [Types::UpdateOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration(
    #     auto_enable: false, # required
    #     auto_enable_standards: 'NONE' # accepts ["NONE", "DEFAULT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOrganizationConfigurationOutput
    #
    def update_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOrganizationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOrganizationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOrganizationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateOrganizationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOrganizationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateOrganizationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_organization_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates configuration options for Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSecurityHubConfigurationInput}.
    #
    # @option params [Boolean] :auto_enable_controls
    #   <p>Whether to automatically enable new controls when they are added to standards that are
    #            enabled.</p>
    #            <p>By default, this is set to <code>true</code>, and new controls are enabled
    #            automatically. To not automatically enable new controls, set this to <code>false</code>.
    #         </p>
    #
    # @return [Types::UpdateSecurityHubConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_hub_configuration(
    #     auto_enable_controls: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSecurityHubConfigurationOutput
    #
    def update_security_hub_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSecurityHubConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSecurityHubConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSecurityHubConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateSecurityHubConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSecurityHubConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateSecurityHubConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_security_hub_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to control whether an individual security standard control is enabled or
    #          disabled.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStandardsControlInput}.
    #
    # @option params [String] :standards_control_arn
    #   <p>The ARN of the security standard control to enable or disable.</p>
    #
    # @option params [String] :control_status
    #   <p>The updated status of the security standard control.</p>
    #
    # @option params [String] :disabled_reason
    #   <p>A description of the reason why you are disabling a security standard control. If you
    #            are disabling a control, then this is required.</p>
    #
    # @return [Types::UpdateStandardsControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_standards_control(
    #     standards_control_arn: 'StandardsControlArn', # required
    #     control_status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     disabled_reason: 'DisabledReason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStandardsControlOutput
    #
    def update_standards_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStandardsControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStandardsControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStandardsControl
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::InvalidAccessException]),
        data_parser: Parsers::UpdateStandardsControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStandardsControl,
        stubs: @stubs,
        params_class: Params::UpdateStandardsControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_standards_control
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
