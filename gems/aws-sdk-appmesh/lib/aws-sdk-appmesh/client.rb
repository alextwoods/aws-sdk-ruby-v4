# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AppMesh
  # An API client for AppMesh
  # See {#initialize} for a full list of supported configuration options
  # <p>App Mesh is a service mesh based on the Envoy proxy that makes it easy to
  #          monitor and control microservices. App Mesh standardizes how your microservices
  #          communicate, giving you end-to-end visibility and helping to ensure high availability for
  #          your applications.</p>
  #          <p>App Mesh gives you consistent visibility and network traffic controls for
  #          every microservice in an application. You can use App Mesh with Amazon Web Services Fargate, Amazon ECS, Amazon EKS, Kubernetes on Amazon Web Services, and
  #             Amazon EC2.</p>
  #          <note>
  #             <p>App Mesh supports microservice applications that use service discovery
  #             naming for their components. For more information about service discovery on Amazon ECS, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
  #                Discovery</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. Kubernetes
  #                <code>kube-dns</code> and <code>coredns</code> are supported. For more information,
  #             see <a href="https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/">DNS
  #                for Services and Pods</a> in the Kubernetes documentation.</p>
  #          </note>
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
    def initialize(config = AWS::SDK::AppMesh::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a gateway route.</p>
    #          <p>A gateway route is attached to a virtual gateway and routes traffic to an existing
    #          virtual service. If a route matches a request, it can distribute traffic to a target
    #          virtual service.</p>
    #          <p>For more information about gateway routes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html">Gateway routes</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGatewayRouteInput}.
    #
    # @option params [String] :gateway_route_name
    #   <p>The name to use for the gateway route.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the gateway route in.</p>
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to associate the gateway route with. If the virtual
    #            gateway is in a shared mesh, then you must be the owner of the virtual gateway
    #            resource.</p>
    #
    # @option params [GatewayRouteSpec] :spec
    #   <p>The gateway route specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the gateway route to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::CreateGatewayRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_route(
    #     gateway_route_name: 'gatewayRouteName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     spec: {
    #       priority: 1,
    #       http_route: {
    #         match: {
    #           prefix: 'prefix',
    #           path: {
    #             exact: 'exact',
    #             regex: 'regex'
    #           },
    #           query_parameters: [
    #             {
    #               name: 'name', # required
    #               match: {
    #                 exact: 'exact'
    #               }
    #             }
    #           ],
    #           member_method: 'GET', # accepts ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #           hostname: {
    #             exact: 'exact',
    #             suffix: 'suffix'
    #           },
    #           headers: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 range: {
    #                   start: 1, # required
    #                   end: 1 # required
    #                 },
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         action: {
    #           target: {
    #             virtual_service: {
    #               virtual_service_name: 'virtualServiceName' # required
    #             } # required
    #           }, # required
    #           rewrite: {
    #             prefix: {
    #               default_prefix: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #               value: 'value'
    #             },
    #             path: {
    #               exact: 'exact'
    #             },
    #             hostname: {
    #               default_target_hostname: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #             }
    #           }
    #         } # required
    #       },
    #       grpc_route: {
    #         match: {
    #           service_name: 'serviceName',
    #           metadata: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         action: {
    #           rewrite: {
    #           }
    #         } # required
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGatewayRouteOutput
    #   resp.data.gateway_route #=> Types::GatewayRouteData
    #   resp.data.gateway_route.mesh_name #=> String
    #   resp.data.gateway_route.gateway_route_name #=> String
    #   resp.data.gateway_route.virtual_gateway_name #=> String
    #   resp.data.gateway_route.spec #=> Types::GatewayRouteSpec
    #   resp.data.gateway_route.spec.priority #=> Integer
    #   resp.data.gateway_route.spec.http_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.http_route.match #=> Types::HttpGatewayRouteMatch
    #   resp.data.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.gateway_route.spec.http_route.match.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.path.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.gateway_route.spec.http_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.http_route.match.hostname.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.hostname.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers #=> Array<HttpGatewayRouteHeader>
    #   resp.data.gateway_route.spec.http_route.match.headers[0] #=> Types::HttpGatewayRouteHeader
    #   resp.data.gateway_route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.action #=> Types::HttpGatewayRouteAction
    #   resp.data.gateway_route.spec.http_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service #=> Types::GatewayRouteVirtualService
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite #=> Types::HttpGatewayRouteRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix #=> Types::HttpGatewayRoutePrefixRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.default_prefix #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.value #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path #=> Types::HttpGatewayRoutePathRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname.default_target_hostname #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http2_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route #=> Types::GrpcGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route.match #=> Types::GrpcGatewayRouteMatch
    #   resp.data.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.grpc_route.match.metadata #=> Array<GrpcGatewayRouteMetadata>
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0] #=> Types::GrpcGatewayRouteMetadata
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.grpc_route.action #=> Types::GrpcGatewayRouteAction
    #   resp.data.gateway_route.spec.grpc_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite #=> Types::GrpcGatewayRouteRewrite
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.metadata #=> Types::ResourceMetadata
    #   resp.data.gateway_route.metadata.arn #=> String
    #   resp.data.gateway_route.metadata.version #=> Integer
    #   resp.data.gateway_route.metadata.uid #=> String
    #   resp.data.gateway_route.metadata.created_at #=> Time
    #   resp.data.gateway_route.metadata.last_updated_at #=> Time
    #   resp.data.gateway_route.metadata.mesh_owner #=> String
    #   resp.data.gateway_route.metadata.resource_owner #=> String
    #   resp.data.gateway_route.status #=> Types::GatewayRouteStatus
    #   resp.data.gateway_route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_gateway_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGatewayRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGatewayRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGatewayRoute
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateGatewayRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGatewayRoute,
        stubs: @stubs,
        params_class: Params::CreateGatewayRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_gateway_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a service mesh.</p>
    #          <p> A service mesh is a logical boundary for network traffic between services that are
    #          represented by resources within the mesh. After you create your service mesh, you can
    #          create virtual services, virtual nodes, virtual routers, and routes to distribute traffic
    #          between the applications in your mesh.</p>
    #          <p>For more information about service meshes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html">Service meshes</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMeshInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name to use for the service mesh.</p>
    #
    # @option params [MeshSpec] :spec
    #   <p>The service mesh specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the service mesh to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @return [Types::CreateMeshOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mesh(
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       egress_filter: {
    #         type: 'ALLOW_ALL' # required - accepts ["ALLOW_ALL", "DROP_ALL"]
    #       },
    #       service_discovery: {
    #         ip_preference: 'IPv6_PREFERRED' # accepts ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMeshOutput
    #   resp.data.mesh #=> Types::MeshData
    #   resp.data.mesh.mesh_name #=> String
    #   resp.data.mesh.spec #=> Types::MeshSpec
    #   resp.data.mesh.spec.egress_filter #=> Types::EgressFilter
    #   resp.data.mesh.spec.egress_filter.type #=> String, one of ["ALLOW_ALL", "DROP_ALL"]
    #   resp.data.mesh.spec.service_discovery #=> Types::MeshServiceDiscovery
    #   resp.data.mesh.spec.service_discovery.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.mesh.metadata #=> Types::ResourceMetadata
    #   resp.data.mesh.metadata.arn #=> String
    #   resp.data.mesh.metadata.version #=> Integer
    #   resp.data.mesh.metadata.uid #=> String
    #   resp.data.mesh.metadata.created_at #=> Time
    #   resp.data.mesh.metadata.last_updated_at #=> Time
    #   resp.data.mesh.metadata.mesh_owner #=> String
    #   resp.data.mesh.metadata.resource_owner #=> String
    #   resp.data.mesh.status #=> Types::MeshStatus
    #   resp.data.mesh.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_mesh(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMeshInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMeshInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMesh
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateMesh
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMesh,
        stubs: @stubs,
        params_class: Params::CreateMeshOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_mesh
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a route that is associated with a virtual router.</p>
    #          <p> You can route several different protocols and define a retry policy for a route.
    #          Traffic can be routed to one or more virtual nodes.</p>
    #          <p>For more information about routes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html">Routes</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRouteInput}.
    #
    # @option params [String] :route_name
    #   <p>The name to use for the route.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the route in.</p>
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router in which to create the route. If the virtual router is in
    #            a shared mesh, then you must be the owner of the virtual router resource.</p>
    #
    # @option params [RouteSpec] :spec
    #   <p>The route specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the route to assist with categorization and
    #            organization. Each tag consists of a key and an optional value, both of which you define.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::CreateRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route(
    #     route_name: 'routeName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_router_name: 'virtualRouterName', # required
    #     spec: {
    #       priority: 1,
    #       http_route: {
    #         match: {
    #           prefix: 'prefix',
    #           path: {
    #             exact: 'exact',
    #             regex: 'regex'
    #           },
    #           query_parameters: [
    #             {
    #               name: 'name', # required
    #               match: {
    #                 exact: 'exact'
    #               }
    #             }
    #           ],
    #           member_method: 'GET', # accepts ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #           scheme: 'http', # accepts ["http", "https"]
    #           headers: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 range: {
    #                   start: 1, # required
    #                   end: 1 # required
    #                 },
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         action: {
    #           weighted_targets: [
    #             {
    #               virtual_node: 'virtualNode', # required
    #               weight: 1 # required
    #             }
    #           ] # required
    #         }, # required
    #         retry_policy: {
    #           per_retry_timeout: {
    #             value: 1,
    #             unit: 's' # accepts ["s", "ms"]
    #           }, # required
    #           max_retries: 1, # required
    #           http_retry_events: [
    #             'member'
    #           ],
    #           tcp_retry_events: [
    #             'connection-error' # accepts ["connection-error"]
    #           ]
    #         },
    #         timeout: {
    #         }
    #       },
    #       tcp_route: {
    #         action: {
    #         }, # required
    #         timeout: {
    #         }
    #       },
    #       grpc_route: {
    #         action: {
    #         }, # required
    #         match: {
    #           service_name: 'serviceName',
    #           method_name: 'methodName',
    #           metadata: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         retry_policy: {
    #           max_retries: 1, # required
    #           grpc_retry_events: [
    #             'cancelled' # accepts ["cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"]
    #           ]
    #         },
    #         timeout: {
    #         }
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRouteOutput
    #   resp.data.route #=> Types::RouteData
    #   resp.data.route.mesh_name #=> String
    #   resp.data.route.virtual_router_name #=> String
    #   resp.data.route.route_name #=> String
    #   resp.data.route.spec #=> Types::RouteSpec
    #   resp.data.route.spec.priority #=> Integer
    #   resp.data.route.spec.http_route #=> Types::HttpRoute
    #   resp.data.route.spec.http_route.match #=> Types::HttpRouteMatch
    #   resp.data.route.spec.http_route.match.prefix #=> String
    #   resp.data.route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.route.spec.http_route.match.path.exact #=> String
    #   resp.data.route.spec.http_route.match.path.regex #=> String
    #   resp.data.route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.route.spec.http_route.match.scheme #=> String, one of ["http", "https"]
    #   resp.data.route.spec.http_route.match.headers #=> Array<HttpRouteHeader>
    #   resp.data.route.spec.http_route.match.headers[0] #=> Types::HttpRouteHeader
    #   resp.data.route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.route.spec.http_route.action #=> Types::HttpRouteAction
    #   resp.data.route.spec.http_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.http_route.action.weighted_targets[0] #=> Types::WeightedTarget
    #   resp.data.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.data.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.data.route.spec.http_route.retry_policy #=> Types::HttpRetryPolicy
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of ["s", "ms"]
    #   resp.data.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of ["connection-error"]
    #   resp.data.route.spec.http_route.timeout #=> Types::HttpTimeout
    #   resp.data.route.spec.http_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.http_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.tcp_route #=> Types::TcpRoute
    #   resp.data.route.spec.tcp_route.action #=> Types::TcpRouteAction
    #   resp.data.route.spec.tcp_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.tcp_route.timeout #=> Types::TcpTimeout
    #   resp.data.route.spec.tcp_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.http2_route #=> Types::HttpRoute
    #   resp.data.route.spec.grpc_route #=> Types::GrpcRoute
    #   resp.data.route.spec.grpc_route.action #=> Types::GrpcRouteAction
    #   resp.data.route.spec.grpc_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.grpc_route.match #=> Types::GrpcRouteMatch
    #   resp.data.route.spec.grpc_route.match.service_name #=> String
    #   resp.data.route.spec.grpc_route.match.method_name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata #=> Array<GrpcRouteMetadata>
    #   resp.data.route.spec.grpc_route.match.metadata[0] #=> Types::GrpcRouteMetadata
    #   resp.data.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcRouteMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.route.spec.grpc_route.retry_policy #=> Types::GrpcRetryPolicy
    #   resp.data.route.spec.grpc_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.grpc_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of ["cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"]
    #   resp.data.route.spec.grpc_route.timeout #=> Types::GrpcTimeout
    #   resp.data.route.spec.grpc_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.grpc_route.timeout.idle #=> Types::Duration
    #   resp.data.route.metadata #=> Types::ResourceMetadata
    #   resp.data.route.metadata.arn #=> String
    #   resp.data.route.metadata.version #=> Integer
    #   resp.data.route.metadata.uid #=> String
    #   resp.data.route.metadata.created_at #=> Time
    #   resp.data.route.metadata.last_updated_at #=> Time
    #   resp.data.route.metadata.mesh_owner #=> String
    #   resp.data.route.metadata.resource_owner #=> String
    #   resp.data.route.status #=> Types::RouteStatus
    #   resp.data.route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoute
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoute,
        stubs: @stubs,
        params_class: Params::CreateRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a virtual gateway.</p>
    #          <p>A virtual gateway allows resources outside your mesh to communicate to resources that
    #          are inside your mesh. The virtual gateway represents an Envoy proxy running in an Amazon ECS task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a
    #          virtual node, which represents an Envoy running with an application, a virtual gateway
    #          represents Envoy deployed by itself.</p>
    #          <p>For more information about virtual gateways, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html">Virtual gateways</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateVirtualGatewayInput}.
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name to use for the virtual gateway.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual gateway in.</p>
    #
    # @option params [VirtualGatewaySpec] :spec
    #   <p>The virtual gateway specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual gateway to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::CreateVirtualGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_gateway(
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [
    #               1
    #             ],
    #             certificate: {
    #               # One of:
    #               file: {
    #                 certificate_chain: 'certificateChain', # required
    #                 private_key: 'privateKey' # required
    #               },
    #               sds: {
    #                 secret_name: 'secretName' # required
    #               }
    #             },
    #             validation: {
    #               member_trust: {
    #                 # One of:
    #                 acm: {
    #                   certificate_authority_arns: [
    #                     'member'
    #                   ] # required
    #                 },
    #                 file: {
    #                   certificate_chain: 'certificateChain' # required
    #                 },
    #                 sds: {
    #                   secret_name: 'secretName' # required
    #                 }
    #               }, # required
    #               subject_alternative_names: {
    #                 match: {
    #                   exact: [
    #                     'member'
    #                   ] # required
    #                 } # required
    #               }
    #             } # required
    #           }
    #         }
    #       },
    #       listeners: [
    #         {
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: 'http', # required - accepts ["http", "http2", "grpc"]
    #             port: 1,
    #             path: 'path',
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1 # required
    #           },
    #           port_mapping: {
    #             port: 1, # required
    #             protocol: 'http' # required - accepts ["http", "http2", "grpc"]
    #           }, # required
    #           tls: {
    #             mode: 'STRICT', # required - accepts ["STRICT", "PERMISSIVE", "DISABLED"]
    #             validation: {
    #               member_trust: {
    #                 # One of:
    #               }, # required
    #             },
    #             certificate: {
    #               # One of:
    #               acm: {
    #                 certificate_arn: 'certificateArn' # required
    #               },
    #             } # required
    #           },
    #           connection_pool: {
    #             # One of:
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1 # required
    #             },
    #             grpc: {
    #               max_requests: 1 # required
    #             }
    #           }
    #         }
    #       ], # required
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: 'path' # required
    #           }
    #         }
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVirtualGatewayOutput
    #   resp.data.virtual_gateway #=> Types::VirtualGatewayData
    #   resp.data.virtual_gateway.mesh_name #=> String
    #   resp.data.virtual_gateway.virtual_gateway_name #=> String
    #   resp.data.virtual_gateway.spec #=> Types::VirtualGatewaySpec
    #   resp.data.virtual_gateway.spec.backend_defaults #=> Types::VirtualGatewayBackendDefaults
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy #=> Types::VirtualGatewayClientPolicy
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls #=> Types::VirtualGatewayClientPolicyTls
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate #=> Types::VirtualGatewayClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.private_key #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation #=> Types::VirtualGatewayTlsValidationContext
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust #=> Types::VirtualGatewayTlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm #=> Types::VirtualGatewayTlsValidationContextAcmTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_gateway.spec.listeners #=> Array<VirtualGatewayListener>
    #   resp.data.virtual_gateway.spec.listeners[0] #=> Types::VirtualGatewayListener
    #   resp.data.virtual_gateway.spec.listeners[0].health_check #=> Types::VirtualGatewayHealthCheckPolicy
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping #=> Types::VirtualGatewayPortMapping
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls #=> Types::VirtualGatewayListenerTls
    #   resp.data.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation #=> Types::VirtualGatewayListenerTlsValidationContext
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust #=> Types::VirtualGatewayListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate #=> Types::VirtualGatewayListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm #=> Types::VirtualGatewayListenerTlsAcmCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool #=> Types::VirtualGatewayConnectionPool, one of [Http, Http2, Grpc]
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http #=> Types::VirtualGatewayHttpConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2 #=> Types::VirtualGatewayHttp2ConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc #=> Types::VirtualGatewayGrpcConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.logging #=> Types::VirtualGatewayLogging
    #   resp.data.virtual_gateway.spec.logging.access_log #=> Types::VirtualGatewayAccessLog, one of [File]
    #   resp.data.virtual_gateway.spec.logging.access_log.file #=> Types::VirtualGatewayFileAccessLog
    #   resp.data.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_gateway.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_gateway.metadata.arn #=> String
    #   resp.data.virtual_gateway.metadata.version #=> Integer
    #   resp.data.virtual_gateway.metadata.uid #=> String
    #   resp.data.virtual_gateway.metadata.created_at #=> Time
    #   resp.data.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.data.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.data.virtual_gateway.metadata.resource_owner #=> String
    #   resp.data.virtual_gateway.status #=> Types::VirtualGatewayStatus
    #   resp.data.virtual_gateway.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_virtual_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVirtualGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVirtualGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVirtualGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateVirtualGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVirtualGateway,
        stubs: @stubs,
        params_class: Params::CreateVirtualGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_virtual_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a virtual node within a service mesh.</p>
    #          <p> A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS service or a Kubernetes deployment. When you create a virtual node, you can
    #          specify the service discovery information for your task group, and whether the proxy
    #          running in a task group will communicate with other proxies using Transport Layer Security
    #          (TLS).</p>
    #          <p>You define a <code>listener</code> for any inbound traffic that your virtual node
    #          expects. Any virtual service that your virtual node expects to communicate to is specified
    #          as a <code>backend</code>.</p>
    #          <p>The response metadata for your new virtual node contains the <code>arn</code> that is
    #          associated with the virtual node. Set this value to the full ARN; for example,
    #             <code>arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp</code>)
    #          as the <code>APPMESH_RESOURCE_ARN</code> environment variable for your task group's Envoy
    #          proxy container in your task definition or pod spec. This is then mapped to the
    #             <code>node.id</code> and <code>node.cluster</code> Envoy parameters.</p>
    #          <note>
    #             <p>By default, App Mesh uses the name of the resource you specified in
    #                <code>APPMESH_RESOURCE_ARN</code> when Envoy is referring to itself in metrics and
    #             traces. You can override this behavior by setting the
    #                <code>APPMESH_RESOURCE_CLUSTER</code> environment variable with your own name.</p>
    #          </note>
    #          <p>For more information about virtual nodes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html">Virtual nodes</a>. You must be using <code>1.15.0</code> or later of the Envoy image when
    #          setting these variables. For more information aboutApp Mesh Envoy variables, see
    #             <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html">Envoy
    #             image</a> in the App Mesh User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVirtualNodeInput}.
    #
    # @option params [String] :virtual_node_name
    #   <p>The name to use for the virtual node.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual node in.</p>
    #
    # @option params [VirtualNodeSpec] :spec
    #   <p>The virtual node specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual node to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::CreateVirtualNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_node(
    #     virtual_node_name: 'virtualNodeName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       service_discovery: {
    #         # One of:
    #         dns: {
    #           hostname: 'hostname', # required
    #           response_type: 'LOADBALANCER', # accepts ["LOADBALANCER", "ENDPOINTS"]
    #           ip_preference: 'IPv6_PREFERRED' # accepts ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #         },
    #         aws_cloud_map: {
    #           namespace_name: 'namespaceName', # required
    #           service_name: 'serviceName', # required
    #           attributes: [
    #             {
    #               key: 'key', # required
    #               value: 'value' # required
    #             }
    #           ],
    #           ip_preference: 'IPv6_PREFERRED' # accepts ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #         }
    #       },
    #       listeners: [
    #         {
    #           port_mapping: {
    #             port: 1, # required
    #             protocol: 'http' # required - accepts ["http", "tcp", "http2", "grpc"]
    #           }, # required
    #           tls: {
    #             mode: 'STRICT', # required - accepts ["STRICT", "PERMISSIVE", "DISABLED"]
    #             certificate: {
    #               # One of:
    #               acm: {
    #                 certificate_arn: 'certificateArn' # required
    #               },
    #               file: {
    #                 certificate_chain: 'certificateChain', # required
    #                 private_key: 'privateKey' # required
    #               },
    #               sds: {
    #                 secret_name: 'secretName' # required
    #               }
    #             }, # required
    #             validation: {
    #               member_trust: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: 'certificateChain' # required
    #                 },
    #                 sds: {
    #                   secret_name: 'secretName' # required
    #                 }
    #               }, # required
    #               subject_alternative_names: {
    #                 match: {
    #                   exact: [
    #                     'member'
    #                   ] # required
    #                 } # required
    #               }
    #             }
    #           },
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: 'http', # required - accepts ["http", "tcp", "http2", "grpc"]
    #             port: 1,
    #             path: 'path',
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1 # required
    #           },
    #           timeout: {
    #             # One of:
    #             tcp: {
    #               idle: {
    #                 value: 1,
    #                 unit: 's' # accepts ["s", "ms"]
    #               }
    #             },
    #             http: {
    #             },
    #             grpc: {
    #             }
    #           },
    #           outlier_detection: {
    #             max_server_errors: 1, # required
    #             max_ejection_percent: 1 # required
    #           },
    #           connection_pool: {
    #             # One of:
    #             tcp: {
    #               max_connections: 1 # required
    #             },
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1 # required
    #             },
    #             grpc: {
    #               max_requests: 1 # required
    #             }
    #           }
    #         }
    #       ],
    #       backends: [
    #         {
    #           # One of:
    #           virtual_service: {
    #             virtual_service_name: 'virtualServiceName', # required
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [
    #                   1
    #                 ],
    #                 certificate: {
    #                   # One of:
    #                 },
    #                 validation: {
    #                   member_trust: {
    #                     # One of:
    #                     acm: {
    #                       certificate_authority_arns: [
    #                         'member'
    #                       ] # required
    #                     },
    #                   }, # required
    #                 } # required
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       backend_defaults: {
    #       },
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: 'path' # required
    #           }
    #         }
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVirtualNodeOutput
    #   resp.data.virtual_node #=> Types::VirtualNodeData
    #   resp.data.virtual_node.mesh_name #=> String
    #   resp.data.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_node.spec #=> Types::VirtualNodeSpec
    #   resp.data.virtual_node.spec.service_discovery #=> Types::ServiceDiscovery, one of [Dns, AwsCloudMap]
    #   resp.data.virtual_node.spec.service_discovery.dns #=> Types::DnsServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.data.virtual_node.spec.service_discovery.dns.response_type #=> String, one of ["LOADBALANCER", "ENDPOINTS"]
    #   resp.data.virtual_node.spec.service_discovery.dns.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map #=> Types::AwsCloudMapServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array<AwsCloudMapInstanceAttribute>
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0] #=> Types::AwsCloudMapInstanceAttribute
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.listeners #=> Array<Listener>
    #   resp.data.virtual_node.spec.listeners[0] #=> Types::Listener
    #   resp.data.virtual_node.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].tls #=> Types::ListenerTls
    #   resp.data.virtual_node.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate #=> Types::ListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm #=> Types::ListenerTlsAcmCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation #=> Types::ListenerTlsValidationContext
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust #=> Types::ListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check #=> Types::HealthCheckPolicy
    #   resp.data.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout #=> Types::ListenerTimeout, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp #=> Types::TcpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of ["s", "ms"]
    #   resp.data.virtual_node.spec.listeners[0].timeout.http #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http2 #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc #=> Types::GrpcTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection #=> Types::OutlierDetection
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_server_errors #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.interval #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.base_ejection_duration #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_ejection_percent #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool #=> Types::VirtualNodeConnectionPool, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp #=> Types::VirtualNodeTcpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http #=> Types::VirtualNodeHttpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2 #=> Types::VirtualNodeHttp2ConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc #=> Types::VirtualNodeGrpcConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_node.spec.backends #=> Array<Backend>
    #   resp.data.virtual_node.spec.backends[0] #=> Types::Backend, one of [VirtualService]
    #   resp.data.virtual_node.spec.backends[0].virtual_service #=> Types::VirtualServiceBackend
    #   resp.data.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls #=> Types::ClientPolicyTls
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate #=> Types::ClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation #=> Types::TlsValidationContext
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust #=> Types::TlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm #=> Types::TlsValidationContextAcmTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.backend_defaults #=> Types::BackendDefaults
    #   resp.data.virtual_node.spec.backend_defaults.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.logging #=> Types::Logging
    #   resp.data.virtual_node.spec.logging.access_log #=> Types::AccessLog, one of [File]
    #   resp.data.virtual_node.spec.logging.access_log.file #=> Types::FileAccessLog
    #   resp.data.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_node.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_node.metadata.arn #=> String
    #   resp.data.virtual_node.metadata.version #=> Integer
    #   resp.data.virtual_node.metadata.uid #=> String
    #   resp.data.virtual_node.metadata.created_at #=> Time
    #   resp.data.virtual_node.metadata.last_updated_at #=> Time
    #   resp.data.virtual_node.metadata.mesh_owner #=> String
    #   resp.data.virtual_node.metadata.resource_owner #=> String
    #   resp.data.virtual_node.status #=> Types::VirtualNodeStatus
    #   resp.data.virtual_node.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_virtual_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVirtualNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVirtualNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVirtualNode
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateVirtualNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVirtualNode,
        stubs: @stubs,
        params_class: Params::CreateVirtualNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_virtual_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a virtual router within a service mesh.</p>
    #          <p>Specify a <code>listener</code> for any inbound traffic that your virtual router
    #          receives. Create a virtual router for each protocol and port that you need to route.
    #          Virtual routers handle traffic for one or more virtual services within your mesh. After you
    #          create your virtual router, create and associate routes for your virtual router that direct
    #          incoming requests to different virtual nodes.</p>
    #          <p>For more information about virtual routers, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html">Virtual routers</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVirtualRouterInput}.
    #
    # @option params [String] :virtual_router_name
    #   <p>The name to use for the virtual router.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual router in.</p>
    #
    # @option params [VirtualRouterSpec] :spec
    #   <p>The virtual router specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual router to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::CreateVirtualRouterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_router(
    #     virtual_router_name: 'virtualRouterName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       listeners: [
    #         {
    #           port_mapping: {
    #             port: 1, # required
    #             protocol: 'http' # required - accepts ["http", "tcp", "http2", "grpc"]
    #           } # required
    #         }
    #       ]
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVirtualRouterOutput
    #   resp.data.virtual_router #=> Types::VirtualRouterData
    #   resp.data.virtual_router.mesh_name #=> String
    #   resp.data.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_router.spec #=> Types::VirtualRouterSpec
    #   resp.data.virtual_router.spec.listeners #=> Array<VirtualRouterListener>
    #   resp.data.virtual_router.spec.listeners[0] #=> Types::VirtualRouterListener
    #   resp.data.virtual_router.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_router.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_router.metadata.arn #=> String
    #   resp.data.virtual_router.metadata.version #=> Integer
    #   resp.data.virtual_router.metadata.uid #=> String
    #   resp.data.virtual_router.metadata.created_at #=> Time
    #   resp.data.virtual_router.metadata.last_updated_at #=> Time
    #   resp.data.virtual_router.metadata.mesh_owner #=> String
    #   resp.data.virtual_router.metadata.resource_owner #=> String
    #   resp.data.virtual_router.status #=> Types::VirtualRouterStatus
    #   resp.data.virtual_router.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_virtual_router(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVirtualRouterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVirtualRouterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVirtualRouter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateVirtualRouter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVirtualRouter,
        stubs: @stubs,
        params_class: Params::CreateVirtualRouterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_virtual_router
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a virtual service within a service mesh.</p>
    #          <p>A virtual service is an abstraction of a real service that is provided by a virtual node
    #          directly or indirectly by means of a virtual router. Dependent services call your virtual
    #          service by its <code>virtualServiceName</code>, and those requests are routed to the
    #          virtual node or virtual router that is specified as the provider for the virtual
    #          service.</p>
    #          <p>For more information about virtual services, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html">Virtual services</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVirtualServiceInput}.
    #
    # @option params [String] :virtual_service_name
    #   <p>The name to use for the virtual service.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual service in.</p>
    #
    # @option params [VirtualServiceSpec] :spec
    #   <p>The virtual service specification to apply.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual service to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::CreateVirtualServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_service(
    #     virtual_service_name: 'virtualServiceName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       provider: {
    #         # One of:
    #         virtual_node: {
    #           virtual_node_name: 'virtualNodeName' # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: 'virtualRouterName' # required
    #         }
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVirtualServiceOutput
    #   resp.data.virtual_service #=> Types::VirtualServiceData
    #   resp.data.virtual_service.mesh_name #=> String
    #   resp.data.virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_service.spec #=> Types::VirtualServiceSpec
    #   resp.data.virtual_service.spec.provider #=> Types::VirtualServiceProvider, one of [VirtualNode, VirtualRouter]
    #   resp.data.virtual_service.spec.provider.virtual_node #=> Types::VirtualNodeServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_service.spec.provider.virtual_router #=> Types::VirtualRouterServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_service.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_service.metadata.arn #=> String
    #   resp.data.virtual_service.metadata.version #=> Integer
    #   resp.data.virtual_service.metadata.uid #=> String
    #   resp.data.virtual_service.metadata.created_at #=> Time
    #   resp.data.virtual_service.metadata.last_updated_at #=> Time
    #   resp.data.virtual_service.metadata.mesh_owner #=> String
    #   resp.data.virtual_service.metadata.resource_owner #=> String
    #   resp.data.virtual_service.status #=> Types::VirtualServiceStatus
    #   resp.data.virtual_service.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def create_virtual_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVirtualServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVirtualServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVirtualService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateVirtualService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVirtualService,
        stubs: @stubs,
        params_class: Params::CreateVirtualServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_virtual_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing gateway route.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGatewayRouteInput}.
    #
    # @option params [String] :gateway_route_name
    #   <p>The name of the gateway route to delete.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the gateway route from.</p>
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to delete the route from.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DeleteGatewayRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_route(
    #     gateway_route_name: 'gatewayRouteName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGatewayRouteOutput
    #   resp.data.gateway_route #=> Types::GatewayRouteData
    #   resp.data.gateway_route.mesh_name #=> String
    #   resp.data.gateway_route.gateway_route_name #=> String
    #   resp.data.gateway_route.virtual_gateway_name #=> String
    #   resp.data.gateway_route.spec #=> Types::GatewayRouteSpec
    #   resp.data.gateway_route.spec.priority #=> Integer
    #   resp.data.gateway_route.spec.http_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.http_route.match #=> Types::HttpGatewayRouteMatch
    #   resp.data.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.gateway_route.spec.http_route.match.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.path.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.gateway_route.spec.http_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.http_route.match.hostname.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.hostname.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers #=> Array<HttpGatewayRouteHeader>
    #   resp.data.gateway_route.spec.http_route.match.headers[0] #=> Types::HttpGatewayRouteHeader
    #   resp.data.gateway_route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.action #=> Types::HttpGatewayRouteAction
    #   resp.data.gateway_route.spec.http_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service #=> Types::GatewayRouteVirtualService
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite #=> Types::HttpGatewayRouteRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix #=> Types::HttpGatewayRoutePrefixRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.default_prefix #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.value #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path #=> Types::HttpGatewayRoutePathRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname.default_target_hostname #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http2_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route #=> Types::GrpcGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route.match #=> Types::GrpcGatewayRouteMatch
    #   resp.data.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.grpc_route.match.metadata #=> Array<GrpcGatewayRouteMetadata>
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0] #=> Types::GrpcGatewayRouteMetadata
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.grpc_route.action #=> Types::GrpcGatewayRouteAction
    #   resp.data.gateway_route.spec.grpc_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite #=> Types::GrpcGatewayRouteRewrite
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.metadata #=> Types::ResourceMetadata
    #   resp.data.gateway_route.metadata.arn #=> String
    #   resp.data.gateway_route.metadata.version #=> Integer
    #   resp.data.gateway_route.metadata.uid #=> String
    #   resp.data.gateway_route.metadata.created_at #=> Time
    #   resp.data.gateway_route.metadata.last_updated_at #=> Time
    #   resp.data.gateway_route.metadata.mesh_owner #=> String
    #   resp.data.gateway_route.metadata.resource_owner #=> String
    #   resp.data.gateway_route.status #=> Types::GatewayRouteStatus
    #   resp.data.gateway_route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_gateway_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGatewayRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGatewayRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGatewayRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteGatewayRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGatewayRoute,
        stubs: @stubs,
        params_class: Params::DeleteGatewayRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gateway_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing service mesh.</p>
    #          <p>You must delete all resources (virtual services, routes, virtual routers, and virtual
    #          nodes) in the service mesh before you can delete the mesh itself.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMeshInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete.</p>
    #
    # @return [Types::DeleteMeshOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mesh(
    #     mesh_name: 'meshName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMeshOutput
    #   resp.data.mesh #=> Types::MeshData
    #   resp.data.mesh.mesh_name #=> String
    #   resp.data.mesh.spec #=> Types::MeshSpec
    #   resp.data.mesh.spec.egress_filter #=> Types::EgressFilter
    #   resp.data.mesh.spec.egress_filter.type #=> String, one of ["ALLOW_ALL", "DROP_ALL"]
    #   resp.data.mesh.spec.service_discovery #=> Types::MeshServiceDiscovery
    #   resp.data.mesh.spec.service_discovery.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.mesh.metadata #=> Types::ResourceMetadata
    #   resp.data.mesh.metadata.arn #=> String
    #   resp.data.mesh.metadata.version #=> Integer
    #   resp.data.mesh.metadata.uid #=> String
    #   resp.data.mesh.metadata.created_at #=> Time
    #   resp.data.mesh.metadata.last_updated_at #=> Time
    #   resp.data.mesh.metadata.mesh_owner #=> String
    #   resp.data.mesh.metadata.resource_owner #=> String
    #   resp.data.mesh.status #=> Types::MeshStatus
    #   resp.data.mesh.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_mesh(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMeshInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMeshInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMesh
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteMesh
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMesh,
        stubs: @stubs,
        params_class: Params::DeleteMeshOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mesh
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing route.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteInput}.
    #
    # @option params [String] :route_name
    #   <p>The name of the route to delete.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the route in.</p>
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to delete the route in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DeleteRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route(
    #     route_name: 'routeName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_router_name: 'virtualRouterName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteOutput
    #   resp.data.route #=> Types::RouteData
    #   resp.data.route.mesh_name #=> String
    #   resp.data.route.virtual_router_name #=> String
    #   resp.data.route.route_name #=> String
    #   resp.data.route.spec #=> Types::RouteSpec
    #   resp.data.route.spec.priority #=> Integer
    #   resp.data.route.spec.http_route #=> Types::HttpRoute
    #   resp.data.route.spec.http_route.match #=> Types::HttpRouteMatch
    #   resp.data.route.spec.http_route.match.prefix #=> String
    #   resp.data.route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.route.spec.http_route.match.path.exact #=> String
    #   resp.data.route.spec.http_route.match.path.regex #=> String
    #   resp.data.route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.route.spec.http_route.match.scheme #=> String, one of ["http", "https"]
    #   resp.data.route.spec.http_route.match.headers #=> Array<HttpRouteHeader>
    #   resp.data.route.spec.http_route.match.headers[0] #=> Types::HttpRouteHeader
    #   resp.data.route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.route.spec.http_route.action #=> Types::HttpRouteAction
    #   resp.data.route.spec.http_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.http_route.action.weighted_targets[0] #=> Types::WeightedTarget
    #   resp.data.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.data.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.data.route.spec.http_route.retry_policy #=> Types::HttpRetryPolicy
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of ["s", "ms"]
    #   resp.data.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of ["connection-error"]
    #   resp.data.route.spec.http_route.timeout #=> Types::HttpTimeout
    #   resp.data.route.spec.http_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.http_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.tcp_route #=> Types::TcpRoute
    #   resp.data.route.spec.tcp_route.action #=> Types::TcpRouteAction
    #   resp.data.route.spec.tcp_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.tcp_route.timeout #=> Types::TcpTimeout
    #   resp.data.route.spec.tcp_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.http2_route #=> Types::HttpRoute
    #   resp.data.route.spec.grpc_route #=> Types::GrpcRoute
    #   resp.data.route.spec.grpc_route.action #=> Types::GrpcRouteAction
    #   resp.data.route.spec.grpc_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.grpc_route.match #=> Types::GrpcRouteMatch
    #   resp.data.route.spec.grpc_route.match.service_name #=> String
    #   resp.data.route.spec.grpc_route.match.method_name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata #=> Array<GrpcRouteMetadata>
    #   resp.data.route.spec.grpc_route.match.metadata[0] #=> Types::GrpcRouteMetadata
    #   resp.data.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcRouteMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.route.spec.grpc_route.retry_policy #=> Types::GrpcRetryPolicy
    #   resp.data.route.spec.grpc_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.grpc_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of ["cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"]
    #   resp.data.route.spec.grpc_route.timeout #=> Types::GrpcTimeout
    #   resp.data.route.spec.grpc_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.grpc_route.timeout.idle #=> Types::Duration
    #   resp.data.route.metadata #=> Types::ResourceMetadata
    #   resp.data.route.metadata.arn #=> String
    #   resp.data.route.metadata.version #=> Integer
    #   resp.data.route.metadata.uid #=> String
    #   resp.data.route.metadata.created_at #=> Time
    #   resp.data.route.metadata.last_updated_at #=> Time
    #   resp.data.route.metadata.mesh_owner #=> String
    #   resp.data.route.metadata.resource_owner #=> String
    #   resp.data.route.status #=> Types::RouteStatus
    #   resp.data.route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoute,
        stubs: @stubs,
        params_class: Params::DeleteRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing virtual gateway. You cannot delete a virtual gateway if any gateway
    #          routes are associated to it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualGatewayInput}.
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to delete.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual gateway from.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DeleteVirtualGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_gateway(
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualGatewayOutput
    #   resp.data.virtual_gateway #=> Types::VirtualGatewayData
    #   resp.data.virtual_gateway.mesh_name #=> String
    #   resp.data.virtual_gateway.virtual_gateway_name #=> String
    #   resp.data.virtual_gateway.spec #=> Types::VirtualGatewaySpec
    #   resp.data.virtual_gateway.spec.backend_defaults #=> Types::VirtualGatewayBackendDefaults
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy #=> Types::VirtualGatewayClientPolicy
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls #=> Types::VirtualGatewayClientPolicyTls
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate #=> Types::VirtualGatewayClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.private_key #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation #=> Types::VirtualGatewayTlsValidationContext
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust #=> Types::VirtualGatewayTlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm #=> Types::VirtualGatewayTlsValidationContextAcmTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_gateway.spec.listeners #=> Array<VirtualGatewayListener>
    #   resp.data.virtual_gateway.spec.listeners[0] #=> Types::VirtualGatewayListener
    #   resp.data.virtual_gateway.spec.listeners[0].health_check #=> Types::VirtualGatewayHealthCheckPolicy
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping #=> Types::VirtualGatewayPortMapping
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls #=> Types::VirtualGatewayListenerTls
    #   resp.data.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation #=> Types::VirtualGatewayListenerTlsValidationContext
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust #=> Types::VirtualGatewayListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate #=> Types::VirtualGatewayListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm #=> Types::VirtualGatewayListenerTlsAcmCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool #=> Types::VirtualGatewayConnectionPool, one of [Http, Http2, Grpc]
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http #=> Types::VirtualGatewayHttpConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2 #=> Types::VirtualGatewayHttp2ConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc #=> Types::VirtualGatewayGrpcConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.logging #=> Types::VirtualGatewayLogging
    #   resp.data.virtual_gateway.spec.logging.access_log #=> Types::VirtualGatewayAccessLog, one of [File]
    #   resp.data.virtual_gateway.spec.logging.access_log.file #=> Types::VirtualGatewayFileAccessLog
    #   resp.data.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_gateway.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_gateway.metadata.arn #=> String
    #   resp.data.virtual_gateway.metadata.version #=> Integer
    #   resp.data.virtual_gateway.metadata.uid #=> String
    #   resp.data.virtual_gateway.metadata.created_at #=> Time
    #   resp.data.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.data.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.data.virtual_gateway.metadata.resource_owner #=> String
    #   resp.data.virtual_gateway.status #=> Types::VirtualGatewayStatus
    #   resp.data.virtual_gateway.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_virtual_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteVirtualGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualGateway,
        stubs: @stubs,
        params_class: Params::DeleteVirtualGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing virtual node.</p>
    #          <p>You must delete any virtual services that list a virtual node as a service provider
    #          before you can delete the virtual node itself.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualNodeInput}.
    #
    # @option params [String] :virtual_node_name
    #   <p>The name of the virtual node to delete.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual node in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DeleteVirtualNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_node(
    #     virtual_node_name: 'virtualNodeName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualNodeOutput
    #   resp.data.virtual_node #=> Types::VirtualNodeData
    #   resp.data.virtual_node.mesh_name #=> String
    #   resp.data.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_node.spec #=> Types::VirtualNodeSpec
    #   resp.data.virtual_node.spec.service_discovery #=> Types::ServiceDiscovery, one of [Dns, AwsCloudMap]
    #   resp.data.virtual_node.spec.service_discovery.dns #=> Types::DnsServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.data.virtual_node.spec.service_discovery.dns.response_type #=> String, one of ["LOADBALANCER", "ENDPOINTS"]
    #   resp.data.virtual_node.spec.service_discovery.dns.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map #=> Types::AwsCloudMapServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array<AwsCloudMapInstanceAttribute>
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0] #=> Types::AwsCloudMapInstanceAttribute
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.listeners #=> Array<Listener>
    #   resp.data.virtual_node.spec.listeners[0] #=> Types::Listener
    #   resp.data.virtual_node.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].tls #=> Types::ListenerTls
    #   resp.data.virtual_node.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate #=> Types::ListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm #=> Types::ListenerTlsAcmCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation #=> Types::ListenerTlsValidationContext
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust #=> Types::ListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check #=> Types::HealthCheckPolicy
    #   resp.data.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout #=> Types::ListenerTimeout, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp #=> Types::TcpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of ["s", "ms"]
    #   resp.data.virtual_node.spec.listeners[0].timeout.http #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http2 #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc #=> Types::GrpcTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection #=> Types::OutlierDetection
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_server_errors #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.interval #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.base_ejection_duration #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_ejection_percent #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool #=> Types::VirtualNodeConnectionPool, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp #=> Types::VirtualNodeTcpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http #=> Types::VirtualNodeHttpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2 #=> Types::VirtualNodeHttp2ConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc #=> Types::VirtualNodeGrpcConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_node.spec.backends #=> Array<Backend>
    #   resp.data.virtual_node.spec.backends[0] #=> Types::Backend, one of [VirtualService]
    #   resp.data.virtual_node.spec.backends[0].virtual_service #=> Types::VirtualServiceBackend
    #   resp.data.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls #=> Types::ClientPolicyTls
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate #=> Types::ClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation #=> Types::TlsValidationContext
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust #=> Types::TlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm #=> Types::TlsValidationContextAcmTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.backend_defaults #=> Types::BackendDefaults
    #   resp.data.virtual_node.spec.backend_defaults.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.logging #=> Types::Logging
    #   resp.data.virtual_node.spec.logging.access_log #=> Types::AccessLog, one of [File]
    #   resp.data.virtual_node.spec.logging.access_log.file #=> Types::FileAccessLog
    #   resp.data.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_node.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_node.metadata.arn #=> String
    #   resp.data.virtual_node.metadata.version #=> Integer
    #   resp.data.virtual_node.metadata.uid #=> String
    #   resp.data.virtual_node.metadata.created_at #=> Time
    #   resp.data.virtual_node.metadata.last_updated_at #=> Time
    #   resp.data.virtual_node.metadata.mesh_owner #=> String
    #   resp.data.virtual_node.metadata.resource_owner #=> String
    #   resp.data.virtual_node.status #=> Types::VirtualNodeStatus
    #   resp.data.virtual_node.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_virtual_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualNode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteVirtualNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualNode,
        stubs: @stubs,
        params_class: Params::DeleteVirtualNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing virtual router.</p>
    #          <p>You must delete any routes associated with the virtual router before you can delete the
    #          router itself.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualRouterInput}.
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to delete.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual router in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DeleteVirtualRouterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_router(
    #     virtual_router_name: 'virtualRouterName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualRouterOutput
    #   resp.data.virtual_router #=> Types::VirtualRouterData
    #   resp.data.virtual_router.mesh_name #=> String
    #   resp.data.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_router.spec #=> Types::VirtualRouterSpec
    #   resp.data.virtual_router.spec.listeners #=> Array<VirtualRouterListener>
    #   resp.data.virtual_router.spec.listeners[0] #=> Types::VirtualRouterListener
    #   resp.data.virtual_router.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_router.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_router.metadata.arn #=> String
    #   resp.data.virtual_router.metadata.version #=> Integer
    #   resp.data.virtual_router.metadata.uid #=> String
    #   resp.data.virtual_router.metadata.created_at #=> Time
    #   resp.data.virtual_router.metadata.last_updated_at #=> Time
    #   resp.data.virtual_router.metadata.mesh_owner #=> String
    #   resp.data.virtual_router.metadata.resource_owner #=> String
    #   resp.data.virtual_router.status #=> Types::VirtualRouterStatus
    #   resp.data.virtual_router.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_virtual_router(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualRouterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualRouterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualRouter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteVirtualRouter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualRouter,
        stubs: @stubs,
        params_class: Params::DeleteVirtualRouterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_router
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing virtual service.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualServiceInput}.
    #
    # @option params [String] :virtual_service_name
    #   <p>The name of the virtual service to delete.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual service in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DeleteVirtualServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_service(
    #     virtual_service_name: 'virtualServiceName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualServiceOutput
    #   resp.data.virtual_service #=> Types::VirtualServiceData
    #   resp.data.virtual_service.mesh_name #=> String
    #   resp.data.virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_service.spec #=> Types::VirtualServiceSpec
    #   resp.data.virtual_service.spec.provider #=> Types::VirtualServiceProvider, one of [VirtualNode, VirtualRouter]
    #   resp.data.virtual_service.spec.provider.virtual_node #=> Types::VirtualNodeServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_service.spec.provider.virtual_router #=> Types::VirtualRouterServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_service.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_service.metadata.arn #=> String
    #   resp.data.virtual_service.metadata.version #=> Integer
    #   resp.data.virtual_service.metadata.uid #=> String
    #   resp.data.virtual_service.metadata.created_at #=> Time
    #   resp.data.virtual_service.metadata.last_updated_at #=> Time
    #   resp.data.virtual_service.metadata.mesh_owner #=> String
    #   resp.data.virtual_service.metadata.resource_owner #=> String
    #   resp.data.virtual_service.status #=> Types::VirtualServiceStatus
    #   resp.data.virtual_service.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def delete_virtual_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteVirtualService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualService,
        stubs: @stubs,
        params_class: Params::DeleteVirtualServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing gateway route.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGatewayRouteInput}.
    #
    # @option params [String] :gateway_route_name
    #   <p>The name of the gateway route to describe.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DescribeGatewayRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_route(
    #     gateway_route_name: 'gatewayRouteName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGatewayRouteOutput
    #   resp.data.gateway_route #=> Types::GatewayRouteData
    #   resp.data.gateway_route.mesh_name #=> String
    #   resp.data.gateway_route.gateway_route_name #=> String
    #   resp.data.gateway_route.virtual_gateway_name #=> String
    #   resp.data.gateway_route.spec #=> Types::GatewayRouteSpec
    #   resp.data.gateway_route.spec.priority #=> Integer
    #   resp.data.gateway_route.spec.http_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.http_route.match #=> Types::HttpGatewayRouteMatch
    #   resp.data.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.gateway_route.spec.http_route.match.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.path.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.gateway_route.spec.http_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.http_route.match.hostname.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.hostname.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers #=> Array<HttpGatewayRouteHeader>
    #   resp.data.gateway_route.spec.http_route.match.headers[0] #=> Types::HttpGatewayRouteHeader
    #   resp.data.gateway_route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.action #=> Types::HttpGatewayRouteAction
    #   resp.data.gateway_route.spec.http_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service #=> Types::GatewayRouteVirtualService
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite #=> Types::HttpGatewayRouteRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix #=> Types::HttpGatewayRoutePrefixRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.default_prefix #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.value #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path #=> Types::HttpGatewayRoutePathRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname.default_target_hostname #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http2_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route #=> Types::GrpcGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route.match #=> Types::GrpcGatewayRouteMatch
    #   resp.data.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.grpc_route.match.metadata #=> Array<GrpcGatewayRouteMetadata>
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0] #=> Types::GrpcGatewayRouteMetadata
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.grpc_route.action #=> Types::GrpcGatewayRouteAction
    #   resp.data.gateway_route.spec.grpc_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite #=> Types::GrpcGatewayRouteRewrite
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.metadata #=> Types::ResourceMetadata
    #   resp.data.gateway_route.metadata.arn #=> String
    #   resp.data.gateway_route.metadata.version #=> Integer
    #   resp.data.gateway_route.metadata.uid #=> String
    #   resp.data.gateway_route.metadata.created_at #=> Time
    #   resp.data.gateway_route.metadata.last_updated_at #=> Time
    #   resp.data.gateway_route.metadata.mesh_owner #=> String
    #   resp.data.gateway_route.metadata.resource_owner #=> String
    #   resp.data.gateway_route.status #=> Types::GatewayRouteStatus
    #   resp.data.gateway_route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_gateway_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGatewayRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGatewayRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGatewayRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeGatewayRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGatewayRoute,
        stubs: @stubs,
        params_class: Params::DescribeGatewayRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_gateway_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMeshInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to describe.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DescribeMeshOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mesh(
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMeshOutput
    #   resp.data.mesh #=> Types::MeshData
    #   resp.data.mesh.mesh_name #=> String
    #   resp.data.mesh.spec #=> Types::MeshSpec
    #   resp.data.mesh.spec.egress_filter #=> Types::EgressFilter
    #   resp.data.mesh.spec.egress_filter.type #=> String, one of ["ALLOW_ALL", "DROP_ALL"]
    #   resp.data.mesh.spec.service_discovery #=> Types::MeshServiceDiscovery
    #   resp.data.mesh.spec.service_discovery.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.mesh.metadata #=> Types::ResourceMetadata
    #   resp.data.mesh.metadata.arn #=> String
    #   resp.data.mesh.metadata.version #=> Integer
    #   resp.data.mesh.metadata.uid #=> String
    #   resp.data.mesh.metadata.created_at #=> Time
    #   resp.data.mesh.metadata.last_updated_at #=> Time
    #   resp.data.mesh.metadata.mesh_owner #=> String
    #   resp.data.mesh.metadata.resource_owner #=> String
    #   resp.data.mesh.status #=> Types::MeshStatus
    #   resp.data.mesh.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_mesh(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMeshInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMeshInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMesh
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeMesh
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMesh,
        stubs: @stubs,
        params_class: Params::DescribeMeshOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_mesh
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing route.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRouteInput}.
    #
    # @option params [String] :route_name
    #   <p>The name of the route to describe.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    #
    # @return [Types::DescribeRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_route(
    #     route_name: 'routeName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner',
    #     virtual_router_name: 'virtualRouterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRouteOutput
    #   resp.data.route #=> Types::RouteData
    #   resp.data.route.mesh_name #=> String
    #   resp.data.route.virtual_router_name #=> String
    #   resp.data.route.route_name #=> String
    #   resp.data.route.spec #=> Types::RouteSpec
    #   resp.data.route.spec.priority #=> Integer
    #   resp.data.route.spec.http_route #=> Types::HttpRoute
    #   resp.data.route.spec.http_route.match #=> Types::HttpRouteMatch
    #   resp.data.route.spec.http_route.match.prefix #=> String
    #   resp.data.route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.route.spec.http_route.match.path.exact #=> String
    #   resp.data.route.spec.http_route.match.path.regex #=> String
    #   resp.data.route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.route.spec.http_route.match.scheme #=> String, one of ["http", "https"]
    #   resp.data.route.spec.http_route.match.headers #=> Array<HttpRouteHeader>
    #   resp.data.route.spec.http_route.match.headers[0] #=> Types::HttpRouteHeader
    #   resp.data.route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.route.spec.http_route.action #=> Types::HttpRouteAction
    #   resp.data.route.spec.http_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.http_route.action.weighted_targets[0] #=> Types::WeightedTarget
    #   resp.data.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.data.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.data.route.spec.http_route.retry_policy #=> Types::HttpRetryPolicy
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of ["s", "ms"]
    #   resp.data.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of ["connection-error"]
    #   resp.data.route.spec.http_route.timeout #=> Types::HttpTimeout
    #   resp.data.route.spec.http_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.http_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.tcp_route #=> Types::TcpRoute
    #   resp.data.route.spec.tcp_route.action #=> Types::TcpRouteAction
    #   resp.data.route.spec.tcp_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.tcp_route.timeout #=> Types::TcpTimeout
    #   resp.data.route.spec.tcp_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.http2_route #=> Types::HttpRoute
    #   resp.data.route.spec.grpc_route #=> Types::GrpcRoute
    #   resp.data.route.spec.grpc_route.action #=> Types::GrpcRouteAction
    #   resp.data.route.spec.grpc_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.grpc_route.match #=> Types::GrpcRouteMatch
    #   resp.data.route.spec.grpc_route.match.service_name #=> String
    #   resp.data.route.spec.grpc_route.match.method_name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata #=> Array<GrpcRouteMetadata>
    #   resp.data.route.spec.grpc_route.match.metadata[0] #=> Types::GrpcRouteMetadata
    #   resp.data.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcRouteMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.route.spec.grpc_route.retry_policy #=> Types::GrpcRetryPolicy
    #   resp.data.route.spec.grpc_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.grpc_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of ["cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"]
    #   resp.data.route.spec.grpc_route.timeout #=> Types::GrpcTimeout
    #   resp.data.route.spec.grpc_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.grpc_route.timeout.idle #=> Types::Duration
    #   resp.data.route.metadata #=> Types::ResourceMetadata
    #   resp.data.route.metadata.arn #=> String
    #   resp.data.route.metadata.version #=> Integer
    #   resp.data.route.metadata.uid #=> String
    #   resp.data.route.metadata.created_at #=> Time
    #   resp.data.route.metadata.last_updated_at #=> Time
    #   resp.data.route.metadata.mesh_owner #=> String
    #   resp.data.route.metadata.resource_owner #=> String
    #   resp.data.route.status #=> Types::RouteStatus
    #   resp.data.route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRoute,
        stubs: @stubs,
        params_class: Params::DescribeRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing virtual gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualGatewayInput}.
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to describe.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DescribeVirtualGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_gateway(
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualGatewayOutput
    #   resp.data.virtual_gateway #=> Types::VirtualGatewayData
    #   resp.data.virtual_gateway.mesh_name #=> String
    #   resp.data.virtual_gateway.virtual_gateway_name #=> String
    #   resp.data.virtual_gateway.spec #=> Types::VirtualGatewaySpec
    #   resp.data.virtual_gateway.spec.backend_defaults #=> Types::VirtualGatewayBackendDefaults
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy #=> Types::VirtualGatewayClientPolicy
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls #=> Types::VirtualGatewayClientPolicyTls
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate #=> Types::VirtualGatewayClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.private_key #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation #=> Types::VirtualGatewayTlsValidationContext
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust #=> Types::VirtualGatewayTlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm #=> Types::VirtualGatewayTlsValidationContextAcmTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_gateway.spec.listeners #=> Array<VirtualGatewayListener>
    #   resp.data.virtual_gateway.spec.listeners[0] #=> Types::VirtualGatewayListener
    #   resp.data.virtual_gateway.spec.listeners[0].health_check #=> Types::VirtualGatewayHealthCheckPolicy
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping #=> Types::VirtualGatewayPortMapping
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls #=> Types::VirtualGatewayListenerTls
    #   resp.data.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation #=> Types::VirtualGatewayListenerTlsValidationContext
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust #=> Types::VirtualGatewayListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate #=> Types::VirtualGatewayListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm #=> Types::VirtualGatewayListenerTlsAcmCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool #=> Types::VirtualGatewayConnectionPool, one of [Http, Http2, Grpc]
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http #=> Types::VirtualGatewayHttpConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2 #=> Types::VirtualGatewayHttp2ConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc #=> Types::VirtualGatewayGrpcConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.logging #=> Types::VirtualGatewayLogging
    #   resp.data.virtual_gateway.spec.logging.access_log #=> Types::VirtualGatewayAccessLog, one of [File]
    #   resp.data.virtual_gateway.spec.logging.access_log.file #=> Types::VirtualGatewayFileAccessLog
    #   resp.data.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_gateway.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_gateway.metadata.arn #=> String
    #   resp.data.virtual_gateway.metadata.version #=> Integer
    #   resp.data.virtual_gateway.metadata.uid #=> String
    #   resp.data.virtual_gateway.metadata.created_at #=> Time
    #   resp.data.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.data.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.data.virtual_gateway.metadata.resource_owner #=> String
    #   resp.data.virtual_gateway.status #=> Types::VirtualGatewayStatus
    #   resp.data.virtual_gateway.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_virtual_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeVirtualGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualGateway,
        stubs: @stubs,
        params_class: Params::DescribeVirtualGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing virtual node.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualNodeInput}.
    #
    # @option params [String] :virtual_node_name
    #   <p>The name of the virtual node to describe.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DescribeVirtualNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_node(
    #     virtual_node_name: 'virtualNodeName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualNodeOutput
    #   resp.data.virtual_node #=> Types::VirtualNodeData
    #   resp.data.virtual_node.mesh_name #=> String
    #   resp.data.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_node.spec #=> Types::VirtualNodeSpec
    #   resp.data.virtual_node.spec.service_discovery #=> Types::ServiceDiscovery, one of [Dns, AwsCloudMap]
    #   resp.data.virtual_node.spec.service_discovery.dns #=> Types::DnsServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.data.virtual_node.spec.service_discovery.dns.response_type #=> String, one of ["LOADBALANCER", "ENDPOINTS"]
    #   resp.data.virtual_node.spec.service_discovery.dns.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map #=> Types::AwsCloudMapServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array<AwsCloudMapInstanceAttribute>
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0] #=> Types::AwsCloudMapInstanceAttribute
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.listeners #=> Array<Listener>
    #   resp.data.virtual_node.spec.listeners[0] #=> Types::Listener
    #   resp.data.virtual_node.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].tls #=> Types::ListenerTls
    #   resp.data.virtual_node.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate #=> Types::ListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm #=> Types::ListenerTlsAcmCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation #=> Types::ListenerTlsValidationContext
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust #=> Types::ListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check #=> Types::HealthCheckPolicy
    #   resp.data.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout #=> Types::ListenerTimeout, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp #=> Types::TcpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of ["s", "ms"]
    #   resp.data.virtual_node.spec.listeners[0].timeout.http #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http2 #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc #=> Types::GrpcTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection #=> Types::OutlierDetection
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_server_errors #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.interval #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.base_ejection_duration #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_ejection_percent #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool #=> Types::VirtualNodeConnectionPool, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp #=> Types::VirtualNodeTcpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http #=> Types::VirtualNodeHttpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2 #=> Types::VirtualNodeHttp2ConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc #=> Types::VirtualNodeGrpcConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_node.spec.backends #=> Array<Backend>
    #   resp.data.virtual_node.spec.backends[0] #=> Types::Backend, one of [VirtualService]
    #   resp.data.virtual_node.spec.backends[0].virtual_service #=> Types::VirtualServiceBackend
    #   resp.data.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls #=> Types::ClientPolicyTls
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate #=> Types::ClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation #=> Types::TlsValidationContext
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust #=> Types::TlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm #=> Types::TlsValidationContextAcmTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.backend_defaults #=> Types::BackendDefaults
    #   resp.data.virtual_node.spec.backend_defaults.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.logging #=> Types::Logging
    #   resp.data.virtual_node.spec.logging.access_log #=> Types::AccessLog, one of [File]
    #   resp.data.virtual_node.spec.logging.access_log.file #=> Types::FileAccessLog
    #   resp.data.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_node.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_node.metadata.arn #=> String
    #   resp.data.virtual_node.metadata.version #=> Integer
    #   resp.data.virtual_node.metadata.uid #=> String
    #   resp.data.virtual_node.metadata.created_at #=> Time
    #   resp.data.virtual_node.metadata.last_updated_at #=> Time
    #   resp.data.virtual_node.metadata.mesh_owner #=> String
    #   resp.data.virtual_node.metadata.resource_owner #=> String
    #   resp.data.virtual_node.status #=> Types::VirtualNodeStatus
    #   resp.data.virtual_node.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_virtual_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualNode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeVirtualNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualNode,
        stubs: @stubs,
        params_class: Params::DescribeVirtualNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing virtual router.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualRouterInput}.
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to describe.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DescribeVirtualRouterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_router(
    #     virtual_router_name: 'virtualRouterName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualRouterOutput
    #   resp.data.virtual_router #=> Types::VirtualRouterData
    #   resp.data.virtual_router.mesh_name #=> String
    #   resp.data.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_router.spec #=> Types::VirtualRouterSpec
    #   resp.data.virtual_router.spec.listeners #=> Array<VirtualRouterListener>
    #   resp.data.virtual_router.spec.listeners[0] #=> Types::VirtualRouterListener
    #   resp.data.virtual_router.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_router.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_router.metadata.arn #=> String
    #   resp.data.virtual_router.metadata.version #=> Integer
    #   resp.data.virtual_router.metadata.uid #=> String
    #   resp.data.virtual_router.metadata.created_at #=> Time
    #   resp.data.virtual_router.metadata.last_updated_at #=> Time
    #   resp.data.virtual_router.metadata.mesh_owner #=> String
    #   resp.data.virtual_router.metadata.resource_owner #=> String
    #   resp.data.virtual_router.status #=> Types::VirtualRouterStatus
    #   resp.data.virtual_router.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_virtual_router(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualRouterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualRouterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualRouter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeVirtualRouter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualRouter,
        stubs: @stubs,
        params_class: Params::DescribeVirtualRouterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_router
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing virtual service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualServiceInput}.
    #
    # @option params [String] :virtual_service_name
    #   <p>The name of the virtual service to describe.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::DescribeVirtualServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_service(
    #     virtual_service_name: 'virtualServiceName', # required
    #     mesh_name: 'meshName', # required
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualServiceOutput
    #   resp.data.virtual_service #=> Types::VirtualServiceData
    #   resp.data.virtual_service.mesh_name #=> String
    #   resp.data.virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_service.spec #=> Types::VirtualServiceSpec
    #   resp.data.virtual_service.spec.provider #=> Types::VirtualServiceProvider, one of [VirtualNode, VirtualRouter]
    #   resp.data.virtual_service.spec.provider.virtual_node #=> Types::VirtualNodeServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_service.spec.provider.virtual_router #=> Types::VirtualRouterServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_service.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_service.metadata.arn #=> String
    #   resp.data.virtual_service.metadata.version #=> Integer
    #   resp.data.virtual_service.metadata.uid #=> String
    #   resp.data.virtual_service.metadata.created_at #=> Time
    #   resp.data.virtual_service.metadata.last_updated_at #=> Time
    #   resp.data.virtual_service.metadata.mesh_owner #=> String
    #   resp.data.virtual_service.metadata.resource_owner #=> String
    #   resp.data.virtual_service.status #=> Types::VirtualServiceStatus
    #   resp.data.virtual_service.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def describe_virtual_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeVirtualService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualService,
        stubs: @stubs,
        params_class: Params::DescribeVirtualServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing gateway routes that are associated to a virtual
    #          gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGatewayRoutesInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list gateway routes in.</p>
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to list gateway routes in.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListGatewayRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListGatewayRoutes</code> in paginated
    #            output. When you use this parameter, <code>ListGatewayRoutes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListGatewayRoutes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListGatewayRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::ListGatewayRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_routes(
    #     mesh_name: 'meshName', # required
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     next_token: 'nextToken',
    #     limit: 1,
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGatewayRoutesOutput
    #   resp.data.gateway_routes #=> Array<GatewayRouteRef>
    #   resp.data.gateway_routes[0] #=> Types::GatewayRouteRef
    #   resp.data.gateway_routes[0].mesh_name #=> String
    #   resp.data.gateway_routes[0].gateway_route_name #=> String
    #   resp.data.gateway_routes[0].virtual_gateway_name #=> String
    #   resp.data.gateway_routes[0].mesh_owner #=> String
    #   resp.data.gateway_routes[0].resource_owner #=> String
    #   resp.data.gateway_routes[0].arn #=> String
    #   resp.data.gateway_routes[0].version #=> Integer
    #   resp.data.gateway_routes[0].created_at #=> Time
    #   resp.data.gateway_routes[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_gateway_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGatewayRoutesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGatewayRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGatewayRoutes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListGatewayRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGatewayRoutes,
        stubs: @stubs,
        params_class: Params::ListGatewayRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_gateway_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing service meshes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMeshesInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListMeshes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListMeshes</code> in paginated output.
    #            When you use this parameter, <code>ListMeshes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListMeshes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListMeshes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    # @return [Types::ListMeshesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_meshes(
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMeshesOutput
    #   resp.data.meshes #=> Array<MeshRef>
    #   resp.data.meshes[0] #=> Types::MeshRef
    #   resp.data.meshes[0].mesh_name #=> String
    #   resp.data.meshes[0].mesh_owner #=> String
    #   resp.data.meshes[0].resource_owner #=> String
    #   resp.data.meshes[0].arn #=> String
    #   resp.data.meshes[0].version #=> Integer
    #   resp.data.meshes[0].created_at #=> Time
    #   resp.data.meshes[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_meshes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMeshesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMeshesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMeshes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListMeshes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMeshes,
        stubs: @stubs,
        params_class: Params::ListMeshesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_meshes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing routes in a service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoutesInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list routes in.</p>
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to list routes in.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListRoutes</code> in paginated output.
    #            When you use this parameter, <code>ListRoutes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListRoutes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::ListRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routes(
    #     mesh_name: 'meshName', # required
    #     virtual_router_name: 'virtualRouterName', # required
    #     next_token: 'nextToken',
    #     limit: 1,
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoutesOutput
    #   resp.data.routes #=> Array<RouteRef>
    #   resp.data.routes[0] #=> Types::RouteRef
    #   resp.data.routes[0].mesh_name #=> String
    #   resp.data.routes[0].virtual_router_name #=> String
    #   resp.data.routes[0].route_name #=> String
    #   resp.data.routes[0].mesh_owner #=> String
    #   resp.data.routes[0].resource_owner #=> String
    #   resp.data.routes[0].arn #=> String
    #   resp.data.routes[0].version #=> Integer
    #   resp.data.routes[0].created_at #=> Time
    #   resp.data.routes[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoutesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoutes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoutes,
        stubs: @stubs,
        params_class: Params::ListRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for an App Mesh resource.</p>
    #
    # Tags: ["not-preview"]
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListTagsForResource</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of tag results returned by <code>ListTagsForResource</code> in
    #            paginated output. When this parameter is used, <code>ListTagsForResource</code> returns
    #            only <code>limit</code> results in a single page along with a <code>nextToken</code>
    #            response element. You can see the remaining results of the initial request by sending
    #            another <code>ListTagsForResource</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If you don't use
    #            this parameter, <code>ListTagsForResource</code> returns up to 100
    #            results and a <code>nextToken</code> value if applicable.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<TagRef>
    #   resp.data.tags[0] #=> Types::TagRef
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
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

    # <p>Returns a list of existing virtual gateways in a service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualGatewaysInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual gateways in.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualGateways</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualGateways</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualGateways</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualGateways</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualGateways</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::ListVirtualGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_gateways(
    #     mesh_name: 'meshName', # required
    #     next_token: 'nextToken',
    #     limit: 1,
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualGatewaysOutput
    #   resp.data.virtual_gateways #=> Array<VirtualGatewayRef>
    #   resp.data.virtual_gateways[0] #=> Types::VirtualGatewayRef
    #   resp.data.virtual_gateways[0].mesh_name #=> String
    #   resp.data.virtual_gateways[0].virtual_gateway_name #=> String
    #   resp.data.virtual_gateways[0].mesh_owner #=> String
    #   resp.data.virtual_gateways[0].resource_owner #=> String
    #   resp.data.virtual_gateways[0].arn #=> String
    #   resp.data.virtual_gateways[0].version #=> Integer
    #   resp.data.virtual_gateways[0].created_at #=> Time
    #   resp.data.virtual_gateways[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_virtual_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualGatewaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualGateways
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListVirtualGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualGateways,
        stubs: @stubs,
        params_class: Params::ListVirtualGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing virtual nodes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualNodesInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual nodes in.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualNodes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualNodes</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualNodes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualNodes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualNodes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::ListVirtualNodesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_nodes(
    #     mesh_name: 'meshName', # required
    #     next_token: 'nextToken',
    #     limit: 1,
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualNodesOutput
    #   resp.data.virtual_nodes #=> Array<VirtualNodeRef>
    #   resp.data.virtual_nodes[0] #=> Types::VirtualNodeRef
    #   resp.data.virtual_nodes[0].mesh_name #=> String
    #   resp.data.virtual_nodes[0].virtual_node_name #=> String
    #   resp.data.virtual_nodes[0].mesh_owner #=> String
    #   resp.data.virtual_nodes[0].resource_owner #=> String
    #   resp.data.virtual_nodes[0].arn #=> String
    #   resp.data.virtual_nodes[0].version #=> Integer
    #   resp.data.virtual_nodes[0].created_at #=> Time
    #   resp.data.virtual_nodes[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_virtual_nodes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualNodesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualNodesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualNodes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListVirtualNodes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualNodes,
        stubs: @stubs,
        params_class: Params::ListVirtualNodesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_nodes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing virtual routers in a service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualRoutersInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual routers in.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualRouters</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualRouters</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualRouters</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualRouters</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualRouters</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::ListVirtualRoutersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_routers(
    #     mesh_name: 'meshName', # required
    #     next_token: 'nextToken',
    #     limit: 1,
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualRoutersOutput
    #   resp.data.virtual_routers #=> Array<VirtualRouterRef>
    #   resp.data.virtual_routers[0] #=> Types::VirtualRouterRef
    #   resp.data.virtual_routers[0].mesh_name #=> String
    #   resp.data.virtual_routers[0].virtual_router_name #=> String
    #   resp.data.virtual_routers[0].mesh_owner #=> String
    #   resp.data.virtual_routers[0].resource_owner #=> String
    #   resp.data.virtual_routers[0].arn #=> String
    #   resp.data.virtual_routers[0].version #=> Integer
    #   resp.data.virtual_routers[0].created_at #=> Time
    #   resp.data.virtual_routers[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_virtual_routers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualRoutersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualRoutersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualRouters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListVirtualRouters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualRouters,
        stubs: @stubs,
        params_class: Params::ListVirtualRoutersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_routers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing virtual services in a service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualServicesInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual services in.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualServices</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualServices</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualServices</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualServices</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualServices</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::ListVirtualServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_services(
    #     mesh_name: 'meshName', # required
    #     next_token: 'nextToken',
    #     limit: 1,
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualServicesOutput
    #   resp.data.virtual_services #=> Array<VirtualServiceRef>
    #   resp.data.virtual_services[0] #=> Types::VirtualServiceRef
    #   resp.data.virtual_services[0].mesh_name #=> String
    #   resp.data.virtual_services[0].virtual_service_name #=> String
    #   resp.data.virtual_services[0].mesh_owner #=> String
    #   resp.data.virtual_services[0].resource_owner #=> String
    #   resp.data.virtual_services[0].arn #=> String
    #   resp.data.virtual_services[0].version #=> Integer
    #   resp.data.virtual_services[0].created_at #=> Time
    #   resp.data.virtual_services[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_virtual_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualServicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualServices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListVirtualServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualServices,
        stubs: @stubs,
        params_class: Params::ListVirtualServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #          If existing tags on a resource aren't specified in the request parameters, they aren't
    #          changed. When a resource is deleted, the tags associated with that resource are also
    #          deleted.</p>
    #
    # Tags: ["not-preview"]
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #
    # @option params [Array<TagRef>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::TooManyTagsException]),
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

    # <p>Deletes specified tags from a resource.</p>
    #
    # Tags: ["not-preview"]
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
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

    # <p>Updates an existing gateway route that is associated to a specified virtual gateway in a
    #          service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayRouteInput}.
    #
    # @option params [String] :gateway_route_name
    #   <p>The name of the gateway route to update.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    #
    # @option params [GatewayRouteSpec] :spec
    #   <p>The new gateway route specification to apply. This overwrites the existing data.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::UpdateGatewayRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_route(
    #     gateway_route_name: 'gatewayRouteName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     spec: {
    #       priority: 1,
    #       http_route: {
    #         match: {
    #           prefix: 'prefix',
    #           path: {
    #             exact: 'exact',
    #             regex: 'regex'
    #           },
    #           query_parameters: [
    #             {
    #               name: 'name', # required
    #               match: {
    #                 exact: 'exact'
    #               }
    #             }
    #           ],
    #           member_method: 'GET', # accepts ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #           hostname: {
    #             exact: 'exact',
    #             suffix: 'suffix'
    #           },
    #           headers: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 range: {
    #                   start: 1, # required
    #                   end: 1 # required
    #                 },
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         action: {
    #           target: {
    #             virtual_service: {
    #               virtual_service_name: 'virtualServiceName' # required
    #             } # required
    #           }, # required
    #           rewrite: {
    #             prefix: {
    #               default_prefix: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #               value: 'value'
    #             },
    #             path: {
    #               exact: 'exact'
    #             },
    #             hostname: {
    #               default_target_hostname: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #             }
    #           }
    #         } # required
    #       },
    #       grpc_route: {
    #         match: {
    #           service_name: 'serviceName',
    #           metadata: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         action: {
    #           rewrite: {
    #           }
    #         } # required
    #       }
    #     }, # required
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayRouteOutput
    #   resp.data.gateway_route #=> Types::GatewayRouteData
    #   resp.data.gateway_route.mesh_name #=> String
    #   resp.data.gateway_route.gateway_route_name #=> String
    #   resp.data.gateway_route.virtual_gateway_name #=> String
    #   resp.data.gateway_route.spec #=> Types::GatewayRouteSpec
    #   resp.data.gateway_route.spec.priority #=> Integer
    #   resp.data.gateway_route.spec.http_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.http_route.match #=> Types::HttpGatewayRouteMatch
    #   resp.data.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.gateway_route.spec.http_route.match.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.path.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.gateway_route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.gateway_route.spec.http_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.http_route.match.hostname.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.hostname.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers #=> Array<HttpGatewayRouteHeader>
    #   resp.data.gateway_route.spec.http_route.match.headers[0] #=> Types::HttpGatewayRouteHeader
    #   resp.data.gateway_route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.http_route.action #=> Types::HttpGatewayRouteAction
    #   resp.data.gateway_route.spec.http_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service #=> Types::GatewayRouteVirtualService
    #   resp.data.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite #=> Types::HttpGatewayRouteRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix #=> Types::HttpGatewayRoutePrefixRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.default_prefix #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http_route.action.rewrite.prefix.value #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path #=> Types::HttpGatewayRoutePathRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.path.exact #=> String
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.spec.http_route.action.rewrite.hostname.default_target_hostname #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.gateway_route.spec.http2_route #=> Types::HttpGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route #=> Types::GrpcGatewayRoute
    #   resp.data.gateway_route.spec.grpc_route.match #=> Types::GrpcGatewayRouteMatch
    #   resp.data.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.hostname #=> Types::GatewayRouteHostnameMatch
    #   resp.data.gateway_route.spec.grpc_route.match.metadata #=> Array<GrpcGatewayRouteMetadata>
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0] #=> Types::GrpcGatewayRouteMetadata
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.gateway_route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.gateway_route.spec.grpc_route.action #=> Types::GrpcGatewayRouteAction
    #   resp.data.gateway_route.spec.grpc_route.action.target #=> Types::GatewayRouteTarget
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite #=> Types::GrpcGatewayRouteRewrite
    #   resp.data.gateway_route.spec.grpc_route.action.rewrite.hostname #=> Types::GatewayRouteHostnameRewrite
    #   resp.data.gateway_route.metadata #=> Types::ResourceMetadata
    #   resp.data.gateway_route.metadata.arn #=> String
    #   resp.data.gateway_route.metadata.version #=> Integer
    #   resp.data.gateway_route.metadata.uid #=> String
    #   resp.data.gateway_route.metadata.created_at #=> Time
    #   resp.data.gateway_route.metadata.last_updated_at #=> Time
    #   resp.data.gateway_route.metadata.mesh_owner #=> String
    #   resp.data.gateway_route.metadata.resource_owner #=> String
    #   resp.data.gateway_route.status #=> Types::GatewayRouteStatus
    #   resp.data.gateway_route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_gateway_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewayRoute
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateGatewayRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewayRoute,
        stubs: @stubs,
        params_class: Params::UpdateGatewayRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMeshInput}.
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to update.</p>
    #
    # @option params [MeshSpec] :spec
    #   <p>The service mesh specification to apply.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @return [Types::UpdateMeshOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mesh(
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       egress_filter: {
    #         type: 'ALLOW_ALL' # required - accepts ["ALLOW_ALL", "DROP_ALL"]
    #       },
    #       service_discovery: {
    #         ip_preference: 'IPv6_PREFERRED' # accepts ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #       }
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMeshOutput
    #   resp.data.mesh #=> Types::MeshData
    #   resp.data.mesh.mesh_name #=> String
    #   resp.data.mesh.spec #=> Types::MeshSpec
    #   resp.data.mesh.spec.egress_filter #=> Types::EgressFilter
    #   resp.data.mesh.spec.egress_filter.type #=> String, one of ["ALLOW_ALL", "DROP_ALL"]
    #   resp.data.mesh.spec.service_discovery #=> Types::MeshServiceDiscovery
    #   resp.data.mesh.spec.service_discovery.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.mesh.metadata #=> Types::ResourceMetadata
    #   resp.data.mesh.metadata.arn #=> String
    #   resp.data.mesh.metadata.version #=> Integer
    #   resp.data.mesh.metadata.uid #=> String
    #   resp.data.mesh.metadata.created_at #=> Time
    #   resp.data.mesh.metadata.last_updated_at #=> Time
    #   resp.data.mesh.metadata.mesh_owner #=> String
    #   resp.data.mesh.metadata.resource_owner #=> String
    #   resp.data.mesh.status #=> Types::MeshStatus
    #   resp.data.mesh.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_mesh(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMeshInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMeshInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMesh
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateMesh
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMesh,
        stubs: @stubs,
        params_class: Params::UpdateMeshOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_mesh
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing route for a specified service mesh and virtual router.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRouteInput}.
    #
    # @option params [String] :route_name
    #   <p>The name of the route to update.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    #
    # @option params [RouteSpec] :spec
    #   <p>The new route specification to apply. This overwrites the existing data.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::UpdateRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route(
    #     route_name: 'routeName', # required
    #     mesh_name: 'meshName', # required
    #     virtual_router_name: 'virtualRouterName', # required
    #     spec: {
    #       priority: 1,
    #       http_route: {
    #         match: {
    #           prefix: 'prefix',
    #           path: {
    #             exact: 'exact',
    #             regex: 'regex'
    #           },
    #           query_parameters: [
    #             {
    #               name: 'name', # required
    #               match: {
    #                 exact: 'exact'
    #               }
    #             }
    #           ],
    #           member_method: 'GET', # accepts ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #           scheme: 'http', # accepts ["http", "https"]
    #           headers: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 range: {
    #                   start: 1, # required
    #                   end: 1 # required
    #                 },
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         action: {
    #           weighted_targets: [
    #             {
    #               virtual_node: 'virtualNode', # required
    #               weight: 1 # required
    #             }
    #           ] # required
    #         }, # required
    #         retry_policy: {
    #           per_retry_timeout: {
    #             value: 1,
    #             unit: 's' # accepts ["s", "ms"]
    #           }, # required
    #           max_retries: 1, # required
    #           http_retry_events: [
    #             'member'
    #           ],
    #           tcp_retry_events: [
    #             'connection-error' # accepts ["connection-error"]
    #           ]
    #         },
    #         timeout: {
    #         }
    #       },
    #       tcp_route: {
    #         action: {
    #         }, # required
    #         timeout: {
    #         }
    #       },
    #       grpc_route: {
    #         action: {
    #         }, # required
    #         match: {
    #           service_name: 'serviceName',
    #           method_name: 'methodName',
    #           metadata: [
    #             {
    #               name: 'name', # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: 'exact',
    #                 regex: 'regex',
    #                 prefix: 'prefix',
    #                 suffix: 'suffix'
    #               }
    #             }
    #           ]
    #         }, # required
    #         retry_policy: {
    #           max_retries: 1, # required
    #           grpc_retry_events: [
    #             'cancelled' # accepts ["cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"]
    #           ]
    #         },
    #         timeout: {
    #         }
    #       }
    #     }, # required
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRouteOutput
    #   resp.data.route #=> Types::RouteData
    #   resp.data.route.mesh_name #=> String
    #   resp.data.route.virtual_router_name #=> String
    #   resp.data.route.route_name #=> String
    #   resp.data.route.spec #=> Types::RouteSpec
    #   resp.data.route.spec.priority #=> Integer
    #   resp.data.route.spec.http_route #=> Types::HttpRoute
    #   resp.data.route.spec.http_route.match #=> Types::HttpRouteMatch
    #   resp.data.route.spec.http_route.match.prefix #=> String
    #   resp.data.route.spec.http_route.match.path #=> Types::HttpPathMatch
    #   resp.data.route.spec.http_route.match.path.exact #=> String
    #   resp.data.route.spec.http_route.match.path.regex #=> String
    #   resp.data.route.spec.http_route.match.query_parameters #=> Array<HttpQueryParameter>
    #   resp.data.route.spec.http_route.match.query_parameters[0] #=> Types::HttpQueryParameter
    #   resp.data.route.spec.http_route.match.query_parameters[0].name #=> String
    #   resp.data.route.spec.http_route.match.query_parameters[0].match #=> Types::QueryParameterMatch
    #   resp.data.route.spec.http_route.match.query_parameters[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.member_method #=> String, one of ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #   resp.data.route.spec.http_route.match.scheme #=> String, one of ["http", "https"]
    #   resp.data.route.spec.http_route.match.headers #=> Array<HttpRouteHeader>
    #   resp.data.route.spec.http_route.match.headers[0] #=> Types::HttpRouteHeader
    #   resp.data.route.spec.http_route.match.headers[0].name #=> String
    #   resp.data.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.data.route.spec.http_route.match.headers[0].match #=> Types::HeaderMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.data.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.data.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.data.route.spec.http_route.action #=> Types::HttpRouteAction
    #   resp.data.route.spec.http_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.http_route.action.weighted_targets[0] #=> Types::WeightedTarget
    #   resp.data.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.data.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.data.route.spec.http_route.retry_policy #=> Types::HttpRetryPolicy
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of ["s", "ms"]
    #   resp.data.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of ["connection-error"]
    #   resp.data.route.spec.http_route.timeout #=> Types::HttpTimeout
    #   resp.data.route.spec.http_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.http_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.tcp_route #=> Types::TcpRoute
    #   resp.data.route.spec.tcp_route.action #=> Types::TcpRouteAction
    #   resp.data.route.spec.tcp_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.tcp_route.timeout #=> Types::TcpTimeout
    #   resp.data.route.spec.tcp_route.timeout.idle #=> Types::Duration
    #   resp.data.route.spec.http2_route #=> Types::HttpRoute
    #   resp.data.route.spec.grpc_route #=> Types::GrpcRoute
    #   resp.data.route.spec.grpc_route.action #=> Types::GrpcRouteAction
    #   resp.data.route.spec.grpc_route.action.weighted_targets #=> Array<WeightedTarget>
    #   resp.data.route.spec.grpc_route.match #=> Types::GrpcRouteMatch
    #   resp.data.route.spec.grpc_route.match.service_name #=> String
    #   resp.data.route.spec.grpc_route.match.method_name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata #=> Array<GrpcRouteMetadata>
    #   resp.data.route.spec.grpc_route.match.metadata[0] #=> Types::GrpcRouteMetadata
    #   resp.data.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.data.route.spec.grpc_route.match.metadata[0].match #=> Types::GrpcRouteMetadataMatchMethod, one of [Exact, Regex, Range, Prefix, Suffix]
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.range #=> Types::MatchRange
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.data.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.data.route.spec.grpc_route.retry_policy #=> Types::GrpcRetryPolicy
    #   resp.data.route.spec.grpc_route.retry_policy.per_retry_timeout #=> Types::Duration
    #   resp.data.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.data.route.spec.grpc_route.retry_policy.http_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array<String>
    #   resp.data.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of ["cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"]
    #   resp.data.route.spec.grpc_route.timeout #=> Types::GrpcTimeout
    #   resp.data.route.spec.grpc_route.timeout.per_request #=> Types::Duration
    #   resp.data.route.spec.grpc_route.timeout.idle #=> Types::Duration
    #   resp.data.route.metadata #=> Types::ResourceMetadata
    #   resp.data.route.metadata.arn #=> String
    #   resp.data.route.metadata.version #=> Integer
    #   resp.data.route.metadata.uid #=> String
    #   resp.data.route.metadata.created_at #=> Time
    #   resp.data.route.metadata.last_updated_at #=> Time
    #   resp.data.route.metadata.mesh_owner #=> String
    #   resp.data.route.metadata.resource_owner #=> String
    #   resp.data.route.status #=> Types::RouteStatus
    #   resp.data.route.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoute
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoute,
        stubs: @stubs,
        params_class: Params::UpdateRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing virtual gateway in a specified service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVirtualGatewayInput}.
    #
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to update.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual gateway resides in.</p>
    #
    # @option params [VirtualGatewaySpec] :spec
    #   <p>The new virtual gateway specification to apply. This overwrites the existing
    #            data.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::UpdateVirtualGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_gateway(
    #     virtual_gateway_name: 'virtualGatewayName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [
    #               1
    #             ],
    #             certificate: {
    #               # One of:
    #               file: {
    #                 certificate_chain: 'certificateChain', # required
    #                 private_key: 'privateKey' # required
    #               },
    #               sds: {
    #                 secret_name: 'secretName' # required
    #               }
    #             },
    #             validation: {
    #               member_trust: {
    #                 # One of:
    #                 acm: {
    #                   certificate_authority_arns: [
    #                     'member'
    #                   ] # required
    #                 },
    #                 file: {
    #                   certificate_chain: 'certificateChain' # required
    #                 },
    #                 sds: {
    #                   secret_name: 'secretName' # required
    #                 }
    #               }, # required
    #               subject_alternative_names: {
    #                 match: {
    #                   exact: [
    #                     'member'
    #                   ] # required
    #                 } # required
    #               }
    #             } # required
    #           }
    #         }
    #       },
    #       listeners: [
    #         {
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: 'http', # required - accepts ["http", "http2", "grpc"]
    #             port: 1,
    #             path: 'path',
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1 # required
    #           },
    #           port_mapping: {
    #             port: 1, # required
    #             protocol: 'http' # required - accepts ["http", "http2", "grpc"]
    #           }, # required
    #           tls: {
    #             mode: 'STRICT', # required - accepts ["STRICT", "PERMISSIVE", "DISABLED"]
    #             validation: {
    #               member_trust: {
    #                 # One of:
    #               }, # required
    #             },
    #             certificate: {
    #               # One of:
    #               acm: {
    #                 certificate_arn: 'certificateArn' # required
    #               },
    #             } # required
    #           },
    #           connection_pool: {
    #             # One of:
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1 # required
    #             },
    #             grpc: {
    #               max_requests: 1 # required
    #             }
    #           }
    #         }
    #       ], # required
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: 'path' # required
    #           }
    #         }
    #       }
    #     }, # required
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVirtualGatewayOutput
    #   resp.data.virtual_gateway #=> Types::VirtualGatewayData
    #   resp.data.virtual_gateway.mesh_name #=> String
    #   resp.data.virtual_gateway.virtual_gateway_name #=> String
    #   resp.data.virtual_gateway.spec #=> Types::VirtualGatewaySpec
    #   resp.data.virtual_gateway.spec.backend_defaults #=> Types::VirtualGatewayBackendDefaults
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy #=> Types::VirtualGatewayClientPolicy
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls #=> Types::VirtualGatewayClientPolicyTls
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate #=> Types::VirtualGatewayClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.file.private_key #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation #=> Types::VirtualGatewayTlsValidationContext
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust #=> Types::VirtualGatewayTlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm #=> Types::VirtualGatewayTlsValidationContextAcmTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_gateway.spec.listeners #=> Array<VirtualGatewayListener>
    #   resp.data.virtual_gateway.spec.listeners[0] #=> Types::VirtualGatewayListener
    #   resp.data.virtual_gateway.spec.listeners[0].health_check #=> Types::VirtualGatewayHealthCheckPolicy
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping #=> Types::VirtualGatewayPortMapping
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "http2", "grpc"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls #=> Types::VirtualGatewayListenerTls
    #   resp.data.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation #=> Types::VirtualGatewayListenerTlsValidationContext
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust #=> Types::VirtualGatewayListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.file #=> Types::VirtualGatewayTlsValidationContextFileTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.member_trust.sds #=> Types::VirtualGatewayTlsValidationContextSdsTrust
    #   resp.data.virtual_gateway.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate #=> Types::VirtualGatewayListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm #=> Types::VirtualGatewayListenerTlsAcmCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.file #=> Types::VirtualGatewayListenerTlsFileCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].tls.certificate.sds #=> Types::VirtualGatewayListenerTlsSdsCertificate
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool #=> Types::VirtualGatewayConnectionPool, one of [Http, Http2, Grpc]
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http #=> Types::VirtualGatewayHttpConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2 #=> Types::VirtualGatewayHttp2ConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc #=> Types::VirtualGatewayGrpcConnectionPool
    #   resp.data.virtual_gateway.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_gateway.spec.logging #=> Types::VirtualGatewayLogging
    #   resp.data.virtual_gateway.spec.logging.access_log #=> Types::VirtualGatewayAccessLog, one of [File]
    #   resp.data.virtual_gateway.spec.logging.access_log.file #=> Types::VirtualGatewayFileAccessLog
    #   resp.data.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_gateway.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_gateway.metadata.arn #=> String
    #   resp.data.virtual_gateway.metadata.version #=> Integer
    #   resp.data.virtual_gateway.metadata.uid #=> String
    #   resp.data.virtual_gateway.metadata.created_at #=> Time
    #   resp.data.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.data.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.data.virtual_gateway.metadata.resource_owner #=> String
    #   resp.data.virtual_gateway.status #=> Types::VirtualGatewayStatus
    #   resp.data.virtual_gateway.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_virtual_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVirtualGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVirtualGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVirtualGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateVirtualGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVirtualGateway,
        stubs: @stubs,
        params_class: Params::UpdateVirtualGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_virtual_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing virtual node in a specified service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVirtualNodeInput}.
    #
    # @option params [String] :virtual_node_name
    #   <p>The name of the virtual node to update.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #
    # @option params [VirtualNodeSpec] :spec
    #   <p>The new virtual node specification to apply. This overwrites the existing data.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::UpdateVirtualNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_node(
    #     virtual_node_name: 'virtualNodeName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       service_discovery: {
    #         # One of:
    #         dns: {
    #           hostname: 'hostname', # required
    #           response_type: 'LOADBALANCER', # accepts ["LOADBALANCER", "ENDPOINTS"]
    #           ip_preference: 'IPv6_PREFERRED' # accepts ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #         },
    #         aws_cloud_map: {
    #           namespace_name: 'namespaceName', # required
    #           service_name: 'serviceName', # required
    #           attributes: [
    #             {
    #               key: 'key', # required
    #               value: 'value' # required
    #             }
    #           ],
    #           ip_preference: 'IPv6_PREFERRED' # accepts ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #         }
    #       },
    #       listeners: [
    #         {
    #           port_mapping: {
    #             port: 1, # required
    #             protocol: 'http' # required - accepts ["http", "tcp", "http2", "grpc"]
    #           }, # required
    #           tls: {
    #             mode: 'STRICT', # required - accepts ["STRICT", "PERMISSIVE", "DISABLED"]
    #             certificate: {
    #               # One of:
    #               acm: {
    #                 certificate_arn: 'certificateArn' # required
    #               },
    #               file: {
    #                 certificate_chain: 'certificateChain', # required
    #                 private_key: 'privateKey' # required
    #               },
    #               sds: {
    #                 secret_name: 'secretName' # required
    #               }
    #             }, # required
    #             validation: {
    #               member_trust: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: 'certificateChain' # required
    #                 },
    #                 sds: {
    #                   secret_name: 'secretName' # required
    #                 }
    #               }, # required
    #               subject_alternative_names: {
    #                 match: {
    #                   exact: [
    #                     'member'
    #                   ] # required
    #                 } # required
    #               }
    #             }
    #           },
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: 'http', # required - accepts ["http", "tcp", "http2", "grpc"]
    #             port: 1,
    #             path: 'path',
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1 # required
    #           },
    #           timeout: {
    #             # One of:
    #             tcp: {
    #               idle: {
    #                 value: 1,
    #                 unit: 's' # accepts ["s", "ms"]
    #               }
    #             },
    #             http: {
    #             },
    #             grpc: {
    #             }
    #           },
    #           outlier_detection: {
    #             max_server_errors: 1, # required
    #             max_ejection_percent: 1 # required
    #           },
    #           connection_pool: {
    #             # One of:
    #             tcp: {
    #               max_connections: 1 # required
    #             },
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1 # required
    #             },
    #             grpc: {
    #               max_requests: 1 # required
    #             }
    #           }
    #         }
    #       ],
    #       backends: [
    #         {
    #           # One of:
    #           virtual_service: {
    #             virtual_service_name: 'virtualServiceName', # required
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [
    #                   1
    #                 ],
    #                 certificate: {
    #                   # One of:
    #                 },
    #                 validation: {
    #                   member_trust: {
    #                     # One of:
    #                     acm: {
    #                       certificate_authority_arns: [
    #                         'member'
    #                       ] # required
    #                     },
    #                   }, # required
    #                 } # required
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       backend_defaults: {
    #       },
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: 'path' # required
    #           }
    #         }
    #       }
    #     }, # required
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVirtualNodeOutput
    #   resp.data.virtual_node #=> Types::VirtualNodeData
    #   resp.data.virtual_node.mesh_name #=> String
    #   resp.data.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_node.spec #=> Types::VirtualNodeSpec
    #   resp.data.virtual_node.spec.service_discovery #=> Types::ServiceDiscovery, one of [Dns, AwsCloudMap]
    #   resp.data.virtual_node.spec.service_discovery.dns #=> Types::DnsServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.data.virtual_node.spec.service_discovery.dns.response_type #=> String, one of ["LOADBALANCER", "ENDPOINTS"]
    #   resp.data.virtual_node.spec.service_discovery.dns.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map #=> Types::AwsCloudMapServiceDiscovery
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array<AwsCloudMapInstanceAttribute>
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0] #=> Types::AwsCloudMapInstanceAttribute
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.data.virtual_node.spec.service_discovery.aws_cloud_map.ip_preference #=> String, one of ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #   resp.data.virtual_node.spec.listeners #=> Array<Listener>
    #   resp.data.virtual_node.spec.listeners[0] #=> Types::Listener
    #   resp.data.virtual_node.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].tls #=> Types::ListenerTls
    #   resp.data.virtual_node.spec.listeners[0].tls.mode #=> String, one of ["STRICT", "PERMISSIVE", "DISABLED"]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate #=> Types::ListenerTlsCertificate, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm #=> Types::ListenerTlsAcmCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.listeners[0].tls.certificate.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation #=> Types::ListenerTlsValidationContext
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust #=> Types::ListenerTlsValidationContextTrust, one of [File, Sds]
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.file.certificate_chain #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.member_trust.sds.secret_name #=> String
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match #=> Types::SubjectAlternativeNameMatchers
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact #=> Array<String>
    #   resp.data.virtual_node.spec.listeners[0].tls.validation.subject_alternative_names.match.exact[0] #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check #=> Types::HealthCheckPolicy
    #   resp.data.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.data.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout #=> Types::ListenerTimeout, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp #=> Types::TcpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of ["s", "ms"]
    #   resp.data.virtual_node.spec.listeners[0].timeout.http #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.http2 #=> Types::HttpTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc #=> Types::GrpcTimeout
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.per_request #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].timeout.grpc.idle #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection #=> Types::OutlierDetection
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_server_errors #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.interval #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.base_ejection_duration #=> Types::Duration
    #   resp.data.virtual_node.spec.listeners[0].outlier_detection.max_ejection_percent #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool #=> Types::VirtualNodeConnectionPool, one of [Tcp, Http, Http2, Grpc]
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp #=> Types::VirtualNodeTcpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.tcp.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http #=> Types::VirtualNodeHttpConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_connections #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http.max_pending_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2 #=> Types::VirtualNodeHttp2ConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.http2.max_requests #=> Integer
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc #=> Types::VirtualNodeGrpcConnectionPool
    #   resp.data.virtual_node.spec.listeners[0].connection_pool.grpc.max_requests #=> Integer
    #   resp.data.virtual_node.spec.backends #=> Array<Backend>
    #   resp.data.virtual_node.spec.backends[0] #=> Types::Backend, one of [VirtualService]
    #   resp.data.virtual_node.spec.backends[0].virtual_service #=> Types::VirtualServiceBackend
    #   resp.data.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls #=> Types::ClientPolicyTls
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array<Integer>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate #=> Types::ClientTlsCertificate, one of [File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.file #=> Types::ListenerTlsFileCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.certificate.sds #=> Types::ListenerTlsSdsCertificate
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation #=> Types::TlsValidationContext
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust #=> Types::TlsValidationContextTrust, one of [Acm, File, Sds]
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm #=> Types::TlsValidationContextAcmTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns #=> Array<String>
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.acm.certificate_authority_arns[0] #=> String
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.file #=> Types::TlsValidationContextFileTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.member_trust.sds #=> Types::TlsValidationContextSdsTrust
    #   resp.data.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.subject_alternative_names #=> Types::SubjectAlternativeNames
    #   resp.data.virtual_node.spec.backend_defaults #=> Types::BackendDefaults
    #   resp.data.virtual_node.spec.backend_defaults.client_policy #=> Types::ClientPolicy
    #   resp.data.virtual_node.spec.logging #=> Types::Logging
    #   resp.data.virtual_node.spec.logging.access_log #=> Types::AccessLog, one of [File]
    #   resp.data.virtual_node.spec.logging.access_log.file #=> Types::FileAccessLog
    #   resp.data.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.data.virtual_node.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_node.metadata.arn #=> String
    #   resp.data.virtual_node.metadata.version #=> Integer
    #   resp.data.virtual_node.metadata.uid #=> String
    #   resp.data.virtual_node.metadata.created_at #=> Time
    #   resp.data.virtual_node.metadata.last_updated_at #=> Time
    #   resp.data.virtual_node.metadata.mesh_owner #=> String
    #   resp.data.virtual_node.metadata.resource_owner #=> String
    #   resp.data.virtual_node.status #=> Types::VirtualNodeStatus
    #   resp.data.virtual_node.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_virtual_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVirtualNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVirtualNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVirtualNode
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateVirtualNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVirtualNode,
        stubs: @stubs,
        params_class: Params::UpdateVirtualNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_virtual_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing virtual router in a specified service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVirtualRouterInput}.
    #
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to update.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #
    # @option params [VirtualRouterSpec] :spec
    #   <p>The new virtual router specification to apply. This overwrites the existing data.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::UpdateVirtualRouterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_router(
    #     virtual_router_name: 'virtualRouterName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       listeners: [
    #         {
    #           port_mapping: {
    #             port: 1, # required
    #             protocol: 'http' # required - accepts ["http", "tcp", "http2", "grpc"]
    #           } # required
    #         }
    #       ]
    #     }, # required
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVirtualRouterOutput
    #   resp.data.virtual_router #=> Types::VirtualRouterData
    #   resp.data.virtual_router.mesh_name #=> String
    #   resp.data.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_router.spec #=> Types::VirtualRouterSpec
    #   resp.data.virtual_router.spec.listeners #=> Array<VirtualRouterListener>
    #   resp.data.virtual_router.spec.listeners[0] #=> Types::VirtualRouterListener
    #   resp.data.virtual_router.spec.listeners[0].port_mapping #=> Types::PortMapping
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.data.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of ["http", "tcp", "http2", "grpc"]
    #   resp.data.virtual_router.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_router.metadata.arn #=> String
    #   resp.data.virtual_router.metadata.version #=> Integer
    #   resp.data.virtual_router.metadata.uid #=> String
    #   resp.data.virtual_router.metadata.created_at #=> Time
    #   resp.data.virtual_router.metadata.last_updated_at #=> Time
    #   resp.data.virtual_router.metadata.mesh_owner #=> String
    #   resp.data.virtual_router.metadata.resource_owner #=> String
    #   resp.data.virtual_router.status #=> Types::VirtualRouterStatus
    #   resp.data.virtual_router.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_virtual_router(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVirtualRouterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVirtualRouterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVirtualRouter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateVirtualRouter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVirtualRouter,
        stubs: @stubs,
        params_class: Params::UpdateVirtualRouterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_virtual_router
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing virtual service in a specified service mesh.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVirtualServiceInput}.
    #
    # @option params [String] :virtual_service_name
    #   <p>The name of the virtual service to update.</p>
    #
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #
    # @option params [VirtualServiceSpec] :spec
    #   <p>The new virtual service specification to apply. This overwrites the existing
    #            data.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    # @return [Types::UpdateVirtualServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_service(
    #     virtual_service_name: 'virtualServiceName', # required
    #     mesh_name: 'meshName', # required
    #     spec: {
    #       provider: {
    #         # One of:
    #         virtual_node: {
    #           virtual_node_name: 'virtualNodeName' # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: 'virtualRouterName' # required
    #         }
    #       }
    #     }, # required
    #     client_token: 'clientToken',
    #     mesh_owner: 'meshOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVirtualServiceOutput
    #   resp.data.virtual_service #=> Types::VirtualServiceData
    #   resp.data.virtual_service.mesh_name #=> String
    #   resp.data.virtual_service.virtual_service_name #=> String
    #   resp.data.virtual_service.spec #=> Types::VirtualServiceSpec
    #   resp.data.virtual_service.spec.provider #=> Types::VirtualServiceProvider, one of [VirtualNode, VirtualRouter]
    #   resp.data.virtual_service.spec.provider.virtual_node #=> Types::VirtualNodeServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.data.virtual_service.spec.provider.virtual_router #=> Types::VirtualRouterServiceProvider
    #   resp.data.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.data.virtual_service.metadata #=> Types::ResourceMetadata
    #   resp.data.virtual_service.metadata.arn #=> String
    #   resp.data.virtual_service.metadata.version #=> Integer
    #   resp.data.virtual_service.metadata.uid #=> String
    #   resp.data.virtual_service.metadata.created_at #=> Time
    #   resp.data.virtual_service.metadata.last_updated_at #=> Time
    #   resp.data.virtual_service.metadata.mesh_owner #=> String
    #   resp.data.virtual_service.metadata.resource_owner #=> String
    #   resp.data.virtual_service.status #=> Types::VirtualServiceStatus
    #   resp.data.virtual_service.status.status #=> String, one of ["ACTIVE", "INACTIVE", "DELETED"]
    #
    def update_virtual_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVirtualServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVirtualServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVirtualService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::LimitExceededException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateVirtualService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVirtualService,
        stubs: @stubs,
        params_class: Params::UpdateVirtualServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_virtual_service
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
