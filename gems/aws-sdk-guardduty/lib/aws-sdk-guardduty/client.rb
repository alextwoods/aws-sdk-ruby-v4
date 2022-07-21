# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::GuardDuty
  # An API client for GuardDutyAPIService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon GuardDuty is a continuous security monitoring service that analyzes and processes
  #       the following data sources: VPC Flow Logs, Amazon Web Services CloudTrail event logs, and DNS logs. It uses
  #       threat intelligence feeds (such as lists of malicious IPs and domains) and machine learning to
  #       identify unexpected, potentially unauthorized, and malicious activity within your Amazon Web Services
  #       environment. This can include issues like escalations of privileges, uses of exposed
  #       credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can
  #       detect compromised EC2 instances that serve malware or mine bitcoin. </p>
  #          <p>GuardDuty also monitors Amazon Web Services account access behavior for signs of compromise. Some examples
  #       of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region
  #       that has never been used, or unusual API calls like a password policy change to reduce
  #       password strength. </p>
  #          <p>GuardDuty informs you of the status of your Amazon Web Services environment by producing security findings
  #       that you can view in the GuardDuty console or through Amazon CloudWatch events. For more
  #       information, see the <i>
  #                <a href="https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html">Amazon
  #           GuardDuty User Guide</a>
  #             </i>. </p>
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
    def initialize(config = AWS::SDK::GuardDuty::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts the invitation to be monitored by a GuardDuty administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptInvitationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #
    # @option params [String] :master_id
    #   <p>The account ID of the GuardDuty administrator account whose invitation you're accepting.</p>
    #
    # @option params [String] :invitation_id
    #   <p>The value that is used to validate the administrator account to the member account.</p>
    #
    # @return [Types::AcceptInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation(
    #     detector_id: 'DetectorId', # required
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Archives GuardDuty findings that are specified by the list of finding IDs.</p>
    #          <note>
    #             <p>Only the administrator account can archive findings. Member accounts don't have permission to
    #         archive findings from their accounts.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ArchiveFindingsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         archive.</p>
    #
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings that you want to archive.</p>
    #
    # @return [Types::ArchiveFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.archive_findings(
    #     detector_id: 'DetectorId', # required
    #     finding_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ArchiveFindingsOutput
    #
    def archive_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ArchiveFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ArchiveFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ArchiveFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ArchiveFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ArchiveFindings,
        stubs: @stubs,
        params_class: Params::ArchiveFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :archive_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a single Amazon GuardDuty detector. A detector is a resource that represents the
    #       GuardDuty service. To start using GuardDuty, you must create a detector in each Region where
    #       you enable the service. You can have only one detector per account per Region. All data
    #       sources are enabled in a new detector by default.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDetectorInput}.
    #
    # @option params [Boolean] :enable
    #   <p>A Boolean value that specifies whether the detector is to be enabled.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    #
    # @option params [String] :finding_publishing_frequency
    #   <p>A value that specifies how frequently updated findings are exported.</p>
    #
    # @option params [DataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be enabled for the detector.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new detector resource.</p>
    #
    # @return [Types::CreateDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector(
    #     enable: false, # required
    #     client_token: 'ClientToken',
    #     finding_publishing_frequency: 'FIFTEEN_MINUTES', # accepts ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #     data_sources: {
    #       s3_logs: {
    #         enable: false # required
    #       },
    #       kubernetes: {
    #         audit_logs: {
    #           enable: false # required
    #         } # required
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDetectorOutput
    #   resp.data.detector_id #=> String
    #
    def create_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDetector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDetector,
        stubs: @stubs,
        params_class: Params::CreateDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a filter using the specified finding criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFilterInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector belonging to the GuardDuty account that you want to create a filter
    #         for.</p>
    #
    # @option params [String] :name
    #   <p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not allowed.</p>
    #
    # @option params [String] :description
    #   <p>The description of the filter.</p>
    #
    # @option params [String] :action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    # @option params [Integer] :rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #            <p>You can only use the following attributes to query findings:</p>
    #            <ul>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>region</p>
    #               </li>
    #               <li>
    #                  <p>confidence</p>
    #               </li>
    #               <li>
    #                  <p>id</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.accessKeyId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.principalId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userName</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userType</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.iamInstanceProfile.id</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.imageId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.instanceId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.outpostArn</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicIp</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.subnetId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.vpcId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.resourceType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.actionType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.api</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.callerType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.errorCode</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.userAgent</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domain</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.blocked</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.connectionDirection</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localPortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remotePortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.additionalInfo.threatListName</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.publicAccess.effectivePermissions</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.name</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.s3BucketDetails.type</p>
    #               </li>
    #               <li>
    #                  <p>service.archived</p>
    #                  <p>When this attribute is set to TRUE, only archived findings are listed. When it's set
    #             to FALSE, only unarchived findings are listed. When this attribute is not set, all
    #             existing findings are listed.</p>
    #               </li>
    #               <li>
    #                  <p>service.resourceRole</p>
    #               </li>
    #               <li>
    #                  <p>severity</p>
    #               </li>
    #               <li>
    #                  <p>type</p>
    #               </li>
    #               <li>
    #                  <p>updatedAt</p>
    #                  <p>Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ
    #             depending on whether the value contains milliseconds.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new filter resource.</p>
    #
    # @return [Types::CreateFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter(
    #     detector_id: 'DetectorId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     action: 'NOOP', # accepts ["NOOP", "ARCHIVE"]
    #     rank: 1,
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           neq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: [
    #             'member'
    #           ],
    #           not_equals: [
    #             'member'
    #           ],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1
    #         }
    #       }
    #     }, # required
    #     client_token: 'ClientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFilterOutput
    #   resp.data.name #=> String
    #
    def create_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFilter,
        stubs: @stubs,
        params_class: Params::CreateFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new IPSet, which is called a trusted IP list in the console user interface. An
    #       IPSet is a list of IP addresses that are trusted for secure communication with Amazon Web Services
    #       infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are
    #       included in IPSets. Only users from the administrator account can use this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIPSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to create an IPSet
    #         for.</p>
    #
    # @option params [String] :name
    #   <p>The user-friendly name to identify the IPSet.</p>
    #            <p> Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).</p>
    #
    # @option params [String] :format
    #   <p>The format of the file that contains the IPSet.</p>
    #
    # @option params [String] :location
    #   <p>The URI of the file that contains the IPSet. </p>
    #
    # @option params [Boolean] :activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    #         IPSet.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new IP set resource.</p>
    #
    # @return [Types::CreateIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set(
    #     detector_id: 'DetectorId', # required
    #     name: 'Name', # required
    #     format: 'TXT', # required - accepts ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #     location: 'Location', # required
    #     activate: false, # required
    #     client_token: 'ClientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIPSetOutput
    #   resp.data.ip_set_id #=> String
    #
    def create_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIPSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIPSet,
        stubs: @stubs,
        params_class: Params::CreateIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates member accounts of the current Amazon Web Services account by specifying a list of Amazon Web Services account
    #       IDs. This step is a prerequisite for managing the associated member accounts either by
    #       invitation or through an organization.</p>
    #          <p>When using <code>Create Members</code> as an organizations delegated administrator this
    #       action will enable GuardDuty in the added member accounts, with the exception of the
    #       organization delegated administrator account, which must enable GuardDuty prior to being added as a
    #       member.</p>
    #          <p>If you are adding accounts by invitation use this action after GuardDuty has been enabled
    #       in potential member accounts and before using <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">
    #                <code>Invite
    #         Members</code>
    #             </a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to associate member
    #         accounts with.</p>
    #
    # @option params [Array<AccountDetail>] :account_details
    #   <p>A list of account ID and email address pairs of the accounts that you want to associate
    #         with the GuardDuty administrator account.</p>
    #
    # @return [Types::CreateMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members(
    #     detector_id: 'DetectorId', # required
    #     account_details: [
    #       {
    #         account_id: 'AccountId', # required
    #         email: 'Email' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def create_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMembersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Creates a publishing destination to export findings to. The resource to export findings to
    #       must exist before you use this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePublishingDestinationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the GuardDuty detector associated with the publishing destination.</p>
    #
    # @option params [String] :destination_type
    #   <p>The type of resource for the publishing destination. Currently only Amazon S3 buckets are
    #         supported.</p>
    #
    # @option params [DestinationProperties] :destination_properties
    #   <p>The properties of the publishing destination, including the ARNs for the destination and
    #         the KMS key used for encryption.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the request.</p>
    #
    # @return [Types::CreatePublishingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_publishing_destination(
    #     detector_id: 'DetectorId', # required
    #     destination_type: 'S3', # required - accepts ["S3"]
    #     destination_properties: {
    #       destination_arn: 'DestinationArn',
    #       kms_key_arn: 'KmsKeyArn'
    #     }, # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePublishingDestinationOutput
    #   resp.data.destination_id #=> String
    #
    def create_publishing_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePublishingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePublishingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePublishingDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreatePublishingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePublishingDestination,
        stubs: @stubs,
        params_class: Params::CreatePublishingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_publishing_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates example findings of types specified by the list of finding types. If 'NULL' is
    #       specified for <code>findingTypes</code>, the API generates example findings of all supported
    #       finding types.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSampleFindingsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector to create sample findings for.</p>
    #
    # @option params [Array<String>] :finding_types
    #   <p>The types of sample findings to generate.</p>
    #
    # @return [Types::CreateSampleFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sample_findings(
    #     detector_id: 'DetectorId', # required
    #     finding_types: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSampleFindingsOutput
    #
    def create_sample_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSampleFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSampleFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSampleFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateSampleFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSampleFindings,
        stubs: @stubs,
        params_class: Params::CreateSampleFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sample_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses.
    #       GuardDuty generates findings based on ThreatIntelSets. Only users of the administrator account can
    #       use this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThreatIntelSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to create a
    #         threatIntelSet for.</p>
    #
    # @option params [String] :name
    #   <p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
    #         activity that involves IP addresses included in this ThreatIntelSet.</p>
    #
    # @option params [String] :format
    #   <p>The format of the file that contains the ThreatIntelSet.</p>
    #
    # @option params [String] :location
    #   <p>The URI of the file that contains the ThreatIntelSet. </p>
    #
    # @option params [Boolean] :activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    #         ThreatIntelSet.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new threat list resource.</p>
    #
    # @return [Types::CreateThreatIntelSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_threat_intel_set(
    #     detector_id: 'DetectorId', # required
    #     name: 'Name', # required
    #     format: 'TXT', # required - accepts ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #     location: 'Location', # required
    #     activate: false, # required
    #     client_token: 'ClientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateThreatIntelSetOutput
    #   resp.data.threat_intel_set_id #=> String
    #
    def create_threat_intel_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThreatIntelSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThreatIntelSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateThreatIntelSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateThreatIntelSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateThreatIntelSet,
        stubs: @stubs,
        params_class: Params::CreateThreatIntelSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_threat_intel_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Declines invitations sent to the current member account by Amazon Web Services accounts specified by their
    #       account IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::DeclineInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
    #         account that you want to decline invitations from.</p>
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
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def decline_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeclineInvitationsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Deletes an Amazon GuardDuty detector that is specified by the detector ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDetectorInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that you want to delete.</p>
    #
    # @return [Types::DeleteDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector(
    #     detector_id: 'DetectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDetectorOutput
    #
    def delete_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDetector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeleteDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDetector,
        stubs: @stubs,
        params_class: Params::DeleteDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the filter specified by the filter name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFilterInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the filter is associated with.</p>
    #
    # @option params [String] :filter_name
    #   <p>The name of the filter that you want to delete.</p>
    #
    # @return [Types::DeleteFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter(
    #     detector_id: 'DetectorId', # required
    #     filter_name: 'FilterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFilterOutput
    #
    def delete_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeleteFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFilter,
        stubs: @stubs,
        params_class: Params::DeleteFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the IPSet specified by the <code>ipSetId</code>. IPSets are called trusted IP
    #       lists in the console user interface.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIPSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the IPSet.</p>
    #
    # @option params [String] :ip_set_id
    #   <p>The unique ID of the IPSet to delete.</p>
    #
    # @return [Types::DeleteIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set(
    #     detector_id: 'DetectorId', # required
    #     ip_set_id: 'IpSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIPSetOutput
    #
    def delete_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIPSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeleteIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIPSet,
        stubs: @stubs,
        params_class: Params::DeleteIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes invitations sent to the current member account by Amazon Web Services accounts specified by their
    #       account IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
    #         account that you want to delete invitations from.</p>
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
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def delete_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInvitationsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by
    #       the account IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         delete.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to delete.</p>
    #
    # @return [Types::DeleteMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def delete_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMembersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Deletes the publishing definition with the specified <code>destinationId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePublishingDestinationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to delete.</p>
    #
    # @option params [String] :destination_id
    #   <p>The ID of the publishing destination to delete.</p>
    #
    # @return [Types::DeletePublishingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_publishing_destination(
    #     detector_id: 'DetectorId', # required
    #     destination_id: 'DestinationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePublishingDestinationOutput
    #
    def delete_publishing_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePublishingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePublishingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePublishingDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeletePublishingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePublishingDestination,
        stubs: @stubs,
        params_class: Params::DeletePublishingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_publishing_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThreatIntelSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the threatIntelSet is associated with.</p>
    #
    # @option params [String] :threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to delete.</p>
    #
    # @return [Types::DeleteThreatIntelSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_threat_intel_set(
    #     detector_id: 'DetectorId', # required
    #     threat_intel_set_id: 'ThreatIntelSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThreatIntelSetOutput
    #
    def delete_threat_intel_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThreatIntelSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThreatIntelSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThreatIntelSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeleteThreatIntelSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThreatIntelSet,
        stubs: @stubs,
        params_class: Params::DeleteThreatIntelSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_threat_intel_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the account selected as the delegated administrator for
    #       GuardDuty.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigurationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector to retrieve information about the delegated administrator
    #         from.</p>
    #
    # @return [Types::DescribeOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration(
    #     detector_id: 'DetectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigurationOutput
    #   resp.data.auto_enable #=> Boolean
    #   resp.data.member_account_limit_reached #=> Boolean
    #   resp.data.data_sources #=> Types::OrganizationDataSourceConfigurationsResult
    #   resp.data.data_sources.s3_logs #=> Types::OrganizationS3LogsConfigurationResult
    #   resp.data.data_sources.s3_logs.auto_enable #=> Boolean
    #   resp.data.data_sources.kubernetes #=> Types::OrganizationKubernetesConfigurationResult
    #   resp.data.data_sources.kubernetes.audit_logs #=> Types::OrganizationKubernetesAuditLogsConfigurationResult
    #   resp.data.data_sources.kubernetes.audit_logs.auto_enable #=> Boolean
    #
    def describe_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConfigurationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Returns information about the publishing destination specified by the provided
    #         <code>destinationId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePublishingDestinationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to
    #         retrieve.</p>
    #
    # @option params [String] :destination_id
    #   <p>The ID of the publishing destination to retrieve.</p>
    #
    # @return [Types::DescribePublishingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_publishing_destination(
    #     detector_id: 'DetectorId', # required
    #     destination_id: 'DestinationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePublishingDestinationOutput
    #   resp.data.destination_id #=> String
    #   resp.data.destination_type #=> String, one of ["S3"]
    #   resp.data.status #=> String, one of ["PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"]
    #   resp.data.publishing_failure_start_timestamp #=> Integer
    #   resp.data.destination_properties #=> Types::DestinationProperties
    #   resp.data.destination_properties.destination_arn #=> String
    #   resp.data.destination_properties.kms_key_arn #=> String
    #
    def describe_publishing_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePublishingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePublishingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePublishingDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribePublishingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePublishingDestination,
        stubs: @stubs,
        params_class: Params::DescribePublishingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_publishing_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables an Amazon Web Services account within the Organization as the GuardDuty delegated
    #       administrator.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services Account ID for the organizations account to be disabled as a GuardDuty delegated
    #         administrator.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Disassociates the current GuardDuty member account from its administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFromMasterAccountInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #
    # @return [Types::DisassociateFromMasterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_master_account(
    #     detector_id: 'DetectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFromMasterAccountOutput
    #
    def disassociate_from_master_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFromMasterAccountInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Disassociates GuardDuty member accounts (to the current GuardDuty administrator account)
    #       specified by the account IDs. Member accounts added through <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html">Invitation</a> get deleted from the
    #       current GuardDuty administrator account after 30 days of disassociation.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         disassociate from the administrator account.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to disassociate from
    #         the administrator account.</p>
    #
    # @return [Types::DisassociateMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def disassociate_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMembersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Enables an Amazon Web Services account within the organization as the GuardDuty delegated
    #       administrator.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services Account ID for the organization account to be enabled as a GuardDuty delegated
    #         administrator.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Retrieves an Amazon GuardDuty detector specified by the detectorId.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDetectorInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that you want to get.</p>
    #
    # @return [Types::GetDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector(
    #     detector_id: 'DetectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDetectorOutput
    #   resp.data.created_at #=> String
    #   resp.data.finding_publishing_frequency #=> String, one of ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #   resp.data.service_role #=> String
    #   resp.data.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.updated_at #=> String
    #   resp.data.data_sources #=> Types::DataSourceConfigurationsResult
    #   resp.data.data_sources.cloud_trail #=> Types::CloudTrailConfigurationResult
    #   resp.data.data_sources.cloud_trail.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_sources.dns_logs #=> Types::DNSLogsConfigurationResult
    #   resp.data.data_sources.dns_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_sources.flow_logs #=> Types::FlowLogsConfigurationResult
    #   resp.data.data_sources.flow_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_sources.s3_logs #=> Types::S3LogsConfigurationResult
    #   resp.data.data_sources.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_sources.kubernetes #=> Types::KubernetesConfigurationResult
    #   resp.data.data_sources.kubernetes.audit_logs #=> Types::KubernetesAuditLogsConfigurationResult
    #   resp.data.data_sources.kubernetes.audit_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDetector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDetector,
        stubs: @stubs,
        params_class: Params::GetDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of the filter specified by the filter name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFilterInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the filter is associated with.</p>
    #
    # @option params [String] :filter_name
    #   <p>The name of the filter you want to get.</p>
    #
    # @return [Types::GetFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_filter(
    #     detector_id: 'DetectorId', # required
    #     filter_name: 'FilterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFilterOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.action #=> String, one of ["NOOP", "ARCHIVE"]
    #   resp.data.rank #=> Integer
    #   resp.data.finding_criteria #=> Types::FindingCriteria
    #   resp.data.finding_criteria.criterion #=> Hash<String, Condition>
    #   resp.data.finding_criteria.criterion['key'] #=> Types::Condition
    #   resp.data.finding_criteria.criterion['key'].eq #=> Array<String>
    #   resp.data.finding_criteria.criterion['key'].eq[0] #=> String
    #   resp.data.finding_criteria.criterion['key'].neq #=> Array<String>
    #   resp.data.finding_criteria.criterion['key'].neq[0] #=> String
    #   resp.data.finding_criteria.criterion['key'].gt #=> Integer
    #   resp.data.finding_criteria.criterion['key'].gte #=> Integer
    #   resp.data.finding_criteria.criterion['key'].lt #=> Integer
    #   resp.data.finding_criteria.criterion['key'].lte #=> Integer
    #   resp.data.finding_criteria.criterion['key'].equals #=> Array<String>
    #   resp.data.finding_criteria.criterion['key'].equals[0] #=> String
    #   resp.data.finding_criteria.criterion['key'].not_equals #=> Array<String>
    #   resp.data.finding_criteria.criterion['key'].not_equals[0] #=> String
    #   resp.data.finding_criteria.criterion['key'].greater_than #=> Integer
    #   resp.data.finding_criteria.criterion['key'].greater_than_or_equal #=> Integer
    #   resp.data.finding_criteria.criterion['key'].less_than #=> Integer
    #   resp.data.finding_criteria.criterion['key'].less_than_or_equal #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFilter,
        stubs: @stubs,
        params_class: Params::GetFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes Amazon GuardDuty findings specified by finding IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         retrieve.</p>
    #
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings that you want to retrieve.</p>
    #
    # @option params [SortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    #
    # @return [Types::GetFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings(
    #     detector_id: 'DetectorId', # required
    #     finding_ids: [
    #       'member'
    #     ], # required
    #     sort_criteria: {
    #       attribute_name: 'AttributeName',
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsOutput
    #   resp.data.findings #=> Array<Finding>
    #   resp.data.findings[0] #=> Types::Finding
    #   resp.data.findings[0].account_id #=> String
    #   resp.data.findings[0].arn #=> String
    #   resp.data.findings[0].confidence #=> Float
    #   resp.data.findings[0].created_at #=> String
    #   resp.data.findings[0].description #=> String
    #   resp.data.findings[0].id #=> String
    #   resp.data.findings[0].partition #=> String
    #   resp.data.findings[0].region #=> String
    #   resp.data.findings[0].resource #=> Types::Resource
    #   resp.data.findings[0].resource.access_key_details #=> Types::AccessKeyDetails
    #   resp.data.findings[0].resource.access_key_details.access_key_id #=> String
    #   resp.data.findings[0].resource.access_key_details.principal_id #=> String
    #   resp.data.findings[0].resource.access_key_details.user_name #=> String
    #   resp.data.findings[0].resource.access_key_details.user_type #=> String
    #   resp.data.findings[0].resource.s3_bucket_details #=> Array<S3BucketDetail>
    #   resp.data.findings[0].resource.s3_bucket_details[0] #=> Types::S3BucketDetail
    #   resp.data.findings[0].resource.s3_bucket_details[0].arn #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].name #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].type #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].created_at #=> Time
    #   resp.data.findings[0].resource.s3_bucket_details[0].owner #=> Types::Owner
    #   resp.data.findings[0].resource.s3_bucket_details[0].owner.id #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].tags #=> Array<Tag>
    #   resp.data.findings[0].resource.s3_bucket_details[0].tags[0] #=> Types::Tag
    #   resp.data.findings[0].resource.s3_bucket_details[0].tags[0].key #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].tags[0].value #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].default_server_side_encryption #=> Types::DefaultServerSideEncryption
    #   resp.data.findings[0].resource.s3_bucket_details[0].default_server_side_encryption.encryption_type #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].default_server_side_encryption.kms_master_key_arn #=> String
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access #=> Types::PublicAccess
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration #=> Types::PermissionConfiguration
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions #=> Types::BucketLevelPermissions
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list #=> Types::AccessControlList
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy #=> Types::BucketPolicy
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access #=> Types::BlockPublicAccess
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions #=> Types::AccountLevelPermissions
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access #=> Types::BlockPublicAccess
    #   resp.data.findings[0].resource.s3_bucket_details[0].public_access.effective_permission #=> String
    #   resp.data.findings[0].resource.instance_details #=> Types::InstanceDetails
    #   resp.data.findings[0].resource.instance_details.availability_zone #=> String
    #   resp.data.findings[0].resource.instance_details.iam_instance_profile #=> Types::IamInstanceProfile
    #   resp.data.findings[0].resource.instance_details.iam_instance_profile.arn #=> String
    #   resp.data.findings[0].resource.instance_details.iam_instance_profile.id #=> String
    #   resp.data.findings[0].resource.instance_details.image_description #=> String
    #   resp.data.findings[0].resource.instance_details.image_id #=> String
    #   resp.data.findings[0].resource.instance_details.instance_id #=> String
    #   resp.data.findings[0].resource.instance_details.instance_state #=> String
    #   resp.data.findings[0].resource.instance_details.instance_type #=> String
    #   resp.data.findings[0].resource.instance_details.outpost_arn #=> String
    #   resp.data.findings[0].resource.instance_details.launch_time #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].ipv6_addresses #=> Array<String>
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].ipv6_addresses[0] #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].network_interface_id #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].private_dns_name #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].private_ip_address #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses #=> Array<PrivateIpAddressDetails>
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0] #=> Types::PrivateIpAddressDetails
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].public_dns_name #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].public_ip #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].security_groups #=> Array<SecurityGroup>
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].security_groups[0] #=> Types::SecurityGroup
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].security_groups[0].group_id #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].security_groups[0].group_name #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].subnet_id #=> String
    #   resp.data.findings[0].resource.instance_details.network_interfaces[0].vpc_id #=> String
    #   resp.data.findings[0].resource.instance_details.platform #=> String
    #   resp.data.findings[0].resource.instance_details.product_codes #=> Array<ProductCode>
    #   resp.data.findings[0].resource.instance_details.product_codes[0] #=> Types::ProductCode
    #   resp.data.findings[0].resource.instance_details.product_codes[0].code #=> String
    #   resp.data.findings[0].resource.instance_details.product_codes[0].product_type #=> String
    #   resp.data.findings[0].resource.instance_details.tags #=> Array<Tag>
    #   resp.data.findings[0].resource.eks_cluster_details #=> Types::EksClusterDetails
    #   resp.data.findings[0].resource.eks_cluster_details.name #=> String
    #   resp.data.findings[0].resource.eks_cluster_details.arn #=> String
    #   resp.data.findings[0].resource.eks_cluster_details.vpc_id #=> String
    #   resp.data.findings[0].resource.eks_cluster_details.status #=> String
    #   resp.data.findings[0].resource.eks_cluster_details.tags #=> Array<Tag>
    #   resp.data.findings[0].resource.eks_cluster_details.created_at #=> Time
    #   resp.data.findings[0].resource.kubernetes_details #=> Types::KubernetesDetails
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_user_details #=> Types::KubernetesUserDetails
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_user_details.username #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_user_details.uid #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_user_details.groups #=> Array<String>
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_user_details.groups[0] #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details #=> Types::KubernetesWorkloadDetails
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.name #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.type #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.uid #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.namespace #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.host_network #=> Boolean
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers #=> Array<Container>
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0] #=> Types::Container
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].container_runtime #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].id #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].name #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].image #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].image_prefix #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts #=> Array<VolumeMount>
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts[0] #=> Types::VolumeMount
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts[0].name #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts[0].mount_path #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].security_context #=> Types::SecurityContext
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].security_context.privileged #=> Boolean
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes #=> Array<Volume>
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes[0] #=> Types::Volume
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes[0].name #=> String
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes[0].host_path #=> Types::HostPath
    #   resp.data.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes[0].host_path.path #=> String
    #   resp.data.findings[0].resource.resource_type #=> String
    #   resp.data.findings[0].schema_version #=> String
    #   resp.data.findings[0].service #=> Types::Service
    #   resp.data.findings[0].service.action #=> Types::Action
    #   resp.data.findings[0].service.action.action_type #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action #=> Types::AwsApiCallAction
    #   resp.data.findings[0].service.action.aws_api_call_action.api #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.caller_type #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.domain_details #=> Types::DomainDetails
    #   resp.data.findings[0].service.action.aws_api_call_action.domain_details.domain #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.error_code #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.user_agent #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details #=> Types::RemoteIpDetails
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.city #=> Types::City
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.city.city_name #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.country #=> Types::Country
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.country.country_code #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.country.country_name #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location #=> Types::GeoLocation
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.organization #=> Types::Organization
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.asn #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.asn_org #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.isp #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.org #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.service_name #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_account_details #=> Types::RemoteAccountDetails
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_account_details.account_id #=> String
    #   resp.data.findings[0].service.action.aws_api_call_action.remote_account_details.affiliated #=> Boolean
    #   resp.data.findings[0].service.action.dns_request_action #=> Types::DnsRequestAction
    #   resp.data.findings[0].service.action.dns_request_action.domain #=> String
    #   resp.data.findings[0].service.action.network_connection_action #=> Types::NetworkConnectionAction
    #   resp.data.findings[0].service.action.network_connection_action.blocked #=> Boolean
    #   resp.data.findings[0].service.action.network_connection_action.connection_direction #=> String
    #   resp.data.findings[0].service.action.network_connection_action.local_port_details #=> Types::LocalPortDetails
    #   resp.data.findings[0].service.action.network_connection_action.local_port_details.port #=> Integer
    #   resp.data.findings[0].service.action.network_connection_action.local_port_details.port_name #=> String
    #   resp.data.findings[0].service.action.network_connection_action.protocol #=> String
    #   resp.data.findings[0].service.action.network_connection_action.local_ip_details #=> Types::LocalIpDetails
    #   resp.data.findings[0].service.action.network_connection_action.local_ip_details.ip_address_v4 #=> String
    #   resp.data.findings[0].service.action.network_connection_action.remote_ip_details #=> Types::RemoteIpDetails
    #   resp.data.findings[0].service.action.network_connection_action.remote_port_details #=> Types::RemotePortDetails
    #   resp.data.findings[0].service.action.network_connection_action.remote_port_details.port #=> Integer
    #   resp.data.findings[0].service.action.network_connection_action.remote_port_details.port_name #=> String
    #   resp.data.findings[0].service.action.port_probe_action #=> Types::PortProbeAction
    #   resp.data.findings[0].service.action.port_probe_action.blocked #=> Boolean
    #   resp.data.findings[0].service.action.port_probe_action.port_probe_details #=> Array<PortProbeDetail>
    #   resp.data.findings[0].service.action.port_probe_action.port_probe_details[0] #=> Types::PortProbeDetail
    #   resp.data.findings[0].service.action.port_probe_action.port_probe_details[0].local_port_details #=> Types::LocalPortDetails
    #   resp.data.findings[0].service.action.port_probe_action.port_probe_details[0].local_ip_details #=> Types::LocalIpDetails
    #   resp.data.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details #=> Types::RemoteIpDetails
    #   resp.data.findings[0].service.action.kubernetes_api_call_action #=> Types::KubernetesApiCallAction
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.request_uri #=> String
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.verb #=> String
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.source_ips #=> Array<String>
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.source_ips[0] #=> String
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.user_agent #=> String
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.remote_ip_details #=> Types::RemoteIpDetails
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.status_code #=> Integer
    #   resp.data.findings[0].service.action.kubernetes_api_call_action.parameters #=> String
    #   resp.data.findings[0].service.evidence #=> Types::Evidence
    #   resp.data.findings[0].service.evidence.threat_intelligence_details #=> Array<ThreatIntelligenceDetail>
    #   resp.data.findings[0].service.evidence.threat_intelligence_details[0] #=> Types::ThreatIntelligenceDetail
    #   resp.data.findings[0].service.evidence.threat_intelligence_details[0].threat_list_name #=> String
    #   resp.data.findings[0].service.evidence.threat_intelligence_details[0].threat_names #=> Array<String>
    #   resp.data.findings[0].service.evidence.threat_intelligence_details[0].threat_names[0] #=> String
    #   resp.data.findings[0].service.archived #=> Boolean
    #   resp.data.findings[0].service.count #=> Integer
    #   resp.data.findings[0].service.detector_id #=> String
    #   resp.data.findings[0].service.event_first_seen #=> String
    #   resp.data.findings[0].service.event_last_seen #=> String
    #   resp.data.findings[0].service.resource_role #=> String
    #   resp.data.findings[0].service.service_name #=> String
    #   resp.data.findings[0].service.user_feedback #=> String
    #   resp.data.findings[0].severity #=> Float
    #   resp.data.findings[0].title #=> String
    #   resp.data.findings[0].type #=> String
    #   resp.data.findings[0].updated_at #=> String
    #
    def get_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Lists Amazon GuardDuty findings statistics for the specified detector ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsStatisticsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings' statistics you
    #         want to retrieve.</p>
    #
    # @option params [Array<String>] :finding_statistic_types
    #   <p>The types of finding statistics to retrieve.</p>
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>Represents the criteria that is used for querying findings.</p>
    #
    # @return [Types::GetFindingsStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_statistics(
    #     detector_id: 'DetectorId', # required
    #     finding_statistic_types: [
    #       'COUNT_BY_SEVERITY' # accepts ["COUNT_BY_SEVERITY"]
    #     ], # required
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           neq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: [
    #             'member'
    #           ],
    #           not_equals: [
    #             'member'
    #           ],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsStatisticsOutput
    #   resp.data.finding_statistics #=> Types::FindingStatistics
    #   resp.data.finding_statistics.count_by_severity #=> Hash<String, Integer>
    #   resp.data.finding_statistics.count_by_severity['key'] #=> Integer
    #
    def get_findings_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingsStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetFindingsStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingsStatistics,
        stubs: @stubs,
        params_class: Params::GetFindingsStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the IPSet specified by the <code>ipSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIPSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the IPSet is associated with.</p>
    #
    # @option params [String] :ip_set_id
    #   <p>The unique ID of the IPSet to retrieve.</p>
    #
    # @return [Types::GetIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set(
    #     detector_id: 'DetectorId', # required
    #     ip_set_id: 'IpSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIPSetOutput
    #   resp.data.name #=> String
    #   resp.data.format #=> String, one of ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #   resp.data.location #=> String
    #   resp.data.status #=> String, one of ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIPSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIPSet,
        stubs: @stubs,
        params_class: Params::GetIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the count of all GuardDuty membership invitations that were sent to the current
    #       member account except the currently accepted invitation.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Provides the details for the GuardDuty administrator account associated with the current
    #       GuardDuty member account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMasterAccountInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    #
    # @return [Types::GetMasterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_master_account(
    #     detector_id: 'DetectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMasterAccountOutput
    #   resp.data.master #=> Types::Master
    #   resp.data.master.account_id #=> String
    #   resp.data.master.invitation_id #=> String
    #   resp.data.master.relationship_status #=> String
    #   resp.data.master.invited_at #=> String
    #
    def get_master_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMasterAccountInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Describes which data sources are enabled for the member account's detector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMemberDetectorsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID for the administrator account.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The account ID of the member account.</p>
    #
    # @return [Types::GetMemberDetectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member_detectors(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMemberDetectorsOutput
    #   resp.data.member_data_source_configurations #=> Array<MemberDataSourceConfiguration>
    #   resp.data.member_data_source_configurations[0] #=> Types::MemberDataSourceConfiguration
    #   resp.data.member_data_source_configurations[0].account_id #=> String
    #   resp.data.member_data_source_configurations[0].data_sources #=> Types::DataSourceConfigurationsResult
    #   resp.data.member_data_source_configurations[0].data_sources.cloud_trail #=> Types::CloudTrailConfigurationResult
    #   resp.data.member_data_source_configurations[0].data_sources.cloud_trail.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.member_data_source_configurations[0].data_sources.dns_logs #=> Types::DNSLogsConfigurationResult
    #   resp.data.member_data_source_configurations[0].data_sources.dns_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.member_data_source_configurations[0].data_sources.flow_logs #=> Types::FlowLogsConfigurationResult
    #   resp.data.member_data_source_configurations[0].data_sources.flow_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.member_data_source_configurations[0].data_sources.s3_logs #=> Types::S3LogsConfigurationResult
    #   resp.data.member_data_source_configurations[0].data_sources.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.member_data_source_configurations[0].data_sources.kubernetes #=> Types::KubernetesConfigurationResult
    #   resp.data.member_data_source_configurations[0].data_sources.kubernetes.audit_logs #=> Types::KubernetesAuditLogsConfigurationResult
    #   resp.data.member_data_source_configurations[0].data_sources.kubernetes.audit_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def get_member_detectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMemberDetectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMemberDetectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMemberDetectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetMemberDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMemberDetectors,
        stubs: @stubs,
        params_class: Params::GetMemberDetectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_member_detectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves GuardDuty member accounts (of the current GuardDuty administrator account) specified by
    #       the account IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to
    #         retrieve.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to describe.</p>
    #
    # @return [Types::GetMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members(
    #     detector_id: 'DetectorId', # required
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
    #   resp.data.members[0].detector_id #=> String
    #   resp.data.members[0].master_id #=> String
    #   resp.data.members[0].email #=> String
    #   resp.data.members[0].relationship_status #=> String
    #   resp.data.members[0].invited_at #=> String
    #   resp.data.members[0].updated_at #=> String
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def get_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMembersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetThreatIntelSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the threatIntelSet is associated with.</p>
    #
    # @option params [String] :threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to get.</p>
    #
    # @return [Types::GetThreatIntelSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_threat_intel_set(
    #     detector_id: 'DetectorId', # required
    #     threat_intel_set_id: 'ThreatIntelSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetThreatIntelSetOutput
    #   resp.data.name #=> String
    #   resp.data.format #=> String, one of ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"]
    #   resp.data.location #=> String
    #   resp.data.status #=> String, one of ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_threat_intel_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetThreatIntelSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetThreatIntelSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetThreatIntelSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetThreatIntelSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetThreatIntelSet,
        stubs: @stubs,
        params_class: Params::GetThreatIntelSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_threat_intel_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector
    #       ID. For newly enabled detectors or data sources the cost returned will include only the usage
    #       so far under 30 days, this may differ from the cost metrics in the console, which projects
    #       usage over 30 days to provide a monthly cost estimate. For more information see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations">Understanding How Usage Costs are Calculated</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsageStatisticsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose usage statistics you
    #         want to retrieve.</p>
    #
    # @option params [String] :usage_statistic_type
    #   <p>The type of usage statistics to retrieve.</p>
    #
    # @option params [UsageCriteria] :usage_criteria
    #   <p>Represents the criteria used for querying usage.</p>
    #
    # @option params [String] :unit
    #   <p>The currency unit you would like to view your usage statistics in. Current valid values
    #         are USD.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #         NextToken value returned from the previous request to continue listing results after the first
    #         page.</p>
    #
    # @return [Types::GetUsageStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_statistics(
    #     detector_id: 'DetectorId', # required
    #     usage_statistic_type: 'SUM_BY_ACCOUNT', # required - accepts ["SUM_BY_ACCOUNT", "SUM_BY_DATA_SOURCE", "SUM_BY_RESOURCE", "TOP_RESOURCES"]
    #     usage_criteria: {
    #       account_ids: [
    #         'member'
    #       ],
    #       data_sources: [
    #         'FLOW_LOGS' # accepts ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_LOGS", "KUBERNETES_AUDIT_LOGS"]
    #       ], # required
    #       resources: [
    #         'member'
    #       ]
    #     }, # required
    #     unit: 'Unit',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsageStatisticsOutput
    #   resp.data.usage_statistics #=> Types::UsageStatistics
    #   resp.data.usage_statistics.sum_by_account #=> Array<UsageAccountResult>
    #   resp.data.usage_statistics.sum_by_account[0] #=> Types::UsageAccountResult
    #   resp.data.usage_statistics.sum_by_account[0].account_id #=> String
    #   resp.data.usage_statistics.sum_by_account[0].total #=> Types::Total
    #   resp.data.usage_statistics.sum_by_account[0].total.amount #=> String
    #   resp.data.usage_statistics.sum_by_account[0].total.unit #=> String
    #   resp.data.usage_statistics.sum_by_data_source #=> Array<UsageDataSourceResult>
    #   resp.data.usage_statistics.sum_by_data_source[0] #=> Types::UsageDataSourceResult
    #   resp.data.usage_statistics.sum_by_data_source[0].data_source #=> String, one of ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_LOGS", "KUBERNETES_AUDIT_LOGS"]
    #   resp.data.usage_statistics.sum_by_data_source[0].total #=> Types::Total
    #   resp.data.usage_statistics.sum_by_resource #=> Array<UsageResourceResult>
    #   resp.data.usage_statistics.sum_by_resource[0] #=> Types::UsageResourceResult
    #   resp.data.usage_statistics.sum_by_resource[0].resource #=> String
    #   resp.data.usage_statistics.sum_by_resource[0].total #=> Types::Total
    #   resp.data.usage_statistics.top_resources #=> Array<UsageResourceResult>
    #   resp.data.next_token #=> String
    #
    def get_usage_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsageStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsageStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsageStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetUsageStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsageStatistics,
        stubs: @stubs,
        params_class: Params::GetUsageStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Invites other Amazon Web Services accounts (created as members of the current Amazon Web Services account by
    #       CreateMembers) to enable GuardDuty, and allow the current Amazon Web Services account to view and manage these
    #       accounts' findings on their behalf as the GuardDuty administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::InviteMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account that you want to invite members
    #         with.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the accounts that you want to invite to GuardDuty as
    #         members.</p>
    #
    # @option params [Boolean] :disable_email_notification
    #   <p>A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.</p>
    #
    # @option params [String] :message
    #   <p>The invitation message that you want to send to the accounts that you're inviting to
    #         GuardDuty as members.</p>
    #
    # @return [Types::InviteMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ], # required
    #     disable_email_notification: false,
    #     message: 'Message'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InviteMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def invite_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InviteMembersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Lists detectorIds of all the existing Amazon GuardDuty detector resources.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDetectorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    # @return [Types::ListDetectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detectors(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDetectorsOutput
    #   resp.data.detector_ids #=> Array<String>
    #   resp.data.detector_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_detectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDetectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDetectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDetectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDetectors,
        stubs: @stubs,
        params_class: Params::ListDetectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_detectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of the current filters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFiltersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the filter is associated with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    # @return [Types::ListFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters(
    #     detector_id: 'DetectorId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFiltersOutput
    #   resp.data.filter_names #=> Array<String>
    #   resp.data.filter_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFilters
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFilters,
        stubs: @stubs,
        params_class: Params::ListFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists Amazon GuardDuty findings for the specified detector ID.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to
    #         list.</p>
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>Represents the criteria used for querying findings. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>JSON field name</p>
    #               </li>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>region</p>
    #               </li>
    #               <li>
    #                  <p>confidence</p>
    #               </li>
    #               <li>
    #                  <p>id</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.accessKeyId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.principalId</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userName</p>
    #               </li>
    #               <li>
    #                  <p>resource.accessKeyDetails.userType</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.iamInstanceProfile.id</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.imageId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.instanceId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.publicIp</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.subnetId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.networkInterfaces.vpcId</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.key</p>
    #               </li>
    #               <li>
    #                  <p>resource.instanceDetails.tags.value</p>
    #               </li>
    #               <li>
    #                  <p>resource.resourceType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.actionType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.api</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.callerType</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.awsApiCallAction.serviceName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.dnsRequestAction.domain</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.blocked</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.connectionDirection</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.localPortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.protocol</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
    #               </li>
    #               <li>
    #                  <p>service.action.networkConnectionAction.remotePortDetails.port</p>
    #               </li>
    #               <li>
    #                  <p>service.additionalInfo.threatListName</p>
    #               </li>
    #               <li>
    #                  <p>service.archived</p>
    #                  <p>When this attribute is set to 'true', only archived findings are listed. When it's set
    #             to 'false', only unarchived findings are listed. When this attribute is not set, all
    #             existing findings are listed.</p>
    #               </li>
    #               <li>
    #                  <p>service.resourceRole</p>
    #               </li>
    #               <li>
    #                  <p>severity</p>
    #               </li>
    #               <li>
    #                  <p>type</p>
    #               </li>
    #               <li>
    #                  <p>updatedAt</p>
    #                  <p>Type: Timestamp in Unix Epoch millisecond format: 1486685375000</p>
    #               </li>
    #            </ul>
    #
    # @option params [SortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    # @return [Types::ListFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings(
    #     detector_id: 'DetectorId', # required
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           neq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: [
    #             'member'
    #           ],
    #           not_equals: [
    #             'member'
    #           ],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1
    #         }
    #       }
    #     },
    #     sort_criteria: {
    #       attribute_name: 'AttributeName',
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsOutput
    #   resp.data.finding_ids #=> Array<String>
    #   resp.data.finding_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindings,
        stubs: @stubs,
        params_class: Params::ListFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this
    #       operation from a member account, the IPSets returned are the IPSets from the associated administrator
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIPSetsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the IPSet is associated with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    # @return [Types::ListIPSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets(
    #     detector_id: 'DetectorId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIPSetsOutput
    #   resp.data.ip_set_ids #=> Array<String>
    #   resp.data.ip_set_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_ip_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIPSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIPSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIPSets
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListIPSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIPSets,
        stubs: @stubs,
        params_class: Params::ListIPSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ip_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all GuardDuty membership invitations that were sent to the current Amazon Web Services
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInvitationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
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
    #   resp.data.invitations[0].relationship_status #=> String
    #   resp.data.invitations[0].invited_at #=> String
    #   resp.data.next_token #=> String
    #
    def list_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInvitationsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Lists details about all member accounts for the current GuardDuty administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector the member is associated with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to
    #         null on your first call to the list action. For subsequent calls to the action, fill nextToken
    #         in the request with the value of NextToken from the previous response to continue listing
    #         data.</p>
    #
    # @option params [String] :only_associated
    #   <p>Specifies whether to only return associated members or to return all members (including
    #         members who haven't been invited yet or have been disassociated).</p>
    #
    # @return [Types::ListMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members(
    #     detector_id: 'DetectorId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     only_associated: 'OnlyAssociated'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMembersOutput
    #   resp.data.members #=> Array<Member>
    #   resp.data.members[0] #=> Types::Member
    #   resp.data.members[0].account_id #=> String
    #   resp.data.members[0].detector_id #=> String
    #   resp.data.members[0].master_id #=> String
    #   resp.data.members[0].email #=> String
    #   resp.data.members[0].relationship_status #=> String
    #   resp.data.members[0].invited_at #=> String
    #   resp.data.members[0].updated_at #=> String
    #   resp.data.next_token #=> String
    #
    def list_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMembersInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Lists the accounts configured as GuardDuty delegated administrators.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationAdminAccountsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
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
    #   resp.data.admin_accounts[0].admin_account_id #=> String
    #   resp.data.admin_accounts[0].admin_status #=> String, one of ["ENABLED", "DISABLE_IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def list_organization_admin_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationAdminAccountsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Returns a list of publishing destinations associated with the specified
    #         <code>detectorId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPublishingDestinationsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector to retrieve publishing destinations for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of
    #         this parameter to null for the first request to a list action. For subsequent calls, use the
    #           <code>NextToken</code> value returned from the previous request to continue listing results
    #         after the first page.</p>
    #
    # @return [Types::ListPublishingDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_publishing_destinations(
    #     detector_id: 'DetectorId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPublishingDestinationsOutput
    #   resp.data.destinations #=> Array<Destination>
    #   resp.data.destinations[0] #=> Types::Destination
    #   resp.data.destinations[0].destination_id #=> String
    #   resp.data.destinations[0].destination_type #=> String, one of ["S3"]
    #   resp.data.destinations[0].status #=> String, one of ["PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"]
    #   resp.data.next_token #=> String
    #
    def list_publishing_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPublishingDestinationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPublishingDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPublishingDestinations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListPublishingDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPublishingDestinations,
        stubs: @stubs,
        params_class: Params::ListPublishingDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_publishing_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tags for a resource. Tagging is currently supported for detectors, finding filters,
    #       IP sets, and threat intel sets, with a limit of 50 tags per resource. When invoked, this
    #       operation returns all assigned tags for a given resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the given GuardDuty resource. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you
    #       use this operation from a member account, the ThreatIntelSets associated with the administrator
    #       account are returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThreatIntelSetsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the threatIntelSet is associated with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the
    #         response. The default value is 50. The maximum value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter to paginate results in the response. Set the value of this
    #         parameter to null on your first call to the list action. For subsequent calls to the action,
    #         fill nextToken in the request with the value of NextToken from the previous response to
    #         continue listing data.</p>
    #
    # @return [Types::ListThreatIntelSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_intel_sets(
    #     detector_id: 'DetectorId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThreatIntelSetsOutput
    #   resp.data.threat_intel_set_ids #=> Array<String>
    #   resp.data.threat_intel_set_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_threat_intel_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThreatIntelSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThreatIntelSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThreatIntelSets
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListThreatIntelSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThreatIntelSets,
        stubs: @stubs,
        params_class: Params::ListThreatIntelSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_threat_intel_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Turns on GuardDuty monitoring of the specified member accounts. Use this operation to
    #       restart monitoring of accounts that you stopped monitoring with the
    #         <code>StopMonitoringMembers</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::StartMonitoringMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty administrator account associated with the member
    #         accounts to monitor.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>
    #
    # @return [Types::StartMonitoringMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_monitoring_members(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMonitoringMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def start_monitoring_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMonitoringMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMonitoringMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMonitoringMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::StartMonitoringMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMonitoringMembers,
        stubs: @stubs,
        params_class: Params::StartMonitoringMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_monitoring_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops GuardDuty monitoring for the specified member accounts. Use the
    #         <code>StartMonitoringMembers</code> operation to restart monitoring for those
    #       accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::StopMonitoringMembersInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the GuardDuty administrator account that is
    #         monitoring member accounts.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs for the member accounts to stop monitoring.</p>
    #
    # @return [Types::StopMonitoringMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_monitoring_members(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopMonitoringMembersOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def stop_monitoring_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopMonitoringMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopMonitoringMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopMonitoringMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::StopMonitoringMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopMonitoringMembers,
        stubs: @stubs,
        params_class: Params::StopMonitoringMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_monitoring_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Unarchives GuardDuty findings specified by the <code>findingIds</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UnarchiveFindingsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector associated with the findings to unarchive.</p>
    #
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings to unarchive.</p>
    #
    # @return [Types::UnarchiveFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unarchive_findings(
    #     detector_id: 'DetectorId', # required
    #     finding_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnarchiveFindingsOutput
    #
    def unarchive_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnarchiveFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnarchiveFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnarchiveFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UnarchiveFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnarchiveFindings,
        stubs: @stubs,
        params_class: Params::UnarchiveFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unarchive_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Updates the Amazon GuardDuty detector specified by the detectorId.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDetectorInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector to update.</p>
    #
    # @option params [Boolean] :enable
    #   <p>Specifies whether the detector is enabled or not enabled.</p>
    #
    # @option params [String] :finding_publishing_frequency
    #   <p>An enum value that specifies how frequently findings are exported, such as to CloudWatch
    #         Events.</p>
    #
    # @option params [DataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be updated.</p>
    #
    # @return [Types::UpdateDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector(
    #     detector_id: 'DetectorId', # required
    #     enable: false,
    #     finding_publishing_frequency: 'FIFTEEN_MINUTES', # accepts ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #     data_sources: {
    #       s3_logs: {
    #         enable: false # required
    #       },
    #       kubernetes: {
    #         audit_logs: {
    #           enable: false # required
    #         } # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDetectorOutput
    #
    def update_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDetector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDetector,
        stubs: @stubs,
        params_class: Params::UpdateDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the filter specified by the filter name.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFilterInput}.
    #
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that specifies the GuardDuty service where you want to
    #         update a filter.</p>
    #
    # @option params [String] :filter_name
    #   <p>The name of the filter.</p>
    #
    # @option params [String] :description
    #   <p>The description of the filter.</p>
    #
    # @option params [String] :action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    # @option params [Integer] :rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the
    #         order in which this filter is applied to the findings.</p>
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings.</p>
    #
    # @return [Types::UpdateFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_filter(
    #     detector_id: 'DetectorId', # required
    #     filter_name: 'FilterName', # required
    #     description: 'Description',
    #     action: 'NOOP', # accepts ["NOOP", "ARCHIVE"]
    #     rank: 1,
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           neq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: [
    #             'member'
    #           ],
    #           not_equals: [
    #             'member'
    #           ],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFilterOutput
    #   resp.data.name #=> String
    #
    def update_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFilter,
        stubs: @stubs,
        params_class: Params::UpdateFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Marks the specified GuardDuty findings as useful or not useful.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFindingsFeedbackInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector associated with the findings to update feedback for.</p>
    #
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings that you want to mark as useful or not useful.</p>
    #
    # @option params [String] :feedback
    #   <p>The feedback for the finding.</p>
    #
    # @option params [String] :comments
    #   <p>Additional feedback about the GuardDuty findings.</p>
    #
    # @return [Types::UpdateFindingsFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings_feedback(
    #     detector_id: 'DetectorId', # required
    #     finding_ids: [
    #       'member'
    #     ], # required
    #     feedback: 'USEFUL', # required - accepts ["USEFUL", "NOT_USEFUL"]
    #     comments: 'Comments'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFindingsFeedbackOutput
    #
    def update_findings_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFindingsFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFindingsFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFindingsFeedback
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateFindingsFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFindingsFeedback,
        stubs: @stubs,
        params_class: Params::UpdateFindingsFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_findings_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the IPSet specified by the IPSet ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIPSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose IPSet you want to update.</p>
    #
    # @option params [String] :ip_set_id
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    #
    # @option params [String] :location
    #   <p>The updated URI of the file that contains the IPSet. </p>
    #
    # @option params [Boolean] :activate
    #   <p>The updated Boolean value that specifies whether the IPSet is active or not.</p>
    #
    # @return [Types::UpdateIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set(
    #     detector_id: 'DetectorId', # required
    #     ip_set_id: 'IpSetId', # required
    #     name: 'Name',
    #     location: 'Location',
    #     activate: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIPSetOutput
    #
    def update_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIPSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIPSet,
        stubs: @stubs,
        params_class: Params::UpdateIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Contains information on member accounts to be updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMemberDetectorsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID of the administrator account.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of member account IDs to be updated.</p>
    #
    # @option params [DataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be updated.</p>
    #
    # @return [Types::UpdateMemberDetectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member_detectors(
    #     detector_id: 'DetectorId', # required
    #     account_ids: [
    #       'member'
    #     ], # required
    #     data_sources: {
    #       s3_logs: {
    #         enable: false # required
    #       },
    #       kubernetes: {
    #         audit_logs: {
    #           enable: false # required
    #         } # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMemberDetectorsOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].result #=> String
    #
    def update_member_detectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMemberDetectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMemberDetectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMemberDetectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateMemberDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMemberDetectors,
        stubs: @stubs,
        params_class: Params::UpdateMemberDetectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_member_detectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the delegated administrator account with the values provided.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOrganizationConfigurationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector to update the delegated administrator for.</p>
    #
    # @option params [Boolean] :auto_enable
    #   <p>Indicates whether to automatically enable member accounts in the organization.</p>
    #
    # @option params [OrganizationDataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be updated.</p>
    #
    # @return [Types::UpdateOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration(
    #     detector_id: 'DetectorId', # required
    #     auto_enable: false, # required
    #     data_sources: {
    #       s3_logs: {
    #         auto_enable: false # required
    #       },
    #       kubernetes: {
    #         audit_logs: {
    #           auto_enable: false # required
    #         } # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOrganizationConfigurationOutput
    #
    def update_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOrganizationConfigurationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
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

    # <p>Updates information about the publishing destination specified by the
    #         <code>destinationId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePublishingDestinationInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector associated with the publishing destinations to update.</p>
    #
    # @option params [String] :destination_id
    #   <p>The ID of the publishing destination to update.</p>
    #
    # @option params [DestinationProperties] :destination_properties
    #   <p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
    #         and <code>KmsKeyArn</code> of the publishing destination.</p>
    #
    # @return [Types::UpdatePublishingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_publishing_destination(
    #     detector_id: 'DetectorId', # required
    #     destination_id: 'DestinationId', # required
    #     destination_properties: {
    #       destination_arn: 'DestinationArn',
    #       kms_key_arn: 'KmsKeyArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePublishingDestinationOutput
    #
    def update_publishing_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePublishingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePublishingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePublishingDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdatePublishingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePublishingDestination,
        stubs: @stubs,
        params_class: Params::UpdatePublishingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_publishing_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the ThreatIntelSet specified by the ThreatIntelSet ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThreatIntelSetInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to
    #         update.</p>
    #
    # @option params [String] :threat_intel_set_id
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    #
    # @option params [String] :location
    #   <p>The updated URI of the file that contains the ThreateIntelSet.</p>
    #
    # @option params [Boolean] :activate
    #   <p>The updated Boolean value that specifies whether the ThreateIntelSet is active or
    #         not.</p>
    #
    # @return [Types::UpdateThreatIntelSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_threat_intel_set(
    #     detector_id: 'DetectorId', # required
    #     threat_intel_set_id: 'ThreatIntelSetId', # required
    #     name: 'Name',
    #     location: 'Location',
    #     activate: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThreatIntelSetOutput
    #
    def update_threat_intel_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThreatIntelSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThreatIntelSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThreatIntelSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateThreatIntelSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThreatIntelSet,
        stubs: @stubs,
        params_class: Params::UpdateThreatIntelSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_threat_intel_set
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
