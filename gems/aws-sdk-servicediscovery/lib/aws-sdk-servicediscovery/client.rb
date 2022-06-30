# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ServiceDiscovery
  # An API client for Route53AutoNaming_v20170314
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Cloud Map</fullname>
  #          <p>With Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces that your microservice
  #    applications run in. When an instance becomes available, you can call the Cloud Map API to register the instance
  #    with Cloud Map. For public or private DNS namespaces, Cloud Map automatically creates DNS records and an optional
  #    health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer
  #    that contains up to eight healthy records. </p>
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
    def initialize(config = AWS::SDK::ServiceDiscovery::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a
    #     <code>DiscoverInstances</code> request but can't be discovered using DNS.</p>
    #          <p>For the current quota on the number of namespaces that you can create using the same account,
    #    see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map quotas</a> in the
    #     <i>Cloud Map Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHttpNamespaceInput}.
    #
    # @option params [String] :name
    #   <p>The name that you want to assign to this namespace.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreateHttpNamespace</code> requests to
    #      be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any unique string
    #      (for example, a date/time stamp).</p>
    #
    # @option params [String] :description
    #   <p>A description for the namespace.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #
    # @return [Types::CreateHttpNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_http_namespace(
    #     name: 'Name', # required
    #     creator_request_id: 'CreatorRequestId',
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
    #   resp.data #=> Types::CreateHttpNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def create_http_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHttpNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHttpNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHttpNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::InvalidInput, Errors::ResourceLimitExceeded, Errors::NamespaceAlreadyExists, Errors::DuplicateRequest]),
        data_parser: Parsers::CreateHttpNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHttpNamespace,
        stubs: @stubs,
        params_class: Params::CreateHttpNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_http_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The namespace
    #    defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your
    #    service <code>backend</code>, the resulting DNS name for the service is <code>backend.example.com</code>. Service
    #    instances that are registered using a private DNS namespace can be discovered using either a
    #     <code>DiscoverInstances</code> request or using DNS. For the current quota on the number of namespaces that you can
    #    create using the same account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map quotas</a> in the
    #     <i>Cloud Map Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePrivateDnsNamespaceInput}.
    #
    # @option params [String] :name
    #   <p>The name that you want to assign to this namespace. When you create a private DNS namespace, Cloud Map
    #      automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreatePrivateDnsNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/timestamp).</p>
    #
    # @option params [String] :description
    #   <p>A description for the namespace.</p>
    #
    # @option params [String] :vpc
    #   <p>The ID of the Amazon VPC that you want to associate the namespace with.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #
    # @option params [PrivateDnsNamespaceProperties] :properties
    #   <p>Properties for the private DNS
    #      namespace.</p>
    #
    # @return [Types::CreatePrivateDnsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_dns_namespace(
    #     name: 'Name', # required
    #     creator_request_id: 'CreatorRequestId',
    #     description: 'Description',
    #     vpc: 'Vpc', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     properties: {
    #       dns_properties: {
    #         soa: {
    #           ttl: 1 # required
    #         } # required
    #       } # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePrivateDnsNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def create_private_dns_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePrivateDnsNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePrivateDnsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePrivateDnsNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::InvalidInput, Errors::ResourceLimitExceeded, Errors::NamespaceAlreadyExists, Errors::DuplicateRequest]),
        data_parser: Parsers::CreatePrivateDnsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePrivateDnsNamespace,
        stubs: @stubs,
        params_class: Params::CreatePrivateDnsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_private_dns_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your service
    #    naming scheme. For example, if you name your namespace <code>example.com</code> and name your service
    #     <code>backend</code>, the resulting DNS name for the service is <code>backend.example.com</code>. You can discover
    #    instances that were registered with a public DNS namespace by using either a <code>DiscoverInstances</code> request
    #    or using DNS. For the current quota on the number of namespaces that you can create using the same account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    #     quotas</a> in the <i>Cloud Map Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePublicDnsNamespaceInput}.
    #
    # @option params [String] :name
    #   <p>The name that you want to assign to this namespace.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreatePublicDnsNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/timestamp).</p>
    #
    # @option params [String] :description
    #   <p>A description for the namespace.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #
    # @option params [PublicDnsNamespaceProperties] :properties
    #   <p>Properties for the public DNS
    #      namespace.</p>
    #
    # @return [Types::CreatePublicDnsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_dns_namespace(
    #     name: 'Name', # required
    #     creator_request_id: 'CreatorRequestId',
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     properties: {
    #       dns_properties: {
    #         soa: {
    #           ttl: 1 # required
    #         } # required
    #       } # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePublicDnsNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def create_public_dns_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePublicDnsNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePublicDnsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePublicDnsNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::InvalidInput, Errors::ResourceLimitExceeded, Errors::NamespaceAlreadyExists, Errors::DuplicateRequest]),
        data_parser: Parsers::CreatePublicDnsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePublicDnsNamespace,
        stubs: @stubs,
        params_class: Params::CreatePublicDnsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_public_dns_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a service. This action defines the configuration for the following entities:</p>
    #          <ul>
    #             <li>
    #                <p>For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>A</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>AAAA</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>A</code> and <code>AAAA</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>SRV</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>CNAME</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Optionally, a health check</p>
    #             </li>
    #          </ul>
    #          <p>After you create the service, you can submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request, and Cloud Map uses the
    #    values in the configuration to create the specified entities.</p>
    #          <p>For the current quota on the number of instances that you can register using the same namespace and using the
    #    same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    #     quotas</a> in the <i>Cloud Map Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceInput}.
    #
    # @option params [String] :name
    #   <p>The name that you want to assign to the service.</p>
    #            <p>If you want Cloud Map to create an <code>SRV</code> record when you register an instance and you're using a
    #      system that requires a specific <code>SRV</code> format, such as <a href="http://www.haproxy.org/">HAProxy</a>, specify the following for <code>Name</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>Start the name with an underscore (_), such as <code>_exampleservice</code>.</p>
    #               </li>
    #               <li>
    #                  <p>End the name with <i>._protocol</i>, such as <code>._tcp</code>.</p>
    #               </li>
    #            </ul>
    #            <p>When you register an instance, Cloud Map creates an <code>SRV</code> record and assigns a name to the record by
    #      concatenating the service name and the namespace name (for example,</p>
    #            <p>
    #               <code>_exampleservice._tcp.example.com</code>).</p>
    #            <note>
    #               <p>For services that are accessible by DNS queries, you can't create multiple services with names that differ only
    #       by case (such as EXAMPLE and example). Otherwise, these services have the same DNS name and can't be distinguished.
    #       However, if you use a namespace that's only accessible by API calls, then you can create services that with names
    #       that differ only by case.</p>
    #            </note>
    #
    # @option params [String] :namespace_id
    #   <p>The ID of the namespace that you want to use to create the service. The namespace ID must be specified, but it
    #      can be specified either here or in the <code>DnsConfig</code> object.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreateService</code> requests to be
    #      retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any unique string (for
    #      example, a date/timestamp).</p>
    #
    # @option params [String] :description
    #   <p>A description for the service.</p>
    #
    # @option params [DnsConfig] :dns_config
    #   <p>A complex type that contains information about the Amazon Route 53 records that you want Cloud Map to create when you
    #      register an instance. </p>
    #
    # @option params [HealthCheckConfig] :health_check_config
    #   <p>
    #               <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an optional
    #      Route 53 health check. If you specify settings for a health check, Cloud Map associates the health check with all the
    #      Route 53 DNS records that you specify in <code>DnsConfig</code>.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or
    #        <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #            <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/cloud-map/pricing/">Cloud Map Pricing</a>.</p>
    #
    # @option params [HealthCheckCustomConfig] :health_check_custom_config
    #   <p>A complex type that contains information about an optional custom health check.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or
    #        <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #            <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration from an existing
    #      service.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the service. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    #
    # @option params [String] :type
    #   <p>If present, specifies that the service instances are only discoverable using the <code>DiscoverInstances</code>
    #      API operation. No DNS records is registered for the service instances. The only valid value is
    #      <code>HTTP</code>.</p>
    #
    # @return [Types::CreateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service(
    #     name: 'Name', # required
    #     namespace_id: 'NamespaceId',
    #     creator_request_id: 'CreatorRequestId',
    #     description: 'Description',
    #     dns_config: {
    #       namespace_id: 'NamespaceId',
    #       routing_policy: 'MULTIVALUE', # accepts ["MULTIVALUE", "WEIGHTED"]
    #       dns_records: [
    #         {
    #           type: 'SRV', # required - accepts ["SRV", "A", "AAAA", "CNAME"]
    #           ttl: 1 # required
    #         }
    #       ] # required
    #     },
    #     health_check_config: {
    #       type: 'HTTP', # required - accepts ["HTTP", "HTTPS", "TCP"]
    #       resource_path: 'ResourcePath',
    #       failure_threshold: 1
    #     },
    #     health_check_custom_config: {
    #       failure_threshold: 1
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     type: 'HTTP' # accepts ["HTTP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.id #=> String
    #   resp.data.service.arn #=> String
    #   resp.data.service.name #=> String
    #   resp.data.service.namespace_id #=> String
    #   resp.data.service.description #=> String
    #   resp.data.service.instance_count #=> Integer
    #   resp.data.service.dns_config #=> Types::DnsConfig
    #   resp.data.service.dns_config.namespace_id #=> String
    #   resp.data.service.dns_config.routing_policy #=> String, one of ["MULTIVALUE", "WEIGHTED"]
    #   resp.data.service.dns_config.dns_records #=> Array<DnsRecord>
    #   resp.data.service.dns_config.dns_records[0] #=> Types::DnsRecord
    #   resp.data.service.dns_config.dns_records[0].type #=> String, one of ["SRV", "A", "AAAA", "CNAME"]
    #   resp.data.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.data.service.type #=> String, one of ["HTTP", "DNS_HTTP", "DNS"]
    #   resp.data.service.health_check_config #=> Types::HealthCheckConfig
    #   resp.data.service.health_check_config.type #=> String, one of ["HTTP", "HTTPS", "TCP"]
    #   resp.data.service.health_check_config.resource_path #=> String
    #   resp.data.service.health_check_config.failure_threshold #=> Integer
    #   resp.data.service.health_check_custom_config #=> Types::HealthCheckCustomConfig
    #   resp.data.service.health_check_custom_config.failure_threshold #=> Integer
    #   resp.data.service.create_date #=> Time
    #   resp.data.service.creator_request_id #=> String
    #
    def create_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::InvalidInput, Errors::ResourceLimitExceeded, Errors::NamespaceNotFound, Errors::ServiceAlreadyExists]),
        data_parser: Parsers::CreateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateService,
        stubs: @stubs,
        params_class: Params::CreateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a namespace from the current account. If the namespace still contains one or more services, the request
    #    fails.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNamespaceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the namespace that you want to delete.</p>
    #
    # @return [Types::DeleteNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def delete_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceInUse, Errors::NamespaceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::DeleteNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNamespace,
        stubs: @stubs,
        params_class: Params::DeleteNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified service. If the service still contains one or more registered instances, the request
    #    fails.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the service that you want to delete.</p>
    #
    # @return [Types::DeleteServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceOutput
    #
    def delete_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceInUse, Errors::ServiceNotFound]),
        data_parser: Parsers::DeleteService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteService,
        stubs: @stubs,
        params_class: Params::DeleteServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified
    #    instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterInstanceInput}.
    #
    # @option params [String] :service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    #
    # @option params [String] :instance_id
    #   <p>The value that you specified for <code>Id</code> in the <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request.</p>
    #
    # @return [Types::DeregisterInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instance(
    #     service_id: 'ServiceId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterInstanceOutput
    #   resp.data.operation_id #=> String
    #
    def deregister_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InstanceNotFound, Errors::ResourceInUse, Errors::ServiceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::DeregisterInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterInstance,
        stubs: @stubs,
        params_class: Params::DeregisterInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Discovers registered instances for a specified namespace and service. You can use <code>DiscoverInstances</code>
    #    to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries
    #    to discover instances.</p>
    #
    # @param [Hash] params
    #   See {Types::DiscoverInstancesInput}.
    #
    # @option params [String] :namespace_name
    #   <p>The <code>HttpName</code> name of the namespace. It's found in the <code>HttpProperties</code> member of the
    #       <code>Properties</code> member of the namespace.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service that you specified when you registered the instance.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>DiscoverInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns up
    #      to 100 instances.</p>
    #
    # @option params [Hash<String, String>] :query_parameters
    #   <p>Filters to scope the results based on custom attributes for the instance (for example, <code>{version=v1,
    #       az=1a}</code>). Only instances that match all the specified key-value pairs are returned.</p>
    #
    # @option params [Hash<String, String>] :optional_parameters
    #   <p>Opportunistic filters to scope the results based on custom attributes. If there are instances that match both
    #      the filters specified in both the <code>QueryParameters</code> parameter and this parameter, all of these instances
    #      are returned. Otherwise, the filters are ignored, and only instances that match the filters that are specified in the
    #       <code>QueryParameters</code> parameter are returned.</p>
    #
    # @option params [String] :health_status
    #   <p>The health status of the instances that you want to discover. This parameter is ignored for services that don't
    #      have a health check configured, and
    #      all
    #      instances are returned.</p>
    #            <dl>
    #               <dt>HEALTHY</dt>
    #               <dd>
    #                  <p>Returns healthy instances.</p>
    #               </dd>
    #               <dt>UNHEALTHY</dt>
    #               <dd>
    #                  <p>Returns unhealthy instances.</p>
    #               </dd>
    #               <dt>ALL</dt>
    #               <dd>
    #                  <p>Returns all instances.</p>
    #               </dd>
    #               <dt>HEALTHY_OR_ELSE_ALL</dt>
    #               <dd>
    #                  <p>Returns healthy instances, unless none are reporting a healthy state. In that case, return all instances.
    #         This is also called failing open.</p>
    #               </dd>
    #            </dl>
    #
    # @return [Types::DiscoverInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_instances(
    #     namespace_name: 'NamespaceName', # required
    #     service_name: 'ServiceName', # required
    #     max_results: 1,
    #     query_parameters: {
    #       'key' => 'value'
    #     },
    #     health_status: 'HEALTHY' # accepts ["HEALTHY", "UNHEALTHY", "ALL", "HEALTHY_OR_ELSE_ALL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DiscoverInstancesOutput
    #   resp.data.instances #=> Array<HttpInstanceSummary>
    #   resp.data.instances[0] #=> Types::HttpInstanceSummary
    #   resp.data.instances[0].instance_id #=> String
    #   resp.data.instances[0].namespace_name #=> String
    #   resp.data.instances[0].service_name #=> String
    #   resp.data.instances[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.instances[0].attributes #=> Hash<String, String>
    #   resp.data.instances[0].attributes['key'] #=> String
    #
    def discover_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DiscoverInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DiscoverInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DiscoverInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ServiceNotFound, Errors::RequestLimitExceeded, Errors::NamespaceNotFound]),
        data_parser: Parsers::DiscoverInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DiscoverInstances,
        stubs: @stubs,
        params_class: Params::DiscoverInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :discover_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified instance.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInstanceInput}.
    #
    # @option params [String] :service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance that you want to get information about.</p>
    #
    # @return [Types::GetInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance(
    #     service_id: 'ServiceId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInstanceOutput
    #   resp.data.instance #=> Types::Instance
    #   resp.data.instance.id #=> String
    #   resp.data.instance.creator_request_id #=> String
    #   resp.data.instance.attributes #=> Hash<String, String>
    #   resp.data.instance.attributes['key'] #=> String
    #
    def get_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InstanceNotFound, Errors::ServiceNotFound]),
        data_parser: Parsers::GetInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInstance,
        stubs: @stubs,
        params_class: Params::GetInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of one or
    #    more instances that are associated with a specified service.</p>
    #          <note>
    #             <p>There's a brief delay between when you register an instance and when the health status for the instance is
    #     available. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetInstancesHealthStatusInput}.
    #
    # @option params [String] :service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    #
    # @option params [Array<String>] :instances
    #   <p>An array that contains the IDs of all the instances that you want to get the health status for.</p>
    #            <p>If you omit <code>Instances</code>, Cloud Map returns the health status for all the instances that are
    #      associated with the specified service.</p>
    #            <note>
    #               <p>To get the IDs for the instances that you've registered by using a specified service, submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html">ListInstances</a> request.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>GetInstancesHealthStatus</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 instances.</p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>GetInstancesHealthStatus</code> request, omit this value.</p>
    #            <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    #
    # @return [Types::GetInstancesHealthStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instances_health_status(
    #     service_id: 'ServiceId', # required
    #     instances: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInstancesHealthStatusOutput
    #   resp.data.status #=> Hash<String, String>
    #   resp.data.status['key'] #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.next_token #=> String
    #
    def get_instances_health_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInstancesHealthStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInstancesHealthStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInstancesHealthStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InstanceNotFound, Errors::ServiceNotFound]),
        data_parser: Parsers::GetInstancesHealthStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInstancesHealthStatus,
        stubs: @stubs,
        params_class: Params::GetInstancesHealthStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_instances_health_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNamespaceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the namespace that you want to get information about.</p>
    #
    # @return [Types::GetNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_namespace(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNamespaceOutput
    #   resp.data.namespace #=> Types::Namespace
    #   resp.data.namespace.id #=> String
    #   resp.data.namespace.arn #=> String
    #   resp.data.namespace.name #=> String
    #   resp.data.namespace.type #=> String, one of ["DNS_PUBLIC", "DNS_PRIVATE", "HTTP"]
    #   resp.data.namespace.description #=> String
    #   resp.data.namespace.service_count #=> Integer
    #   resp.data.namespace.properties #=> Types::NamespaceProperties
    #   resp.data.namespace.properties.dns_properties #=> Types::DnsProperties
    #   resp.data.namespace.properties.dns_properties.hosted_zone_id #=> String
    #   resp.data.namespace.properties.dns_properties.soa #=> Types::SOA
    #   resp.data.namespace.properties.dns_properties.soa.ttl #=> Integer
    #   resp.data.namespace.properties.http_properties #=> Types::HttpProperties
    #   resp.data.namespace.properties.http_properties.http_name #=> String
    #   resp.data.namespace.create_date #=> Time
    #   resp.data.namespace.creator_request_id #=> String
    #
    def get_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NamespaceNotFound]),
        data_parser: Parsers::GetNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNamespace,
        stubs: @stubs,
        params_class: Params::GetNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about any operation that returns an operation ID in the response, such as a
    #     <code>CreateService</code> request.</p>
    #          <note>
    #             <p>To get a list of operations that match specified criteria, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html">ListOperations</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetOperationInput}.
    #
    # @option params [String] :operation_id
    #   <p>The ID of the operation that you want to get more information about.</p>
    #
    # @return [Types::GetOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation(
    #     operation_id: 'OperationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOperationOutput
    #   resp.data.operation #=> Types::Operation
    #   resp.data.operation.id #=> String
    #   resp.data.operation.type #=> String, one of ["CREATE_NAMESPACE", "DELETE_NAMESPACE", "UPDATE_NAMESPACE", "UPDATE_SERVICE", "REGISTER_INSTANCE", "DEREGISTER_INSTANCE"]
    #   resp.data.operation.status #=> String, one of ["SUBMITTED", "PENDING", "SUCCESS", "FAIL"]
    #   resp.data.operation.error_message #=> String
    #   resp.data.operation.error_code #=> String
    #   resp.data.operation.create_date #=> Time
    #   resp.data.operation.update_date #=> Time
    #   resp.data.operation.targets #=> Hash<String, String>
    #   resp.data.operation.targets['key'] #=> String
    #
    def get_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOperationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOperation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::OperationNotFound]),
        data_parser: Parsers::GetOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOperation,
        stubs: @stubs,
        params_class: Params::GetOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the settings for a specified service.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the service that you want to get settings for.</p>
    #
    # @return [Types::GetServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.id #=> String
    #   resp.data.service.arn #=> String
    #   resp.data.service.name #=> String
    #   resp.data.service.namespace_id #=> String
    #   resp.data.service.description #=> String
    #   resp.data.service.instance_count #=> Integer
    #   resp.data.service.dns_config #=> Types::DnsConfig
    #   resp.data.service.dns_config.namespace_id #=> String
    #   resp.data.service.dns_config.routing_policy #=> String, one of ["MULTIVALUE", "WEIGHTED"]
    #   resp.data.service.dns_config.dns_records #=> Array<DnsRecord>
    #   resp.data.service.dns_config.dns_records[0] #=> Types::DnsRecord
    #   resp.data.service.dns_config.dns_records[0].type #=> String, one of ["SRV", "A", "AAAA", "CNAME"]
    #   resp.data.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.data.service.type #=> String, one of ["HTTP", "DNS_HTTP", "DNS"]
    #   resp.data.service.health_check_config #=> Types::HealthCheckConfig
    #   resp.data.service.health_check_config.type #=> String, one of ["HTTP", "HTTPS", "TCP"]
    #   resp.data.service.health_check_config.resource_path #=> String
    #   resp.data.service.health_check_config.failure_threshold #=> Integer
    #   resp.data.service.health_check_custom_config #=> Types::HealthCheckCustomConfig
    #   resp.data.service.health_check_custom_config.failure_threshold #=> Integer
    #   resp.data.service.create_date #=> Time
    #   resp.data.service.creator_request_id #=> String
    #
    def get_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ServiceNotFound]),
        data_parser: Parsers::GetService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetService,
        stubs: @stubs,
        params_class: Params::GetServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists summary information about the instances that you registered by using a specified service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstancesInput}.
    #
    # @option params [String] :service_id
    #   <p>The ID of the service that you want to list instances for.</p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListInstances</code> request, omit this value.</p>
    #            <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>ListInstances</code> request to get the next group of results. Specify the value of <code>NextToken</code>
    #      from the previous response in the next request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>ListInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns up
    #      to 100 instances.</p>
    #
    # @return [Types::ListInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances(
    #     service_id: 'ServiceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstancesOutput
    #   resp.data.instances #=> Array<InstanceSummary>
    #   resp.data.instances[0] #=> Types::InstanceSummary
    #   resp.data.instances[0].id #=> String
    #   resp.data.instances[0].attributes #=> Hash<String, String>
    #   resp.data.instances[0].attributes['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ServiceNotFound]),
        data_parser: Parsers::ListInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstances,
        stubs: @stubs,
        params_class: Params::ListInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists summary information about the namespaces that were created by the current account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNamespacesInput}.
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListNamespaces</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get the
    #      next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria. It's
    #       possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria but that
    #       subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the criteria.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of namespaces that you want Cloud Map to return in the response to a
    #       <code>ListNamespaces</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns up
    #      to 100 namespaces.</p>
    #
    # @option params [Array<NamespaceFilter>] :filters
    #   <p>A complex type that contains specifications for the namespaces that you want to list.</p>
    #            <p>If you specify more than one filter, a namespace must match all filters to be returned by
    #       <code>ListNamespaces</code>.</p>
    #
    # @return [Types::ListNamespacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'TYPE', # required - accepts ["TYPE"]
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'EQ' # accepts ["EQ", "IN", "BETWEEN"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNamespacesOutput
    #   resp.data.namespaces #=> Array<NamespaceSummary>
    #   resp.data.namespaces[0] #=> Types::NamespaceSummary
    #   resp.data.namespaces[0].id #=> String
    #   resp.data.namespaces[0].arn #=> String
    #   resp.data.namespaces[0].name #=> String
    #   resp.data.namespaces[0].type #=> String, one of ["DNS_PUBLIC", "DNS_PRIVATE", "HTTP"]
    #   resp.data.namespaces[0].description #=> String
    #   resp.data.namespaces[0].service_count #=> Integer
    #   resp.data.namespaces[0].properties #=> Types::NamespaceProperties
    #   resp.data.namespaces[0].properties.dns_properties #=> Types::DnsProperties
    #   resp.data.namespaces[0].properties.dns_properties.hosted_zone_id #=> String
    #   resp.data.namespaces[0].properties.dns_properties.soa #=> Types::SOA
    #   resp.data.namespaces[0].properties.dns_properties.soa.ttl #=> Integer
    #   resp.data.namespaces[0].properties.http_properties #=> Types::HttpProperties
    #   resp.data.namespaces[0].properties.http_properties.http_name #=> String
    #   resp.data.namespaces[0].create_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_namespaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNamespacesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNamespacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNamespaces
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListNamespaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNamespaces,
        stubs: @stubs,
        params_class: Params::ListNamespacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_namespaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists operations that match the criteria that you specify.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOperationsInput}.
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListOperations</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get the
    #      next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> operations and then filters them based on the specified criteria. It's
    #       possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria but that
    #       subsequent groups of <code>MaxResults</code> operations do contain operations that match the criteria.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that you want Cloud Map to return in the response to a <code>ListOperations</code>
    #      request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns up to 100 operations.</p>
    #
    # @option params [Array<OperationFilter>] :filters
    #   <p>A complex type that contains specifications for the operations that you want to list, for example, operations
    #      that you started between a specified start date and end date.</p>
    #            <p>If you specify more than one filter, an operation must match all filters to be returned by
    #       <code>ListOperations</code>.</p>
    #
    # @return [Types::ListOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'NAMESPACE_ID', # required - accepts ["NAMESPACE_ID", "SERVICE_ID", "STATUS", "TYPE", "UPDATE_DATE"]
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'EQ' # accepts ["EQ", "IN", "BETWEEN"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOperationsOutput
    #   resp.data.operations #=> Array<OperationSummary>
    #   resp.data.operations[0] #=> Types::OperationSummary
    #   resp.data.operations[0].id #=> String
    #   resp.data.operations[0].status #=> String, one of ["SUBMITTED", "PENDING", "SUCCESS", "FAIL"]
    #   resp.data.next_token #=> String
    #
    def list_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOperationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOperations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOperations,
        stubs: @stubs,
        params_class: Params::ListOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists summary information for all the services that are associated with one or more specified namespaces.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicesInput}.
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListServices</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get the
    #      next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> services and then filters them based on the specified criteria. It's
    #       possible that no services in the first <code>MaxResults</code> services matched the specified criteria but that
    #       subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of services that you want Cloud Map to return in the response to a <code>ListServices</code>
    #      request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns up to 100 services.</p>
    #
    # @option params [Array<ServiceFilter>] :filters
    #   <p>A complex type that contains specifications for the namespaces that you want to list services for. </p>
    #            <p>If you specify more than one filter, an operation must match all filters to be returned by
    #       <code>ListServices</code>.</p>
    #
    # @return [Types::ListServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'NAMESPACE_ID', # required - accepts ["NAMESPACE_ID"]
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'EQ' # accepts ["EQ", "IN", "BETWEEN"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicesOutput
    #   resp.data.services #=> Array<ServiceSummary>
    #   resp.data.services[0] #=> Types::ServiceSummary
    #   resp.data.services[0].id #=> String
    #   resp.data.services[0].arn #=> String
    #   resp.data.services[0].name #=> String
    #   resp.data.services[0].type #=> String, one of ["HTTP", "DNS_HTTP", "DNS"]
    #   resp.data.services[0].description #=> String
    #   resp.data.services[0].instance_count #=> Integer
    #   resp.data.services[0].dns_config #=> Types::DnsConfig
    #   resp.data.services[0].dns_config.namespace_id #=> String
    #   resp.data.services[0].dns_config.routing_policy #=> String, one of ["MULTIVALUE", "WEIGHTED"]
    #   resp.data.services[0].dns_config.dns_records #=> Array<DnsRecord>
    #   resp.data.services[0].dns_config.dns_records[0] #=> Types::DnsRecord
    #   resp.data.services[0].dns_config.dns_records[0].type #=> String, one of ["SRV", "A", "AAAA", "CNAME"]
    #   resp.data.services[0].dns_config.dns_records[0].ttl #=> Integer
    #   resp.data.services[0].health_check_config #=> Types::HealthCheckConfig
    #   resp.data.services[0].health_check_config.type #=> String, one of ["HTTP", "HTTPS", "TCP"]
    #   resp.data.services[0].health_check_config.resource_path #=> String
    #   resp.data.services[0].health_check_config.failure_threshold #=> Integer
    #   resp.data.services[0].health_check_custom_config #=> Types::HealthCheckCustomConfig
    #   resp.data.services[0].health_check_custom_config.failure_threshold #=> Integer
    #   resp.data.services[0].create_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServices,
        stubs: @stubs,
        params_class: Params::ListServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceNotFoundException]),
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

    # <p>Creates or updates one or more records and, optionally, creates a health check based on the settings in a
    #    specified service. When you submit a <code>RegisterInstance</code> request, the following occurs:</p>
    #          <ul>
    #             <li>
    #                <p>For each DNS record that you define in the service that's specified by <code>ServiceId</code>, a record is
    #      created or updated in the hosted zone that's associated with the corresponding namespace.</p>
    #             </li>
    #             <li>
    #                <p>If the service includes <code>HealthCheckConfig</code>, a health check is created based on the settings in the
    #      health check configuration.</p>
    #             </li>
    #             <li>
    #                <p>The health check, if any, is associated with each of the new or updated records.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify the
    #     same service ID and instance ID.</p>
    #          </important>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html">CreateService</a>.</p>
    #          <p>When Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>If the health check is healthy</b>: returns all the records</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If the health check is unhealthy</b>: returns the applicable value for the last
    #      healthy instance</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If you didn't specify a health check configuration</b>: returns all the
    #      records</p>
    #             </li>
    #          </ul>
    #          <p>For the current quota on the number of instances that you can register using the same namespace and using the
    #    same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    #     quotas</a> in the <i>Cloud Map Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterInstanceInput}.
    #
    # @option params [String] :service_id
    #   <p>The ID of the service that you want to use for settings for the instance.</p>
    #
    # @option params [String] :instance_id
    #   <p>An identifier that you want to associate with the instance. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>If the service that's specified by <code>ServiceId</code> includes settings for an <code>SRV</code> record,
    #        the value of <code>InstanceId</code> is automatically included as part of the value for the <code>SRV</code>
    #        record. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type">DnsRecord > Type</a>.</p>
    #               </li>
    #               <li>
    #                  <p>You can use this value to update an existing instance.</p>
    #               </li>
    #               <li>
    #                  <p>To register a new instance, you must specify a value that's unique among instances that you register by using
    #        the same service. </p>
    #               </li>
    #               <li>
    #                  <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, Cloud Map updates the existing
    #        DNS records, if any. If there's also an existing health check, Cloud Map deletes the old health check and creates
    #        a new one. </p>
    #                  <note>
    #                     <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a
    #          <code>ListHealthChecks</code> request, for example.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests to be
    #      retried without the risk of executing the operation twice. You must use a unique <code>CreatorRequestId</code> string
    #      every time you submit a <code>RegisterInstance</code> request if you're registering additional instances for the same
    #      namespace and service. <code>CreatorRequestId</code> can be any unique string (for example, a date/time
    #      stamp).</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A string map that contains the following information for the service that you specify in
    #      <code>ServiceId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>The attributes that apply to the records that are defined in the service. </p>
    #               </li>
    #               <li>
    #                  <p>For each attribute, the applicable value.</p>
    #               </li>
    #            </ul>
    #            <p>Supported attribute keys include the following:</p>
    #            <dl>
    #               <dt>AWS_ALIAS_DNS_NAME</dt>
    #               <dd>
    #                  <p>If you want Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer,
    #         specify the DNS name that's associated with the load balancer. For information about how to get the DNS name, see
    #         "DNSName" in the topic <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html">AliasTarget</a> in the <i>Route 53 API Reference</i>.</p>
    #                  <p>Note the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The configuration for the service that's specified by <code>ServiceId</code> must include settings for an
    #            <code>A</code> record, an <code>AAAA</code> record, or both.</p>
    #                     </li>
    #                     <li>
    #                        <p>In the service that's specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code> must be
    #            <code>WEIGHTED</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the service that's specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code> settings,
    #           Cloud Map will create the Route 53 health check, but it doesn't associate the health check with the alias
    #           record.</p>
    #                     </li>
    #                     <li>
    #                        <p>Auto naming currently doesn't support creating alias records that route traffic to Amazon Web Services
    #           resources other than Elastic Load Balancing load balancers.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the
    #            <code>AWS_INSTANCE</code> attributes.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>AWS_EC2_INSTANCE_ID</dt>
    #               <dd>
    #                  <p>
    #                     <i>HTTP namespaces only.</i> The Amazon EC2 instance ID for the instance. If the
    #          <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the only other attribute that can be specified is
    #          <code>AWS_INIT_HEALTH_STATUS</code>. When the <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the
    #          <code>AWS_INSTANCE_IPV4</code> attribute will be filled out with the primary private IPv4 address.</p>
    #               </dd>
    #               <dt>AWS_INIT_HEALTH_STATUS</dt>
    #               <dd>
    #                  <p>If the service configuration includes <code>HealthCheckCustomConfig</code>, you can optionally use
    #          <code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the custom health check,
    #          <code>HEALTHY</code> or <code>UNHEALTHY</code>. If you don't specify a value for
    #          <code>AWS_INIT_HEALTH_STATUS</code>, the initial status is <code>HEALTHY</code>.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_CNAME</dt>
    #               <dd>
    #                  <p>If the service configuration includes a <code>CNAME</code> record, the domain name that you want Route 53 to
    #         return in response to DNS queries (for example, <code>example.com</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>CNAME</code> record.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV4</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>A</code> record, the IPv4 address that you want Route 53 to
    #         return in response to DNS queries (for example, <code>192.0.2.44</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>A</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a value
    #         for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV6</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>AAAA</code> record, the IPv6 address that you want Route 53 to
    #         return in response to DNS queries (for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>AAAA</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a
    #         value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_PORT</dt>
    #               <dd>
    #                  <p>If the service includes an <code>SRV</code> record, the value that you want Route 53 to return for the
    #         port.</p>
    #                  <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to send
    #         requests to. </p>
    #                  <p>This value is required if you specified settings for an <code>SRV</code> record or a Route 53 health check when
    #         you created the service.</p>
    #               </dd>
    #               <dt>Custom attributes</dt>
    #               <dd>
    #                  <p>You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute name is
    #         255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of all provided
    #         attributes (sum of all keys and values) must not exceed 5,000 characters.</p>
    #               </dd>
    #            </dl>
    #
    # @return [Types::RegisterInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instance(
    #     service_id: 'ServiceId', # required
    #     instance_id: 'InstanceId', # required
    #     creator_request_id: 'CreatorRequestId',
    #     attributes: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterInstanceOutput
    #   resp.data.operation_id #=> String
    #
    def register_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceLimitExceeded, Errors::ResourceInUse, Errors::ServiceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::RegisterInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterInstance,
        stubs: @stubs,
        params_class: Params::RegisterInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the specified resource. Specifying the tag key is required. You can set the value of a tag to
    #      an empty string, but you can't set the value of a tag to null.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::InvalidInput, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceNotFoundException]),
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

    # <p>Updates an HTTP
    #    namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHttpNamespaceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the namespace that you want to
    #      update.</p>
    #
    # @option params [String] :updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdateHttpNamespace</code> requests to be retried without the risk of running
    #      the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #
    # @option params [HttpNamespaceChange] :namespace
    #   <p>Updated properties for the the HTTP
    #      namespace.</p>
    #
    # @return [Types::UpdateHttpNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_http_namespace(
    #     id: 'Id', # required
    #     updater_request_id: 'UpdaterRequestId',
    #     namespace: {
    #       description: 'Description' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHttpNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def update_http_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHttpNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHttpNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHttpNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceInUse, Errors::NamespaceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::UpdateHttpNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHttpNamespace,
        stubs: @stubs,
        params_class: Params::UpdateHttpNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_http_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Submits a request to change the health status of a custom health check to healthy or unhealthy.</p>
    #          <p>You can use <code>UpdateInstanceCustomHealthStatus</code> to change the status only for custom health checks,
    #    which you define using <code>HealthCheckCustomConfig</code> when you create a service. You can't use it to change the
    #    status for Route 53 health checks, which you define using <code>HealthCheckConfig</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html">HealthCheckCustomConfig</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInstanceCustomHealthStatusInput}.
    #
    # @option params [String] :service_id
    #   <p>The ID of the service that includes the configuration for the custom health check that you want to change the
    #      status for.</p>
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance that you want to change the health status for.</p>
    #
    # @option params [String] :status
    #   <p>The new status of the instance, <code>HEALTHY</code> or <code>UNHEALTHY</code>.</p>
    #
    # @return [Types::UpdateInstanceCustomHealthStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_custom_health_status(
    #     service_id: 'ServiceId', # required
    #     instance_id: 'InstanceId', # required
    #     status: 'HEALTHY' # required - accepts ["HEALTHY", "UNHEALTHY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInstanceCustomHealthStatusOutput
    #
    def update_instance_custom_health_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInstanceCustomHealthStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInstanceCustomHealthStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInstanceCustomHealthStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InstanceNotFound, Errors::ServiceNotFound, Errors::CustomHealthNotFound]),
        data_parser: Parsers::UpdateInstanceCustomHealthStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInstanceCustomHealthStatus,
        stubs: @stubs,
        params_class: Params::UpdateInstanceCustomHealthStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_instance_custom_health_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a private DNS
    #    namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePrivateDnsNamespaceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the namespace that you want to
    #      update.</p>
    #
    # @option params [String] :updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdatePrivateDnsNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #
    # @option params [PrivateDnsNamespaceChange] :namespace
    #   <p>Updated properties for the private DNS
    #      namespace.</p>
    #
    # @return [Types::UpdatePrivateDnsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_private_dns_namespace(
    #     id: 'Id', # required
    #     updater_request_id: 'UpdaterRequestId',
    #     namespace: {
    #       description: 'Description',
    #       properties: {
    #         dns_properties: {
    #           soa: {
    #             ttl: 1 # required
    #           } # required
    #         } # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePrivateDnsNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def update_private_dns_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePrivateDnsNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePrivateDnsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePrivateDnsNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceInUse, Errors::NamespaceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::UpdatePrivateDnsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePrivateDnsNamespace,
        stubs: @stubs,
        params_class: Params::UpdatePrivateDnsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_private_dns_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a public DNS
    #    namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePublicDnsNamespaceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the namespace being
    #      updated.</p>
    #
    # @option params [String] :updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdatePublicDnsNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    #
    # @option params [PublicDnsNamespaceChange] :namespace
    #   <p>Updated properties for the public DNS
    #      namespace.</p>
    #
    # @return [Types::UpdatePublicDnsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_dns_namespace(
    #     id: 'Id', # required
    #     updater_request_id: 'UpdaterRequestId',
    #     namespace: {
    #       description: 'Description',
    #       properties: {
    #         dns_properties: {
    #           soa: {
    #             ttl: 1 # required
    #           } # required
    #         } # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePublicDnsNamespaceOutput
    #   resp.data.operation_id #=> String
    #
    def update_public_dns_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePublicDnsNamespaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePublicDnsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePublicDnsNamespace
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ResourceInUse, Errors::NamespaceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::UpdatePublicDnsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePublicDnsNamespace,
        stubs: @stubs,
        params_class: Params::UpdatePublicDnsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_public_dns_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Submits a request to perform the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p>
    #             </li>
    #             <li>
    #                <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p>
    #                <note>
    #                   <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p>For public and private DNS namespaces, note the following:</p>
    #          <ul>
    #             <li>
    #                <p>If you omit any existing <code>DnsRecords</code> or <code>HealthCheckConfig</code> configurations from an
    #       <code>UpdateService</code> request, the configurations are deleted from the service.</p>
    #             </li>
    #             <li>
    #                <p>If you omit an existing <code>HealthCheckCustomConfig</code> configuration from an <code>UpdateService</code>
    #      request, the configuration isn't deleted from the service.</p>
    #             </li>
    #          </ul>
    #          <p>When you update settings for a service, Cloud Map also updates the corresponding settings in all the records
    #    and health checks that were created by using the specified service.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the service that you want to update.</p>
    #
    # @option params [ServiceChange] :service
    #   <p>A complex type that contains the new settings for the service.</p>
    #
    # @return [Types::UpdateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service(
    #     id: 'Id', # required
    #     service: {
    #       description: 'Description',
    #       dns_config: {
    #         dns_records: [
    #           {
    #             type: 'SRV', # required - accepts ["SRV", "A", "AAAA", "CNAME"]
    #             ttl: 1 # required
    #           }
    #         ] # required
    #       },
    #       health_check_config: {
    #         type: 'HTTP', # required - accepts ["HTTP", "HTTPS", "TCP"]
    #         resource_path: 'ResourcePath',
    #         failure_threshold: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceOutput
    #   resp.data.operation_id #=> String
    #
    def update_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::ServiceNotFound, Errors::DuplicateRequest]),
        data_parser: Parsers::UpdateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateService,
        stubs: @stubs,
        params_class: Params::UpdateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service
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
