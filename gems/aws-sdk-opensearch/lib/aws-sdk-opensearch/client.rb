# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::OpenSearch
  # An API client for AmazonOpenSearchService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon OpenSearch Configuration Service</fullname>
  #     <p>Use the Amazon OpenSearch configuration API to create, configure, and manage Amazon OpenSearch Service domains.</p>
  #     <p>For sample code that uses the configuration API, see the <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-configuration-samples.html">
  #       Amazon OpenSearch Service Developer Guide</a>.
  #       The guide also contains <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html">
  #         sample
  #         code for sending signed HTTP requests to the OpenSearch APIs</a>.
  #     </p>
  #     <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com.
  #       For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
  #       see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions" target="_blank">Regions and Endpoints</a>.
  #     </p>
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
    def initialize(config = AWS::SDK::OpenSearch::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Allows the remote domain owner to accept an inbound cross-cluster connection request.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptInboundConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the inbound connection you want to accept.</p>
    #
    # @return [Types::AcceptInboundConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_inbound_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptInboundConnectionOutput
    #   resp.data.connection #=> Types::InboundConnection
    #   resp.data.connection.local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.data.connection.remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_status #=> Types::InboundConnectionStatus
    #   resp.data.connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connection.connection_status.message #=> String
    #
    def accept_inbound_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptInboundConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptInboundConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptInboundConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::AcceptInboundConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptInboundConnection,
        stubs: @stubs,
        params_class: Params::AcceptInboundConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_inbound_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches tags to an existing domain. Tags are a set of case-sensitive key value pairs. An
    #       domain can have up to 10 tags. See
    #       <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging" target="_blank">
    #         Tagging Amazon OpenSearch Service domains</a> for more information.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [String] :arn
    #   <p>Specify the <code>ARN</code> of the domain you want to add tags to.
    #       </p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>List of <code>Tag</code> to add to the domain.
    #       </p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     arn: 'ARN', # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsOutput
    #
    def add_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::LimitExceededException, Errors::ValidationException, Errors::BaseException]),
        data_parser: Parsers::AddTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTags,
        stubs: @stubs,
        params_class: Params::AddTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a package with an Amazon OpenSearch Service domain.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>Internal ID of the package to associate with a domain. Use <code>DescribePackages</code> to find
    #         this value.
    #       </p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain to associate the package with.</p>
    #
    # @return [Types::AssociatePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_package(
    #     package_id: 'PackageID', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePackageOutput
    #   resp.data.domain_package_details #=> Types::DomainPackageDetails
    #   resp.data.domain_package_details.package_id #=> String
    #   resp.data.domain_package_details.package_name #=> String
    #   resp.data.domain_package_details.package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.domain_package_details.last_updated #=> Time
    #   resp.data.domain_package_details.domain_name #=> String
    #   resp.data.domain_package_details.domain_package_status #=> String, one of ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"]
    #   resp.data.domain_package_details.package_version #=> String
    #   resp.data.domain_package_details.reference_path #=> String
    #   resp.data.domain_package_details.error_details #=> Types::ErrorDetails
    #   resp.data.domain_package_details.error_details.error_type #=> String
    #   resp.data.domain_package_details.error_details.error_message #=> String
    #
    def associate_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePackageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePackage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ConflictException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::AssociatePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePackage,
        stubs: @stubs,
        params_class: Params::AssociatePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a scheduled service software update for an Amazon OpenSearch Service domain. You can only perform this operation before
    #       the <code>AutomatedUpdateDate</code> and when the <code>UpdateStatus</code> is in the <code>PENDING_UPDATE</code> state.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CancelServiceSoftwareUpdateInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to stop the latest service software update on.</p>
    #
    # @return [Types::CancelServiceSoftwareUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_software_update(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelServiceSoftwareUpdateOutput
    #   resp.data.service_software_options #=> Types::ServiceSoftwareOptions
    #   resp.data.service_software_options.current_version #=> String
    #   resp.data.service_software_options.new_version #=> String
    #   resp.data.service_software_options.update_available #=> Boolean
    #   resp.data.service_software_options.cancellable #=> Boolean
    #   resp.data.service_software_options.update_status #=> String, one of ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #   resp.data.service_software_options.description #=> String
    #   resp.data.service_software_options.automated_update_date #=> Time
    #   resp.data.service_software_options.optional_deployment #=> Boolean
    #
    def cancel_service_software_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelServiceSoftwareUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelServiceSoftwareUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelServiceSoftwareUpdate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CancelServiceSoftwareUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelServiceSoftwareUpdate,
        stubs: @stubs,
        params_class: Params::CancelServiceSoftwareUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_service_software_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon OpenSearch Service domain. For more information,
    #       see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html" target="_blank">Creating and managing Amazon OpenSearch Service domains
    #       </a> in the <i>Amazon OpenSearch Service Developer Guide</i>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the Amazon OpenSearch Service domain you're creating. Domain names are unique across the domains owned by
    #         an account within an AWS region. Domain names must start with a lowercase letter and can contain the following
    #         characters: a-z (lowercase), 0-9, and - (hyphen).
    #       </p>
    #
    # @option params [String] :engine_version
    #   <p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the engine version for the Amazon OpenSearch Service domain.
    #         For example, "OpenSearch_1.0" or "Elasticsearch_7.9". For more information,
    #         see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains" target="_blank">Creating and managing Amazon OpenSearch Service domains
    #         </a>.
    #       </p>
    #
    # @option params [ClusterConfig] :cluster_config
    #   <p>Configuration options for a domain. Specifies the instance type and number of instances in the
    #         domain.
    #       </p>
    #
    # @option params [EBSOptions] :ebs_options
    #   <p>Options to enable, disable, and specify the type and size of EBS storage volumes.</p>
    #
    # @option params [String] :access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #
    # @option params [SnapshotOptions] :snapshot_options
    #   <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours.</p>
    #
    # @option params [VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for a VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html" target="_blank">Launching your Amazon OpenSearch Service domains using a VPC
    #       </a>.
    #       </p>
    #
    # @option params [CognitoOptions] :cognito_options
    #   <p>Options to specify the Cognito user and identity pools for OpenSearch Dashboards authentication. For more information, see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html" target="_blank">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    #       </p>
    #
    # @option params [EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Options for encryption of data at rest.</p>
    #
    # @option params [NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Node-to-node encryption options.</p>
    #
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access
    #         to individual sub-resources. By default, the value is <code>true</code>.
    #         See <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options" target="_blank">Advanced cluster parameters
    #         </a> for more information.
    #       </p>
    #
    # @option params [Hash<String, LogPublishingOption>] :log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type
    #         of OpenSearch log.
    #       </p>
    #
    # @option params [DomainEndpointOptions] :domain_endpoint_options
    #   <p>Options to specify configurations that will be applied to the domain endpoint.</p>
    #
    # @option params [AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>A list of <code>Tag</code> added during domain creation.
    #       </p>
    #
    # @option params [AutoTuneOptionsInput] :auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #
    # @return [Types::CreateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain(
    #     domain_name: 'DomainName', # required
    #     engine_version: 'EngineVersion',
    #     cluster_config: {
    #       instance_type: 'm3.medium.search', # accepts ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: 'm3.medium.search', # accepts ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: 'ultrawarm1.medium.search', # accepts ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false # required
    #       }
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: 'standard', # accepts ["standard", "gp2", "io1"]
    #       volume_size: 1,
    #       iops: 1
    #     },
    #     access_policies: 'AccessPolicies',
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1
    #     },
    #     vpc_options: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: 'UserPoolId',
    #       identity_pool_id: 'IdentityPoolId',
    #       role_arn: 'RoleArn'
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: 'KmsKeyId'
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false
    #     },
    #     advanced_options: {
    #       'key' => 'value'
    #     },
    #     log_publishing_options: {
    #       'key' => {
    #         cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #         enabled: false
    #       }
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: 'Policy-Min-TLS-1-0-2019-07', # accepts ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: 'CustomEndpoint',
    #       custom_endpoint_certificate_arn: 'CustomEndpointCertificateArn'
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: 'MasterUserARN',
    #         master_user_name: 'MasterUserName',
    #         master_user_password: 'MasterUserPassword'
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: 'MetadataContent', # required
    #           entity_id: 'EntityId' # required
    #         },
    #         master_user_name: 'MasterUserName',
    #         master_backend_role: 'MasterBackendRole',
    #         subject_key: 'SubjectKey',
    #         roles_key: 'RolesKey',
    #         session_timeout_minutes: 1
    #       },
    #       anonymous_auth_enabled: false
    #     },
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     auto_tune_options: {
    #       desired_state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: 'HOURS' # accepts ["HOURS"]
    #           },
    #           cron_expression_for_recurrence: 'CronExpressionForRecurrence'
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainOutput
    #   resp.data.domain_status #=> Types::DomainStatus
    #   resp.data.domain_status.domain_id #=> String
    #   resp.data.domain_status.domain_name #=> String
    #   resp.data.domain_status.arn #=> String
    #   resp.data.domain_status.created #=> Boolean
    #   resp.data.domain_status.deleted #=> Boolean
    #   resp.data.domain_status.endpoint #=> String
    #   resp.data.domain_status.endpoints #=> Hash<String, String>
    #   resp.data.domain_status.endpoints['key'] #=> String
    #   resp.data.domain_status.processing #=> Boolean
    #   resp.data.domain_status.upgrade_processing #=> Boolean
    #   resp.data.domain_status.engine_version #=> String
    #   resp.data.domain_status.cluster_config #=> Types::ClusterConfig
    #   resp.data.domain_status.cluster_config.instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status.cluster_config.instance_count #=> Integer
    #   resp.data.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status.cluster_config.dedicated_master_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #   resp.data.domain_status.cluster_config.warm_count #=> Integer
    #   resp.data.domain_status.cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_status.ebs_options #=> Types::EBSOptions
    #   resp.data.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.data.domain_status.ebs_options.volume_type #=> String, one of ["standard", "gp2", "io1"]
    #   resp.data.domain_status.ebs_options.volume_size #=> Integer
    #   resp.data.domain_status.ebs_options.iops #=> Integer
    #   resp.data.domain_status.access_policies #=> String
    #   resp.data.domain_status.snapshot_options #=> Types::SnapshotOptions
    #   resp.data.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.data.domain_status.vpc_options #=> Types::VPCDerivedInfo
    #   resp.data.domain_status.vpc_options.vpc_id #=> String
    #   resp.data.domain_status.vpc_options.subnet_ids #=> Array<String>
    #   resp.data.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.data.domain_status.vpc_options.availability_zones #=> Array<String>
    #   resp.data.domain_status.vpc_options.security_group_ids #=> Array<String>
    #   resp.data.domain_status.cognito_options #=> Types::CognitoOptions
    #   resp.data.domain_status.cognito_options.enabled #=> Boolean
    #   resp.data.domain_status.cognito_options.user_pool_id #=> String
    #   resp.data.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.data.domain_status.cognito_options.role_arn #=> String
    #   resp.data.domain_status.encryption_at_rest_options #=> Types::EncryptionAtRestOptions
    #   resp.data.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.data.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.data.domain_status.node_to_node_encryption_options #=> Types::NodeToNodeEncryptionOptions
    #   resp.data.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_options #=> Hash<String, String>
    #   resp.data.domain_status.advanced_options['key'] #=> String
    #   resp.data.domain_status.log_publishing_options #=> Hash<String, LogPublishingOption>
    #   resp.data.domain_status.log_publishing_options['key'] #=> Types::LogPublishingOption
    #   resp.data.domain_status.log_publishing_options['key'].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.domain_status.log_publishing_options['key'].enabled #=> Boolean
    #   resp.data.domain_status.service_software_options #=> Types::ServiceSoftwareOptions
    #   resp.data.domain_status.service_software_options.current_version #=> String
    #   resp.data.domain_status.service_software_options.new_version #=> String
    #   resp.data.domain_status.service_software_options.update_available #=> Boolean
    #   resp.data.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.data.domain_status.service_software_options.update_status #=> String, one of ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #   resp.data.domain_status.service_software_options.description #=> String
    #   resp.data.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.data.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options #=> Types::DomainEndpointOptions
    #   resp.data.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.data.domain_status.advanced_security_options #=> Types::AdvancedSecurityOptions
    #   resp.data.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.saml_options #=> Types::SAMLOptionsOutput
    #   resp.data.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.saml_options.idp #=> Types::SAMLIdp
    #   resp.data.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.data.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.data.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.data.domain_status.auto_tune_options #=> Types::AutoTuneOptionsOutput
    #   resp.data.domain_status.auto_tune_options.state #=> String, one of ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #   resp.data.domain_status.auto_tune_options.error_message #=> String
    #   resp.data.domain_status.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.domain_status.change_progress_details.change_id #=> String
    #   resp.data.domain_status.change_progress_details.message #=> String
    #
    def create_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidTypeException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ValidationException, Errors::BaseException, Errors::DisabledOperationException]),
        data_parser: Parsers::CreateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomain,
        stubs: @stubs,
        params_class: Params::CreateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new cross-cluster connection from a local OpenSearch domain to a remote OpenSearch domain.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOutboundConnectionInput}.
    #
    # @option params [DomainInformationContainer] :local_domain_info
    #   <p>The
    #         <code>
    #           <a>AWSDomainInformation</a>
    #         </code>
    #         for the local OpenSearch domain.
    #       </p>
    #
    # @option params [DomainInformationContainer] :remote_domain_info
    #   <p>The
    #         <code>
    #           <a>AWSDomainInformation</a>
    #         </code>
    #         for the remote OpenSearch domain.
    #       </p>
    #
    # @option params [String] :connection_alias
    #   <p>The connection alias used used by the customer for this cross-cluster connection.</p>
    #
    # @return [Types::CreateOutboundConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outbound_connection(
    #     local_domain_info: {
    #       aws_domain_information: {
    #         owner_id: 'OwnerId',
    #         domain_name: 'DomainName', # required
    #         region: 'Region'
    #       }
    #     }, # required
    #     connection_alias: 'ConnectionAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOutboundConnectionOutput
    #   resp.data.local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.local_domain_info.aws_domain_information.region #=> String
    #   resp.data.remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection_alias #=> String
    #   resp.data.connection_status #=> Types::OutboundConnectionStatus
    #   resp.data.connection_status.status_code #=> String, one of ["VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connection_status.message #=> String
    #   resp.data.connection_id #=> String
    #
    def create_outbound_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOutboundConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOutboundConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOutboundConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::DisabledOperationException]),
        data_parser: Parsers::CreateOutboundConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOutboundConnection,
        stubs: @stubs,
        params_class: Params::CreateOutboundConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_outbound_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a package for use with Amazon OpenSearch Service domains.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePackageInput}.
    #
    # @option params [String] :package_name
    #   <p>Unique identifier for the package.</p>
    #
    # @option params [String] :package_type
    #   <p>Type of package. Currently supports only TXT-DICTIONARY.</p>
    #
    # @option params [String] :package_description
    #   <p>Description of the package.</p>
    #
    # @option params [PackageSource] :package_source
    #   <p>The Amazon S3 location from which to import the package.
    #       </p>
    #
    # @return [Types::CreatePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package(
    #     package_name: 'PackageName', # required
    #     package_type: 'TXT-DICTIONARY', # required - accepts ["TXT-DICTIONARY"]
    #     package_description: 'PackageDescription',
    #     package_source: {
    #       s3_bucket_name: 'S3BucketName',
    #       s3_key: 'S3Key'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePackageOutput
    #   resp.data.package_details #=> Types::PackageDetails
    #   resp.data.package_details.package_id #=> String
    #   resp.data.package_details.package_name #=> String
    #   resp.data.package_details.package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.package_details.package_description #=> String
    #   resp.data.package_details.package_status #=> String, one of ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.package_details.created_at #=> Time
    #   resp.data.package_details.last_updated_at #=> Time
    #   resp.data.package_details.available_package_version #=> String
    #   resp.data.package_details.error_details #=> Types::ErrorDetails
    #   resp.data.package_details.error_details.error_type #=> String
    #   resp.data.package_details.error_details.error_message #=> String
    #
    def create_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePackageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePackage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidTypeException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ValidationException, Errors::BaseException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePackage,
        stubs: @stubs,
        params_class: Params::CreatePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes the specified domain and all of its data. Once a domain is deleted, it cannot
    #       be recovered.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to permanently delete.</p>
    #
    # @return [Types::DeleteDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainOutput
    #   resp.data.domain_status #=> Types::DomainStatus
    #   resp.data.domain_status.domain_id #=> String
    #   resp.data.domain_status.domain_name #=> String
    #   resp.data.domain_status.arn #=> String
    #   resp.data.domain_status.created #=> Boolean
    #   resp.data.domain_status.deleted #=> Boolean
    #   resp.data.domain_status.endpoint #=> String
    #   resp.data.domain_status.endpoints #=> Hash<String, String>
    #   resp.data.domain_status.endpoints['key'] #=> String
    #   resp.data.domain_status.processing #=> Boolean
    #   resp.data.domain_status.upgrade_processing #=> Boolean
    #   resp.data.domain_status.engine_version #=> String
    #   resp.data.domain_status.cluster_config #=> Types::ClusterConfig
    #   resp.data.domain_status.cluster_config.instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status.cluster_config.instance_count #=> Integer
    #   resp.data.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status.cluster_config.dedicated_master_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #   resp.data.domain_status.cluster_config.warm_count #=> Integer
    #   resp.data.domain_status.cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_status.ebs_options #=> Types::EBSOptions
    #   resp.data.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.data.domain_status.ebs_options.volume_type #=> String, one of ["standard", "gp2", "io1"]
    #   resp.data.domain_status.ebs_options.volume_size #=> Integer
    #   resp.data.domain_status.ebs_options.iops #=> Integer
    #   resp.data.domain_status.access_policies #=> String
    #   resp.data.domain_status.snapshot_options #=> Types::SnapshotOptions
    #   resp.data.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.data.domain_status.vpc_options #=> Types::VPCDerivedInfo
    #   resp.data.domain_status.vpc_options.vpc_id #=> String
    #   resp.data.domain_status.vpc_options.subnet_ids #=> Array<String>
    #   resp.data.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.data.domain_status.vpc_options.availability_zones #=> Array<String>
    #   resp.data.domain_status.vpc_options.security_group_ids #=> Array<String>
    #   resp.data.domain_status.cognito_options #=> Types::CognitoOptions
    #   resp.data.domain_status.cognito_options.enabled #=> Boolean
    #   resp.data.domain_status.cognito_options.user_pool_id #=> String
    #   resp.data.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.data.domain_status.cognito_options.role_arn #=> String
    #   resp.data.domain_status.encryption_at_rest_options #=> Types::EncryptionAtRestOptions
    #   resp.data.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.data.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.data.domain_status.node_to_node_encryption_options #=> Types::NodeToNodeEncryptionOptions
    #   resp.data.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_options #=> Hash<String, String>
    #   resp.data.domain_status.advanced_options['key'] #=> String
    #   resp.data.domain_status.log_publishing_options #=> Hash<String, LogPublishingOption>
    #   resp.data.domain_status.log_publishing_options['key'] #=> Types::LogPublishingOption
    #   resp.data.domain_status.log_publishing_options['key'].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.domain_status.log_publishing_options['key'].enabled #=> Boolean
    #   resp.data.domain_status.service_software_options #=> Types::ServiceSoftwareOptions
    #   resp.data.domain_status.service_software_options.current_version #=> String
    #   resp.data.domain_status.service_software_options.new_version #=> String
    #   resp.data.domain_status.service_software_options.update_available #=> Boolean
    #   resp.data.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.data.domain_status.service_software_options.update_status #=> String, one of ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #   resp.data.domain_status.service_software_options.description #=> String
    #   resp.data.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.data.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options #=> Types::DomainEndpointOptions
    #   resp.data.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.data.domain_status.advanced_security_options #=> Types::AdvancedSecurityOptions
    #   resp.data.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.saml_options #=> Types::SAMLOptionsOutput
    #   resp.data.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.saml_options.idp #=> Types::SAMLIdp
    #   resp.data.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.data.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.data.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.data.domain_status.auto_tune_options #=> Types::AutoTuneOptionsOutput
    #   resp.data.domain_status.auto_tune_options.state #=> String, one of ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #   resp.data.domain_status.auto_tune_options.error_message #=> String
    #   resp.data.domain_status.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.domain_status.change_progress_details.change_id #=> String
    #   resp.data.domain_status.change_progress_details.message #=> String
    #
    def delete_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomain,
        stubs: @stubs,
        params_class: Params::DeleteDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the remote domain owner to delete an existing inbound cross-cluster connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInboundConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the inbound connection to permanently delete.</p>
    #
    # @return [Types::DeleteInboundConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inbound_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInboundConnectionOutput
    #   resp.data.connection #=> Types::InboundConnection
    #   resp.data.connection.local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.data.connection.remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_status #=> Types::InboundConnectionStatus
    #   resp.data.connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connection.connection_status.message #=> String
    #
    def delete_inbound_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInboundConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInboundConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInboundConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::DeleteInboundConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInboundConnection,
        stubs: @stubs,
        params_class: Params::DeleteInboundConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_inbound_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the local domain owner to delete an existing outbound cross-cluster connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOutboundConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the outbound connection you want to permanently delete.</p>
    #
    # @return [Types::DeleteOutboundConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outbound_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOutboundConnectionOutput
    #   resp.data.connection #=> Types::OutboundConnection
    #   resp.data.connection.local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.data.connection.remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_alias #=> String
    #   resp.data.connection.connection_status #=> Types::OutboundConnectionStatus
    #   resp.data.connection.connection_status.status_code #=> String, one of ["VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connection.connection_status.message #=> String
    #
    def delete_outbound_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOutboundConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOutboundConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOutboundConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::DeleteOutboundConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOutboundConnection,
        stubs: @stubs,
        params_class: Params::DeleteOutboundConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_outbound_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the package.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The internal ID of the package you want to delete. Use <code>DescribePackages</code> to find this value.
    #       </p>
    #
    # @return [Types::DeletePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package(
    #     package_id: 'PackageID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePackageOutput
    #   resp.data.package_details #=> Types::PackageDetails
    #   resp.data.package_details.package_id #=> String
    #   resp.data.package_details.package_name #=> String
    #   resp.data.package_details.package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.package_details.package_description #=> String
    #   resp.data.package_details.package_status #=> String, one of ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.package_details.created_at #=> Time
    #   resp.data.package_details.last_updated_at #=> Time
    #   resp.data.package_details.available_package_version #=> String
    #   resp.data.package_details.error_details #=> Types::ErrorDetails
    #   resp.data.package_details.error_details.error_type #=> String
    #   resp.data.package_details.error_details.error_message #=> String
    #
    def delete_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePackageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePackage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ConflictException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeletePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePackage,
        stubs: @stubs,
        params_class: Params::DeletePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns domain configuration information about the specified domain, including the domain ID,
    #       domain endpoint, and domain ARN.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want information.</p>
    #
    # @return [Types::DescribeDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainOutput
    #   resp.data.domain_status #=> Types::DomainStatus
    #   resp.data.domain_status.domain_id #=> String
    #   resp.data.domain_status.domain_name #=> String
    #   resp.data.domain_status.arn #=> String
    #   resp.data.domain_status.created #=> Boolean
    #   resp.data.domain_status.deleted #=> Boolean
    #   resp.data.domain_status.endpoint #=> String
    #   resp.data.domain_status.endpoints #=> Hash<String, String>
    #   resp.data.domain_status.endpoints['key'] #=> String
    #   resp.data.domain_status.processing #=> Boolean
    #   resp.data.domain_status.upgrade_processing #=> Boolean
    #   resp.data.domain_status.engine_version #=> String
    #   resp.data.domain_status.cluster_config #=> Types::ClusterConfig
    #   resp.data.domain_status.cluster_config.instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status.cluster_config.instance_count #=> Integer
    #   resp.data.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status.cluster_config.dedicated_master_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status.cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #   resp.data.domain_status.cluster_config.warm_count #=> Integer
    #   resp.data.domain_status.cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_status.ebs_options #=> Types::EBSOptions
    #   resp.data.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.data.domain_status.ebs_options.volume_type #=> String, one of ["standard", "gp2", "io1"]
    #   resp.data.domain_status.ebs_options.volume_size #=> Integer
    #   resp.data.domain_status.ebs_options.iops #=> Integer
    #   resp.data.domain_status.access_policies #=> String
    #   resp.data.domain_status.snapshot_options #=> Types::SnapshotOptions
    #   resp.data.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.data.domain_status.vpc_options #=> Types::VPCDerivedInfo
    #   resp.data.domain_status.vpc_options.vpc_id #=> String
    #   resp.data.domain_status.vpc_options.subnet_ids #=> Array<String>
    #   resp.data.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.data.domain_status.vpc_options.availability_zones #=> Array<String>
    #   resp.data.domain_status.vpc_options.security_group_ids #=> Array<String>
    #   resp.data.domain_status.cognito_options #=> Types::CognitoOptions
    #   resp.data.domain_status.cognito_options.enabled #=> Boolean
    #   resp.data.domain_status.cognito_options.user_pool_id #=> String
    #   resp.data.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.data.domain_status.cognito_options.role_arn #=> String
    #   resp.data.domain_status.encryption_at_rest_options #=> Types::EncryptionAtRestOptions
    #   resp.data.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.data.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.data.domain_status.node_to_node_encryption_options #=> Types::NodeToNodeEncryptionOptions
    #   resp.data.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_options #=> Hash<String, String>
    #   resp.data.domain_status.advanced_options['key'] #=> String
    #   resp.data.domain_status.log_publishing_options #=> Hash<String, LogPublishingOption>
    #   resp.data.domain_status.log_publishing_options['key'] #=> Types::LogPublishingOption
    #   resp.data.domain_status.log_publishing_options['key'].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.domain_status.log_publishing_options['key'].enabled #=> Boolean
    #   resp.data.domain_status.service_software_options #=> Types::ServiceSoftwareOptions
    #   resp.data.domain_status.service_software_options.current_version #=> String
    #   resp.data.domain_status.service_software_options.new_version #=> String
    #   resp.data.domain_status.service_software_options.update_available #=> Boolean
    #   resp.data.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.data.domain_status.service_software_options.update_status #=> String, one of ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #   resp.data.domain_status.service_software_options.description #=> String
    #   resp.data.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.data.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options #=> Types::DomainEndpointOptions
    #   resp.data.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.data.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.data.domain_status.advanced_security_options #=> Types::AdvancedSecurityOptions
    #   resp.data.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.saml_options #=> Types::SAMLOptionsOutput
    #   resp.data.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.data.domain_status.advanced_security_options.saml_options.idp #=> Types::SAMLIdp
    #   resp.data.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.data.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.data.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.data.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.data.domain_status.auto_tune_options #=> Types::AutoTuneOptionsOutput
    #   resp.data.domain_status.auto_tune_options.state #=> String, one of ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #   resp.data.domain_status.auto_tune_options.error_message #=> String
    #   resp.data.domain_status.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.domain_status.change_progress_details.change_id #=> String
    #   resp.data.domain_status.change_progress_details.message #=> String
    #
    def describe_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomain,
        stubs: @stubs,
        params_class: Params::DescribeDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides scheduled Auto-Tune action details for the domain, such as Auto-Tune action type,
    #       description, severity, and scheduled date.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainAutoTunesInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name for which you want Auto-Tune action details.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken is sent in case the earlier API call results contain the NextToken. Used for pagination.</p>
    #
    # @return [Types::DescribeDomainAutoTunesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_auto_tunes(
    #     domain_name: 'DomainName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainAutoTunesOutput
    #   resp.data.auto_tunes #=> Array<AutoTune>
    #   resp.data.auto_tunes[0] #=> Types::AutoTune
    #   resp.data.auto_tunes[0].auto_tune_type #=> String, one of ["SCHEDULED_ACTION"]
    #   resp.data.auto_tunes[0].auto_tune_details #=> Types::AutoTuneDetails
    #   resp.data.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details #=> Types::ScheduledAutoTuneDetails
    #   resp.data.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.date #=> Time
    #   resp.data.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.action_type #=> String, one of ["JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"]
    #   resp.data.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.action #=> String
    #   resp.data.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.next_token #=> String
    #
    def describe_domain_auto_tunes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainAutoTunesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainAutoTunesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomainAutoTunes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDomainAutoTunes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomainAutoTunes,
        stubs: @stubs,
        params_class: Params::DescribeDomainAutoTunesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain_auto_tunes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the current blue/green deployment happening on a domain, including
    #       a change ID, status, and progress stages.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainChangeProgressInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain you want to get the progress information about.</p>
    #
    # @option params [String] :change_id
    #   <p>The specific change ID for which you want to get progress information. This is an optional parameter.
    #         If omitted, the service returns information about the most recent configuration change.
    #       </p>
    #
    # @return [Types::DescribeDomainChangeProgressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_change_progress(
    #     domain_name: 'DomainName', # required
    #     change_id: 'ChangeId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainChangeProgressOutput
    #   resp.data.change_progress_status #=> Types::ChangeProgressStatusDetails
    #   resp.data.change_progress_status.change_id #=> String
    #   resp.data.change_progress_status.start_time #=> Time
    #   resp.data.change_progress_status.status #=> String, one of ["PENDING", "PROCESSING", "COMPLETED", "FAILED"]
    #   resp.data.change_progress_status.pending_properties #=> Array<String>
    #   resp.data.change_progress_status.pending_properties[0] #=> String
    #   resp.data.change_progress_status.completed_properties #=> Array<String>
    #   resp.data.change_progress_status.total_number_of_stages #=> Integer
    #   resp.data.change_progress_status.change_progress_stages #=> Array<ChangeProgressStage>
    #   resp.data.change_progress_status.change_progress_stages[0] #=> Types::ChangeProgressStage
    #   resp.data.change_progress_status.change_progress_stages[0].name #=> String
    #   resp.data.change_progress_status.change_progress_stages[0].status #=> String
    #   resp.data.change_progress_status.change_progress_stages[0].description #=> String
    #   resp.data.change_progress_status.change_progress_stages[0].last_updated #=> Time
    #
    def describe_domain_change_progress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainChangeProgressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainChangeProgressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomainChangeProgress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDomainChangeProgress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomainChangeProgress,
        stubs: @stubs,
        params_class: Params::DescribeDomainChangeProgressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain_change_progress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides cluster configuration information about the specified domain, such as the state, creation
    #       date, update version, and update date for cluster options.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainConfigInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain you want to get information about.</p>
    #
    # @return [Types::DescribeDomainConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_config(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainConfigOutput
    #   resp.data.domain_config #=> Types::DomainConfig
    #   resp.data.domain_config.engine_version #=> Types::VersionStatus
    #   resp.data.domain_config.engine_version.options #=> String
    #   resp.data.domain_config.engine_version.status #=> Types::OptionStatus
    #   resp.data.domain_config.engine_version.status.creation_date #=> Time
    #   resp.data.domain_config.engine_version.status.update_date #=> Time
    #   resp.data.domain_config.engine_version.status.update_version #=> Integer
    #   resp.data.domain_config.engine_version.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active"]
    #   resp.data.domain_config.engine_version.status.pending_deletion #=> Boolean
    #   resp.data.domain_config.cluster_config #=> Types::ClusterConfigStatus
    #   resp.data.domain_config.cluster_config.options #=> Types::ClusterConfig
    #   resp.data.domain_config.cluster_config.options.instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_config.cluster_config.options.instance_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.options.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_config.cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.dedicated_master_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_config.cluster_config.options.dedicated_master_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.warm_enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.options.warm_type #=> String, one of ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #   resp.data.domain_config.cluster_config.options.warm_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_config.cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.status #=> Types::OptionStatus
    #   resp.data.domain_config.ebs_options #=> Types::EBSOptionsStatus
    #   resp.data.domain_config.ebs_options.options #=> Types::EBSOptions
    #   resp.data.domain_config.ebs_options.options.ebs_enabled #=> Boolean
    #   resp.data.domain_config.ebs_options.options.volume_type #=> String, one of ["standard", "gp2", "io1"]
    #   resp.data.domain_config.ebs_options.options.volume_size #=> Integer
    #   resp.data.domain_config.ebs_options.options.iops #=> Integer
    #   resp.data.domain_config.ebs_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.access_policies #=> Types::AccessPoliciesStatus
    #   resp.data.domain_config.access_policies.options #=> String
    #   resp.data.domain_config.access_policies.status #=> Types::OptionStatus
    #   resp.data.domain_config.snapshot_options #=> Types::SnapshotOptionsStatus
    #   resp.data.domain_config.snapshot_options.options #=> Types::SnapshotOptions
    #   resp.data.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
    #   resp.data.domain_config.snapshot_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.vpc_options #=> Types::VPCDerivedInfoStatus
    #   resp.data.domain_config.vpc_options.options #=> Types::VPCDerivedInfo
    #   resp.data.domain_config.vpc_options.options.vpc_id #=> String
    #   resp.data.domain_config.vpc_options.options.subnet_ids #=> Array<String>
    #   resp.data.domain_config.vpc_options.options.subnet_ids[0] #=> String
    #   resp.data.domain_config.vpc_options.options.availability_zones #=> Array<String>
    #   resp.data.domain_config.vpc_options.options.security_group_ids #=> Array<String>
    #   resp.data.domain_config.vpc_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.cognito_options #=> Types::CognitoOptionsStatus
    #   resp.data.domain_config.cognito_options.options #=> Types::CognitoOptions
    #   resp.data.domain_config.cognito_options.options.enabled #=> Boolean
    #   resp.data.domain_config.cognito_options.options.user_pool_id #=> String
    #   resp.data.domain_config.cognito_options.options.identity_pool_id #=> String
    #   resp.data.domain_config.cognito_options.options.role_arn #=> String
    #   resp.data.domain_config.cognito_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.encryption_at_rest_options #=> Types::EncryptionAtRestOptionsStatus
    #   resp.data.domain_config.encryption_at_rest_options.options #=> Types::EncryptionAtRestOptions
    #   resp.data.domain_config.encryption_at_rest_options.options.enabled #=> Boolean
    #   resp.data.domain_config.encryption_at_rest_options.options.kms_key_id #=> String
    #   resp.data.domain_config.encryption_at_rest_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.node_to_node_encryption_options #=> Types::NodeToNodeEncryptionOptionsStatus
    #   resp.data.domain_config.node_to_node_encryption_options.options #=> Types::NodeToNodeEncryptionOptions
    #   resp.data.domain_config.node_to_node_encryption_options.options.enabled #=> Boolean
    #   resp.data.domain_config.node_to_node_encryption_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.advanced_options #=> Types::AdvancedOptionsStatus
    #   resp.data.domain_config.advanced_options.options #=> Hash<String, String>
    #   resp.data.domain_config.advanced_options.options['key'] #=> String
    #   resp.data.domain_config.advanced_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.log_publishing_options #=> Types::LogPublishingOptionsStatus
    #   resp.data.domain_config.log_publishing_options.options #=> Hash<String, LogPublishingOption>
    #   resp.data.domain_config.log_publishing_options.options['key'] #=> Types::LogPublishingOption
    #   resp.data.domain_config.log_publishing_options.options['key'].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.domain_config.log_publishing_options.options['key'].enabled #=> Boolean
    #   resp.data.domain_config.log_publishing_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.domain_endpoint_options #=> Types::DomainEndpointOptionsStatus
    #   resp.data.domain_config.domain_endpoint_options.options #=> Types::DomainEndpointOptions
    #   resp.data.domain_config.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.data.domain_config.domain_endpoint_options.options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_config.domain_endpoint_options.options.custom_endpoint_enabled #=> Boolean
    #   resp.data.domain_config.domain_endpoint_options.options.custom_endpoint #=> String
    #   resp.data.domain_config.domain_endpoint_options.options.custom_endpoint_certificate_arn #=> String
    #   resp.data.domain_config.domain_endpoint_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.advanced_security_options #=> Types::AdvancedSecurityOptionsStatus
    #   resp.data.domain_config.advanced_security_options.options #=> Types::AdvancedSecurityOptions
    #   resp.data.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.options.saml_options #=> Types::SAMLOptionsOutput
    #   resp.data.domain_config.advanced_security_options.options.saml_options.enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.options.saml_options.idp #=> Types::SAMLIdp
    #   resp.data.domain_config.advanced_security_options.options.saml_options.idp.metadata_content #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.idp.entity_id #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.subject_key #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.roles_key #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.session_timeout_minutes #=> Integer
    #   resp.data.domain_config.advanced_security_options.options.anonymous_auth_disable_date #=> Time
    #   resp.data.domain_config.advanced_security_options.options.anonymous_auth_enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.auto_tune_options #=> Types::AutoTuneOptionsStatus
    #   resp.data.domain_config.auto_tune_options.options #=> Types::AutoTuneOptions
    #   resp.data.domain_config.auto_tune_options.options.desired_state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.domain_config.auto_tune_options.options.rollback_on_disable #=> String, one of ["NO_ROLLBACK", "DEFAULT_ROLLBACK"]
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules #=> Array<AutoTuneMaintenanceSchedule>
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0] #=> Types::AutoTuneMaintenanceSchedule
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].start_at #=> Time
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].duration #=> Types::Duration
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.value #=> Integer
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.unit #=> String, one of ["HOURS"]
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].cron_expression_for_recurrence #=> String
    #   resp.data.domain_config.auto_tune_options.status #=> Types::AutoTuneStatus
    #   resp.data.domain_config.auto_tune_options.status.creation_date #=> Time
    #   resp.data.domain_config.auto_tune_options.status.update_date #=> Time
    #   resp.data.domain_config.auto_tune_options.status.update_version #=> Integer
    #   resp.data.domain_config.auto_tune_options.status.state #=> String, one of ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #   resp.data.domain_config.auto_tune_options.status.error_message #=> String
    #   resp.data.domain_config.auto_tune_options.status.pending_deletion #=> Boolean
    #   resp.data.domain_config.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.domain_config.change_progress_details.change_id #=> String
    #   resp.data.domain_config.change_progress_details.message #=> String
    #
    def describe_domain_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomainConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDomainConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomainConfig,
        stubs: @stubs,
        params_class: Params::DescribeDomainConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns domain configuration information about the specified domains, including the domain ID,
    #       domain endpoint, and domain ARN.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainsInput}.
    #
    # @option params [Array<String>] :domain_names
    #   <p>The domains for which you want information.</p>
    #
    # @return [Types::DescribeDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domains(
    #     domain_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainsOutput
    #   resp.data.domain_status_list #=> Array<DomainStatus>
    #   resp.data.domain_status_list[0] #=> Types::DomainStatus
    #   resp.data.domain_status_list[0].domain_id #=> String
    #   resp.data.domain_status_list[0].domain_name #=> String
    #   resp.data.domain_status_list[0].arn #=> String
    #   resp.data.domain_status_list[0].created #=> Boolean
    #   resp.data.domain_status_list[0].deleted #=> Boolean
    #   resp.data.domain_status_list[0].endpoint #=> String
    #   resp.data.domain_status_list[0].endpoints #=> Hash<String, String>
    #   resp.data.domain_status_list[0].endpoints['key'] #=> String
    #   resp.data.domain_status_list[0].processing #=> Boolean
    #   resp.data.domain_status_list[0].upgrade_processing #=> Boolean
    #   resp.data.domain_status_list[0].engine_version #=> String
    #   resp.data.domain_status_list[0].cluster_config #=> Types::ClusterConfig
    #   resp.data.domain_status_list[0].cluster_config.instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status_list[0].cluster_config.instance_count #=> Integer
    #   resp.data.domain_status_list[0].cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status_list[0].cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status_list[0].cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status_list[0].cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status_list[0].cluster_config.dedicated_master_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_status_list[0].cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status_list[0].cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status_list[0].cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #   resp.data.domain_status_list[0].cluster_config.warm_count #=> Integer
    #   resp.data.domain_status_list[0].cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status_list[0].cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_status_list[0].ebs_options #=> Types::EBSOptions
    #   resp.data.domain_status_list[0].ebs_options.ebs_enabled #=> Boolean
    #   resp.data.domain_status_list[0].ebs_options.volume_type #=> String, one of ["standard", "gp2", "io1"]
    #   resp.data.domain_status_list[0].ebs_options.volume_size #=> Integer
    #   resp.data.domain_status_list[0].ebs_options.iops #=> Integer
    #   resp.data.domain_status_list[0].access_policies #=> String
    #   resp.data.domain_status_list[0].snapshot_options #=> Types::SnapshotOptions
    #   resp.data.domain_status_list[0].snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.data.domain_status_list[0].vpc_options #=> Types::VPCDerivedInfo
    #   resp.data.domain_status_list[0].vpc_options.vpc_id #=> String
    #   resp.data.domain_status_list[0].vpc_options.subnet_ids #=> Array<String>
    #   resp.data.domain_status_list[0].vpc_options.subnet_ids[0] #=> String
    #   resp.data.domain_status_list[0].vpc_options.availability_zones #=> Array<String>
    #   resp.data.domain_status_list[0].vpc_options.security_group_ids #=> Array<String>
    #   resp.data.domain_status_list[0].cognito_options #=> Types::CognitoOptions
    #   resp.data.domain_status_list[0].cognito_options.enabled #=> Boolean
    #   resp.data.domain_status_list[0].cognito_options.user_pool_id #=> String
    #   resp.data.domain_status_list[0].cognito_options.identity_pool_id #=> String
    #   resp.data.domain_status_list[0].cognito_options.role_arn #=> String
    #   resp.data.domain_status_list[0].encryption_at_rest_options #=> Types::EncryptionAtRestOptions
    #   resp.data.domain_status_list[0].encryption_at_rest_options.enabled #=> Boolean
    #   resp.data.domain_status_list[0].encryption_at_rest_options.kms_key_id #=> String
    #   resp.data.domain_status_list[0].node_to_node_encryption_options #=> Types::NodeToNodeEncryptionOptions
    #   resp.data.domain_status_list[0].node_to_node_encryption_options.enabled #=> Boolean
    #   resp.data.domain_status_list[0].advanced_options #=> Hash<String, String>
    #   resp.data.domain_status_list[0].advanced_options['key'] #=> String
    #   resp.data.domain_status_list[0].log_publishing_options #=> Hash<String, LogPublishingOption>
    #   resp.data.domain_status_list[0].log_publishing_options['key'] #=> Types::LogPublishingOption
    #   resp.data.domain_status_list[0].log_publishing_options['key'].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.domain_status_list[0].log_publishing_options['key'].enabled #=> Boolean
    #   resp.data.domain_status_list[0].service_software_options #=> Types::ServiceSoftwareOptions
    #   resp.data.domain_status_list[0].service_software_options.current_version #=> String
    #   resp.data.domain_status_list[0].service_software_options.new_version #=> String
    #   resp.data.domain_status_list[0].service_software_options.update_available #=> Boolean
    #   resp.data.domain_status_list[0].service_software_options.cancellable #=> Boolean
    #   resp.data.domain_status_list[0].service_software_options.update_status #=> String, one of ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #   resp.data.domain_status_list[0].service_software_options.description #=> String
    #   resp.data.domain_status_list[0].service_software_options.automated_update_date #=> Time
    #   resp.data.domain_status_list[0].service_software_options.optional_deployment #=> Boolean
    #   resp.data.domain_status_list[0].domain_endpoint_options #=> Types::DomainEndpointOptions
    #   resp.data.domain_status_list[0].domain_endpoint_options.enforce_https #=> Boolean
    #   resp.data.domain_status_list[0].domain_endpoint_options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_status_list[0].domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.data.domain_status_list[0].domain_endpoint_options.custom_endpoint #=> String
    #   resp.data.domain_status_list[0].domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.data.domain_status_list[0].advanced_security_options #=> Types::AdvancedSecurityOptions
    #   resp.data.domain_status_list[0].advanced_security_options.enabled #=> Boolean
    #   resp.data.domain_status_list[0].advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options #=> Types::SAMLOptionsOutput
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.idp #=> Types::SAMLIdp
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.subject_key #=> String
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.roles_key #=> String
    #   resp.data.domain_status_list[0].advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.data.domain_status_list[0].advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.data.domain_status_list[0].advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.data.domain_status_list[0].auto_tune_options #=> Types::AutoTuneOptionsOutput
    #   resp.data.domain_status_list[0].auto_tune_options.state #=> String, one of ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #   resp.data.domain_status_list[0].auto_tune_options.error_message #=> String
    #   resp.data.domain_status_list[0].change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.domain_status_list[0].change_progress_details.change_id #=> String
    #   resp.data.domain_status_list[0].change_progress_details.message #=> String
    #
    def describe_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomains
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException]),
        data_parser: Parsers::DescribeDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomains,
        stubs: @stubs,
        params_class: Params::DescribeDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the inbound cross-cluster connections for a remote domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInboundConnectionsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>
    #         A list of filters used to match properties for inbound cross-cluster connections.
    #         Available
    #         <code>
    #           <a>Filter</a>
    #         </code>
    #         values are:
    #         <ul>
    #           <li>connection-id</li>
    #           <li>local-domain-info.domain-name</li>
    #           <li>local-domain-info.owner-id</li>
    #           <li>local-domain-info.region</li>
    #           <li>remote-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>If more results are available and NextToken is present, make the next request to the same API with the received
    #         NextToken to paginate the remaining results.</p>
    #
    # @return [Types::DescribeInboundConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inbound_connections(
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInboundConnectionsOutput
    #   resp.data.connections #=> Array<InboundConnection>
    #   resp.data.connections[0] #=> Types::InboundConnection
    #   resp.data.connections[0].local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connections[0].local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.connections[0].local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.connections[0].local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.connections[0].local_domain_info.aws_domain_information.region #=> String
    #   resp.data.connections[0].remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_status #=> Types::InboundConnectionStatus
    #   resp.data.connections[0].connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connections[0].connection_status.message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_inbound_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInboundConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInboundConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInboundConnections
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPaginationTokenException, Errors::DisabledOperationException]),
        data_parser: Parsers::DescribeInboundConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInboundConnections,
        stubs: @stubs,
        params_class: Params::DescribeInboundConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_inbound_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Describe the limits for a given instance type and OpenSearch or Elasticsearch version.
    #       When modifying an existing domain, specify the
    #       <code>
    #         <a>DomainName</a>
    #       </code>
    #       to see which limits you can modify.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceTypeLimitsInput}.
    #
    # @option params [String] :domain_name
    #   <p>
    #         The name of the domain you want to modify. Only include this value if you're
    #         querying OpenSearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         for an existing domain.
    #       </p>
    #
    # @option params [String] :instance_type
    #   <p>
    #         The instance type for an OpenSearch cluster for which OpenSearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #
    # @option params [String] :engine_version
    #   <p>
    #         Version of OpenSearch for which
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #
    # @return [Types::DescribeInstanceTypeLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_type_limits(
    #     domain_name: 'DomainName',
    #     instance_type: 'm3.medium.search', # required - accepts ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #     engine_version: 'EngineVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceTypeLimitsOutput
    #   resp.data.limits_by_role #=> Hash<String, Limits>
    #   resp.data.limits_by_role['key'] #=> Types::Limits
    #   resp.data.limits_by_role['key'].storage_types #=> Array<StorageType>
    #   resp.data.limits_by_role['key'].storage_types[0] #=> Types::StorageType
    #   resp.data.limits_by_role['key'].storage_types[0].storage_type_name #=> String
    #   resp.data.limits_by_role['key'].storage_types[0].storage_sub_type_name #=> String
    #   resp.data.limits_by_role['key'].storage_types[0].storage_type_limits #=> Array<StorageTypeLimit>
    #   resp.data.limits_by_role['key'].storage_types[0].storage_type_limits[0] #=> Types::StorageTypeLimit
    #   resp.data.limits_by_role['key'].storage_types[0].storage_type_limits[0].limit_name #=> String
    #   resp.data.limits_by_role['key'].storage_types[0].storage_type_limits[0].limit_values #=> Array<String>
    #   resp.data.limits_by_role['key'].storage_types[0].storage_type_limits[0].limit_values[0] #=> String
    #   resp.data.limits_by_role['key'].instance_limits #=> Types::InstanceLimits
    #   resp.data.limits_by_role['key'].instance_limits.instance_count_limits #=> Types::InstanceCountLimits
    #   resp.data.limits_by_role['key'].instance_limits.instance_count_limits.minimum_instance_count #=> Integer
    #   resp.data.limits_by_role['key'].instance_limits.instance_count_limits.maximum_instance_count #=> Integer
    #   resp.data.limits_by_role['key'].additional_limits #=> Array<AdditionalLimit>
    #   resp.data.limits_by_role['key'].additional_limits[0] #=> Types::AdditionalLimit
    #   resp.data.limits_by_role['key'].additional_limits[0].limit_name #=> String
    #   resp.data.limits_by_role['key'].additional_limits[0].limit_values #=> Array<String>
    #
    def describe_instance_type_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceTypeLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceTypeLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceTypeLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidTypeException, Errors::LimitExceededException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeInstanceTypeLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceTypeLimits,
        stubs: @stubs,
        params_class: Params::DescribeInstanceTypeLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_type_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the outbound cross-cluster connections for a local domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOutboundConnectionsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>
    #         A list of filters used to match properties for outbound cross-cluster connections.
    #         Available
    #         <code>
    #           <a>Filter</a>
    #         </code>
    #         names for this operation are:
    #         <ul>
    #           <li>connection-id</li>
    #           <li>remote-domain-info.domain-name</li>
    #           <li>remote-domain-info.owner-id</li>
    #           <li>remote-domain-info.region</li>
    #           <li>local-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken is sent in case the earlier API call results contain the NextToken parameter. Used for pagination.</p>
    #
    # @return [Types::DescribeOutboundConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_outbound_connections(
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOutboundConnectionsOutput
    #   resp.data.connections #=> Array<OutboundConnection>
    #   resp.data.connections[0] #=> Types::OutboundConnection
    #   resp.data.connections[0].local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connections[0].local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.connections[0].local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.connections[0].local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.connections[0].local_domain_info.aws_domain_information.region #=> String
    #   resp.data.connections[0].remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_alias #=> String
    #   resp.data.connections[0].connection_status #=> Types::OutboundConnectionStatus
    #   resp.data.connections[0].connection_status.status_code #=> String, one of ["VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connections[0].connection_status.message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_outbound_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOutboundConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOutboundConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOutboundConnections
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPaginationTokenException, Errors::DisabledOperationException]),
        data_parser: Parsers::DescribeOutboundConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOutboundConnections,
        stubs: @stubs,
        params_class: Params::DescribeOutboundConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_outbound_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes all packages available to Amazon OpenSearch Service domains. Includes options for filtering, limiting the number of results,
    #       and pagination.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribePackagesInput}.
    #
    # @option params [Array<DescribePackagesFilter>] :filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
    #         returns results for the next page.
    #       </p>
    #
    # @return [Types::DescribePackagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packages(
    #     filters: [
    #       {
    #         name: 'PackageID', # accepts ["PackageID", "PackageName", "PackageStatus"]
    #         value: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackagesOutput
    #   resp.data.package_details_list #=> Array<PackageDetails>
    #   resp.data.package_details_list[0] #=> Types::PackageDetails
    #   resp.data.package_details_list[0].package_id #=> String
    #   resp.data.package_details_list[0].package_name #=> String
    #   resp.data.package_details_list[0].package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.package_details_list[0].package_description #=> String
    #   resp.data.package_details_list[0].package_status #=> String, one of ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.package_details_list[0].created_at #=> Time
    #   resp.data.package_details_list[0].last_updated_at #=> Time
    #   resp.data.package_details_list[0].available_package_version #=> String
    #   resp.data.package_details_list[0].error_details #=> Types::ErrorDetails
    #   resp.data.package_details_list[0].error_details.error_type #=> String
    #   resp.data.package_details_list[0].error_details.error_message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_packages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackages
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePackages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackages,
        stubs: @stubs,
        params_class: Params::DescribePackagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_packages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists available reserved OpenSearch instance offerings.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedInstanceOfferingsInput}.
    #
    # @option params [String] :reserved_instance_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the
    #         specified reservation identifier.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.
    #       </p>
    #
    # @return [Types::DescribeReservedInstanceOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instance_offerings(
    #     reserved_instance_offering_id: 'ReservedInstanceOfferingId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedInstanceOfferingsOutput
    #   resp.data.next_token #=> String
    #   resp.data.reserved_instance_offerings #=> Array<ReservedInstanceOffering>
    #   resp.data.reserved_instance_offerings[0] #=> Types::ReservedInstanceOffering
    #   resp.data.reserved_instance_offerings[0].reserved_instance_offering_id #=> String
    #   resp.data.reserved_instance_offerings[0].instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.reserved_instance_offerings[0].duration #=> Integer
    #   resp.data.reserved_instance_offerings[0].fixed_price #=> Float
    #   resp.data.reserved_instance_offerings[0].usage_price #=> Float
    #   resp.data.reserved_instance_offerings[0].currency_code #=> String
    #   resp.data.reserved_instance_offerings[0].payment_option #=> String, one of ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"]
    #   resp.data.reserved_instance_offerings[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_instance_offerings[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_instance_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_instance_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    def describe_reserved_instance_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedInstanceOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedInstanceOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedInstanceOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::DescribeReservedInstanceOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedInstanceOfferings,
        stubs: @stubs,
        params_class: Params::DescribeReservedInstanceOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_instance_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about reserved OpenSearch instances for this account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedInstancesInput}.
    #
    # @option params [String] :reserved_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the
    #         specified reserved OpenSearch instance ID.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.
    #       </p>
    #
    # @return [Types::DescribeReservedInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances(
    #     reserved_instance_id: 'ReservedInstanceId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedInstancesOutput
    #   resp.data.next_token #=> String
    #   resp.data.reserved_instances #=> Array<ReservedInstance>
    #   resp.data.reserved_instances[0] #=> Types::ReservedInstance
    #   resp.data.reserved_instances[0].reservation_name #=> String
    #   resp.data.reserved_instances[0].reserved_instance_id #=> String
    #   resp.data.reserved_instances[0].billing_subscription_id #=> Integer
    #   resp.data.reserved_instances[0].reserved_instance_offering_id #=> String
    #   resp.data.reserved_instances[0].instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.reserved_instances[0].start_time #=> Time
    #   resp.data.reserved_instances[0].duration #=> Integer
    #   resp.data.reserved_instances[0].fixed_price #=> Float
    #   resp.data.reserved_instances[0].usage_price #=> Float
    #   resp.data.reserved_instances[0].currency_code #=> String
    #   resp.data.reserved_instances[0].instance_count #=> Integer
    #   resp.data.reserved_instances[0].state #=> String
    #   resp.data.reserved_instances[0].payment_option #=> String, one of ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"]
    #   resp.data.reserved_instances[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_instances[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_instances[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_instances[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    def describe_reserved_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::DescribeReservedInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedInstances,
        stubs: @stubs,
        params_class: Params::DescribeReservedInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Dissociates a package from the Amazon OpenSearch Service domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DissociatePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The internal ID of the package to associate with a domain. Use <code>DescribePackages</code> to find
    #         this value.
    #       </p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain to associate the package with.</p>
    #
    # @return [Types::DissociatePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dissociate_package(
    #     package_id: 'PackageID', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DissociatePackageOutput
    #   resp.data.domain_package_details #=> Types::DomainPackageDetails
    #   resp.data.domain_package_details.package_id #=> String
    #   resp.data.domain_package_details.package_name #=> String
    #   resp.data.domain_package_details.package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.domain_package_details.last_updated #=> Time
    #   resp.data.domain_package_details.domain_name #=> String
    #   resp.data.domain_package_details.domain_package_status #=> String, one of ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"]
    #   resp.data.domain_package_details.package_version #=> String
    #   resp.data.domain_package_details.reference_path #=> String
    #   resp.data.domain_package_details.error_details #=> Types::ErrorDetails
    #   resp.data.domain_package_details.error_details.error_type #=> String
    #   resp.data.domain_package_details.error_details.error_message #=> String
    #
    def dissociate_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DissociatePackageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DissociatePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DissociatePackage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ConflictException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DissociatePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DissociatePackage,
        stubs: @stubs,
        params_class: Params::DissociatePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :dissociate_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns a list of upgrade-compatible versions of OpenSearch/Elasticsearch.
    #       You can optionally pass a
    #       <code>
    #         <a>DomainName</a>
    #       </code>
    #       to get all upgrade-compatible versions of OpenSearch/Elasticsearch for that specific domain.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetCompatibleVersionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an domain. Domain names are unique across the domains owned by an account within an AWS
    #         region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
    #         and - (hyphen).
    #       </p>
    #
    # @return [Types::GetCompatibleVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_versions(
    #     domain_name: 'DomainName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCompatibleVersionsOutput
    #   resp.data.compatible_versions #=> Array<CompatibleVersionsMap>
    #   resp.data.compatible_versions[0] #=> Types::CompatibleVersionsMap
    #   resp.data.compatible_versions[0].source_version #=> String
    #   resp.data.compatible_versions[0].target_versions #=> Array<String>
    #   resp.data.compatible_versions[0].target_versions[0] #=> String
    #
    def get_compatible_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCompatibleVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCompatibleVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCompatibleVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::GetCompatibleVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCompatibleVersions,
        stubs: @stubs,
        params_class: Params::GetCompatibleVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compatible_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of package versions, along with their creation time and commit message.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPackageVersionHistoryInput}.
    #
    # @option params [String] :package_id
    #   <p>Returns an audit history of package versions.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of package versions.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
    #         returns results for the next page.
    #       </p>
    #
    # @return [Types::GetPackageVersionHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_history(
    #     package_id: 'PackageID', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPackageVersionHistoryOutput
    #   resp.data.package_id #=> String
    #   resp.data.package_version_history_list #=> Array<PackageVersionHistory>
    #   resp.data.package_version_history_list[0] #=> Types::PackageVersionHistory
    #   resp.data.package_version_history_list[0].package_version #=> String
    #   resp.data.package_version_history_list[0].commit_message #=> String
    #   resp.data.package_version_history_list[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def get_package_version_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPackageVersionHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPackageVersionHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPackageVersionHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetPackageVersionHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPackageVersionHistory,
        stubs: @stubs,
        params_class: Params::GetPackageVersionHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_package_version_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the complete history of the last 10 upgrades performed on the domain.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUpgradeHistoryInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an domain. Domain names are unique across the domains owned by an account within an AWS
    #         region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
    #         and - (hyphen).
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accept the NextToken input to return the next page of results and provide
    #         a NextToken output in the response, which you can use to retrieve more results.
    #       </p>
    #
    # @return [Types::GetUpgradeHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upgrade_history(
    #     domain_name: 'DomainName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUpgradeHistoryOutput
    #   resp.data.upgrade_histories #=> Array<UpgradeHistory>
    #   resp.data.upgrade_histories[0] #=> Types::UpgradeHistory
    #   resp.data.upgrade_histories[0].upgrade_name #=> String
    #   resp.data.upgrade_histories[0].start_timestamp #=> Time
    #   resp.data.upgrade_histories[0].upgrade_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"]
    #   resp.data.upgrade_histories[0].steps_list #=> Array<UpgradeStepItem>
    #   resp.data.upgrade_histories[0].steps_list[0] #=> Types::UpgradeStepItem
    #   resp.data.upgrade_histories[0].steps_list[0].upgrade_step #=> String, one of ["PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"]
    #   resp.data.upgrade_histories[0].steps_list[0].upgrade_step_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"]
    #   resp.data.upgrade_histories[0].steps_list[0].issues #=> Array<String>
    #   resp.data.upgrade_histories[0].steps_list[0].issues[0] #=> String
    #   resp.data.upgrade_histories[0].steps_list[0].progress_percent #=> Float
    #   resp.data.next_token #=> String
    #
    def get_upgrade_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUpgradeHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUpgradeHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUpgradeHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::GetUpgradeHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUpgradeHistory,
        stubs: @stubs,
        params_class: Params::GetUpgradeHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_upgrade_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the latest status of the last upgrade or upgrade eligibility check performed on the domain.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetUpgradeStatusInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an domain. Domain names are unique across the domains owned by an account within an AWS
    #         region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
    #         and - (hyphen).
    #       </p>
    #
    # @return [Types::GetUpgradeStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upgrade_status(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUpgradeStatusOutput
    #   resp.data.upgrade_step #=> String, one of ["PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"]
    #   resp.data.step_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"]
    #   resp.data.upgrade_name #=> String
    #
    def get_upgrade_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUpgradeStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUpgradeStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUpgradeStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::GetUpgradeStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUpgradeStatus,
        stubs: @stubs,
        params_class: Params::GetUpgradeStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_upgrade_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the names of all domains owned by the current user's account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainNamesInput}.
    #
    # @option params [String] :engine_type
    #   <p> Optional parameter to filter the output by domain engine type. Acceptable values are 'Elasticsearch' and 'OpenSearch'. </p>
    #
    # @return [Types::ListDomainNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_names(
    #     engine_type: 'OpenSearch' # accepts ["OpenSearch", "Elasticsearch"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainNamesOutput
    #   resp.data.domain_names #=> Array<DomainInfo>
    #   resp.data.domain_names[0] #=> Types::DomainInfo
    #   resp.data.domain_names[0].domain_name #=> String
    #   resp.data.domain_names[0].engine_type #=> String, one of ["OpenSearch", "Elasticsearch"]
    #
    def list_domain_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainNamesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainNames
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::BaseException]),
        data_parser: Parsers::ListDomainNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainNames,
        stubs: @stubs,
        params_class: Params::ListDomainNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domain_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Amazon OpenSearch Service domains associated with the package.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsForPackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The package for which to list associated domains.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits the results to a maximum number of domains.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
    #         returns results for the next page.
    #       </p>
    #
    # @return [Types::ListDomainsForPackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains_for_package(
    #     package_id: 'PackageID', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsForPackageOutput
    #   resp.data.domain_package_details_list #=> Array<DomainPackageDetails>
    #   resp.data.domain_package_details_list[0] #=> Types::DomainPackageDetails
    #   resp.data.domain_package_details_list[0].package_id #=> String
    #   resp.data.domain_package_details_list[0].package_name #=> String
    #   resp.data.domain_package_details_list[0].package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.domain_package_details_list[0].last_updated #=> Time
    #   resp.data.domain_package_details_list[0].domain_name #=> String
    #   resp.data.domain_package_details_list[0].domain_package_status #=> String, one of ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"]
    #   resp.data.domain_package_details_list[0].package_version #=> String
    #   resp.data.domain_package_details_list[0].reference_path #=> String
    #   resp.data.domain_package_details_list[0].error_details #=> Types::ErrorDetails
    #   resp.data.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.data.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.data.next_token #=> String
    #
    def list_domains_for_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainsForPackageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainsForPackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainsForPackage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDomainsForPackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainsForPackage,
        stubs: @stubs,
        params_class: Params::ListDomainsForPackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domains_for_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::ListInstanceTypeDetailsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an domain. Domain names are unique across the domains owned by an account within an AWS
    #         region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
    #         and - (hyphen).
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accept the NextToken input to return the next page of results and provide
    #         a NextToken output in the response, which you can use to retrieve more results.
    #       </p>
    #
    # @return [Types::ListInstanceTypeDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_type_details(
    #     engine_version: 'EngineVersion', # required
    #     domain_name: 'DomainName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceTypeDetailsOutput
    #   resp.data.instance_type_details #=> Array<InstanceTypeDetails>
    #   resp.data.instance_type_details[0] #=> Types::InstanceTypeDetails
    #   resp.data.instance_type_details[0].instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.instance_type_details[0].encryption_enabled #=> Boolean
    #   resp.data.instance_type_details[0].cognito_enabled #=> Boolean
    #   resp.data.instance_type_details[0].app_logs_enabled #=> Boolean
    #   resp.data.instance_type_details[0].advanced_security_enabled #=> Boolean
    #   resp.data.instance_type_details[0].warm_enabled #=> Boolean
    #   resp.data.instance_type_details[0].instance_role #=> Array<String>
    #   resp.data.instance_type_details[0].instance_role[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_instance_type_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceTypeDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceTypeDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceTypeDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListInstanceTypeDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceTypeDetails,
        stubs: @stubs,
        params_class: Params::ListInstanceTypeDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_type_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all packages associated with the Amazon OpenSearch Service domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPackagesForDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to list associated packages.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
    #         returns results for the next page.
    #       </p>
    #
    # @return [Types::ListPackagesForDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages_for_domain(
    #     domain_name: 'DomainName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackagesForDomainOutput
    #   resp.data.domain_package_details_list #=> Array<DomainPackageDetails>
    #   resp.data.domain_package_details_list[0] #=> Types::DomainPackageDetails
    #   resp.data.domain_package_details_list[0].package_id #=> String
    #   resp.data.domain_package_details_list[0].package_name #=> String
    #   resp.data.domain_package_details_list[0].package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.domain_package_details_list[0].last_updated #=> Time
    #   resp.data.domain_package_details_list[0].domain_name #=> String
    #   resp.data.domain_package_details_list[0].domain_package_status #=> String, one of ["ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"]
    #   resp.data.domain_package_details_list[0].package_version #=> String
    #   resp.data.domain_package_details_list[0].reference_path #=> String
    #   resp.data.domain_package_details_list[0].error_details #=> Types::ErrorDetails
    #   resp.data.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.data.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.data.next_token #=> String
    #
    def list_packages_for_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackagesForDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackagesForDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackagesForDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackagesForDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackagesForDomain,
        stubs: @stubs,
        params_class: Params::ListPackagesForDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_packages_for_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all tags for the given domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :arn
    #   <p>Specify the <code>ARN</code> of the domain that the tags you want
    #         to view are attached to.
    #       </p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     arn: 'ARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
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

    # <p>List all supported versions of OpenSearch and Elasticsearch.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVersionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #         Value must be greater than 10 or it won't be honored.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accept the NextToken input to return the next page of results and provide
    #         a NextToken output in the response, which you can use to retrieve more results.
    #       </p>
    #
    # @return [Types::ListVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVersionsOutput
    #   resp.data.versions #=> Array<String>
    #   resp.data.versions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVersions,
        stubs: @stubs,
        params_class: Params::ListVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to purchase reserved OpenSearch instances.</p>
    #
    # @param [Hash] params
    #   See {Types::PurchaseReservedInstanceOfferingInput}.
    #
    # @option params [String] :reserved_instance_offering_id
    #   <p>The ID of the reserved OpenSearch instance offering to purchase.</p>
    #
    # @option params [String] :reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    #
    # @option params [Integer] :instance_count
    #   <p>The number of OpenSearch instances to reserve.</p>
    #
    # @return [Types::PurchaseReservedInstanceOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_instance_offering(
    #     reserved_instance_offering_id: 'ReservedInstanceOfferingId', # required
    #     reservation_name: 'ReservationName', # required
    #     instance_count: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PurchaseReservedInstanceOfferingOutput
    #   resp.data.reserved_instance_id #=> String
    #   resp.data.reservation_name #=> String
    #
    def purchase_reserved_instance_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseReservedInstanceOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseReservedInstanceOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseReservedInstanceOffering
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::PurchaseReservedInstanceOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseReservedInstanceOffering,
        stubs: @stubs,
        params_class: Params::PurchaseReservedInstanceOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_reserved_instance_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the remote domain owner to reject an inbound cross-cluster connection request.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectInboundConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the inbound connection to reject.</p>
    #
    # @return [Types::RejectInboundConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_inbound_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectInboundConnectionOutput
    #   resp.data.connection #=> Types::InboundConnection
    #   resp.data.connection.local_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.local_domain_info.aws_domain_information #=> Types::AWSDomainInformation
    #   resp.data.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.data.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.data.connection.remote_domain_info #=> Types::DomainInformationContainer
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_status #=> Types::InboundConnectionStatus
    #   resp.data.connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connection.connection_status.message #=> String
    #
    def reject_inbound_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectInboundConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectInboundConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectInboundConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::RejectInboundConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectInboundConnection,
        stubs: @stubs,
        params_class: Params::RejectInboundConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_inbound_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified set of tags from the given domain.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [String] :arn
    #   <p>The <code>ARN</code> of the domain from which you want to delete the specified tags.
    #       </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The <code>TagKey</code> list you want to remove from the domain.
    #       </p>
    #
    # @return [Types::RemoveTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags(
    #     arn: 'ARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsOutput
    #
    def remove_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException]),
        data_parser: Parsers::RemoveTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTags,
        stubs: @stubs,
        params_class: Params::RemoveTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Schedules a service software update for an Amazon OpenSearch Service domain.</p>
    #
    # @param [Hash] params
    #   See {Types::StartServiceSoftwareUpdateInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    #
    # @return [Types::StartServiceSoftwareUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_service_software_update(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartServiceSoftwareUpdateOutput
    #   resp.data.service_software_options #=> Types::ServiceSoftwareOptions
    #   resp.data.service_software_options.current_version #=> String
    #   resp.data.service_software_options.new_version #=> String
    #   resp.data.service_software_options.update_available #=> Boolean
    #   resp.data.service_software_options.cancellable #=> Boolean
    #   resp.data.service_software_options.update_status #=> String, one of ["PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"]
    #   resp.data.service_software_options.description #=> String
    #   resp.data.service_software_options.automated_update_date #=> Time
    #   resp.data.service_software_options.optional_deployment #=> Boolean
    #
    def start_service_software_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartServiceSoftwareUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartServiceSoftwareUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartServiceSoftwareUpdate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartServiceSoftwareUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartServiceSoftwareUpdate,
        stubs: @stubs,
        params_class: Params::StartServiceSoftwareUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_service_software_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the cluster configuration of the specified domain, such as setting the instance type
    #       and the number of instances.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainConfigInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you're updating.</p>
    #
    # @option params [ClusterConfig] :cluster_config
    #   <p>The type and number of instances to instantiate for the domain cluster.</p>
    #
    # @option params [EBSOptions] :ebs_options
    #   <p>Specify the type and size of the EBS volume to use.</p>
    #
    # @option params [SnapshotOptions] :snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours.
    #       </p>
    #
    # @option params [VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for the VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html" target="_blank">Launching your Amazon OpenSearch Service domains using a VPC
    #       </a>.
    #       </p>
    #
    # @option params [CognitoOptions] :cognito_options
    #   <p>Options to specify the Cognito user and identity pools for OpenSearch Dashboards authentication. For more information, see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html" target="_blank">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    #       </p>
    #
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Modifies the advanced option to allow references to indices in an HTTP request body. Must be <code>false</code> when
    #         configuring access to individual sub-resources. By default, the value is <code>true</code>.
    #         See <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options" target="_blank">Advanced options
    #         </a> for more information.
    #       </p>
    #
    # @option params [String] :access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #
    # @option params [Hash<String, LogPublishingOption>] :log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type
    #         of OpenSearch log.
    #       </p>
    #
    # @option params [EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Specifies encryption of data at rest options.</p>
    #
    # @option params [DomainEndpointOptions] :domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #
    # @option params [NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Specifies node-to-node encryption options.</p>
    #
    # @option params [AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #
    # @option params [AutoTuneOptions] :auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>This flag, when set to True, specifies whether the <code>UpdateDomain</code> request should return the results of validation checks (DryRunResults) without actually applying the change.</p>
    #
    # @return [Types::UpdateDomainConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_config(
    #     domain_name: 'DomainName', # required
    #     cluster_config: {
    #       instance_type: 'm3.medium.search', # accepts ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: 'm3.medium.search', # accepts ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: 'ultrawarm1.medium.search', # accepts ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false # required
    #       }
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: 'standard', # accepts ["standard", "gp2", "io1"]
    #       volume_size: 1,
    #       iops: 1
    #     },
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1
    #     },
    #     vpc_options: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: 'UserPoolId',
    #       identity_pool_id: 'IdentityPoolId',
    #       role_arn: 'RoleArn'
    #     },
    #     advanced_options: {
    #       'key' => 'value'
    #     },
    #     access_policies: 'AccessPolicies',
    #     log_publishing_options: {
    #       'key' => {
    #         cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #         enabled: false
    #       }
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: 'KmsKeyId'
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: 'Policy-Min-TLS-1-0-2019-07', # accepts ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: 'CustomEndpoint',
    #       custom_endpoint_certificate_arn: 'CustomEndpointCertificateArn'
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: 'MasterUserARN',
    #         master_user_name: 'MasterUserName',
    #         master_user_password: 'MasterUserPassword'
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: 'MetadataContent', # required
    #           entity_id: 'EntityId' # required
    #         },
    #         master_user_name: 'MasterUserName',
    #         master_backend_role: 'MasterBackendRole',
    #         subject_key: 'SubjectKey',
    #         roles_key: 'RolesKey',
    #         session_timeout_minutes: 1
    #       },
    #       anonymous_auth_enabled: false
    #     },
    #     auto_tune_options: {
    #       desired_state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       rollback_on_disable: 'NO_ROLLBACK', # accepts ["NO_ROLLBACK", "DEFAULT_ROLLBACK"]
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: 'HOURS' # accepts ["HOURS"]
    #           },
    #           cron_expression_for_recurrence: 'CronExpressionForRecurrence'
    #         }
    #       ]
    #     },
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainConfigOutput
    #   resp.data.domain_config #=> Types::DomainConfig
    #   resp.data.domain_config.engine_version #=> Types::VersionStatus
    #   resp.data.domain_config.engine_version.options #=> String
    #   resp.data.domain_config.engine_version.status #=> Types::OptionStatus
    #   resp.data.domain_config.engine_version.status.creation_date #=> Time
    #   resp.data.domain_config.engine_version.status.update_date #=> Time
    #   resp.data.domain_config.engine_version.status.update_version #=> Integer
    #   resp.data.domain_config.engine_version.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active"]
    #   resp.data.domain_config.engine_version.status.pending_deletion #=> Boolean
    #   resp.data.domain_config.cluster_config #=> Types::ClusterConfigStatus
    #   resp.data.domain_config.cluster_config.options #=> Types::ClusterConfig
    #   resp.data.domain_config.cluster_config.options.instance_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_config.cluster_config.options.instance_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.options.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_config.cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.dedicated_master_type #=> String, one of ["m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"]
    #   resp.data.domain_config.cluster_config.options.dedicated_master_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.warm_enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.options.warm_type #=> String, one of ["ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"]
    #   resp.data.domain_config.cluster_config.options.warm_count #=> Integer
    #   resp.data.domain_config.cluster_config.options.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_config.cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_config.cluster_config.status #=> Types::OptionStatus
    #   resp.data.domain_config.ebs_options #=> Types::EBSOptionsStatus
    #   resp.data.domain_config.ebs_options.options #=> Types::EBSOptions
    #   resp.data.domain_config.ebs_options.options.ebs_enabled #=> Boolean
    #   resp.data.domain_config.ebs_options.options.volume_type #=> String, one of ["standard", "gp2", "io1"]
    #   resp.data.domain_config.ebs_options.options.volume_size #=> Integer
    #   resp.data.domain_config.ebs_options.options.iops #=> Integer
    #   resp.data.domain_config.ebs_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.access_policies #=> Types::AccessPoliciesStatus
    #   resp.data.domain_config.access_policies.options #=> String
    #   resp.data.domain_config.access_policies.status #=> Types::OptionStatus
    #   resp.data.domain_config.snapshot_options #=> Types::SnapshotOptionsStatus
    #   resp.data.domain_config.snapshot_options.options #=> Types::SnapshotOptions
    #   resp.data.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
    #   resp.data.domain_config.snapshot_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.vpc_options #=> Types::VPCDerivedInfoStatus
    #   resp.data.domain_config.vpc_options.options #=> Types::VPCDerivedInfo
    #   resp.data.domain_config.vpc_options.options.vpc_id #=> String
    #   resp.data.domain_config.vpc_options.options.subnet_ids #=> Array<String>
    #   resp.data.domain_config.vpc_options.options.subnet_ids[0] #=> String
    #   resp.data.domain_config.vpc_options.options.availability_zones #=> Array<String>
    #   resp.data.domain_config.vpc_options.options.security_group_ids #=> Array<String>
    #   resp.data.domain_config.vpc_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.cognito_options #=> Types::CognitoOptionsStatus
    #   resp.data.domain_config.cognito_options.options #=> Types::CognitoOptions
    #   resp.data.domain_config.cognito_options.options.enabled #=> Boolean
    #   resp.data.domain_config.cognito_options.options.user_pool_id #=> String
    #   resp.data.domain_config.cognito_options.options.identity_pool_id #=> String
    #   resp.data.domain_config.cognito_options.options.role_arn #=> String
    #   resp.data.domain_config.cognito_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.encryption_at_rest_options #=> Types::EncryptionAtRestOptionsStatus
    #   resp.data.domain_config.encryption_at_rest_options.options #=> Types::EncryptionAtRestOptions
    #   resp.data.domain_config.encryption_at_rest_options.options.enabled #=> Boolean
    #   resp.data.domain_config.encryption_at_rest_options.options.kms_key_id #=> String
    #   resp.data.domain_config.encryption_at_rest_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.node_to_node_encryption_options #=> Types::NodeToNodeEncryptionOptionsStatus
    #   resp.data.domain_config.node_to_node_encryption_options.options #=> Types::NodeToNodeEncryptionOptions
    #   resp.data.domain_config.node_to_node_encryption_options.options.enabled #=> Boolean
    #   resp.data.domain_config.node_to_node_encryption_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.advanced_options #=> Types::AdvancedOptionsStatus
    #   resp.data.domain_config.advanced_options.options #=> Hash<String, String>
    #   resp.data.domain_config.advanced_options.options['key'] #=> String
    #   resp.data.domain_config.advanced_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.log_publishing_options #=> Types::LogPublishingOptionsStatus
    #   resp.data.domain_config.log_publishing_options.options #=> Hash<String, LogPublishingOption>
    #   resp.data.domain_config.log_publishing_options.options['key'] #=> Types::LogPublishingOption
    #   resp.data.domain_config.log_publishing_options.options['key'].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.domain_config.log_publishing_options.options['key'].enabled #=> Boolean
    #   resp.data.domain_config.log_publishing_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.domain_endpoint_options #=> Types::DomainEndpointOptionsStatus
    #   resp.data.domain_config.domain_endpoint_options.options #=> Types::DomainEndpointOptions
    #   resp.data.domain_config.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.data.domain_config.domain_endpoint_options.options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_config.domain_endpoint_options.options.custom_endpoint_enabled #=> Boolean
    #   resp.data.domain_config.domain_endpoint_options.options.custom_endpoint #=> String
    #   resp.data.domain_config.domain_endpoint_options.options.custom_endpoint_certificate_arn #=> String
    #   resp.data.domain_config.domain_endpoint_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.advanced_security_options #=> Types::AdvancedSecurityOptionsStatus
    #   resp.data.domain_config.advanced_security_options.options #=> Types::AdvancedSecurityOptions
    #   resp.data.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.options.saml_options #=> Types::SAMLOptionsOutput
    #   resp.data.domain_config.advanced_security_options.options.saml_options.enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.options.saml_options.idp #=> Types::SAMLIdp
    #   resp.data.domain_config.advanced_security_options.options.saml_options.idp.metadata_content #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.idp.entity_id #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.subject_key #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.roles_key #=> String
    #   resp.data.domain_config.advanced_security_options.options.saml_options.session_timeout_minutes #=> Integer
    #   resp.data.domain_config.advanced_security_options.options.anonymous_auth_disable_date #=> Time
    #   resp.data.domain_config.advanced_security_options.options.anonymous_auth_enabled #=> Boolean
    #   resp.data.domain_config.advanced_security_options.status #=> Types::OptionStatus
    #   resp.data.domain_config.auto_tune_options #=> Types::AutoTuneOptionsStatus
    #   resp.data.domain_config.auto_tune_options.options #=> Types::AutoTuneOptions
    #   resp.data.domain_config.auto_tune_options.options.desired_state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.domain_config.auto_tune_options.options.rollback_on_disable #=> String, one of ["NO_ROLLBACK", "DEFAULT_ROLLBACK"]
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules #=> Array<AutoTuneMaintenanceSchedule>
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0] #=> Types::AutoTuneMaintenanceSchedule
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].start_at #=> Time
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].duration #=> Types::Duration
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.value #=> Integer
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.unit #=> String, one of ["HOURS"]
    #   resp.data.domain_config.auto_tune_options.options.maintenance_schedules[0].cron_expression_for_recurrence #=> String
    #   resp.data.domain_config.auto_tune_options.status #=> Types::AutoTuneStatus
    #   resp.data.domain_config.auto_tune_options.status.creation_date #=> Time
    #   resp.data.domain_config.auto_tune_options.status.update_date #=> Time
    #   resp.data.domain_config.auto_tune_options.status.update_version #=> Integer
    #   resp.data.domain_config.auto_tune_options.status.state #=> String, one of ["ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"]
    #   resp.data.domain_config.auto_tune_options.status.error_message #=> String
    #   resp.data.domain_config.auto_tune_options.status.pending_deletion #=> Boolean
    #   resp.data.domain_config.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.domain_config.change_progress_details.change_id #=> String
    #   resp.data.domain_config.change_progress_details.message #=> String
    #   resp.data.dry_run_results #=> Types::DryRunResults
    #   resp.data.dry_run_results.deployment_type #=> String
    #   resp.data.dry_run_results.message #=> String
    #
    def update_domain_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidTypeException, Errors::LimitExceededException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateDomainConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainConfig,
        stubs: @stubs,
        params_class: Params::UpdateDomainConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a package for use with Amazon OpenSearch Service domains.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The unique identifier for the package.</p>
    #
    # @option params [PackageSource] :package_source
    #   <p>The Amazon S3 location for importing the package specified as <code>S3BucketName</code> and
    #         <code>S3Key</code>
    #       </p>
    #
    # @option params [String] :package_description
    #   <p>A new description of the package.</p>
    #
    # @option params [String] :commit_message
    #   <p>A commit message for the new version which is shown as part of <code>GetPackageVersionHistoryResponse</code>.
    #       </p>
    #
    # @return [Types::UpdatePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package(
    #     package_id: 'PackageID', # required
    #     package_source: {
    #       s3_bucket_name: 'S3BucketName',
    #       s3_key: 'S3Key'
    #     }, # required
    #     package_description: 'PackageDescription',
    #     commit_message: 'CommitMessage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePackageOutput
    #   resp.data.package_details #=> Types::PackageDetails
    #   resp.data.package_details.package_id #=> String
    #   resp.data.package_details.package_name #=> String
    #   resp.data.package_details.package_type #=> String, one of ["TXT-DICTIONARY"]
    #   resp.data.package_details.package_description #=> String
    #   resp.data.package_details.package_status #=> String, one of ["COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.package_details.created_at #=> Time
    #   resp.data.package_details.last_updated_at #=> Time
    #   resp.data.package_details.available_package_version #=> String
    #   resp.data.package_details.error_details #=> Types::ErrorDetails
    #   resp.data.package_details.error_details.error_type #=> String
    #   resp.data.package_details.error_details.error_message #=> String
    #
    def update_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePackageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePackage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::LimitExceededException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePackage,
        stubs: @stubs,
        params_class: Params::UpdatePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to either upgrade your domain or perform an upgrade eligibility check to a compatible version of OpenSearch or Elasticsearch.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpgradeDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an domain. Domain names are unique across the domains owned by an account within an AWS
    #         region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
    #         and - (hyphen).
    #       </p>
    #
    # @option params [String] :target_version
    #   <p>The version of OpenSearch you intend to upgrade the domain to.</p>
    #
    # @option params [Boolean] :perform_check_only
    #   <p>
    #         When true, indicates that an upgrade eligibility check needs to be performed.
    #         Does not actually perform the upgrade.
    #       </p>
    #
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Exposes select native OpenSearch configuration values from <code>opensearch.yml</code>. Currently, the
    #         following advanced options are available:
    #       </p>
    #       <ul>
    #         <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring
    #           access to individual sub-resources. By default, the value is <code>true</code>.
    #           See <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options" target="_blank">Advanced cluster parameters
    #           </a> for more information.
    #         </li>
    #         <li>Option to specify the percentage of heap space allocated to field data. By default, this setting is
    #           unbounded.
    #         </li>
    #       </ul>
    #       <p>For more information, see <a href="http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">
    #         Advanced cluster parameters</a>.
    #       </p>
    #
    # @return [Types::UpgradeDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_domain(
    #     domain_name: 'DomainName', # required
    #     target_version: 'TargetVersion', # required
    #     perform_check_only: false,
    #     advanced_options: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpgradeDomainOutput
    #   resp.data.upgrade_id #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.target_version #=> String
    #   resp.data.perform_check_only #=> Boolean
    #   resp.data.advanced_options #=> Hash<String, String>
    #   resp.data.advanced_options['key'] #=> String
    #   resp.data.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.change_progress_details.change_id #=> String
    #   resp.data.change_progress_details.message #=> String
    #
    def upgrade_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpgradeDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpgradeDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpgradeDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceAlreadyExistsException, Errors::ValidationException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::UpgradeDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpgradeDomain,
        stubs: @stubs,
        params_class: Params::UpgradeDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upgrade_domain
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
