# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppMesh
  module Builders

    # Operation Builder for CreateGatewayRoute
    class CreateGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateway/%<virtualGatewayName>s/gatewayRoutes',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['gatewayRouteName'] = input[:gateway_route_name] unless input[:gateway_route_name].nil?
        data['spec'] = Builders::GatewayRouteSpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagRef.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagRef
    class TagRef
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for GatewayRouteSpec
    class GatewayRouteSpec
      def self.build(input)
        data = {}
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['httpRoute'] = Builders::HttpGatewayRoute.build(input[:http_route]) unless input[:http_route].nil?
        data['http2Route'] = Builders::HttpGatewayRoute.build(input[:http2_route]) unless input[:http2_route].nil?
        data['grpcRoute'] = Builders::GrpcGatewayRoute.build(input[:grpc_route]) unless input[:grpc_route].nil?
        data
      end
    end

    # Structure Builder for GrpcGatewayRoute
    class GrpcGatewayRoute
      def self.build(input)
        data = {}
        data['match'] = Builders::GrpcGatewayRouteMatch.build(input[:match]) unless input[:match].nil?
        data['action'] = Builders::GrpcGatewayRouteAction.build(input[:action]) unless input[:action].nil?
        data
      end
    end

    # Structure Builder for GrpcGatewayRouteAction
    class GrpcGatewayRouteAction
      def self.build(input)
        data = {}
        data['target'] = Builders::GatewayRouteTarget.build(input[:target]) unless input[:target].nil?
        data['rewrite'] = Builders::GrpcGatewayRouteRewrite.build(input[:rewrite]) unless input[:rewrite].nil?
        data
      end
    end

    # Structure Builder for GrpcGatewayRouteRewrite
    class GrpcGatewayRouteRewrite
      def self.build(input)
        data = {}
        data['hostname'] = Builders::GatewayRouteHostnameRewrite.build(input[:hostname]) unless input[:hostname].nil?
        data
      end
    end

    # Structure Builder for GatewayRouteHostnameRewrite
    class GatewayRouteHostnameRewrite
      def self.build(input)
        data = {}
        data['defaultTargetHostname'] = input[:default_target_hostname] unless input[:default_target_hostname].nil?
        data
      end
    end

    # Structure Builder for GatewayRouteTarget
    class GatewayRouteTarget
      def self.build(input)
        data = {}
        data['virtualService'] = Builders::GatewayRouteVirtualService.build(input[:virtual_service]) unless input[:virtual_service].nil?
        data
      end
    end

    # Structure Builder for GatewayRouteVirtualService
    class GatewayRouteVirtualService
      def self.build(input)
        data = {}
        data['virtualServiceName'] = input[:virtual_service_name] unless input[:virtual_service_name].nil?
        data
      end
    end

    # Structure Builder for GrpcGatewayRouteMatch
    class GrpcGatewayRouteMatch
      def self.build(input)
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['hostname'] = Builders::GatewayRouteHostnameMatch.build(input[:hostname]) unless input[:hostname].nil?
        data['metadata'] = Builders::GrpcGatewayRouteMetadataList.build(input[:metadata]) unless input[:metadata].nil?
        data
      end
    end

    # List Builder for GrpcGatewayRouteMetadataList
    class GrpcGatewayRouteMetadataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GrpcGatewayRouteMetadata.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GrpcGatewayRouteMetadata
    class GrpcGatewayRouteMetadata
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['invert'] = input[:invert] unless input[:invert].nil?
        data['match'] = Builders::GrpcMetadataMatchMethod.build(input[:match]) unless input[:match].nil?
        data
      end
    end

    # Structure Builder for GrpcMetadataMatchMethod
    class GrpcMetadataMatchMethod
      def self.build(input)
        data = {}
        case input
        when Types::GrpcMetadataMatchMethod::Exact
          data['exact'] = input
        when Types::GrpcMetadataMatchMethod::Regex
          data['regex'] = input
        when Types::GrpcMetadataMatchMethod::Range
          data['range'] = (Builders::MatchRange.build(input) unless input.nil?)
        when Types::GrpcMetadataMatchMethod::Prefix
          data['prefix'] = input
        when Types::GrpcMetadataMatchMethod::Suffix
          data['suffix'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::GrpcMetadataMatchMethod"
        end

        data
      end
    end

    # Structure Builder for MatchRange
    class MatchRange
      def self.build(input)
        data = {}
        data['start'] = input[:start] unless input[:start].nil?
        data['end'] = input[:end] unless input[:end].nil?
        data
      end
    end

    # Structure Builder for GatewayRouteHostnameMatch
    class GatewayRouteHostnameMatch
      def self.build(input)
        data = {}
        data['exact'] = input[:exact] unless input[:exact].nil?
        data['suffix'] = input[:suffix] unless input[:suffix].nil?
        data
      end
    end

    # Structure Builder for HttpGatewayRoute
    class HttpGatewayRoute
      def self.build(input)
        data = {}
        data['match'] = Builders::HttpGatewayRouteMatch.build(input[:match]) unless input[:match].nil?
        data['action'] = Builders::HttpGatewayRouteAction.build(input[:action]) unless input[:action].nil?
        data
      end
    end

    # Structure Builder for HttpGatewayRouteAction
    class HttpGatewayRouteAction
      def self.build(input)
        data = {}
        data['target'] = Builders::GatewayRouteTarget.build(input[:target]) unless input[:target].nil?
        data['rewrite'] = Builders::HttpGatewayRouteRewrite.build(input[:rewrite]) unless input[:rewrite].nil?
        data
      end
    end

    # Structure Builder for HttpGatewayRouteRewrite
    class HttpGatewayRouteRewrite
      def self.build(input)
        data = {}
        data['prefix'] = Builders::HttpGatewayRoutePrefixRewrite.build(input[:prefix]) unless input[:prefix].nil?
        data['path'] = Builders::HttpGatewayRoutePathRewrite.build(input[:path]) unless input[:path].nil?
        data['hostname'] = Builders::GatewayRouteHostnameRewrite.build(input[:hostname]) unless input[:hostname].nil?
        data
      end
    end

    # Structure Builder for HttpGatewayRoutePathRewrite
    class HttpGatewayRoutePathRewrite
      def self.build(input)
        data = {}
        data['exact'] = input[:exact] unless input[:exact].nil?
        data
      end
    end

    # Structure Builder for HttpGatewayRoutePrefixRewrite
    class HttpGatewayRoutePrefixRewrite
      def self.build(input)
        data = {}
        data['defaultPrefix'] = input[:default_prefix] unless input[:default_prefix].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for HttpGatewayRouteMatch
    class HttpGatewayRouteMatch
      def self.build(input)
        data = {}
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data['path'] = Builders::HttpPathMatch.build(input[:path]) unless input[:path].nil?
        data['queryParameters'] = Builders::HttpQueryParameters.build(input[:query_parameters]) unless input[:query_parameters].nil?
        data['method'] = input[:member_method] unless input[:member_method].nil?
        data['hostname'] = Builders::GatewayRouteHostnameMatch.build(input[:hostname]) unless input[:hostname].nil?
        data['headers'] = Builders::HttpGatewayRouteHeaders.build(input[:headers]) unless input[:headers].nil?
        data
      end
    end

    # List Builder for HttpGatewayRouteHeaders
    class HttpGatewayRouteHeaders
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HttpGatewayRouteHeader.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpGatewayRouteHeader
    class HttpGatewayRouteHeader
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['invert'] = input[:invert] unless input[:invert].nil?
        data['match'] = Builders::HeaderMatchMethod.build(input[:match]) unless input[:match].nil?
        data
      end
    end

    # Structure Builder for HeaderMatchMethod
    class HeaderMatchMethod
      def self.build(input)
        data = {}
        case input
        when Types::HeaderMatchMethod::Exact
          data['exact'] = input
        when Types::HeaderMatchMethod::Regex
          data['regex'] = input
        when Types::HeaderMatchMethod::Range
          data['range'] = (Builders::MatchRange.build(input) unless input.nil?)
        when Types::HeaderMatchMethod::Prefix
          data['prefix'] = input
        when Types::HeaderMatchMethod::Suffix
          data['suffix'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::HeaderMatchMethod"
        end

        data
      end
    end

    # List Builder for HttpQueryParameters
    class HttpQueryParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HttpQueryParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpQueryParameter
    class HttpQueryParameter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['match'] = Builders::QueryParameterMatch.build(input[:match]) unless input[:match].nil?
        data
      end
    end

    # Structure Builder for QueryParameterMatch
    class QueryParameterMatch
      def self.build(input)
        data = {}
        data['exact'] = input[:exact] unless input[:exact].nil?
        data
      end
    end

    # Structure Builder for HttpPathMatch
    class HttpPathMatch
      def self.build(input)
        data = {}
        data['exact'] = input[:exact] unless input[:exact].nil?
        data['regex'] = input[:regex] unless input[:regex].nil?
        data
      end
    end

    # Operation Builder for CreateMesh
    class CreateMesh
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v20190125/meshes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['meshName'] = input[:mesh_name] unless input[:mesh_name].nil?
        data['spec'] = Builders::MeshSpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MeshSpec
    class MeshSpec
      def self.build(input)
        data = {}
        data['egressFilter'] = Builders::EgressFilter.build(input[:egress_filter]) unless input[:egress_filter].nil?
        data['serviceDiscovery'] = Builders::MeshServiceDiscovery.build(input[:service_discovery]) unless input[:service_discovery].nil?
        data
      end
    end

    # Structure Builder for MeshServiceDiscovery
    class MeshServiceDiscovery
      def self.build(input)
        data = {}
        data['ipPreference'] = input[:ip_preference] unless input[:ip_preference].nil?
        data
      end
    end

    # Structure Builder for EgressFilter
    class EgressFilter
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateRoute
    class CreateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouter/%<virtualRouterName>s/routes',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['routeName'] = input[:route_name] unless input[:route_name].nil?
        data['spec'] = Builders::RouteSpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RouteSpec
    class RouteSpec
      def self.build(input)
        data = {}
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['httpRoute'] = Builders::HttpRoute.build(input[:http_route]) unless input[:http_route].nil?
        data['tcpRoute'] = Builders::TcpRoute.build(input[:tcp_route]) unless input[:tcp_route].nil?
        data['http2Route'] = Builders::HttpRoute.build(input[:http2_route]) unless input[:http2_route].nil?
        data['grpcRoute'] = Builders::GrpcRoute.build(input[:grpc_route]) unless input[:grpc_route].nil?
        data
      end
    end

    # Structure Builder for GrpcRoute
    class GrpcRoute
      def self.build(input)
        data = {}
        data['action'] = Builders::GrpcRouteAction.build(input[:action]) unless input[:action].nil?
        data['match'] = Builders::GrpcRouteMatch.build(input[:match]) unless input[:match].nil?
        data['retryPolicy'] = Builders::GrpcRetryPolicy.build(input[:retry_policy]) unless input[:retry_policy].nil?
        data['timeout'] = Builders::GrpcTimeout.build(input[:timeout]) unless input[:timeout].nil?
        data
      end
    end

    # Structure Builder for GrpcTimeout
    class GrpcTimeout
      def self.build(input)
        data = {}
        data['perRequest'] = Builders::Duration.build(input[:per_request]) unless input[:per_request].nil?
        data['idle'] = Builders::Duration.build(input[:idle]) unless input[:idle].nil?
        data
      end
    end

    # Structure Builder for Duration
    class Duration
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Structure Builder for GrpcRetryPolicy
    class GrpcRetryPolicy
      def self.build(input)
        data = {}
        data['perRetryTimeout'] = Builders::Duration.build(input[:per_retry_timeout]) unless input[:per_retry_timeout].nil?
        data['maxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['httpRetryEvents'] = Builders::HttpRetryPolicyEvents.build(input[:http_retry_events]) unless input[:http_retry_events].nil?
        data['tcpRetryEvents'] = Builders::TcpRetryPolicyEvents.build(input[:tcp_retry_events]) unless input[:tcp_retry_events].nil?
        data['grpcRetryEvents'] = Builders::GrpcRetryPolicyEvents.build(input[:grpc_retry_events]) unless input[:grpc_retry_events].nil?
        data
      end
    end

    # List Builder for GrpcRetryPolicyEvents
    class GrpcRetryPolicyEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TcpRetryPolicyEvents
    class TcpRetryPolicyEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for HttpRetryPolicyEvents
    class HttpRetryPolicyEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GrpcRouteMatch
    class GrpcRouteMatch
      def self.build(input)
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['methodName'] = input[:method_name] unless input[:method_name].nil?
        data['metadata'] = Builders::GrpcRouteMetadataList.build(input[:metadata]) unless input[:metadata].nil?
        data
      end
    end

    # List Builder for GrpcRouteMetadataList
    class GrpcRouteMetadataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GrpcRouteMetadata.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GrpcRouteMetadata
    class GrpcRouteMetadata
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['invert'] = input[:invert] unless input[:invert].nil?
        data['match'] = Builders::GrpcRouteMetadataMatchMethod.build(input[:match]) unless input[:match].nil?
        data
      end
    end

    # Structure Builder for GrpcRouteMetadataMatchMethod
    class GrpcRouteMetadataMatchMethod
      def self.build(input)
        data = {}
        case input
        when Types::GrpcRouteMetadataMatchMethod::Exact
          data['exact'] = input
        when Types::GrpcRouteMetadataMatchMethod::Regex
          data['regex'] = input
        when Types::GrpcRouteMetadataMatchMethod::Range
          data['range'] = (Builders::MatchRange.build(input) unless input.nil?)
        when Types::GrpcRouteMetadataMatchMethod::Prefix
          data['prefix'] = input
        when Types::GrpcRouteMetadataMatchMethod::Suffix
          data['suffix'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::GrpcRouteMetadataMatchMethod"
        end

        data
      end
    end

    # Structure Builder for GrpcRouteAction
    class GrpcRouteAction
      def self.build(input)
        data = {}
        data['weightedTargets'] = Builders::WeightedTargets.build(input[:weighted_targets]) unless input[:weighted_targets].nil?
        data
      end
    end

    # List Builder for WeightedTargets
    class WeightedTargets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WeightedTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WeightedTarget
    class WeightedTarget
      def self.build(input)
        data = {}
        data['virtualNode'] = input[:virtual_node] unless input[:virtual_node].nil?
        data['weight'] = input[:weight] unless input[:weight].nil?
        data
      end
    end

    # Structure Builder for HttpRoute
    class HttpRoute
      def self.build(input)
        data = {}
        data['match'] = Builders::HttpRouteMatch.build(input[:match]) unless input[:match].nil?
        data['action'] = Builders::HttpRouteAction.build(input[:action]) unless input[:action].nil?
        data['retryPolicy'] = Builders::HttpRetryPolicy.build(input[:retry_policy]) unless input[:retry_policy].nil?
        data['timeout'] = Builders::HttpTimeout.build(input[:timeout]) unless input[:timeout].nil?
        data
      end
    end

    # Structure Builder for HttpTimeout
    class HttpTimeout
      def self.build(input)
        data = {}
        data['perRequest'] = Builders::Duration.build(input[:per_request]) unless input[:per_request].nil?
        data['idle'] = Builders::Duration.build(input[:idle]) unless input[:idle].nil?
        data
      end
    end

    # Structure Builder for HttpRetryPolicy
    class HttpRetryPolicy
      def self.build(input)
        data = {}
        data['perRetryTimeout'] = Builders::Duration.build(input[:per_retry_timeout]) unless input[:per_retry_timeout].nil?
        data['maxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['httpRetryEvents'] = Builders::HttpRetryPolicyEvents.build(input[:http_retry_events]) unless input[:http_retry_events].nil?
        data['tcpRetryEvents'] = Builders::TcpRetryPolicyEvents.build(input[:tcp_retry_events]) unless input[:tcp_retry_events].nil?
        data
      end
    end

    # Structure Builder for HttpRouteAction
    class HttpRouteAction
      def self.build(input)
        data = {}
        data['weightedTargets'] = Builders::WeightedTargets.build(input[:weighted_targets]) unless input[:weighted_targets].nil?
        data
      end
    end

    # Structure Builder for HttpRouteMatch
    class HttpRouteMatch
      def self.build(input)
        data = {}
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data['path'] = Builders::HttpPathMatch.build(input[:path]) unless input[:path].nil?
        data['queryParameters'] = Builders::HttpQueryParameters.build(input[:query_parameters]) unless input[:query_parameters].nil?
        data['method'] = input[:member_method] unless input[:member_method].nil?
        data['scheme'] = input[:scheme] unless input[:scheme].nil?
        data['headers'] = Builders::HttpRouteHeaders.build(input[:headers]) unless input[:headers].nil?
        data
      end
    end

    # List Builder for HttpRouteHeaders
    class HttpRouteHeaders
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HttpRouteHeader.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpRouteHeader
    class HttpRouteHeader
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['invert'] = input[:invert] unless input[:invert].nil?
        data['match'] = Builders::HeaderMatchMethod.build(input[:match]) unless input[:match].nil?
        data
      end
    end

    # Structure Builder for TcpRoute
    class TcpRoute
      def self.build(input)
        data = {}
        data['action'] = Builders::TcpRouteAction.build(input[:action]) unless input[:action].nil?
        data['timeout'] = Builders::TcpTimeout.build(input[:timeout]) unless input[:timeout].nil?
        data
      end
    end

    # Structure Builder for TcpTimeout
    class TcpTimeout
      def self.build(input)
        data = {}
        data['idle'] = Builders::Duration.build(input[:idle]) unless input[:idle].nil?
        data
      end
    end

    # Structure Builder for TcpRouteAction
    class TcpRouteAction
      def self.build(input)
        data = {}
        data['weightedTargets'] = Builders::WeightedTargets.build(input[:weighted_targets]) unless input[:weighted_targets].nil?
        data
      end
    end

    # Operation Builder for CreateVirtualGateway
    class CreateVirtualGateway
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateways',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['virtualGatewayName'] = input[:virtual_gateway_name] unless input[:virtual_gateway_name].nil?
        data['spec'] = Builders::VirtualGatewaySpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VirtualGatewaySpec
    class VirtualGatewaySpec
      def self.build(input)
        data = {}
        data['backendDefaults'] = Builders::VirtualGatewayBackendDefaults.build(input[:backend_defaults]) unless input[:backend_defaults].nil?
        data['listeners'] = Builders::VirtualGatewayListeners.build(input[:listeners]) unless input[:listeners].nil?
        data['logging'] = Builders::VirtualGatewayLogging.build(input[:logging]) unless input[:logging].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayLogging
    class VirtualGatewayLogging
      def self.build(input)
        data = {}
        data['accessLog'] = Builders::VirtualGatewayAccessLog.build(input[:access_log]) unless input[:access_log].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayAccessLog
    class VirtualGatewayAccessLog
      def self.build(input)
        data = {}
        case input
        when Types::VirtualGatewayAccessLog::File
          data['file'] = (Builders::VirtualGatewayFileAccessLog.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayAccessLog"
        end

        data
      end
    end

    # Structure Builder for VirtualGatewayFileAccessLog
    class VirtualGatewayFileAccessLog
      def self.build(input)
        data = {}
        data['path'] = input[:path] unless input[:path].nil?
        data
      end
    end

    # List Builder for VirtualGatewayListeners
    class VirtualGatewayListeners
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VirtualGatewayListener.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VirtualGatewayListener
    class VirtualGatewayListener
      def self.build(input)
        data = {}
        data['healthCheck'] = Builders::VirtualGatewayHealthCheckPolicy.build(input[:health_check]) unless input[:health_check].nil?
        data['portMapping'] = Builders::VirtualGatewayPortMapping.build(input[:port_mapping]) unless input[:port_mapping].nil?
        data['tls'] = Builders::VirtualGatewayListenerTls.build(input[:tls]) unless input[:tls].nil?
        data['connectionPool'] = Builders::VirtualGatewayConnectionPool.build(input[:connection_pool]) unless input[:connection_pool].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayConnectionPool
    class VirtualGatewayConnectionPool
      def self.build(input)
        data = {}
        case input
        when Types::VirtualGatewayConnectionPool::Http
          data['http'] = (Builders::VirtualGatewayHttpConnectionPool.build(input) unless input.nil?)
        when Types::VirtualGatewayConnectionPool::Http2
          data['http2'] = (Builders::VirtualGatewayHttp2ConnectionPool.build(input) unless input.nil?)
        when Types::VirtualGatewayConnectionPool::Grpc
          data['grpc'] = (Builders::VirtualGatewayGrpcConnectionPool.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayConnectionPool"
        end

        data
      end
    end

    # Structure Builder for VirtualGatewayGrpcConnectionPool
    class VirtualGatewayGrpcConnectionPool
      def self.build(input)
        data = {}
        data['maxRequests'] = input[:max_requests] unless input[:max_requests].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayHttp2ConnectionPool
    class VirtualGatewayHttp2ConnectionPool
      def self.build(input)
        data = {}
        data['maxRequests'] = input[:max_requests] unless input[:max_requests].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayHttpConnectionPool
    class VirtualGatewayHttpConnectionPool
      def self.build(input)
        data = {}
        data['maxConnections'] = input[:max_connections] unless input[:max_connections].nil?
        data['maxPendingRequests'] = input[:max_pending_requests] unless input[:max_pending_requests].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTls
    class VirtualGatewayListenerTls
      def self.build(input)
        data = {}
        data['mode'] = input[:mode] unless input[:mode].nil?
        data['validation'] = Builders::VirtualGatewayListenerTlsValidationContext.build(input[:validation]) unless input[:validation].nil?
        data['certificate'] = Builders::VirtualGatewayListenerTlsCertificate.build(input[:certificate]) unless input[:certificate].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTlsCertificate
    class VirtualGatewayListenerTlsCertificate
      def self.build(input)
        data = {}
        case input
        when Types::VirtualGatewayListenerTlsCertificate::Acm
          data['acm'] = (Builders::VirtualGatewayListenerTlsAcmCertificate.build(input) unless input.nil?)
        when Types::VirtualGatewayListenerTlsCertificate::File
          data['file'] = (Builders::VirtualGatewayListenerTlsFileCertificate.build(input) unless input.nil?)
        when Types::VirtualGatewayListenerTlsCertificate::Sds
          data['sds'] = (Builders::VirtualGatewayListenerTlsSdsCertificate.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayListenerTlsCertificate"
        end

        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTlsSdsCertificate
    class VirtualGatewayListenerTlsSdsCertificate
      def self.build(input)
        data = {}
        data['secretName'] = input[:secret_name] unless input[:secret_name].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTlsFileCertificate
    class VirtualGatewayListenerTlsFileCertificate
      def self.build(input)
        data = {}
        data['certificateChain'] = input[:certificate_chain] unless input[:certificate_chain].nil?
        data['privateKey'] = input[:private_key] unless input[:private_key].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTlsAcmCertificate
    class VirtualGatewayListenerTlsAcmCertificate
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTlsValidationContext
    class VirtualGatewayListenerTlsValidationContext
      def self.build(input)
        data = {}
        data['trust'] = Builders::VirtualGatewayListenerTlsValidationContextTrust.build(input[:member_trust]) unless input[:member_trust].nil?
        data['subjectAlternativeNames'] = Builders::SubjectAlternativeNames.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Builder for SubjectAlternativeNames
    class SubjectAlternativeNames
      def self.build(input)
        data = {}
        data['match'] = Builders::SubjectAlternativeNameMatchers.build(input[:match]) unless input[:match].nil?
        data
      end
    end

    # Structure Builder for SubjectAlternativeNameMatchers
    class SubjectAlternativeNameMatchers
      def self.build(input)
        data = {}
        data['exact'] = Builders::SubjectAlternativeNameList.build(input[:exact]) unless input[:exact].nil?
        data
      end
    end

    # List Builder for SubjectAlternativeNameList
    class SubjectAlternativeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VirtualGatewayListenerTlsValidationContextTrust
    class VirtualGatewayListenerTlsValidationContextTrust
      def self.build(input)
        data = {}
        case input
        when Types::VirtualGatewayListenerTlsValidationContextTrust::File
          data['file'] = (Builders::VirtualGatewayTlsValidationContextFileTrust.build(input) unless input.nil?)
        when Types::VirtualGatewayListenerTlsValidationContextTrust::Sds
          data['sds'] = (Builders::VirtualGatewayTlsValidationContextSdsTrust.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayListenerTlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Builder for VirtualGatewayTlsValidationContextSdsTrust
    class VirtualGatewayTlsValidationContextSdsTrust
      def self.build(input)
        data = {}
        data['secretName'] = input[:secret_name] unless input[:secret_name].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayTlsValidationContextFileTrust
    class VirtualGatewayTlsValidationContextFileTrust
      def self.build(input)
        data = {}
        data['certificateChain'] = input[:certificate_chain] unless input[:certificate_chain].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayPortMapping
    class VirtualGatewayPortMapping
      def self.build(input)
        data = {}
        data['port'] = input[:port] unless input[:port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayHealthCheckPolicy
    class VirtualGatewayHealthCheckPolicy
      def self.build(input)
        data = {}
        data['timeoutMillis'] = input[:timeout_millis] unless input[:timeout_millis].nil?
        data['intervalMillis'] = input[:interval_millis] unless input[:interval_millis].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['port'] = input[:port] unless input[:port].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['healthyThreshold'] = input[:healthy_threshold] unless input[:healthy_threshold].nil?
        data['unhealthyThreshold'] = input[:unhealthy_threshold] unless input[:unhealthy_threshold].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayBackendDefaults
    class VirtualGatewayBackendDefaults
      def self.build(input)
        data = {}
        data['clientPolicy'] = Builders::VirtualGatewayClientPolicy.build(input[:client_policy]) unless input[:client_policy].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayClientPolicy
    class VirtualGatewayClientPolicy
      def self.build(input)
        data = {}
        data['tls'] = Builders::VirtualGatewayClientPolicyTls.build(input[:tls]) unless input[:tls].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayClientPolicyTls
    class VirtualGatewayClientPolicyTls
      def self.build(input)
        data = {}
        data['enforce'] = input[:enforce] unless input[:enforce].nil?
        data['ports'] = Builders::PortSet.build(input[:ports]).to_a unless input[:ports].nil?
        data['certificate'] = Builders::VirtualGatewayClientTlsCertificate.build(input[:certificate]) unless input[:certificate].nil?
        data['validation'] = Builders::VirtualGatewayTlsValidationContext.build(input[:validation]) unless input[:validation].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayTlsValidationContext
    class VirtualGatewayTlsValidationContext
      def self.build(input)
        data = {}
        data['trust'] = Builders::VirtualGatewayTlsValidationContextTrust.build(input[:member_trust]) unless input[:member_trust].nil?
        data['subjectAlternativeNames'] = Builders::SubjectAlternativeNames.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Builder for VirtualGatewayTlsValidationContextTrust
    class VirtualGatewayTlsValidationContextTrust
      def self.build(input)
        data = {}
        case input
        when Types::VirtualGatewayTlsValidationContextTrust::Acm
          data['acm'] = (Builders::VirtualGatewayTlsValidationContextAcmTrust.build(input) unless input.nil?)
        when Types::VirtualGatewayTlsValidationContextTrust::File
          data['file'] = (Builders::VirtualGatewayTlsValidationContextFileTrust.build(input) unless input.nil?)
        when Types::VirtualGatewayTlsValidationContextTrust::Sds
          data['sds'] = (Builders::VirtualGatewayTlsValidationContextSdsTrust.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayTlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Builder for VirtualGatewayTlsValidationContextAcmTrust
    class VirtualGatewayTlsValidationContextAcmTrust
      def self.build(input)
        data = {}
        data['certificateAuthorityArns'] = Builders::VirtualGatewayCertificateAuthorityArns.build(input[:certificate_authority_arns]) unless input[:certificate_authority_arns].nil?
        data
      end
    end

    # List Builder for VirtualGatewayCertificateAuthorityArns
    class VirtualGatewayCertificateAuthorityArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VirtualGatewayClientTlsCertificate
    class VirtualGatewayClientTlsCertificate
      def self.build(input)
        data = {}
        case input
        when Types::VirtualGatewayClientTlsCertificate::File
          data['file'] = (Builders::VirtualGatewayListenerTlsFileCertificate.build(input) unless input.nil?)
        when Types::VirtualGatewayClientTlsCertificate::Sds
          data['sds'] = (Builders::VirtualGatewayListenerTlsSdsCertificate.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayClientTlsCertificate"
        end

        data
      end
    end

    # Set Builder for PortSet
    class PortSet
      def self.build(input)
        data = Set.new
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateVirtualNode
    class CreateVirtualNode
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualNodes',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['virtualNodeName'] = input[:virtual_node_name] unless input[:virtual_node_name].nil?
        data['spec'] = Builders::VirtualNodeSpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VirtualNodeSpec
    class VirtualNodeSpec
      def self.build(input)
        data = {}
        data['serviceDiscovery'] = Builders::ServiceDiscovery.build(input[:service_discovery]) unless input[:service_discovery].nil?
        data['listeners'] = Builders::Listeners.build(input[:listeners]) unless input[:listeners].nil?
        data['backends'] = Builders::Backends.build(input[:backends]) unless input[:backends].nil?
        data['backendDefaults'] = Builders::BackendDefaults.build(input[:backend_defaults]) unless input[:backend_defaults].nil?
        data['logging'] = Builders::Logging.build(input[:logging]) unless input[:logging].nil?
        data
      end
    end

    # Structure Builder for Logging
    class Logging
      def self.build(input)
        data = {}
        data['accessLog'] = Builders::AccessLog.build(input[:access_log]) unless input[:access_log].nil?
        data
      end
    end

    # Structure Builder for AccessLog
    class AccessLog
      def self.build(input)
        data = {}
        case input
        when Types::AccessLog::File
          data['file'] = (Builders::FileAccessLog.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AccessLog"
        end

        data
      end
    end

    # Structure Builder for FileAccessLog
    class FileAccessLog
      def self.build(input)
        data = {}
        data['path'] = input[:path] unless input[:path].nil?
        data
      end
    end

    # Structure Builder for BackendDefaults
    class BackendDefaults
      def self.build(input)
        data = {}
        data['clientPolicy'] = Builders::ClientPolicy.build(input[:client_policy]) unless input[:client_policy].nil?
        data
      end
    end

    # Structure Builder for ClientPolicy
    class ClientPolicy
      def self.build(input)
        data = {}
        data['tls'] = Builders::ClientPolicyTls.build(input[:tls]) unless input[:tls].nil?
        data
      end
    end

    # Structure Builder for ClientPolicyTls
    class ClientPolicyTls
      def self.build(input)
        data = {}
        data['enforce'] = input[:enforce] unless input[:enforce].nil?
        data['ports'] = Builders::PortSet.build(input[:ports]).to_a unless input[:ports].nil?
        data['certificate'] = Builders::ClientTlsCertificate.build(input[:certificate]) unless input[:certificate].nil?
        data['validation'] = Builders::TlsValidationContext.build(input[:validation]) unless input[:validation].nil?
        data
      end
    end

    # Structure Builder for TlsValidationContext
    class TlsValidationContext
      def self.build(input)
        data = {}
        data['trust'] = Builders::TlsValidationContextTrust.build(input[:member_trust]) unless input[:member_trust].nil?
        data['subjectAlternativeNames'] = Builders::SubjectAlternativeNames.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Builder for TlsValidationContextTrust
    class TlsValidationContextTrust
      def self.build(input)
        data = {}
        case input
        when Types::TlsValidationContextTrust::Acm
          data['acm'] = (Builders::TlsValidationContextAcmTrust.build(input) unless input.nil?)
        when Types::TlsValidationContextTrust::File
          data['file'] = (Builders::TlsValidationContextFileTrust.build(input) unless input.nil?)
        when Types::TlsValidationContextTrust::Sds
          data['sds'] = (Builders::TlsValidationContextSdsTrust.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Builder for TlsValidationContextSdsTrust
    class TlsValidationContextSdsTrust
      def self.build(input)
        data = {}
        data['secretName'] = input[:secret_name] unless input[:secret_name].nil?
        data
      end
    end

    # Structure Builder for TlsValidationContextFileTrust
    class TlsValidationContextFileTrust
      def self.build(input)
        data = {}
        data['certificateChain'] = input[:certificate_chain] unless input[:certificate_chain].nil?
        data
      end
    end

    # Structure Builder for TlsValidationContextAcmTrust
    class TlsValidationContextAcmTrust
      def self.build(input)
        data = {}
        data['certificateAuthorityArns'] = Builders::CertificateAuthorityArns.build(input[:certificate_authority_arns]) unless input[:certificate_authority_arns].nil?
        data
      end
    end

    # List Builder for CertificateAuthorityArns
    class CertificateAuthorityArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ClientTlsCertificate
    class ClientTlsCertificate
      def self.build(input)
        data = {}
        case input
        when Types::ClientTlsCertificate::File
          data['file'] = (Builders::ListenerTlsFileCertificate.build(input) unless input.nil?)
        when Types::ClientTlsCertificate::Sds
          data['sds'] = (Builders::ListenerTlsSdsCertificate.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ClientTlsCertificate"
        end

        data
      end
    end

    # Structure Builder for ListenerTlsSdsCertificate
    class ListenerTlsSdsCertificate
      def self.build(input)
        data = {}
        data['secretName'] = input[:secret_name] unless input[:secret_name].nil?
        data
      end
    end

    # Structure Builder for ListenerTlsFileCertificate
    class ListenerTlsFileCertificate
      def self.build(input)
        data = {}
        data['certificateChain'] = input[:certificate_chain] unless input[:certificate_chain].nil?
        data['privateKey'] = input[:private_key] unless input[:private_key].nil?
        data
      end
    end

    # List Builder for Backends
    class Backends
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Backend.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Backend
    class Backend
      def self.build(input)
        data = {}
        case input
        when Types::Backend::VirtualService
          data['virtualService'] = (Builders::VirtualServiceBackend.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Backend"
        end

        data
      end
    end

    # Structure Builder for VirtualServiceBackend
    class VirtualServiceBackend
      def self.build(input)
        data = {}
        data['virtualServiceName'] = input[:virtual_service_name] unless input[:virtual_service_name].nil?
        data['clientPolicy'] = Builders::ClientPolicy.build(input[:client_policy]) unless input[:client_policy].nil?
        data
      end
    end

    # List Builder for Listeners
    class Listeners
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Listener.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Listener
    class Listener
      def self.build(input)
        data = {}
        data['portMapping'] = Builders::PortMapping.build(input[:port_mapping]) unless input[:port_mapping].nil?
        data['tls'] = Builders::ListenerTls.build(input[:tls]) unless input[:tls].nil?
        data['healthCheck'] = Builders::HealthCheckPolicy.build(input[:health_check]) unless input[:health_check].nil?
        data['timeout'] = Builders::ListenerTimeout.build(input[:timeout]) unless input[:timeout].nil?
        data['outlierDetection'] = Builders::OutlierDetection.build(input[:outlier_detection]) unless input[:outlier_detection].nil?
        data['connectionPool'] = Builders::VirtualNodeConnectionPool.build(input[:connection_pool]) unless input[:connection_pool].nil?
        data
      end
    end

    # Structure Builder for VirtualNodeConnectionPool
    class VirtualNodeConnectionPool
      def self.build(input)
        data = {}
        case input
        when Types::VirtualNodeConnectionPool::Tcp
          data['tcp'] = (Builders::VirtualNodeTcpConnectionPool.build(input) unless input.nil?)
        when Types::VirtualNodeConnectionPool::Http
          data['http'] = (Builders::VirtualNodeHttpConnectionPool.build(input) unless input.nil?)
        when Types::VirtualNodeConnectionPool::Http2
          data['http2'] = (Builders::VirtualNodeHttp2ConnectionPool.build(input) unless input.nil?)
        when Types::VirtualNodeConnectionPool::Grpc
          data['grpc'] = (Builders::VirtualNodeGrpcConnectionPool.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualNodeConnectionPool"
        end

        data
      end
    end

    # Structure Builder for VirtualNodeGrpcConnectionPool
    class VirtualNodeGrpcConnectionPool
      def self.build(input)
        data = {}
        data['maxRequests'] = input[:max_requests] unless input[:max_requests].nil?
        data
      end
    end

    # Structure Builder for VirtualNodeHttp2ConnectionPool
    class VirtualNodeHttp2ConnectionPool
      def self.build(input)
        data = {}
        data['maxRequests'] = input[:max_requests] unless input[:max_requests].nil?
        data
      end
    end

    # Structure Builder for VirtualNodeHttpConnectionPool
    class VirtualNodeHttpConnectionPool
      def self.build(input)
        data = {}
        data['maxConnections'] = input[:max_connections] unless input[:max_connections].nil?
        data['maxPendingRequests'] = input[:max_pending_requests] unless input[:max_pending_requests].nil?
        data
      end
    end

    # Structure Builder for VirtualNodeTcpConnectionPool
    class VirtualNodeTcpConnectionPool
      def self.build(input)
        data = {}
        data['maxConnections'] = input[:max_connections] unless input[:max_connections].nil?
        data
      end
    end

    # Structure Builder for OutlierDetection
    class OutlierDetection
      def self.build(input)
        data = {}
        data['maxServerErrors'] = input[:max_server_errors] unless input[:max_server_errors].nil?
        data['interval'] = Builders::Duration.build(input[:interval]) unless input[:interval].nil?
        data['baseEjectionDuration'] = Builders::Duration.build(input[:base_ejection_duration]) unless input[:base_ejection_duration].nil?
        data['maxEjectionPercent'] = input[:max_ejection_percent] unless input[:max_ejection_percent].nil?
        data
      end
    end

    # Structure Builder for ListenerTimeout
    class ListenerTimeout
      def self.build(input)
        data = {}
        case input
        when Types::ListenerTimeout::Tcp
          data['tcp'] = (Builders::TcpTimeout.build(input) unless input.nil?)
        when Types::ListenerTimeout::Http
          data['http'] = (Builders::HttpTimeout.build(input) unless input.nil?)
        when Types::ListenerTimeout::Http2
          data['http2'] = (Builders::HttpTimeout.build(input) unless input.nil?)
        when Types::ListenerTimeout::Grpc
          data['grpc'] = (Builders::GrpcTimeout.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListenerTimeout"
        end

        data
      end
    end

    # Structure Builder for HealthCheckPolicy
    class HealthCheckPolicy
      def self.build(input)
        data = {}
        data['timeoutMillis'] = input[:timeout_millis] unless input[:timeout_millis].nil?
        data['intervalMillis'] = input[:interval_millis] unless input[:interval_millis].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['port'] = input[:port] unless input[:port].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['healthyThreshold'] = input[:healthy_threshold] unless input[:healthy_threshold].nil?
        data['unhealthyThreshold'] = input[:unhealthy_threshold] unless input[:unhealthy_threshold].nil?
        data
      end
    end

    # Structure Builder for ListenerTls
    class ListenerTls
      def self.build(input)
        data = {}
        data['mode'] = input[:mode] unless input[:mode].nil?
        data['certificate'] = Builders::ListenerTlsCertificate.build(input[:certificate]) unless input[:certificate].nil?
        data['validation'] = Builders::ListenerTlsValidationContext.build(input[:validation]) unless input[:validation].nil?
        data
      end
    end

    # Structure Builder for ListenerTlsValidationContext
    class ListenerTlsValidationContext
      def self.build(input)
        data = {}
        data['trust'] = Builders::ListenerTlsValidationContextTrust.build(input[:member_trust]) unless input[:member_trust].nil?
        data['subjectAlternativeNames'] = Builders::SubjectAlternativeNames.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Builder for ListenerTlsValidationContextTrust
    class ListenerTlsValidationContextTrust
      def self.build(input)
        data = {}
        case input
        when Types::ListenerTlsValidationContextTrust::File
          data['file'] = (Builders::TlsValidationContextFileTrust.build(input) unless input.nil?)
        when Types::ListenerTlsValidationContextTrust::Sds
          data['sds'] = (Builders::TlsValidationContextSdsTrust.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListenerTlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Builder for ListenerTlsCertificate
    class ListenerTlsCertificate
      def self.build(input)
        data = {}
        case input
        when Types::ListenerTlsCertificate::Acm
          data['acm'] = (Builders::ListenerTlsAcmCertificate.build(input) unless input.nil?)
        when Types::ListenerTlsCertificate::File
          data['file'] = (Builders::ListenerTlsFileCertificate.build(input) unless input.nil?)
        when Types::ListenerTlsCertificate::Sds
          data['sds'] = (Builders::ListenerTlsSdsCertificate.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListenerTlsCertificate"
        end

        data
      end
    end

    # Structure Builder for ListenerTlsAcmCertificate
    class ListenerTlsAcmCertificate
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data
      end
    end

    # Structure Builder for PortMapping
    class PortMapping
      def self.build(input)
        data = {}
        data['port'] = input[:port] unless input[:port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Structure Builder for ServiceDiscovery
    class ServiceDiscovery
      def self.build(input)
        data = {}
        case input
        when Types::ServiceDiscovery::Dns
          data['dns'] = (Builders::DnsServiceDiscovery.build(input) unless input.nil?)
        when Types::ServiceDiscovery::AwsCloudMap
          data['awsCloudMap'] = (Builders::AwsCloudMapServiceDiscovery.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ServiceDiscovery"
        end

        data
      end
    end

    # Structure Builder for AwsCloudMapServiceDiscovery
    class AwsCloudMapServiceDiscovery
      def self.build(input)
        data = {}
        data['namespaceName'] = input[:namespace_name] unless input[:namespace_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['attributes'] = Builders::AwsCloudMapInstanceAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['ipPreference'] = input[:ip_preference] unless input[:ip_preference].nil?
        data
      end
    end

    # List Builder for AwsCloudMapInstanceAttributes
    class AwsCloudMapInstanceAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsCloudMapInstanceAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsCloudMapInstanceAttribute
    class AwsCloudMapInstanceAttribute
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for DnsServiceDiscovery
    class DnsServiceDiscovery
      def self.build(input)
        data = {}
        data['hostname'] = input[:hostname] unless input[:hostname].nil?
        data['responseType'] = input[:response_type] unless input[:response_type].nil?
        data['ipPreference'] = input[:ip_preference] unless input[:ip_preference].nil?
        data
      end
    end

    # Operation Builder for CreateVirtualRouter
    class CreateVirtualRouter
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouters',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['virtualRouterName'] = input[:virtual_router_name] unless input[:virtual_router_name].nil?
        data['spec'] = Builders::VirtualRouterSpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VirtualRouterSpec
    class VirtualRouterSpec
      def self.build(input)
        data = {}
        data['listeners'] = Builders::VirtualRouterListeners.build(input[:listeners]) unless input[:listeners].nil?
        data
      end
    end

    # List Builder for VirtualRouterListeners
    class VirtualRouterListeners
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VirtualRouterListener.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VirtualRouterListener
    class VirtualRouterListener
      def self.build(input)
        data = {}
        data['portMapping'] = Builders::PortMapping.build(input[:port_mapping]) unless input[:port_mapping].nil?
        data
      end
    end

    # Operation Builder for CreateVirtualService
    class CreateVirtualService
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualServices',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['virtualServiceName'] = input[:virtual_service_name] unless input[:virtual_service_name].nil?
        data['spec'] = Builders::VirtualServiceSpec.build(input[:spec]) unless input[:spec].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VirtualServiceSpec
    class VirtualServiceSpec
      def self.build(input)
        data = {}
        data['provider'] = Builders::VirtualServiceProvider.build(input[:provider]) unless input[:provider].nil?
        data
      end
    end

    # Structure Builder for VirtualServiceProvider
    class VirtualServiceProvider
      def self.build(input)
        data = {}
        case input
        when Types::VirtualServiceProvider::VirtualNode
          data['virtualNode'] = (Builders::VirtualNodeServiceProvider.build(input) unless input.nil?)
        when Types::VirtualServiceProvider::VirtualRouter
          data['virtualRouter'] = (Builders::VirtualRouterServiceProvider.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualServiceProvider"
        end

        data
      end
    end

    # Structure Builder for VirtualRouterServiceProvider
    class VirtualRouterServiceProvider
      def self.build(input)
        data = {}
        data['virtualRouterName'] = input[:virtual_router_name] unless input[:virtual_router_name].nil?
        data
      end
    end

    # Structure Builder for VirtualNodeServiceProvider
    class VirtualNodeServiceProvider
      def self.build(input)
        data = {}
        data['virtualNodeName'] = input[:virtual_node_name] unless input[:virtual_node_name].nil?
        data
      end
    end

    # Operation Builder for DeleteGatewayRoute
    class DeleteGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:gateway_route_name].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_route_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateway/%<virtualGatewayName>s/gatewayRoutes/%<gatewayRouteName>s',
            gatewayRouteName: Hearth::HTTP.uri_escape(input[:gateway_route_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMesh
    class DeleteMesh
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoute
    class DeleteRoute
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:route_name].to_s.empty?
          raise ArgumentError, "HTTP label :route_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouter/%<virtualRouterName>s/routes/%<routeName>s',
            routeName: Hearth::HTTP.uri_escape(input[:route_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVirtualGateway
    class DeleteVirtualGateway
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateways/%<virtualGatewayName>s',
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVirtualNode
    class DeleteVirtualNode
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:virtual_node_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_node_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualNodes/%<virtualNodeName>s',
            virtualNodeName: Hearth::HTTP.uri_escape(input[:virtual_node_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVirtualRouter
    class DeleteVirtualRouter
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouters/%<virtualRouterName>s',
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVirtualService
    class DeleteVirtualService
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:virtual_service_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_service_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualServices/%<virtualServiceName>s',
            virtualServiceName: Hearth::HTTP.uri_escape(input[:virtual_service_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGatewayRoute
    class DescribeGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:gateway_route_name].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_route_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateway/%<virtualGatewayName>s/gatewayRoutes/%<gatewayRouteName>s',
            gatewayRouteName: Hearth::HTTP.uri_escape(input[:gateway_route_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMesh
    class DescribeMesh
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRoute
    class DescribeRoute
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:route_name].to_s.empty?
          raise ArgumentError, "HTTP label :route_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouter/%<virtualRouterName>s/routes/%<routeName>s',
            routeName: Hearth::HTTP.uri_escape(input[:route_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVirtualGateway
    class DescribeVirtualGateway
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateways/%<virtualGatewayName>s',
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVirtualNode
    class DescribeVirtualNode
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:virtual_node_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_node_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualNodes/%<virtualNodeName>s',
            virtualNodeName: Hearth::HTTP.uri_escape(input[:virtual_node_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVirtualRouter
    class DescribeVirtualRouter
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouters/%<virtualRouterName>s',
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVirtualService
    class DescribeVirtualService
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:virtual_service_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_service_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualServices/%<virtualServiceName>s',
            virtualServiceName: Hearth::HTTP.uri_escape(input[:virtual_service_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGatewayRoutes
    class ListGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateway/%<virtualGatewayName>s/gatewayRoutes',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMeshes
    class ListMeshes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20190125/meshes')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRoutes
    class ListRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouter/%<virtualRouterName>s/routes',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20190125/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVirtualGateways
    class ListVirtualGateways
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateways',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVirtualNodes
    class ListVirtualNodes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualNodes',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVirtualRouters
    class ListVirtualRouters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouters',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVirtualServices
    class ListVirtualServices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualServices',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v20190125/tag')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v20190125/untag')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateGatewayRoute
    class UpdateGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:gateway_route_name].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_route_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateway/%<virtualGatewayName>s/gatewayRoutes/%<gatewayRouteName>s',
            gatewayRouteName: Hearth::HTTP.uri_escape(input[:gateway_route_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::GatewayRouteSpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMesh
    class UpdateMesh
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s',
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::MeshSpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoute
    class UpdateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:route_name].to_s.empty?
          raise ArgumentError, "HTTP label :route_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouter/%<virtualRouterName>s/routes/%<routeName>s',
            routeName: Hearth::HTTP.uri_escape(input[:route_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s),
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::RouteSpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVirtualGateway
    class UpdateVirtualGateway
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:virtual_gateway_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_gateway_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualGateways/%<virtualGatewayName>s',
            virtualGatewayName: Hearth::HTTP.uri_escape(input[:virtual_gateway_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::VirtualGatewaySpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVirtualNode
    class UpdateVirtualNode
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:virtual_node_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_node_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualNodes/%<virtualNodeName>s',
            virtualNodeName: Hearth::HTTP.uri_escape(input[:virtual_node_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::VirtualNodeSpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVirtualRouter
    class UpdateVirtualRouter
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:virtual_router_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_router_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualRouters/%<virtualRouterName>s',
            virtualRouterName: Hearth::HTTP.uri_escape(input[:virtual_router_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::VirtualRouterSpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVirtualService
    class UpdateVirtualService
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:virtual_service_name].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_service_name cannot be nil or empty."
        end
        if input[:mesh_name].to_s.empty?
          raise ArgumentError, "HTTP label :mesh_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20190125/meshes/%<meshName>s/virtualServices/%<virtualServiceName>s',
            virtualServiceName: Hearth::HTTP.uri_escape(input[:virtual_service_name].to_s),
            meshName: Hearth::HTTP.uri_escape(input[:mesh_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['meshOwner'] = input[:mesh_owner].to_s unless input[:mesh_owner].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['spec'] = Builders::VirtualServiceSpec.build(input[:spec]) unless input[:spec].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
