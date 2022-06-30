# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Support
  # An API client for AWSSupport_20130415
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Web Services Support</fullname>
  #         <p>The <i>Amazon Web Services Support API Reference</i> is intended for programmers who need detailed
  #             information about the Amazon Web Services Support operations and data types. You can use the API to manage
  #             your support cases programmatically. The Amazon Web Services Support API uses HTTP methods that return
  #             results in JSON format.</p>
  #         <note>
  #             <ul>
  #                <li>
  #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
  #                         API. </p>
  #                 </li>
  #                <li>
  #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
  #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
  #                             <code>SubscriptionRequiredException</code> error message appears. For
  #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
  #                 </li>
  #             </ul>
  #         </note>
  #         <p>The Amazon Web Services Support service also exposes a set of <a href="http://aws.amazon.com/premiumsupport/trustedadvisor/">Trusted Advisor</a> features. You can
  #             retrieve a list of checks and their descriptions, get check results, specify checks to
  #             refresh, and get the refresh status of checks.</p>
  #         <p>The following list describes the Amazon Web Services Support case management operations:</p>
  #         <ul>
  #             <li>
  #                 <p> Service names, issue categories, and available severity levels  - The
  #                         <a>DescribeServices</a> and <a>DescribeSeverityLevels</a> operations return Amazon Web Services service names,
  #                     service codes, service categories, and problem severity levels. You use these
  #                     values when you call the <a>CreateCase</a> operation.</p>
  #             </li>
  #             <li>
  #                 <p> Case creation, case details, and case resolution - The <a>CreateCase</a>, <a>DescribeCases</a>, <a>DescribeAttachment</a>, and <a>ResolveCase</a> operations
  #                     create Amazon Web Services Support cases, retrieve information about cases, and resolve cases.</p>
  #             </li>
  #             <li>
  #                 <p> Case communication - The <a>DescribeCommunications</a>,
  #                         <a>AddCommunicationToCase</a>, and <a>AddAttachmentsToSet</a> operations retrieve and add communications
  #                     and attachments to Amazon Web Services Support cases.</p>
  #             </li>
  #          </ul>
  #         <p>The following list describes the operations available from the Amazon Web Services Support service for
  #             Trusted Advisor:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <a>DescribeTrustedAdvisorChecks</a> returns the list of checks that
  #                     run against your Amazon Web Services resources.</p>
  #             </li>
  #             <li>
  #                 <p>Using the <code>checkId</code> for a specific check returned by <a>DescribeTrustedAdvisorChecks</a>, you can call <a>DescribeTrustedAdvisorCheckResult</a> to obtain the results for the
  #                     check that you specified.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>DescribeTrustedAdvisorCheckSummaries</a> returns summarized
  #                     results for one or more Trusted Advisor checks.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>RefreshTrustedAdvisorCheck</a> requests that Trusted Advisor rerun a
  #                     specified check.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> reports the refresh
  #                     status of one or more checks.</p>
  #             </li>
  #          </ul>
  #         <p>For authentication of requests, Amazon Web Services Support uses <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing
  #                 Process</a>.</p>
  #         <p>See <a href="https://docs.aws.amazon.com/awssupport/latest/user/Welcome.html">About the
  #             Amazon Web Services Support API</a> in the <i>Amazon Web Services Support User Guide</i> for
  #             information about how to use this service to create and manage your support cases, and
  #             how to call Trusted Advisor for results of checks on your resources.</p>
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
    def initialize(config = AWS::SDK::Support::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds one or more attachments to an attachment set. </p>
    #         <p>An attachment set is a temporary container for attachments that you add to a case or
    #             case communication. The set is available for 1 hour after it's created. The
    #                 <code>expiryTime</code> returned in the response is when the set expires. </p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::AddAttachmentsToSetInput}.
    #
    # @option params [String] :attachment_set_id
    #   <p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a
    #               new attachment set is created, and the ID of the set is returned in the response. If an
    #                   <code>attachmentSetId</code> is specified, the attachments are added to the
    #               specified set, if it exists.</p>
    #
    # @option params [Array<Attachment>] :attachments
    #   <p>One or more attachments to add to the set. You can add up to three attachments per
    #               set. The size limit is 5 MB per attachment.</p>
    #           <p>In the <code>Attachment</code> object, use the <code>data</code> parameter to specify
    #               the contents of the attachment file. In the previous request syntax, the value for
    #                   <code>data</code> appear as <code>blob</code>, which is represented as a
    #               base64-encoded string. The value for <code>fileName</code> is the name of the
    #               attachment, such as <code>troubleshoot-screenshot.png</code>.</p>
    #
    # @return [Types::AddAttachmentsToSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_attachments_to_set(
    #     attachment_set_id: 'attachmentSetId',
    #     attachments: [
    #       {
    #         file_name: 'fileName',
    #         data: 'data'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddAttachmentsToSetOutput
    #   resp.data.attachment_set_id #=> String
    #   resp.data.expiry_time #=> String
    #
    def add_attachments_to_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddAttachmentsToSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddAttachmentsToSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddAttachmentsToSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AttachmentSetIdNotFound, Errors::AttachmentLimitExceeded, Errors::AttachmentSetExpired, Errors::AttachmentSetSizeLimitExceeded, Errors::InternalServerError]),
        data_parser: Parsers::AddAttachmentsToSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddAttachmentsToSet,
        stubs: @stubs,
        params_class: Params::AddAttachmentsToSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_attachments_to_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds additional customer communication to an Amazon Web Services Support case. Use the <code>caseId</code>
    #             parameter to identify the case to which to add communication. You can list a set of
    #             email addresses to copy on the communication by using the <code>ccEmailAddresses</code>
    #             parameter. The <code>communicationBody</code> value contains the text of the
    #             communication.</p>
    #
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::AddCommunicationToCaseInput}.
    #
    # @option params [String] :case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an
    #               alphanumeric string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #           </p>
    #
    # @option params [String] :communication_body
    #   <p>The body of an email communication to add to the support case.</p>
    #
    # @option params [Array<String>] :cc_email_addresses
    #   <p>The email addresses in the CC line of an email to be added to the support case.</p>
    #
    # @option params [String] :attachment_set_id
    #   <p>The ID of a set of one or more attachments for the communication to add to the case.
    #               Create the set by calling <a>AddAttachmentsToSet</a>
    #           </p>
    #
    # @return [Types::AddCommunicationToCaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_communication_to_case(
    #     case_id: 'caseId',
    #     communication_body: 'communicationBody', # required
    #     cc_email_addresses: [
    #       'member'
    #     ],
    #     attachment_set_id: 'attachmentSetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddCommunicationToCaseOutput
    #   resp.data.result #=> Boolean
    #
    def add_communication_to_case(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddCommunicationToCaseInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddCommunicationToCaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddCommunicationToCase
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CaseIdNotFound, Errors::AttachmentSetIdNotFound, Errors::AttachmentSetExpired, Errors::InternalServerError]),
        data_parser: Parsers::AddCommunicationToCase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddCommunicationToCase,
        stubs: @stubs,
        params_class: Params::AddCommunicationToCaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_communication_to_case
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a case in the Amazon Web Services Support Center. This operation is similar to how you create a case
    #             in the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create
    #                 Case</a> page.</p>
    #         <p>The Amazon Web Services Support API doesn't support requesting service limit increases. You can submit a
    #             service limit increase in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>Submit a request from the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    #             </li>
    #             <li>
    #                 <p>Use the Service Quotas <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html">RequestServiceQuotaIncrease</a> operation.</p>
    #             </li>
    #          </ul>
    #         <p>A successful <code>CreateCase</code> request returns an Amazon Web Services Support case number. You can use
    #             the <a>DescribeCases</a> operation and specify the case number to get
    #             existing Amazon Web Services Support cases. After you create a case, use the <a>AddCommunicationToCase</a> operation to add additional communication or
    #             attachments to an existing case.</p>
    #         <p>The <code>caseId</code> is separate from the <code>displayId</code> that appears in
    #             the <a href="https://console.aws.amazon.com/support">Amazon Web Services Support Center</a>. Use the <a>DescribeCases</a> operation to get the <code>displayId</code>.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateCaseInput}.
    #
    # @option params [String] :subject
    #   <p>The title of the support case. The title appears in the <b>Subject</b> field on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    #
    # @option params [String] :service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    #
    # @option params [String] :severity_code
    #   <p>A value that indicates the urgency of the case. This value determines the response
    #               time according to your service level agreement with Amazon Web Services Support. You can use the <a>DescribeSeverityLevels</a> operation to get the possible values for
    #                   <code>severityCode</code>. </p>
    #           <p>For more information, see <a>SeverityLevel</a> and <a href="https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity">Choosing a
    #                   Severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #           <note>
    #               <p>The availability of severity levels depends on the support plan for the
    #                   Amazon Web Services account.</p>
    #           </note>
    #
    # @option params [String] :category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    #
    # @option params [String] :communication_body
    #   <p>The communication body text that describes the issue. This text appears in the
    #                   <b>Description</b> field on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    #
    # @option params [Array<String>] :cc_email_addresses
    #   <p>A list of email addresses that Amazon Web Services Support copies on case correspondence. Amazon Web Services Support
    #               identifies the account that creates the case when you specify your Amazon Web Services credentials in an
    #               HTTP POST method or use the <a href="http://aws.amazon.com/tools/">Amazon Web Services SDKs</a>.
    #           </p>
    #
    # @option params [String] :language
    #   <p>The language in which Amazon Web Services Support handles the case. You must specify the ISO 639-1
    #               code for the <code>language</code> parameter if you want support in that language.
    #               Currently, English ("en") and Japanese ("ja") are supported.</p>
    #
    # @option params [String] :issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>. If you don't specify a value, the default is
    #                   <code>technical</code>.</p>
    #
    # @option params [String] :attachment_set_id
    #   <p>The ID of a set of one or more attachments for the case. Create the set by using the
    #                   <a>AddAttachmentsToSet</a> operation.</p>
    #
    # @return [Types::CreateCaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case(
    #     subject: 'subject', # required
    #     service_code: 'serviceCode',
    #     severity_code: 'severityCode',
    #     category_code: 'categoryCode',
    #     communication_body: 'communicationBody', # required
    #     cc_email_addresses: [
    #       'member'
    #     ],
    #     language: 'language',
    #     issue_type: 'issueType',
    #     attachment_set_id: 'attachmentSetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCaseOutput
    #   resp.data.case_id #=> String
    #
    def create_case(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCaseInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCase
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CaseCreationLimitExceeded, Errors::AttachmentSetIdNotFound, Errors::AttachmentSetExpired, Errors::InternalServerError]),
        data_parser: Parsers::CreateCase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCase,
        stubs: @stubs,
        params_class: Params::CreateCaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_case
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the attachment that has the specified ID. Attachments can include screenshots,
    #             error logs, or other files that describe your issue. Attachment IDs are generated by the
    #             case management system when you add an attachment to a case or case communication.
    #             Attachment IDs are returned in the <a>AttachmentDetails</a> objects that are
    #             returned by the <a>DescribeCommunications</a> operation.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
    #
    # @return [Types::DescribeAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_attachment(
    #     attachment_id: 'attachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAttachmentOutput
    #   resp.data.attachment #=> Types::Attachment
    #   resp.data.attachment.file_name #=> String
    #   resp.data.attachment.data #=> String
    #
    def describe_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAttachmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAttachment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AttachmentIdNotFound, Errors::DescribeAttachmentLimitExceeded, Errors::InternalServerError]),
        data_parser: Parsers::DescribeAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAttachment,
        stubs: @stubs,
        params_class: Params::DescribeAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of cases that you specify by passing one or more case IDs. You can use
    #             the <code>afterTime</code> and <code>beforeTime</code> parameters to filter the cases by
    #             date. You can set values for the <code>includeResolvedCases</code> and
    #                 <code>includeCommunications</code> parameters to specify how much information to
    #             return.</p>
    #         <p>The response returns the following in JSON format:</p>
    #         <ul>
    #             <li>
    #                 <p>One or more <a href="https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html">CaseDetails</a> data types.</p>
    #             </li>
    #             <li>
    #                 <p>One or more <code>nextToken</code> values, which specify where to paginate the
    #                     returned records represented by the <code>CaseDetails</code> objects.</p>
    #             </li>
    #          </ul>
    #         <p>Case data is available for 12 months after creation. If a case was created more than
    #             12 months ago, a request might return an error.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeCasesInput}.
    #
    # @option params [Array<String>] :case_id_list
    #   <p>A list of ID numbers of the support cases you want returned. The maximum number of
    #               cases is 100.</p>
    #
    # @option params [String] :display_id
    #   <p>The ID displayed for a case in the Amazon Web Services Support Center user interface.</p>
    #
    # @option params [String] :after_time
    #   <p>The start date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #
    # @option params [String] :before_time
    #   <p>The end date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #
    # @option params [Boolean] :include_resolved_cases
    #   <p>Specifies whether to include resolved support cases in the <code>DescribeCases</code>
    #               response. By default, resolved cases aren't included.</p>
    #
    # @option params [String] :next_token
    #   <p>A resumption point for pagination.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return before paginating.</p>
    #
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language in which Amazon Web Services provides support. Amazon Web Services Support
    #               currently supports English ("en") and Japanese ("ja"). Language parameters must be
    #               passed explicitly for operations that take them.</p>
    #
    # @option params [Boolean] :include_communications
    #   <p>Specifies whether to include communications in the <code>DescribeCases</code>
    #               response. By default, communications are included.</p>
    #
    # @return [Types::DescribeCasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cases(
    #     case_id_list: [
    #       'member'
    #     ],
    #     display_id: 'displayId',
    #     after_time: 'afterTime',
    #     before_time: 'beforeTime',
    #     include_resolved_cases: false,
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     language: 'language',
    #     include_communications: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCasesOutput
    #   resp.data.cases #=> Array<CaseDetails>
    #   resp.data.cases[0] #=> Types::CaseDetails
    #   resp.data.cases[0].case_id #=> String
    #   resp.data.cases[0].display_id #=> String
    #   resp.data.cases[0].subject #=> String
    #   resp.data.cases[0].status #=> String
    #   resp.data.cases[0].service_code #=> String
    #   resp.data.cases[0].category_code #=> String
    #   resp.data.cases[0].severity_code #=> String
    #   resp.data.cases[0].submitted_by #=> String
    #   resp.data.cases[0].time_created #=> String
    #   resp.data.cases[0].recent_communications #=> Types::RecentCaseCommunications
    #   resp.data.cases[0].recent_communications.communications #=> Array<Communication>
    #   resp.data.cases[0].recent_communications.communications[0] #=> Types::Communication
    #   resp.data.cases[0].recent_communications.communications[0].case_id #=> String
    #   resp.data.cases[0].recent_communications.communications[0].body #=> String
    #   resp.data.cases[0].recent_communications.communications[0].submitted_by #=> String
    #   resp.data.cases[0].recent_communications.communications[0].time_created #=> String
    #   resp.data.cases[0].recent_communications.communications[0].attachment_set #=> Array<AttachmentDetails>
    #   resp.data.cases[0].recent_communications.communications[0].attachment_set[0] #=> Types::AttachmentDetails
    #   resp.data.cases[0].recent_communications.communications[0].attachment_set[0].attachment_id #=> String
    #   resp.data.cases[0].recent_communications.communications[0].attachment_set[0].file_name #=> String
    #   resp.data.cases[0].recent_communications.next_token #=> String
    #   resp.data.cases[0].cc_email_addresses #=> Array<String>
    #   resp.data.cases[0].cc_email_addresses[0] #=> String
    #   resp.data.cases[0].language #=> String
    #   resp.data.next_token #=> String
    #
    def describe_cases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCasesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CaseIdNotFound, Errors::InternalServerError]),
        data_parser: Parsers::DescribeCases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCases,
        stubs: @stubs,
        params_class: Params::DescribeCasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns communications and attachments for one or more support cases. Use the
    #                 <code>afterTime</code> and <code>beforeTime</code> parameters to filter by date. You
    #             can use the <code>caseId</code> parameter to restrict the results to a specific
    #             case.</p>
    #         <p>Case data is available for 12 months after creation. If a case was created more than
    #             12 months ago, a request for data might cause an error.</p>
    #         <p>You can use the <code>maxResults</code> and <code>nextToken</code> parameters to
    #             control the pagination of the results. Set <code>maxResults</code> to the number of
    #             cases that you want to display on each page, and use <code>nextToken</code> to specify
    #             the resumption of pagination.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeCommunicationsInput}.
    #
    # @option params [String] :case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an
    #               alphanumeric string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #           </p>
    #
    # @option params [String] :before_time
    #   <p>The end date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #
    # @option params [String] :after_time
    #   <p>The start date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #
    # @option params [String] :next_token
    #   <p>A resumption point for pagination.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return before paginating.</p>
    #
    # @return [Types::DescribeCommunicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_communications(
    #     case_id: 'caseId', # required
    #     before_time: 'beforeTime',
    #     after_time: 'afterTime',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCommunicationsOutput
    #   resp.data.communications #=> Array<Communication>
    #   resp.data.communications[0] #=> Types::Communication
    #   resp.data.communications[0].case_id #=> String
    #   resp.data.communications[0].body #=> String
    #   resp.data.communications[0].submitted_by #=> String
    #   resp.data.communications[0].time_created #=> String
    #   resp.data.communications[0].attachment_set #=> Array<AttachmentDetails>
    #   resp.data.communications[0].attachment_set[0] #=> Types::AttachmentDetails
    #   resp.data.communications[0].attachment_set[0].attachment_id #=> String
    #   resp.data.communications[0].attachment_set[0].file_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_communications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCommunicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCommunicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCommunications
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CaseIdNotFound, Errors::InternalServerError]),
        data_parser: Parsers::DescribeCommunications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCommunications,
        stubs: @stubs,
        params_class: Params::DescribeCommunicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_communications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current list of Amazon Web Services services and a list of service categories for each
    #             service. You then use service names and categories in your <a>CreateCase</a>
    #             requests. Each Amazon Web Services service has its own set of categories.</p>
    #         <p>The service codes and category codes correspond to the values that appear in the
    #                 <b>Service</b> and <b>Category</b> lists on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. The values in those fields
    #             don't necessarily match the service codes and categories returned by the
    #                 <code>DescribeServices</code> operation. Always use the service codes and categories
    #             that the <code>DescribeServices</code> operation returns, so that you have the most
    #             recent set of service and category codes.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeServicesInput}.
    #
    # @option params [Array<String>] :service_code_list
    #   <p>A JSON-formatted list of service codes available for Amazon Web Services services.</p>
    #
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language in which Amazon Web Services provides support. Amazon Web Services Support
    #               currently supports English ("en") and Japanese ("ja"). Language parameters must be
    #               passed explicitly for operations that take them.</p>
    #
    # @return [Types::DescribeServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services(
    #     service_code_list: [
    #       'member'
    #     ],
    #     language: 'language'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServicesOutput
    #   resp.data.services #=> Array<Service>
    #   resp.data.services[0] #=> Types::Service
    #   resp.data.services[0].code #=> String
    #   resp.data.services[0].name #=> String
    #   resp.data.services[0].categories #=> Array<Category>
    #   resp.data.services[0].categories[0] #=> Types::Category
    #   resp.data.services[0].categories[0].code #=> String
    #   resp.data.services[0].categories[0].name #=> String
    #
    def describe_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServices,
        stubs: @stubs,
        params_class: Params::DescribeServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of severity levels that you can assign to a support case. The severity
    #             level for a case is also a field in the <a>CaseDetails</a> data type that you
    #             include for a <a>CreateCase</a> request.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeSeverityLevelsInput}.
    #
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language in which Amazon Web Services provides support. Amazon Web Services Support
    #               currently supports English ("en") and Japanese ("ja"). Language parameters must be
    #               passed explicitly for operations that take them.</p>
    #
    # @return [Types::DescribeSeverityLevelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_severity_levels(
    #     language: 'language'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSeverityLevelsOutput
    #   resp.data.severity_levels #=> Array<SeverityLevel>
    #   resp.data.severity_levels[0] #=> Types::SeverityLevel
    #   resp.data.severity_levels[0].code #=> String
    #   resp.data.severity_levels[0].name #=> String
    #
    def describe_severity_levels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSeverityLevelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSeverityLevelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSeverityLevels
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeSeverityLevels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSeverityLevels,
        stubs: @stubs,
        params_class: Params::DescribeSeverityLevelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_severity_levels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the refresh status of the Trusted Advisor checks that have the specified check
    #             IDs. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
    #         <p>Some checks are refreshed automatically, and you can't return their refresh statuses
    #             by using the <code>DescribeTrustedAdvisorCheckRefreshStatuses</code> operation. If you
    #             call this operation for these checks, you might see an
    #                 <code>InvalidParameterValue</code> error.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrustedAdvisorCheckRefreshStatusesInput}.
    #
    # @option params [Array<String>] :check_ids
    #   <p>The IDs of the Trusted Advisor checks to get the status.</p>
    #           <note>
    #               <p>If you specify the check ID of a check that is automatically refreshed, you might
    #                   see an <code>InvalidParameterValue</code> error.</p>
    #           </note>
    #
    # @return [Types::DescribeTrustedAdvisorCheckRefreshStatusesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_check_refresh_statuses(
    #     check_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrustedAdvisorCheckRefreshStatusesOutput
    #   resp.data.statuses #=> Array<TrustedAdvisorCheckRefreshStatus>
    #   resp.data.statuses[0] #=> Types::TrustedAdvisorCheckRefreshStatus
    #   resp.data.statuses[0].check_id #=> String
    #   resp.data.statuses[0].status #=> String
    #   resp.data.statuses[0].millis_until_next_refreshable #=> Integer
    #
    def describe_trusted_advisor_check_refresh_statuses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrustedAdvisorCheckRefreshStatusesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrustedAdvisorCheckRefreshStatusesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTrustedAdvisorCheckRefreshStatuses
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeTrustedAdvisorCheckRefreshStatuses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTrustedAdvisorCheckRefreshStatuses,
        stubs: @stubs,
        params_class: Params::DescribeTrustedAdvisorCheckRefreshStatusesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_trusted_advisor_check_refresh_statuses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the results of the Trusted Advisor check that has the specified check ID. You
    #             can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a>
    #             operation.</p>
    #         <p>The response contains a <a>TrustedAdvisorCheckResult</a> object, which
    #             contains these three objects:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <a>TrustedAdvisorCategorySpecificSummary</a>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <a>TrustedAdvisorResourceDetail</a>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <a>TrustedAdvisorResourcesSummary</a>
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>In addition, the response contains these fields:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <b>status</b> - The alert status of the check
    #                     can be <code>ok</code> (green), <code>warning</code> (yellow),
    #                         <code>error</code> (red), or <code>not_available</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>timestamp</b> - The time of the last refresh
    #                     of the check.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>checkId</b> - The unique identifier for the
    #                     check.</p>
    #             </li>
    #          </ul>
    #
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrustedAdvisorCheckResultInput}.
    #
    # @option params [String] :check_id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    #
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language in which Amazon Web Services provides support. Amazon Web Services Support
    #               currently supports English ("en") and Japanese ("ja"). Language parameters must be
    #               passed explicitly for operations that take them.</p>
    #
    # @return [Types::DescribeTrustedAdvisorCheckResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_check_result(
    #     check_id: 'checkId', # required
    #     language: 'language'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrustedAdvisorCheckResultOutput
    #   resp.data.result #=> Types::TrustedAdvisorCheckResult
    #   resp.data.result.check_id #=> String
    #   resp.data.result.timestamp #=> String
    #   resp.data.result.status #=> String
    #   resp.data.result.resources_summary #=> Types::TrustedAdvisorResourcesSummary
    #   resp.data.result.resources_summary.resources_processed #=> Integer
    #   resp.data.result.resources_summary.resources_flagged #=> Integer
    #   resp.data.result.resources_summary.resources_ignored #=> Integer
    #   resp.data.result.resources_summary.resources_suppressed #=> Integer
    #   resp.data.result.category_specific_summary #=> Types::TrustedAdvisorCategorySpecificSummary
    #   resp.data.result.category_specific_summary.cost_optimizing #=> Types::TrustedAdvisorCostOptimizingSummary
    #   resp.data.result.category_specific_summary.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.data.result.category_specific_summary.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #   resp.data.result.flagged_resources #=> Array<TrustedAdvisorResourceDetail>
    #   resp.data.result.flagged_resources[0] #=> Types::TrustedAdvisorResourceDetail
    #   resp.data.result.flagged_resources[0].status #=> String
    #   resp.data.result.flagged_resources[0].region #=> String
    #   resp.data.result.flagged_resources[0].resource_id #=> String
    #   resp.data.result.flagged_resources[0].is_suppressed #=> Boolean
    #   resp.data.result.flagged_resources[0].metadata #=> Array<String>
    #   resp.data.result.flagged_resources[0].metadata[0] #=> String
    #
    def describe_trusted_advisor_check_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrustedAdvisorCheckResultInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrustedAdvisorCheckResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTrustedAdvisorCheckResult
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeTrustedAdvisorCheckResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTrustedAdvisorCheckResult,
        stubs: @stubs,
        params_class: Params::DescribeTrustedAdvisorCheckResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_trusted_advisor_check_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the results for the Trusted Advisor check summaries for the check IDs that you
    #             specified. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
    #         <p>The response contains an array of <a>TrustedAdvisorCheckSummary</a>
    #             objects.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrustedAdvisorCheckSummariesInput}.
    #
    # @option params [Array<String>] :check_ids
    #   <p>The IDs of the Trusted Advisor checks.</p>
    #
    # @return [Types::DescribeTrustedAdvisorCheckSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_check_summaries(
    #     check_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrustedAdvisorCheckSummariesOutput
    #   resp.data.summaries #=> Array<TrustedAdvisorCheckSummary>
    #   resp.data.summaries[0] #=> Types::TrustedAdvisorCheckSummary
    #   resp.data.summaries[0].check_id #=> String
    #   resp.data.summaries[0].timestamp #=> String
    #   resp.data.summaries[0].status #=> String
    #   resp.data.summaries[0].has_flagged_resources #=> Boolean
    #   resp.data.summaries[0].resources_summary #=> Types::TrustedAdvisorResourcesSummary
    #   resp.data.summaries[0].resources_summary.resources_processed #=> Integer
    #   resp.data.summaries[0].resources_summary.resources_flagged #=> Integer
    #   resp.data.summaries[0].resources_summary.resources_ignored #=> Integer
    #   resp.data.summaries[0].resources_summary.resources_suppressed #=> Integer
    #   resp.data.summaries[0].category_specific_summary #=> Types::TrustedAdvisorCategorySpecificSummary
    #   resp.data.summaries[0].category_specific_summary.cost_optimizing #=> Types::TrustedAdvisorCostOptimizingSummary
    #   resp.data.summaries[0].category_specific_summary.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.data.summaries[0].category_specific_summary.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #
    def describe_trusted_advisor_check_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrustedAdvisorCheckSummariesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrustedAdvisorCheckSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTrustedAdvisorCheckSummaries
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeTrustedAdvisorCheckSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTrustedAdvisorCheckSummaries,
        stubs: @stubs,
        params_class: Params::DescribeTrustedAdvisorCheckSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_trusted_advisor_check_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all available Trusted Advisor checks, including the name, ID,
    #             category, description, and metadata. You must specify a language code. The Amazon Web Services Support API
    #             currently supports English ("en") and Japanese ("ja"). The response contains a <a>TrustedAdvisorCheckDescription</a> object for each check. You must set the
    #             Amazon Web Services Region to us-east-1.</p>
    #
    #
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                         <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #                <li>
    #                     <p>The names and descriptions for Trusted Advisor checks are subject to change. We recommend
    #                         that you specify the check ID in your code to uniquely identify a check.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrustedAdvisorChecksInput}.
    #
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language in which Amazon Web Services provides support. Amazon Web Services Support
    #               currently supports English ("en") and Japanese ("ja"). Language parameters must be
    #               passed explicitly for operations that take them.</p>
    #
    # @return [Types::DescribeTrustedAdvisorChecksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_advisor_checks(
    #     language: 'language' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrustedAdvisorChecksOutput
    #   resp.data.checks #=> Array<TrustedAdvisorCheckDescription>
    #   resp.data.checks[0] #=> Types::TrustedAdvisorCheckDescription
    #   resp.data.checks[0].id #=> String
    #   resp.data.checks[0].name #=> String
    #   resp.data.checks[0].description #=> String
    #   resp.data.checks[0].category #=> String
    #   resp.data.checks[0].metadata #=> Array<String>
    #   resp.data.checks[0].metadata[0] #=> String
    #
    def describe_trusted_advisor_checks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrustedAdvisorChecksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrustedAdvisorChecksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTrustedAdvisorChecks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeTrustedAdvisorChecks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTrustedAdvisorChecks,
        stubs: @stubs,
        params_class: Params::DescribeTrustedAdvisorChecksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_trusted_advisor_checks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Refreshes the Trusted Advisor check that you specify using the check ID. You can get the
    #             check IDs by calling the <a>DescribeTrustedAdvisorChecks</a>
    #             operation.</p>
    #         <note>
    #             <p>Some checks are refreshed automatically. If you call the
    #                     <code>RefreshTrustedAdvisorCheck</code> operation to refresh them, you might see
    #                 the <code>InvalidParameterValue</code> error.</p>
    #         </note>
    #         <p>The response contains a <a>TrustedAdvisorCheckRefreshStatus</a>
    #             object.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::RefreshTrustedAdvisorCheckInput}.
    #
    # @option params [String] :check_id
    #   <p>The unique identifier for the Trusted Advisor check to refresh.</p>
    #               <note>
    #                   <p>Specifying the check ID of a check that is automatically refreshed
    #                       causes an <code>InvalidParameterValue</code> error.</p>
    #               </note>
    #
    # @return [Types::RefreshTrustedAdvisorCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_trusted_advisor_check(
    #     check_id: 'checkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RefreshTrustedAdvisorCheckOutput
    #   resp.data.status #=> Types::TrustedAdvisorCheckRefreshStatus
    #   resp.data.status.check_id #=> String
    #   resp.data.status.status #=> String
    #   resp.data.status.millis_until_next_refreshable #=> Integer
    #
    def refresh_trusted_advisor_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RefreshTrustedAdvisorCheckInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RefreshTrustedAdvisorCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RefreshTrustedAdvisorCheck
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::RefreshTrustedAdvisorCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RefreshTrustedAdvisorCheck,
        stubs: @stubs,
        params_class: Params::RefreshTrustedAdvisorCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :refresh_trusted_advisor_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resolves a support case. This operation takes a <code>caseId</code> and returns the
    #             initial and final state of the case.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support
    #                         API. </p>
    #                 </li>
    #                <li>
    #                     <p>If you call the Amazon Web Services Support API from an account that does not have a
    #                         Business, Enterprise On-Ramp, or Enterprise Support plan, the
    #                             <code>SubscriptionRequiredException</code> error message appears. For
    #                         information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ResolveCaseInput}.
    #
    # @option params [String] :case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an
    #               alphanumeric string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #           </p>
    #
    # @return [Types::ResolveCaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_case(
    #     case_id: 'caseId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResolveCaseOutput
    #   resp.data.initial_case_status #=> String
    #   resp.data.final_case_status #=> String
    #
    def resolve_case(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResolveCaseInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResolveCaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResolveCase
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CaseIdNotFound, Errors::InternalServerError]),
        data_parser: Parsers::ResolveCase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResolveCase,
        stubs: @stubs,
        params_class: Params::ResolveCaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resolve_case
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
