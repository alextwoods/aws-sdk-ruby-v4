# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ElasticsearchService
  # An API client for AmazonElasticsearchService2015
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Elasticsearch Configuration Service</fullname>
  #       <p>Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains.</p>
  #       <p>For sample code that uses the Configuration API, see the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html">Amazon Elasticsearch Service Developer Guide</a>.
  #       The guide also contains <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html">sample code for sending signed HTTP requests to the Elasticsearch APIs</a>.</p>
  #       <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com.
  #          For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
  #          see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions" target="_blank">Regions and Endpoints</a>.</p>
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
    def initialize(config = AWS::SDK::ElasticsearchService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Allows the destination domain owner to accept an inbound cross-cluster search connection request.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptInboundCrossClusterSearchConnectionInput}.
    #
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to accept.</p>
    #
    # @return [Types::AcceptInboundCrossClusterSearchConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_inbound_cross_cluster_search_connection(
    #     cross_cluster_search_connection_id: 'CrossClusterSearchConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptInboundCrossClusterSearchConnectionOutput
    #   resp.data.cross_cluster_search_connection #=> Types::InboundCrossClusterSearchConnection
    #   resp.data.cross_cluster_search_connection.source_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.data.cross_cluster_search_connection.destination_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.data.cross_cluster_search_connection.connection_status #=> Types::InboundCrossClusterSearchConnectionStatus
    #   resp.data.cross_cluster_search_connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.cross_cluster_search_connection.connection_status.message #=> String
    #
    def accept_inbound_cross_cluster_search_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptInboundCrossClusterSearchConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptInboundCrossClusterSearchConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptInboundCrossClusterSearchConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::AcceptInboundCrossClusterSearchConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptInboundCrossClusterSearchConnection,
        stubs: @stubs,
        params_class: Params::AcceptInboundCrossClusterSearchConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_inbound_cross_cluster_search_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank">
    #           Tagging Amazon Elasticsearch Service Domains for more information.</a></p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [String] :arn
    #   <p> Specify the <code>ARN</code> for which you want to add the tags.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BaseException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Associates a package with an Amazon ES domain.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    #
    # @option params [String] :domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the <code>AutomatedUpdateDate</code> and when the <code>UpdateStatus</code> is in the <code>PENDING_UPDATE</code> state.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelElasticsearchServiceSoftwareUpdateInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to stop the latest service software update on.</p>
    #
    # @return [Types::CancelElasticsearchServiceSoftwareUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_elasticsearch_service_software_update(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelElasticsearchServiceSoftwareUpdateOutput
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
    def cancel_elasticsearch_service_software_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelElasticsearchServiceSoftwareUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelElasticsearchServiceSoftwareUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelElasticsearchServiceSoftwareUpdate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::CancelElasticsearchServiceSoftwareUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelElasticsearchServiceSoftwareUpdate,
        stubs: @stubs,
        params_class: Params::CancelElasticsearchServiceSoftwareUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_elasticsearch_service_software_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Elasticsearch domain. For more information,
    #           see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateElasticsearchDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :elasticsearch_version
    #   <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information,
    #             see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    #
    # @option params [ElasticsearchClusterConfig] :elasticsearch_cluster_config
    #   <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
    #
    # @option params [EBSOptions] :ebs_options
    #   <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
    #
    # @option params [String] :access_policies
    #   <p> IAM access policy as a JSON-formatted string.</p>
    #
    # @option params [SnapshotOptions] :snapshot_options
    #   <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
    #
    # @option params [VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    #
    # @option params [CognitoOptions] :cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    # @option params [EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    #
    # @option params [NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    #
    # @option params [Hash<String, String>] :advanced_options
    #   <p> Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #             See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    #
    # @option params [Hash<String, LogPublishingOption>] :log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    #
    # @option params [DomainEndpointOptions] :domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #
    # @option params [AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #
    # @option params [AutoTuneOptionsInput] :auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>A list of <code>Tag</code> added during domain creation.</p>
    #
    # @return [Types::CreateElasticsearchDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_elasticsearch_domain(
    #     domain_name: 'DomainName', # required
    #     elasticsearch_version: 'ElasticsearchVersion',
    #     elasticsearch_cluster_config: {
    #       instance_type: 'm3.medium.elasticsearch', # accepts ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: 'm3.medium.elasticsearch', # accepts ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: 'ultrawarm1.medium.elasticsearch', # accepts ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
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
    #     },
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateElasticsearchDomainOutput
    #   resp.data.domain_status #=> Types::ElasticsearchDomainStatus
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
    #   resp.data.domain_status.elasticsearch_version #=> String
    #   resp.data.domain_status.elasticsearch_cluster_config #=> Types::ElasticsearchClusterConfig
    #   resp.data.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status.elasticsearch_cluster_config.cold_storage_options.enabled #=> Boolean
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
    def create_elasticsearch_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateElasticsearchDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateElasticsearchDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateElasticsearchDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::BaseException, Errors::InvalidTypeException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::CreateElasticsearchDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateElasticsearchDomain,
        stubs: @stubs,
        params_class: Params::CreateElasticsearchDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_elasticsearch_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new cross-cluster search connection from a source domain to a destination domain.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOutboundCrossClusterSearchConnectionInput}.
    #
    # @option params [DomainInformation] :source_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    #
    # @option params [DomainInformation] :destination_domain_info
    #   <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    #
    # @option params [String] :connection_alias
    #   <p>Specifies the connection alias that will be used by the customer for this connection.</p>
    #
    # @return [Types::CreateOutboundCrossClusterSearchConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outbound_cross_cluster_search_connection(
    #     source_domain_info: {
    #       owner_id: 'OwnerId',
    #       domain_name: 'DomainName', # required
    #       region: 'Region'
    #     }, # required
    #     connection_alias: 'ConnectionAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOutboundCrossClusterSearchConnectionOutput
    #   resp.data.source_domain_info #=> Types::DomainInformation
    #   resp.data.source_domain_info.owner_id #=> String
    #   resp.data.source_domain_info.domain_name #=> String
    #   resp.data.source_domain_info.region #=> String
    #   resp.data.destination_domain_info #=> Types::DomainInformation
    #   resp.data.connection_alias #=> String
    #   resp.data.connection_status #=> Types::OutboundCrossClusterSearchConnectionStatus
    #   resp.data.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.connection_status.message #=> String
    #   resp.data.cross_cluster_search_connection_id #=> String
    #
    def create_outbound_cross_cluster_search_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOutboundCrossClusterSearchConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOutboundCrossClusterSearchConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOutboundCrossClusterSearchConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::DisabledOperationException, Errors::InternalException]),
        data_parser: Parsers::CreateOutboundCrossClusterSearchConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOutboundCrossClusterSearchConnection,
        stubs: @stubs,
        params_class: Params::CreateOutboundCrossClusterSearchConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_outbound_cross_cluster_search_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a package for use with Amazon ES domains.</p>
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
    #   <p>The customer S3 location <code>PackageSource</code> for importing the package.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::BaseException, Errors::InvalidTypeException, Errors::AccessDeniedException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteElasticsearchDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain that you want to permanently delete.</p>
    #
    # @return [Types::DeleteElasticsearchDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_elasticsearch_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteElasticsearchDomainOutput
    #   resp.data.domain_status #=> Types::ElasticsearchDomainStatus
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
    #   resp.data.domain_status.elasticsearch_version #=> String
    #   resp.data.domain_status.elasticsearch_cluster_config #=> Types::ElasticsearchClusterConfig
    #   resp.data.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status.elasticsearch_cluster_config.cold_storage_options.enabled #=> Boolean
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
    def delete_elasticsearch_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteElasticsearchDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteElasticsearchDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteElasticsearchDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DeleteElasticsearchDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteElasticsearchDomain,
        stubs: @stubs,
        params_class: Params::DeleteElasticsearchDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_elasticsearch_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr" target="_blank">Deleting Elasticsearch Service Role</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteElasticsearchServiceRoleInput}.
    #
    # @return [Types::DeleteElasticsearchServiceRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_elasticsearch_service_role()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteElasticsearchServiceRoleOutput
    #
    def delete_elasticsearch_service_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteElasticsearchServiceRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteElasticsearchServiceRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteElasticsearchServiceRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DeleteElasticsearchServiceRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteElasticsearchServiceRole,
        stubs: @stubs,
        params_class: Params::DeleteElasticsearchServiceRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_elasticsearch_service_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the destination domain owner to delete an existing inbound cross-cluster search connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInboundCrossClusterSearchConnectionInput}.
    #
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to permanently delete.</p>
    #
    # @return [Types::DeleteInboundCrossClusterSearchConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inbound_cross_cluster_search_connection(
    #     cross_cluster_search_connection_id: 'CrossClusterSearchConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInboundCrossClusterSearchConnectionOutput
    #   resp.data.cross_cluster_search_connection #=> Types::InboundCrossClusterSearchConnection
    #   resp.data.cross_cluster_search_connection.source_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.data.cross_cluster_search_connection.destination_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.data.cross_cluster_search_connection.connection_status #=> Types::InboundCrossClusterSearchConnectionStatus
    #   resp.data.cross_cluster_search_connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.cross_cluster_search_connection.connection_status.message #=> String
    #
    def delete_inbound_cross_cluster_search_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInboundCrossClusterSearchConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInboundCrossClusterSearchConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInboundCrossClusterSearchConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::DeleteInboundCrossClusterSearchConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInboundCrossClusterSearchConnection,
        stubs: @stubs,
        params_class: Params::DeleteInboundCrossClusterSearchConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_inbound_cross_cluster_search_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the source domain owner to delete an existing outbound cross-cluster search connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOutboundCrossClusterSearchConnectionInput}.
    #
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the outbound connection that you want to permanently delete.</p>
    #
    # @return [Types::DeleteOutboundCrossClusterSearchConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outbound_cross_cluster_search_connection(
    #     cross_cluster_search_connection_id: 'CrossClusterSearchConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOutboundCrossClusterSearchConnectionOutput
    #   resp.data.cross_cluster_search_connection #=> Types::OutboundCrossClusterSearchConnection
    #   resp.data.cross_cluster_search_connection.source_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.data.cross_cluster_search_connection.destination_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.data.cross_cluster_search_connection.connection_alias #=> String
    #   resp.data.cross_cluster_search_connection.connection_status #=> Types::OutboundCrossClusterSearchConnectionStatus
    #   resp.data.cross_cluster_search_connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.cross_cluster_search_connection.connection_status.message #=> String
    #
    def delete_outbound_cross_cluster_search_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOutboundCrossClusterSearchConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOutboundCrossClusterSearchConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOutboundCrossClusterSearchConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::DeleteOutboundCrossClusterSearchConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOutboundCrossClusterSearchConnection,
        stubs: @stubs,
        params_class: Params::DeleteOutboundCrossClusterSearchConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_outbound_cross_cluster_search_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete the package.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>Internal ID of the package that you want to delete. Use <code>DescribePackages</code> to find this value.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainAutoTunesInput}.
    #
    # @option params [String] :domain_name
    #   <p>Specifies the domain name for which you want Auto-Tune action details.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
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
    #         a change ID, status, and progress stages.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainChangeProgressInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain you want to get the progress information about.</p>
    #
    # @option params [String] :change_id
    #   <p>The specific change ID for which you want to get progress information. This is an optional parameter.
    #           If omitted, the service returns information about the most recent configuration change.
    #         </p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeElasticsearchDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain for which you want information.</p>
    #
    # @return [Types::DescribeElasticsearchDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeElasticsearchDomainOutput
    #   resp.data.domain_status #=> Types::ElasticsearchDomainStatus
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
    #   resp.data.domain_status.elasticsearch_version #=> String
    #   resp.data.domain_status.elasticsearch_cluster_config #=> Types::ElasticsearchClusterConfig
    #   resp.data.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #   resp.data.domain_status.elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.data.domain_status.elasticsearch_cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status.elasticsearch_cluster_config.cold_storage_options.enabled #=> Boolean
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
    def describe_elasticsearch_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeElasticsearchDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeElasticsearchDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeElasticsearchDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DescribeElasticsearchDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeElasticsearchDomain,
        stubs: @stubs,
        params_class: Params::DescribeElasticsearchDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_elasticsearch_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeElasticsearchDomainConfigInput}.
    #
    # @option params [String] :domain_name
    #   <p>The Elasticsearch domain that you want to get information about.</p>
    #
    # @return [Types::DescribeElasticsearchDomainConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_domain_config(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeElasticsearchDomainConfigOutput
    #   resp.data.domain_config #=> Types::ElasticsearchDomainConfig
    #   resp.data.domain_config.elasticsearch_version #=> Types::ElasticsearchVersionStatus
    #   resp.data.domain_config.elasticsearch_version.options #=> String
    #   resp.data.domain_config.elasticsearch_version.status #=> Types::OptionStatus
    #   resp.data.domain_config.elasticsearch_version.status.creation_date #=> Time
    #   resp.data.domain_config.elasticsearch_version.status.update_date #=> Time
    #   resp.data.domain_config.elasticsearch_version.status.update_version #=> Integer
    #   resp.data.domain_config.elasticsearch_version.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active"]
    #   resp.data.domain_config.elasticsearch_version.status.pending_deletion #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config #=> Types::ElasticsearchClusterConfigStatus
    #   resp.data.domain_config.elasticsearch_cluster_config.options #=> Types::ElasticsearchClusterConfig
    #   resp.data.domain_config.elasticsearch_cluster_config.options.instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_config.elasticsearch_cluster_config.options.instance_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.options.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_config.elasticsearch_cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.dedicated_master_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_config.elasticsearch_cluster_config.options.dedicated_master_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.warm_enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.options.warm_type #=> String, one of ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #   resp.data.domain_config.elasticsearch_cluster_config.options.warm_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_config.elasticsearch_cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.status #=> Types::OptionStatus
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
    def describe_elasticsearch_domain_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeElasticsearchDomainConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeElasticsearchDomainConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeElasticsearchDomainConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DescribeElasticsearchDomainConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeElasticsearchDomainConfig,
        stubs: @stubs,
        params_class: Params::DescribeElasticsearchDomainConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_elasticsearch_domain_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeElasticsearchDomainsInput}.
    #
    # @option params [Array<String>] :domain_names
    #   <p>The Elasticsearch domains for which you want information.</p>
    #
    # @return [Types::DescribeElasticsearchDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_domains(
    #     domain_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeElasticsearchDomainsOutput
    #   resp.data.domain_status_list #=> Array<ElasticsearchDomainStatus>
    #   resp.data.domain_status_list[0] #=> Types::ElasticsearchDomainStatus
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
    #   resp.data.domain_status_list[0].elasticsearch_version #=> String
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config #=> Types::ElasticsearchClusterConfig
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.warm_type #=> String, one of ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_status_list[0].elasticsearch_cluster_config.cold_storage_options.enabled #=> Boolean
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
    def describe_elasticsearch_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeElasticsearchDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeElasticsearchDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeElasticsearchDomains
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DescribeElasticsearchDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeElasticsearchDomains,
        stubs: @stubs,
        params_class: Params::DescribeElasticsearchDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_elasticsearch_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #     Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion.
    #     When modifying existing Domain, specify the
    #     <code>
    #       <a>DomainName</a>
    #     </code>
    #     to know what Limits are supported for modifying.
    #   </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeElasticsearchInstanceTypeLimitsInput}.
    #
    # @option params [String] :domain_name
    #   <p>
    #         DomainName represents the name of the Domain that we are trying to
    #         modify. This should be present only if we are
    #         querying for Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         for existing domain.
    #       </p>
    #
    # @option params [String] :instance_type
    #   <p>
    #         The instance type for an Elasticsearch cluster for which Elasticsearch
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #
    # @option params [String] :elasticsearch_version
    #   <p>
    #         Version of Elasticsearch for which
    #         <code>
    #           <a>Limits</a>
    #         </code>
    #         are needed.
    #       </p>
    #
    # @return [Types::DescribeElasticsearchInstanceTypeLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_instance_type_limits(
    #     domain_name: 'DomainName',
    #     instance_type: 'm3.medium.elasticsearch', # required - accepts ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #     elasticsearch_version: 'ElasticsearchVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeElasticsearchInstanceTypeLimitsOutput
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
    def describe_elasticsearch_instance_type_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeElasticsearchInstanceTypeLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeElasticsearchInstanceTypeLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeElasticsearchInstanceTypeLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BaseException, Errors::InvalidTypeException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DescribeElasticsearchInstanceTypeLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeElasticsearchInstanceTypeLimits,
        stubs: @stubs,
        params_class: Params::DescribeElasticsearchInstanceTypeLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_elasticsearch_instance_type_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the inbound cross-cluster search connections for a destination domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInboundCrossClusterSearchConnectionsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>
    #         A list of filters used to match properties for inbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>source-domain-info.domain-name</li>
    #           <li>source-domain-info.owner-id</li>
    #           <li>source-domain-info.region</li>
    #           <li>destination-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #
    # @return [Types::DescribeInboundCrossClusterSearchConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inbound_cross_cluster_search_connections(
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
    #   resp.data #=> Types::DescribeInboundCrossClusterSearchConnectionsOutput
    #   resp.data.cross_cluster_search_connections #=> Array<InboundCrossClusterSearchConnection>
    #   resp.data.cross_cluster_search_connections[0] #=> Types::InboundCrossClusterSearchConnection
    #   resp.data.cross_cluster_search_connections[0].source_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connections[0].source_domain_info.owner_id #=> String
    #   resp.data.cross_cluster_search_connections[0].source_domain_info.domain_name #=> String
    #   resp.data.cross_cluster_search_connections[0].source_domain_info.region #=> String
    #   resp.data.cross_cluster_search_connections[0].destination_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connections[0].cross_cluster_search_connection_id #=> String
    #   resp.data.cross_cluster_search_connections[0].connection_status #=> Types::InboundCrossClusterSearchConnectionStatus
    #   resp.data.cross_cluster_search_connections[0].connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.cross_cluster_search_connections[0].connection_status.message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_inbound_cross_cluster_search_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInboundCrossClusterSearchConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInboundCrossClusterSearchConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInboundCrossClusterSearchConnections
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPaginationTokenException, Errors::DisabledOperationException]),
        data_parser: Parsers::DescribeInboundCrossClusterSearchConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInboundCrossClusterSearchConnections,
        stubs: @stubs,
        params_class: Params::DescribeInboundCrossClusterSearchConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_inbound_cross_cluster_search_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the outbound cross-cluster search connections for a source domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOutboundCrossClusterSearchConnectionsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>
    #         A list of filters used to match properties for outbound cross-cluster search connection.
    #         Available <code><a>Filter</a></code> names for this operation are:
    #         <ul>
    #           <li>cross-cluster-search-connection-id</li>
    #           <li>destination-domain-info.domain-name</li>
    #           <li>destination-domain-info.owner-id</li>
    #           <li>destination-domain-info.region</li>
    #           <li>source-domain-info.domain-name</li>
    #         </ul>
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>
    #
    # @return [Types::DescribeOutboundCrossClusterSearchConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_outbound_cross_cluster_search_connections(
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
    #   resp.data #=> Types::DescribeOutboundCrossClusterSearchConnectionsOutput
    #   resp.data.cross_cluster_search_connections #=> Array<OutboundCrossClusterSearchConnection>
    #   resp.data.cross_cluster_search_connections[0] #=> Types::OutboundCrossClusterSearchConnection
    #   resp.data.cross_cluster_search_connections[0].source_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connections[0].source_domain_info.owner_id #=> String
    #   resp.data.cross_cluster_search_connections[0].source_domain_info.domain_name #=> String
    #   resp.data.cross_cluster_search_connections[0].source_domain_info.region #=> String
    #   resp.data.cross_cluster_search_connections[0].destination_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connections[0].cross_cluster_search_connection_id #=> String
    #   resp.data.cross_cluster_search_connections[0].connection_alias #=> String
    #   resp.data.cross_cluster_search_connections[0].connection_status #=> Types::OutboundCrossClusterSearchConnectionStatus
    #   resp.data.cross_cluster_search_connections[0].connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.cross_cluster_search_connections[0].connection_status.message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_outbound_cross_cluster_search_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOutboundCrossClusterSearchConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOutboundCrossClusterSearchConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOutboundCrossClusterSearchConnections
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPaginationTokenException, Errors::DisabledOperationException]),
        data_parser: Parsers::DescribeOutboundCrossClusterSearchConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOutboundCrossClusterSearchConnections,
        stubs: @stubs,
        params_class: Params::DescribeOutboundCrossClusterSearchConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_outbound_cross_cluster_search_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePackagesInput}.
    #
    # @option params [Array<DescribePackagesFilter>] :filters
    #   <p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of packages.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Lists available reserved Elasticsearch instance offerings.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedElasticsearchInstanceOfferingsInput}.
    #
    # @option params [String] :reserved_elasticsearch_instance_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    #
    # @return [Types::DescribeReservedElasticsearchInstanceOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_elasticsearch_instance_offerings(
    #     reserved_elasticsearch_instance_offering_id: 'ReservedElasticsearchInstanceOfferingId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedElasticsearchInstanceOfferingsOutput
    #   resp.data.next_token #=> String
    #   resp.data.reserved_elasticsearch_instance_offerings #=> Array<ReservedElasticsearchInstanceOffering>
    #   resp.data.reserved_elasticsearch_instance_offerings[0] #=> Types::ReservedElasticsearchInstanceOffering
    #   resp.data.reserved_elasticsearch_instance_offerings[0].reserved_elasticsearch_instance_offering_id #=> String
    #   resp.data.reserved_elasticsearch_instance_offerings[0].elasticsearch_instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.reserved_elasticsearch_instance_offerings[0].duration #=> Integer
    #   resp.data.reserved_elasticsearch_instance_offerings[0].fixed_price #=> Float
    #   resp.data.reserved_elasticsearch_instance_offerings[0].usage_price #=> Float
    #   resp.data.reserved_elasticsearch_instance_offerings[0].currency_code #=> String
    #   resp.data.reserved_elasticsearch_instance_offerings[0].payment_option #=> String, one of ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"]
    #   resp.data.reserved_elasticsearch_instance_offerings[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_elasticsearch_instance_offerings[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_elasticsearch_instance_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_elasticsearch_instance_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    def describe_reserved_elasticsearch_instance_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedElasticsearchInstanceOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedElasticsearchInstanceOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedElasticsearchInstanceOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DescribeReservedElasticsearchInstanceOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedElasticsearchInstanceOfferings,
        stubs: @stubs,
        params_class: Params::DescribeReservedElasticsearchInstanceOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_elasticsearch_instance_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about reserved Elasticsearch instances for this account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReservedElasticsearchInstancesInput}.
    #
    # @option params [String] :reserved_elasticsearch_instance_id
    #   <p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #   		containing NextToken. It is used for pagination.</p>
    #
    # @return [Types::DescribeReservedElasticsearchInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_elasticsearch_instances(
    #     reserved_elasticsearch_instance_id: 'ReservedElasticsearchInstanceId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservedElasticsearchInstancesOutput
    #   resp.data.next_token #=> String
    #   resp.data.reserved_elasticsearch_instances #=> Array<ReservedElasticsearchInstance>
    #   resp.data.reserved_elasticsearch_instances[0] #=> Types::ReservedElasticsearchInstance
    #   resp.data.reserved_elasticsearch_instances[0].reservation_name #=> String
    #   resp.data.reserved_elasticsearch_instances[0].reserved_elasticsearch_instance_id #=> String
    #   resp.data.reserved_elasticsearch_instances[0].reserved_elasticsearch_instance_offering_id #=> String
    #   resp.data.reserved_elasticsearch_instances[0].elasticsearch_instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.reserved_elasticsearch_instances[0].start_time #=> Time
    #   resp.data.reserved_elasticsearch_instances[0].duration #=> Integer
    #   resp.data.reserved_elasticsearch_instances[0].fixed_price #=> Float
    #   resp.data.reserved_elasticsearch_instances[0].usage_price #=> Float
    #   resp.data.reserved_elasticsearch_instances[0].currency_code #=> String
    #   resp.data.reserved_elasticsearch_instances[0].elasticsearch_instance_count #=> Integer
    #   resp.data.reserved_elasticsearch_instances[0].state #=> String
    #   resp.data.reserved_elasticsearch_instances[0].payment_option #=> String, one of ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"]
    #   resp.data.reserved_elasticsearch_instances[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.reserved_elasticsearch_instances[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.reserved_elasticsearch_instances[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.data.reserved_elasticsearch_instances[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    def describe_reserved_elasticsearch_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservedElasticsearchInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservedElasticsearchInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservedElasticsearchInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::DescribeReservedElasticsearchInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservedElasticsearchInstances,
        stubs: @stubs,
        params_class: Params::DescribeReservedElasticsearchInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reserved_elasticsearch_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Dissociates a package from the Amazon ES domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DissociatePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>
    #
    # @option params [String] :domain_name
    #   <p>Name of the domain that you want to associate the package with.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalException, Errors::ValidationException]),
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
    #         Returns a list of upgrade compatible Elastisearch versions.
    #         You can optionally pass a
    #         <code>
    #           <a>DomainName</a>
    #         </code>
    #         to get all upgrade compatible Elasticsearch versions for that specific domain.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetCompatibleElasticsearchVersionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @return [Types::GetCompatibleElasticsearchVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_elasticsearch_versions(
    #     domain_name: 'DomainName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCompatibleElasticsearchVersionsOutput
    #   resp.data.compatible_elasticsearch_versions #=> Array<CompatibleVersionsMap>
    #   resp.data.compatible_elasticsearch_versions[0] #=> Types::CompatibleVersionsMap
    #   resp.data.compatible_elasticsearch_versions[0].source_version #=> String
    #   resp.data.compatible_elasticsearch_versions[0].target_versions #=> Array<String>
    #   resp.data.compatible_elasticsearch_versions[0].target_versions[0] #=> String
    #
    def get_compatible_elasticsearch_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCompatibleElasticsearchVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCompatibleElasticsearchVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCompatibleElasticsearchVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::GetCompatibleElasticsearchVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCompatibleElasticsearchVersions,
        stubs: @stubs,
        params_class: Params::GetCompatibleElasticsearchVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compatible_elasticsearch_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of versions of the package, along with their creation time and commit message.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPackageVersionHistoryInput}.
    #
    # @option params [String] :package_id
    #   <p>Returns an audit history of versions of the package.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of versions.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Retrieves the complete history of the last 10 upgrades that were performed on the domain.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUpgradeHistoryInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUpgradeStatusInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ValidationException]),
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

    # <p>Lists all Amazon ES domains associated with the package.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsForPackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The package for which to list domains.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits results to a maximum number of domains.</p>
    #
    # @option params [String] :next_token
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>List all Elasticsearch instance types that are supported for given ElasticsearchVersion</p>
    #
    # @param [Hash] params
    #   See {Types::ListElasticsearchInstanceTypesInput}.
    #
    # @option params [String] :elasticsearch_version
    #   <p>Version of Elasticsearch for which list of supported elasticsearch
    #         instance types are needed.
    #       </p>
    #
    # @option params [String] :domain_name
    #   <p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are
    #         querying for list of available Elasticsearch instance types when modifying existing domain.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #       Set this value to limit the number of results returned.
    #       Value provided must be greater than 30 else it wont be honored.
    #     </p>
    #
    # @option params [String] :next_token
    #   <p>NextToken should be sent in case if earlier API call produced result
    #         containing NextToken. It is used for pagination.
    #       </p>
    #
    # @return [Types::ListElasticsearchInstanceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_elasticsearch_instance_types(
    #     elasticsearch_version: 'ElasticsearchVersion', # required
    #     domain_name: 'DomainName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListElasticsearchInstanceTypesOutput
    #   resp.data.elasticsearch_instance_types #=> Array<String>
    #   resp.data.elasticsearch_instance_types[0] #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.next_token #=> String
    #
    def list_elasticsearch_instance_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListElasticsearchInstanceTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListElasticsearchInstanceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListElasticsearchInstanceTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::ListElasticsearchInstanceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListElasticsearchInstanceTypes,
        stubs: @stubs,
        params_class: Params::ListElasticsearchInstanceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_elasticsearch_instance_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all supported Elasticsearch versions</p>
    #
    # @param [Hash] params
    #   See {Types::ListElasticsearchVersionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>
    #         Set this value to limit the number of results returned.
    #         Value provided must be greater than 10 else it wont be honored.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         Paginated APIs accepts NextToken input to returns next page results and provides
    #         a NextToken output in the response which can be used by the client to retrieve more results.
    #       </p>
    #
    # @return [Types::ListElasticsearchVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_elasticsearch_versions(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListElasticsearchVersionsOutput
    #   resp.data.elasticsearch_versions #=> Array<String>
    #   resp.data.elasticsearch_versions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_elasticsearch_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListElasticsearchVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListElasticsearchVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListElasticsearchVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::ListElasticsearchVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListElasticsearchVersions,
        stubs: @stubs,
        params_class: Params::ListElasticsearchVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_elasticsearch_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all packages associated with the Amazon ES domain.</p>
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
    #   <p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Returns all tags for the given Elasticsearch domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :arn
    #   <p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Allows you to purchase reserved Elasticsearch instances.</p>
    #
    # @param [Hash] params
    #   See {Types::PurchaseReservedElasticsearchInstanceOfferingInput}.
    #
    # @option params [String] :reserved_elasticsearch_instance_offering_id
    #   <p>The ID of the reserved Elasticsearch instance offering to purchase.</p>
    #
    # @option params [String] :reservation_name
    #   <p>A customer-specified identifier to track this reservation.</p>
    #
    # @option params [Integer] :instance_count
    #   <p>The number of Elasticsearch instances to reserve.</p>
    #
    # @return [Types::PurchaseReservedElasticsearchInstanceOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_elasticsearch_instance_offering(
    #     reserved_elasticsearch_instance_offering_id: 'ReservedElasticsearchInstanceOfferingId', # required
    #     reservation_name: 'ReservationName', # required
    #     instance_count: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PurchaseReservedElasticsearchInstanceOfferingOutput
    #   resp.data.reserved_elasticsearch_instance_id #=> String
    #   resp.data.reservation_name #=> String
    #
    def purchase_reserved_elasticsearch_instance_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseReservedElasticsearchInstanceOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseReservedElasticsearchInstanceOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseReservedElasticsearchInstanceOffering
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::PurchaseReservedElasticsearchInstanceOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseReservedElasticsearchInstanceOffering,
        stubs: @stubs,
        params_class: Params::PurchaseReservedElasticsearchInstanceOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_reserved_elasticsearch_instance_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the destination domain owner to reject an inbound cross-cluster search connection request.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectInboundCrossClusterSearchConnectionInput}.
    #
    # @option params [String] :cross_cluster_search_connection_id
    #   <p>The id of the inbound connection that you want to reject.</p>
    #
    # @return [Types::RejectInboundCrossClusterSearchConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_inbound_cross_cluster_search_connection(
    #     cross_cluster_search_connection_id: 'CrossClusterSearchConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectInboundCrossClusterSearchConnectionOutput
    #   resp.data.cross_cluster_search_connection #=> Types::InboundCrossClusterSearchConnection
    #   resp.data.cross_cluster_search_connection.source_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.data.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.data.cross_cluster_search_connection.destination_domain_info #=> Types::DomainInformation
    #   resp.data.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.data.cross_cluster_search_connection.connection_status #=> Types::InboundCrossClusterSearchConnectionStatus
    #   resp.data.cross_cluster_search_connection.connection_status.status_code #=> String, one of ["PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"]
    #   resp.data.cross_cluster_search_connection.connection_status.message #=> String
    #
    def reject_inbound_cross_cluster_search_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectInboundCrossClusterSearchConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectInboundCrossClusterSearchConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectInboundCrossClusterSearchConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DisabledOperationException]),
        data_parser: Parsers::RejectInboundCrossClusterSearchConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectInboundCrossClusterSearchConnection,
        stubs: @stubs,
        params_class: Params::RejectInboundCrossClusterSearchConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_inbound_cross_cluster_search_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified set of tags from the specified Elasticsearch domain.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [String] :arn
    #   <p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Schedules a service software update for an Amazon ES domain.</p>
    #
    # @param [Hash] params
    #   See {Types::StartElasticsearchServiceSoftwareUpdateInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update to the latest service software.</p>
    #
    # @return [Types::StartElasticsearchServiceSoftwareUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_elasticsearch_service_software_update(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartElasticsearchServiceSoftwareUpdateOutput
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
    def start_elasticsearch_service_software_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartElasticsearchServiceSoftwareUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartElasticsearchServiceSoftwareUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartElasticsearchServiceSoftwareUpdate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::StartElasticsearchServiceSoftwareUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartElasticsearchServiceSoftwareUpdate,
        stubs: @stubs,
        params_class: Params::StartElasticsearchServiceSoftwareUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_elasticsearch_service_software_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateElasticsearchDomainConfigInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the Elasticsearch domain that you are updating. </p>
    #
    # @option params [ElasticsearchClusterConfig] :elasticsearch_cluster_config
    #   <p>The type and number of instances to instantiate for the domain cluster.</p>
    #
    # @option params [EBSOptions] :ebs_options
    #   <p>Specify the type and size of the EBS volume that you want to use. </p>
    #
    # @option params [SnapshotOptions] :snapshot_options
    #   <p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>
    #
    # @option params [VPCOptions] :vpc_options
    #   <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    #
    # @option params [CognitoOptions] :cognito_options
    #   <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    #
    # @option params [Hash<String, String>] :advanced_options
    #   <p>Modifies the advanced option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    #          See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    #
    # @option params [String] :access_policies
    #   <p>IAM access policy as a JSON-formatted string.</p>
    #
    # @option params [Hash<String, LogPublishingOption>] :log_publishing_options
    #   <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    #
    # @option params [DomainEndpointOptions] :domain_endpoint_options
    #   <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    #
    # @option params [AdvancedSecurityOptionsInput] :advanced_security_options
    #   <p>Specifies advanced security options.</p>
    #
    # @option params [NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   <p>Specifies the NodeToNodeEncryptionOptions.</p>
    #
    # @option params [EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Specifies the Encryption At Rest Options.</p>
    #
    # @option params [AutoTuneOptions] :auto_tune_options
    #   <p>Specifies Auto-Tune options.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>
    #              This flag, when set to True, specifies whether the <code>UpdateElasticsearchDomain</code> request should return the results of validation checks without actually applying the change.
    #              This flag, when set to True, specifies the deployment mechanism through which the update shall be applied on the domain.
    #              This will not actually perform the Update.
    #          </p>
    #
    # @return [Types::UpdateElasticsearchDomainConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_elasticsearch_domain_config(
    #     domain_name: 'DomainName', # required
    #     elasticsearch_cluster_config: {
    #       instance_type: 'm3.medium.elasticsearch', # accepts ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1
    #       },
    #       dedicated_master_type: 'm3.medium.elasticsearch', # accepts ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: 'ultrawarm1.medium.elasticsearch', # accepts ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
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
    #     node_to_node_encryption_options: {
    #       enabled: false
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: 'KmsKeyId'
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
    #   resp.data #=> Types::UpdateElasticsearchDomainConfigOutput
    #   resp.data.domain_config #=> Types::ElasticsearchDomainConfig
    #   resp.data.domain_config.elasticsearch_version #=> Types::ElasticsearchVersionStatus
    #   resp.data.domain_config.elasticsearch_version.options #=> String
    #   resp.data.domain_config.elasticsearch_version.status #=> Types::OptionStatus
    #   resp.data.domain_config.elasticsearch_version.status.creation_date #=> Time
    #   resp.data.domain_config.elasticsearch_version.status.update_date #=> Time
    #   resp.data.domain_config.elasticsearch_version.status.update_version #=> Integer
    #   resp.data.domain_config.elasticsearch_version.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active"]
    #   resp.data.domain_config.elasticsearch_version.status.pending_deletion #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config #=> Types::ElasticsearchClusterConfigStatus
    #   resp.data.domain_config.elasticsearch_cluster_config.options #=> Types::ElasticsearchClusterConfig
    #   resp.data.domain_config.elasticsearch_cluster_config.options.instance_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_config.elasticsearch_cluster_config.options.instance_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.options.zone_awareness_config #=> Types::ZoneAwarenessConfig
    #   resp.data.domain_config.elasticsearch_cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.dedicated_master_type #=> String, one of ["m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"]
    #   resp.data.domain_config.elasticsearch_cluster_config.options.dedicated_master_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.warm_enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.options.warm_type #=> String, one of ["ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"]
    #   resp.data.domain_config.elasticsearch_cluster_config.options.warm_count #=> Integer
    #   resp.data.domain_config.elasticsearch_cluster_config.options.cold_storage_options #=> Types::ColdStorageOptions
    #   resp.data.domain_config.elasticsearch_cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.data.domain_config.elasticsearch_cluster_config.status #=> Types::OptionStatus
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
    def update_elasticsearch_domain_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateElasticsearchDomainConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateElasticsearchDomainConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateElasticsearchDomainConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BaseException, Errors::InvalidTypeException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::UpdateElasticsearchDomainConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateElasticsearchDomainConfig,
        stubs: @stubs,
        params_class: Params::UpdateElasticsearchDomainConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_elasticsearch_domain_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a package for use with Amazon ES domains.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>Unique identifier for the package.</p>
    #
    # @option params [PackageSource] :package_source
    #   <p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>
    #
    # @option params [String] :package_description
    #   <p>New description of the package.</p>
    #
    # @option params [String] :commit_message
    #   <p>An info message for the new version which will be shown as part of <code>GetPackageVersionHistoryResponse</code>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalException, Errors::ValidationException]),
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

    # <p>Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.</p>
    #
    # @param [Hash] params
    #   See {Types::UpgradeElasticsearchDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :target_version
    #   <p>The version of Elasticsearch that you intend to upgrade the domain to.</p>
    #
    # @option params [Boolean] :perform_check_only
    #   <p>
    #         This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
    #         This will not actually perform the Upgrade.
    #       </p>
    #
    # @return [Types::UpgradeElasticsearchDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_elasticsearch_domain(
    #     domain_name: 'DomainName', # required
    #     target_version: 'TargetVersion', # required
    #     perform_check_only: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpgradeElasticsearchDomainOutput
    #   resp.data.domain_name #=> String
    #   resp.data.target_version #=> String
    #   resp.data.perform_check_only #=> Boolean
    #   resp.data.change_progress_details #=> Types::ChangeProgressDetails
    #   resp.data.change_progress_details.change_id #=> String
    #   resp.data.change_progress_details.message #=> String
    #
    def upgrade_elasticsearch_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpgradeElasticsearchDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpgradeElasticsearchDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpgradeElasticsearchDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::BaseException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::ValidationException]),
        data_parser: Parsers::UpgradeElasticsearchDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpgradeElasticsearchDomain,
        stubs: @stubs,
        params_class: Params::UpgradeElasticsearchDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upgrade_elasticsearch_domain
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
